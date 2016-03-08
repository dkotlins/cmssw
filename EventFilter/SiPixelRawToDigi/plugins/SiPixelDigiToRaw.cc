#include "SiPixelDigiToRaw.h"

#include "DataFormats/Common/interface/Handle.h"
#include "FWCore/Framework/interface/ESHandle.h"

#include "FWCore/MessageLogger/interface/MessageLogger.h"

#include "DataFormats/Common/interface/DetSetVector.h"
#include "DataFormats/SiPixelDigi/interface/PixelDigi.h"
#include "DataFormats/FEDRawData/interface/FEDRawDataCollection.h"
#include "DataFormats/FEDRawData/interface/FEDRawData.h"

#include "CondFormats/SiPixelObjects/interface/SiPixelFedCablingMap.h"
#include "CondFormats/SiPixelObjects/interface/SiPixelFedCablingTree.h"

#include "EventFilter/SiPixelRawToDigi/interface/PixelDataFormatter.h"
#include "CondFormats/SiPixelObjects/interface/PixelFEDCabling.h"
//#include "DataFormats/TrackerCommon/interface/TrackerTopology.h"
//#include "Geometry/Records/interface/TrackerTopologyRcd.h"

#include "TH1D.h"
#include "TFile.h"

using namespace std;

SiPixelDigiToRaw::SiPixelDigiToRaw( const edm::ParameterSet& pset ) :
  frameReverter_(nullptr),
  config_(pset),
  hCPU(0), hDigi(0)
{

  tPixelDigi = consumes<edm::DetSetVector<PixelDigi> >(config_.getParameter<edm::InputTag>("InputLabel")); 

  // Define EDProduct type
  produces<FEDRawDataCollection>();

  // start the counters
  eventCounter = 0;
  allDigiCounter = 0;
  allWordCounter = 0;

  // Timing
  bool timing = config_.getUntrackedParameter<bool>("Timing",false);
  if (timing) {
    theTimer.reset(new edm::CPUTimer); 
    hCPU = new TH1D ("hCPU","hCPU",100,0.,0.050);
    hDigi = new TH1D("hDigi","hDigi",50,0.,15000.);
  }

  // Control the usage of phase1
  usePhase1 = false;
  if (config_.exists("UsePhase1")) {
    usePhase1 = config_.getParameter<bool> ("UsePhase1");
    if(usePhase1) edm::LogInfo("SiPixelRawToDigi")  << " Use phase1 detector ";
  }

  usePilotBlade=false; // I am not yet sure we need it here?
  //cout<<" SiPixelDigiToRaw: phase1 "<<usePhase1<<endl;

}

// -----------------------------------------------------------------------------
SiPixelDigiToRaw::~SiPixelDigiToRaw() {
  delete frameReverter_;

  if (theTimer) {
    TFile rootFile("analysis.root", "RECREATE", "my histograms");
    hCPU->Write();
    hDigi->Write();
  }
}

// -----------------------------------------------------------------------------

// -----------------------------------------------------------------------------
void SiPixelDigiToRaw::produce( edm::Event& ev,
                              const edm::EventSetup& es)
{
  using namespace sipixelobjects;
  eventCounter++;

  edm::LogInfo("SiPixelDigiToRaw") << "[SiPixelDigiToRaw::produce] "
                                   << "event number: " << eventCounter;

  edm::Handle< edm::DetSetVector<PixelDigi> > digiCollection;
  label = config_.getParameter<edm::InputTag>("InputLabel");
  ev.getByToken( tPixelDigi, digiCollection);

  PixelDataFormatter::RawData rawdata;
  PixelDataFormatter::Digis digis;
  typedef vector< edm::DetSet<PixelDigi> >::const_iterator DI;

   int digiCounter = 0; 
  for (DI di=digiCollection->begin(); di != digiCollection->end(); di++) {
    digiCounter += (di->data).size(); 
    digis[ di->id] = di->data;
  }
  allDigiCounter += digiCounter;

  // Do only once 
  if (recordWatcher.check( es )) {

    //Retrieve tracker topology from geometry
    //edm::ESHandle<TrackerTopology> tTopo;
    //es.get<TrackerTopologyRcd>().get(tTopo);
    //const TrackerTopology* tt = tTopo.product();

    edm::ESHandle<SiPixelFedCablingMap> cablingMap;
    cout<<" SiPixelDigiToRaw:produce  4"<<endl;
    es.get<SiPixelFedCablingMapRcd>().get( cablingMap );//here initRocs is called 

    // init ROCs here NO - not tread safe 
    //cablingMap->initializeRocs(tt, usePhase1);

    fedIds = cablingMap->fedIds();
    cablingTree_= cablingMap->cablingTree();
    if (frameReverter_) delete frameReverter_; frameReverter_ = new SiPixelFrameReverter( es, cablingMap.product() );
  }

  debug = edm::MessageDrop::instance()->debugEnabled;
  if (debug) LogDebug("SiPixelDigiToRaw") << cablingTree_->version();
  //cout<<" what is this debug? "<<debug<<endl;

  //cout<<" formmater for "<<usePhase1<<endl;
  //PixelDataFormatter formatter(cablingTree_.get());
  PixelDataFormatter formatter(cablingTree_.get(), usePhase1);

  formatter.passFrameReverter(frameReverter_);
  if (theTimer) theTimer->start();

  // create product (raw data)
  std::auto_ptr<FEDRawDataCollection> buffers( new FEDRawDataCollection );

  const vector<const PixelFEDCabling *>  fedList = cablingTree_->fedList();

  // convert data to raw
  formatter.formatRawData( ev.id().event(), rawdata, digis );

  // pack raw data into collection
  typedef vector<const PixelFEDCabling *>::const_iterator FI;
  for (FI it = fedList.begin(); it != fedList.end(); it++) {
    LogDebug("SiPixelDigiToRaw")<<" PRODUCE DATA FOR FED_id: " << (**it).id();
    //cout<<" PRODUCE DATA FOR FED_id: " << (**it).id()<<endl;

    FEDRawData& fedRawData = buffers->FEDData( (**it).id() );
    PixelDataFormatter::RawData::iterator fedbuffer = rawdata.find( (**it).id() );

    if( fedbuffer != rawdata.end() ) fedRawData = fedbuffer->second;
    //else cout<<" something wrong "<<endl;

    LogDebug("SiPixelDigiToRaw")<<"size of data in fedRawData: "<<fedRawData.size();
    //cout<<"size of data in fedRawData: "<<fedRawData.size()<<endl;
  }
  allWordCounter += formatter.nWords();

  if (debug) LogDebug("SiPixelDigiToRaw") 
        << "Words/Digis this ev: "<<digiCounter<<"(fm:"<<formatter.nDigis()<<")/"
        <<formatter.nWords()
        <<"  all: "<< allDigiCounter <<"/"<<allWordCounter;

  if (theTimer) {
    theTimer->stop();
    LogDebug("SiPixelDigiToRaw") << "TIMING IS: (real)" << theTimer->realTime() ;
    LogDebug("SiPixelDigiToRaw") << " (Words/Digis) this ev: "
         <<formatter.nWords()<<"/"<<formatter.nDigis() << "--- all :"<<allWordCounter<<"/"<<allDigiCounter;
    hCPU->Fill( theTimer->realTime() ); 
    hDigi->Fill(formatter.nDigis());
  }
  
  ev.put( buffers );
  
}
// -----------------------------------------------------------------------------

