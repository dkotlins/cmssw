#include "FWCore/Framework/interface/MakerMacros.h"
#include "HFtest.h"

#include <iostream>
#include <bitset>

#include "FWCore/Framework/interface/ESHandle.h"
#include "FWCore/Common/interface/TriggerNames.h"

#include "DataFormats/Common/interface/Handle.h"
#include "DataFormats/Common/interface/TriggerResults.h"
#include "DataFormats/L1Trigger/interface/L1MuonParticle.h"
#include "DataFormats/L1Trigger/interface/L1MuonParticleFwd.h"
#include "DataFormats/L1Trigger/interface/L1ParticleMap.h"
#include "DataFormats/L1Trigger/interface/L1ParticleMapFwd.h"
#include "DataFormats/L1GlobalTrigger/interface/L1GlobalTriggerReadoutRecord.h"
#include "DataFormats/L1GlobalTrigger/interface/L1GlobalTriggerObjectMapRecord.h"
//#include "DataFormats/L1GlobalTrigger/interface/L1GlobalTriggerObjectMaps.h"
#include "DataFormats/HLTReco/interface/TriggerEventWithRefs.h"
#include "DataFormats/HLTReco/interface/TriggerObject.h"
#include "DataFormats/HLTReco/interface/TriggerFilterObjectWithRefs.h"
#include "DataFormats/HLTReco/interface/TriggerTypeDefs.h"
#include "DataFormats/HLTReco/interface/TriggerEvent.h"

#include "L1Trigger/GlobalTriggerAnalyzer/interface/L1GtUtils.h"

#include "DataFormats/MuonReco/interface/Muon.h"
#include "DataFormats/MuonReco/interface/MuonFwd.h"
#include "DataFormats/MuonDetId/interface/MuonSubdetId.h"

#include "CondFormats/DataRecord/interface/L1GtTriggerMenuRcd.h"
#include "CondFormats/L1TObjects/interface/L1GtTriggerMenu.h"
#include "CondFormats/L1TObjects/interface/L1GtTriggerMenuFwd.h"

using namespace std;
using namespace edm;
using namespace reco;
using namespace trigger;

// ----------------------------------------------------------------------
HFtest::HFtest(const edm::ParameterSet& iConfig):
  fVerbose(iConfig.getUntrackedParameter<int>("verbose", 0)),
  fHLTProcessName(iConfig.getUntrackedParameter<string>("HLTProcessName")),
  fL1GTReadoutRecordLabel(iConfig.getUntrackedParameter<InputTag>("L1GTReadoutRecordLabel", edm::InputTag("gtDigis"))),
  fL1GTmapLabel(iConfig.getUntrackedParameter<InputTag>("hltL1GtObjectMap")),
  fL1MuonsLabel(iConfig.getUntrackedParameter<InputTag>("L1MuonsLabel")),
  fTriggerEventLabel(iConfig.getUntrackedParameter<InputTag>("TriggerEventLabel")),
  fHLTResultsLabel(iConfig.getUntrackedParameter<InputTag>("HLTResultsLabel"))
{

  cout << "----------------------------------------------------------------------" << endl;
  cout << "--- HFtest constructor" << endl;
  cout << "--- Verbose                     : " << fVerbose << endl;
  cout << "--- HLT process name            : " << fHLTProcessName << endl;
  cout << "--- L1 GT Readout Record Label  : " << fL1GTReadoutRecordLabel << endl;
  cout << "--- L1 GT Object Map Label      : " << fL1GTmapLabel << endl;
  cout << "--- L1 Muons Label              : " << fL1MuonsLabel << endl;
  cout << "--- HLTResultsLabel             : " << fHLTResultsLabel << endl;
  cout << "--- Trigger Event Label         : " << fTriggerEventLabel << endl;
  cout << "----------------------------------------------------------------------" << endl;

  fNevt = 0; 
  
}


// ----------------------------------------------------------------------
HFtest::~HFtest() {
  
}


// ----------------------------------------------------------------------
void HFtest::analyze(const edm::Event& iEvent, const edm::EventSetup& iSetup) {
  bool print = false;
  
  fNevt++;
  if (fVerbose > 0) cout<<endl<<" ------> Event "<<fNevt<<endl;

  // ----------------------------------------------------------------------
  // -- L1 results: physics and technical triggers
  // ----------------------------------------------------------------------
  if (fVerbose > 5) cout << "Retrieving trigger records" << endl;

  // L1 decission map
  Handle<L1GlobalTriggerReadoutRecord> L1GTRR;
  iEvent.getByLabel(fL1GTReadoutRecordLabel,L1GTRR);

  // L1 map which has names (it does not seem to exist in AOD, or has a different name?)
  //Handle<L1GlobalTriggerObjectMapRecord> hL1GTmap; // or L1GlobalTriggerObjectMaps ?
  //iEvent.getByLabel("hltL1GtObjectMap", hL1GTmap);

  // This exists in AOD but the container does not have the algo names 
//   Handle<L1GlobalTriggerObjectMaps> hL1GTmap; // or L1GlobalTriggerObjectMaps ?
//   iEvent.getByLabel(fL1GTmapLabel, hL1GTmap);


//   // New way taken from HLTTriggerOffline/Tau/src/L1TauAnalyzer.cc
//   L1GlobalTriggerReadoutRecord l1GTRR = *L1GTRR.product();              
//   DecisionWord gtDecisionWord = l1GTRR.decisionWord();
  
//   string l1BitName;
//   int l1Accept;  
//   // get ObjectMaps from ObjectMapRecord
//   L1GlobalTriggerObjectMapRecord l1GTOMRec = *hL1GTmap.product();
//   const vector<L1GlobalTriggerObjectMap>& objMapVec =  l1GTOMRec.gtObjectMap();
//   for (vector<L1GlobalTriggerObjectMap>::const_iterator itMap = objMapVec.begin();
//        itMap != objMapVec.end(); ++itMap) {
//     int iBit = (*itMap).algoBitNumber();
//     l1BitName = string( (*itMap).algoName() );
//     l1Accept = gtDecisionWord[iBit];
//     cout<<l1BitName<<" "<<iBit<<" "<<l1Accept<<endl;
//   }
  


  //
  if (fVerbose > 5) cout << "Retrieving L1GtUtils" << endl;
  L1GtUtils l1GtUtils;
  l1GtUtils.retrieveL1EventSetup(iSetup);
  // cout << "L1 trigger menu: ";
  // cout << l1GtUtils.l1TriggerMenu() << endl;

  if (fVerbose > 5) cout << "Get L1GtTriggerMenu" << endl;
  edm::ESHandle<L1GtTriggerMenu> menuRcd;
  iSetup.get<L1GtTriggerMenuRcd>().get(menuRcd) ;
  const L1GtTriggerMenu* menu = menuRcd.product();

  string algoname; 
  int    algobit(-1); 
  bool   result(false); 
  bool   resultBeforeMask(false); // not really used, needed by interface which is by ref
  int    prescale(0); 
  int    mask(0); 
  int    iErrorCode(0); 

  for (CItAlgo algo = menu->gtAlgorithmMap().begin(); algo!=menu->gtAlgorithmMap().end(); ++algo) {
    algoname = (algo->second).algoName();
    algobit  = (algo->second).algoBitNumber();

    //cout<<l1GtUtils.decisionAfterMask(iEvent, algoname, iErrorCode)<<" ";
    //cout<<l1GtUtils.decisionBeforeMask(iEvent, algoname, iErrorCode)<<" ";
    //cout<<l1GtUtils.decision(iEvent, algoname, iErrorCode)<<" ";
    //cout<<endl;

    //result   = l1GtUtils.decisionAfterMask(iEvent, algoname, iErrorCode);
    //mask     = l1GtUtils.triggerMask(iEvent, algoname, iErrorCode);
    //prescale = l1GtUtils.prescaleFactor(iEvent, algoname, iErrorCode);

    // this does the same in one go, moreover the three calls above use this - three times of course...
    iErrorCode = l1GtUtils.l1Results(iEvent, algoname, resultBeforeMask, result, prescale, mask);

    // results is always false SO IT LOOKS LIKE THE L1 never fires
    if(result) cout<<algoname<<" "<<algobit<<" "<<result<<" "<<mask<<" "<<iErrorCode<<" "<<prescale<<endl;
  }

  // Same problem
  if (fVerbose > 5) cout<<" Technical L1 "<<endl;
  for (CItAlgo algo = menu->gtTechnicalTriggerMap().begin(); algo != menu->gtTechnicalTriggerMap().end(); ++algo) {
    algoname = (algo->second).algoName();
    algobit  = (algo->second).algoBitNumber();
    result   = l1GtUtils.decisionAfterMask(iEvent, algoname, iErrorCode);
    mask     = l1GtUtils.triggerMask(iEvent, algoname, iErrorCode);
    prescale = l1GtUtils.prescaleFactor(iEvent, algoname, iErrorCode);
    
    if(result) cout<<algoname<<" "<<algobit<<" "<<result<<" "<<mask<<" "<<iErrorCode<<" "<<prescale<<endl;

  }


  // Old way, where I do not knwo how to get namess 
  if (L1GTRR.isValid()) {
    bool l1a = L1GTRR->decision();  // global decission?
    const L1GtPsbWord psb = L1GTRR->gtPsbWord(0xbb09, 0); // select PSB#9 and bunch crossing 0
    int techLowNonPres  = 65536*psb.bData(0) + psb.aData(0);
    int techHighNonPres = 65536*psb.bData(1) + psb.aData(1);

    if (fVerbose > 5) cout << hex << "high word: " << ( 65536*psb.bData(1) + psb.aData(1) )
	 << " low word: " << ( 65536*psb.bData(0) + psb.aData(0) ) << " " 
	 <<techLowNonPres<<" "<<techHighNonPres<<dec<<endl;

    if (fVerbose > 5) cout<<" L1 status = "<<l1a<<endl;
    for (unsigned int i = 0; i < L1GTRR->decisionWord().size(); ++i) {
      int l1flag = L1GTRR->decisionWord()[i]; 
      int t1flag = L1GTRR->technicalTriggerWord()[i]; 
      int techflag = 0;
      if(i<32)      techflag = ( techLowNonPres & (0x1<<i) );
      else if(i<64) techflag = ( techHighNonPres & (0x1<<i) );

      if(l1flag>0) {
	if (fVerbose > 0) cout<<"Algo L1 "<<i<<" has fired"<<" ";
	// use the method from above to get the name 
	for (CItAlgo algo = menu->gtAlgorithmMap().begin(); algo!=menu->gtAlgorithmMap().end(); ++algo) {
	  unsigned int bit  = (algo->second).algoBitNumber();
	  if (fVerbose > 0) if(i  == bit) cout<< (algo->second).algoName()<<endl;
	}
      }

      if(t1flag>0) {
	if (fVerbose > 2) cout<<"Tech L1 "<<i<<" has fired"<<" ";
	for (CItAlgo algo = menu->gtTechnicalTriggerMap().begin(); algo != menu->gtTechnicalTriggerMap().end(); ++algo) {
	  unsigned int bit  = (algo->second).algoBitNumber();
	  if (fVerbose > 2) if(i  == bit ) cout<< (algo->second).algoName()<<endl;	  
	} 
      }

    }
  }


  // ----------------------------------------------------------------------
  // -- HLT results
  // ----------------------------------------------------------------------

  const string testString = "HLT"; // part of the HLT name that we want to test
  vector<string> validTriggerNames;
  if (validHLTConfig) validTriggerNames = hltConfig.triggerNames();
  else cerr << "==> HFtest: No valid Trigger configuration!!!" << endl;
  //can assert?!  hltConfig.dump("PrescaleTable");

  if (validTriggerNames.size() < 1) {
    cout << "==>HFtest: NO valid trigger names returned by HLT config provided!!??" << endl;
    return;
  }

  if (fVerbose > 0) cout<<endl<<" HLT - tigger results "<<endl;
  Handle<TriggerResults> hHLTresults;
  bool hltF = true;
  try {
    iEvent.getByLabel(fHLTResultsLabel, hHLTresults);
  } catch (cms::Exception &ex) {
    if (fVerbose > 0) cout << "==>HFtest> Triggerresults  " << fHLTResultsLabel.encode() << " not found " << endl;
    hltF = false;
  }
  

  bool select = false;
  int selected=0;
  string selectedObj[10];

  if (hltF) {
    const TriggerNames &trigName = iEvent.triggerNames(*hHLTresults);
    if (fVerbose > 5) cout << "hHLTresults->size() = " << hHLTresults->size() << " and HLT accept = " << endl;

    unsigned int index(999); 
    bool wasrun(false), result(false), error(false);
    int prescale(1); 
    int psSet = -1; 

    psSet = hltConfig.prescaleSet(iEvent, iSetup);
    //cout << "validTriggerNames.size() = " << validTriggerNames.size() << endl;

    for (unsigned int it = 0; it < validTriggerNames.size(); ++it) {
      index    = trigName.triggerIndex(validTriggerNames[it]); 
      //cout<<it<<" "<<index<<endl;

      if (index >= hHLTresults->size()) continue;
      
      result   = hHLTresults->accept(index);
      wasrun   = hHLTresults->wasrun(index);
      error    = hHLTresults->error(index);
      //string name = validTriggerNames[it];

      if (psSet > -1) {
	prescale = hltConfig.prescaleValue(psSet, validTriggerNames[it]);
      } else {
	//	cout << "==>HFtest> error in prescale set!?" << endl;
	prescale = 0;
      }
      
      
      if(result) {

	const vector<string>& moduleLabels(hltConfig.moduleLabels(index));
	const unsigned int moduleIndex = hHLTresults->index(index);
	
	
	//if( ( validTriggerNames[it].find(testString) != string::npos) ) {
	//print = true;
	//cout<<validTriggerNames[it]<<" "<<index<<" "<<result<<" "<<wasrun<<" "<<error<<" "<<prescale<<endl;
	//}
	
	//cout << validTriggerNames[it] <<" "<<moduleIndex<<" "<<isInTheMuoniaList(validTriggerNames[it]) << " "<< moduleLabels.size() <<endl;
	
	
	for(unsigned int j=0;j<moduleLabels.size();j++) {
	  const string & type = hltConfig.moduleType(moduleLabels[j]);
	  if(type == "HLTMuonDimuonL3Filter") {
	    select = true;
	    if(selected<10) {
	      selectedObj[selected] = moduleLabels[j];
	      selected++;
	      cout<<j<<" "<<type<<" "<<moduleLabels[j]<<" "<<select<<endl;
	    } else {
	      cout<<" Increase array size "<<selected<<endl;
	    }
	  }
	}
	
	if (fVerbose > 0) cout<<validTriggerNames[it]<<" "<<index<<" "<<result<<" "<<wasrun<<" "<<error<<" "<<prescale<<" ";
	
	if (fVerbose > 5) cout << " Last active module - label/type: "
			       << moduleLabels[moduleIndex] << "/" << hltConfig.moduleType(moduleLabels[moduleIndex]);
	if (fVerbose>0) cout<<endl;

	if ( moduleIndex < moduleLabels.size() && hltConfig.moduleType(moduleLabels[moduleIndex]) == "HLTPrescaler" )
	  if (fVerbose > 5) cout << " HLTPrescaler  " << endl;

      }


      
    } // end for loop 
  }
  
  cout<<select<<" "<<selected<<" : ";
  for(int i=0; i<selected; ++i) cout<<selectedObj[i]<<" ";
  cout<<endl;
  if(selected>1) cout<<" MORE THAN ONE OBJECT SELECTED "<<endl;


  // ----------------------------------------------------------------------
  // -- Get trigger objects
  // ----------------------------------------------------------------------
  Handle<trigger::TriggerEvent> trgEvent;
  if (fVerbose > 0) cout<<endl<<" Trigger objects "<<endl;

  hltF = true;
  try {
    iEvent.getByLabel(fTriggerEventLabel, trgEvent);
  } catch (const cms::Exception& e) {
    hltF = false;
    cout<<"Error!! No TriggerEvent with label " << fTriggerEventLabel << endl;
  }

  if (hltF) {
    TriggerObjectCollection allObjects = trgEvent->getObjects();
    for (int i=0; i < trgEvent->sizeFilters(); i++){         
      Keys keys = trgEvent->filterKeys(i);
      if (keys.size() > 0) {
	
	if (fVerbose > 5) cout << trgEvent->filterTag(i) <<"-"; 
	if (fVerbose > 2) cout<<trgEvent->filterTag(i).label()<<" "<<trgEvent->filterTag(i).process()<<" "<<trgEvent->filterTag(i).instance()<<endl;
	
	string label=(trgEvent->filterTag(i).label() +":" + trgEvent->filterTag(i).process() +":"+ trgEvent->filterTag(i).instance() +":");
	

	bool matched=false;
	int n0=-1;
	for(int n=0;n<selected; ++n) 
	  if ( trgEvent->filterTag(i).label() == selectedObj[n] ) {matched=true; n0=n; break;}

	if (matched ) cout<<" This is it --> "<<i<<" "<<trgEvent->filterTag(i).label()<<" "<<n0<<" "<<keys.size()<<endl;

	for (unsigned int j=0; j<keys.size(); j++) {

	  if ( matched  && fVerbose > 0 )
	    cout << j <<" pt = "  << allObjects[keys[j]].pt() 
		 << " eta = " << allObjects[keys[j]].eta() 
		 << " phi = " << allObjects[keys[j]].phi() 
		 << " e = "   << allObjects[keys[j]].energy() 
		 << " id = "  << allObjects[keys[j]].id() 
		 << " label: "<< label
		 << " "<< keys[j]<<endl;

	  if ( (( label.find("Mu")!= string::npos) || (label.find("mu")!= string::npos) ) && 
	       (label.find("L3")!= string::npos) && 
	       fVerbose > 1 ) 
	    cout << " pt = "  << allObjects[keys[j]].pt() 
		 << " eta = " << allObjects[keys[j]].eta() 
		 << " phi = " << allObjects[keys[j]].phi() 
		 << " e = "   << allObjects[keys[j]].energy() 
		 << " id = "  << allObjects[keys[j]].id() 
		 << " label: "<< label
		 << endl;

	  else if ( ( (label.find("Mu")!=string::npos) || (label.find("mu")!= string::npos) ) 
		    && fVerbose > 1 ) 
	    cout << " pt = "  << allObjects[keys[j]].pt() 
		 << " eta = " << allObjects[keys[j]].eta() 
		 << " phi = " << allObjects[keys[j]].phi() 
		 << " e = "   << allObjects[keys[j]].energy() 
		 << " id = "  << allObjects[keys[j]].id() 
		 << " label: "<< label
		 << endl;

	  else if (fVerbose > 2) 
	    cout << " pt = "  << allObjects[keys[j]].pt() 
		 << " eta = " << allObjects[keys[j]].eta() 
		 << " phi = " << allObjects[keys[j]].phi() 
		 << " e = "   << allObjects[keys[j]].energy() 
		 << " id = "  << allObjects[keys[j]].id() 
		 << " label: "<< label
		 << endl;

// 	  else if( (label.find(testString)!= string::npos) ) 
// 	    cout << " pt = "  << allObjects[keys[j]].pt() 
// 		 << " eta = " << allObjects[keys[j]].eta() 
// 		 << " phi = " << allObjects[keys[j]].phi() 
// 		 << " e = "   << allObjects[keys[j]].energy() 
// 		 << " id = "  << allObjects[keys[j]].id() 
// 		 << " label: "<< label
// 		 << endl;
	  
	} // for loop 
      } 

    }
  } // if hlF  


  // from Luca
  if (fVerbose > 0) cout<<endl<<" hltL3MuonCandidates "<<endl;
  edm::InputTag trigEventTag("hltTriggerSummaryAOD","","HLT"); //make sure have correct process on MC
  edm::Handle<trigger::TriggerEvent> trigEvent;
  iEvent.getByLabel(trigEventTag, trigEvent);
  
  if (!trigEvent.isValid()) {
    cout << "Trigger summary product not found! Collection returns false always";
    return;
  }

  string L3NameCollection("hltL3MuonCandidates");

  trigger::size_type Index(0);
  Index = trigEvent->collectionIndex(edm::InputTag(L3NameCollection, "", trigEventTag.process()));

  if (Index < trigEvent->sizeCollections()) {
    const trigger::Keys& Keys(trigEvent->collectionKeys());
    const trigger::size_type n0 (Index == 0? 0 : Keys.at(Index-1));
    const trigger::size_type n1 (Keys.at(Index));
    if (fVerbose > 5) cout<<n0<<" "<<n1<<" "<<Index<<endl;
    for (trigger::size_type i = n0; i != n1; ++i) {
      const trigger::TriggerObject& obj( trigEvent->getObjects().at(i) );
      //if (abs(obj.id()) == 13) {
      if (fVerbose > 0) cout<<" id "<<abs(obj.id())<<" pt "<<obj.pt()<<" eta "<< obj.eta()<<" phi "<<obj.phi()<<" mass "<<obj.mass()<<endl;
    }
  }

}


// ------------ method called once each job just before starting event loop  ------------
void  HFtest::beginRun(const Run &run, const EventSetup &iSetup)
{
  bool hasChanged;
  validHLTConfig = hltConfig.init(run,iSetup,fHLTProcessName,hasChanged);
}

void HFtest::endRun(Run const&, EventSetup const&)
{
  validHLTConfig = false;
} 
// HFtest::endRun()

// ------------ method called once each job just before starting event loop  ------------
void  HFtest::beginJob() {

}

// ------------ method called once each job just after ending the event loop  ------------
void  HFtest::endJob() {

}

bool  HFtest::isInTheMuoniaList(string name) {
  string names[21] = {
    "HLT_Dimuon0_Jpsi_Muon",
    "HLT_Dimuon0_Jpsi_NoVertexing",
    "HLT_Dimuon0_Jpsi",
    "HLT_Dimuon0_PsiPrime",
    "HLT_Dimuon0_Upsilon_Muon",
    "HLT_Dimuon0_Upsilon",
    "HLT_Dimuon11_Upsilon",
    "HLT_Dimuon3p5_SameSign",
    "HLT_Dimuon5_Upsilon",
    "HLT_Dimuon7_Upsilon",
    "HLT_Dimuon8_Upsilon",
    "HLT_DoubleMu3_4_Dimuon5_Bs_Central",
    "HLT_DoubleMu3p5_4_Dimuon5_Bs_Central",
    "HLT_DoubleMu4_Dimuon7_Bs_Forward",
    "HLT_DoubleMu4_JpsiTk_Displaced",
    "HLT_DoubleMu4_Jpsi_Displaced",
    "HLT_Mu5_L2Mu3_Jpsi",
    "HLT_Mu5_Track2_Jpsi",
    "HLT_Mu5_Track3p5_Jpsi",
    "HLT_Mu7_Track7_Jpsi",
    "HLT_Tau2Mu_ItTrack"};
  
  bool found = false;
  cout<<name<<endl;

  for(int i;i<21;i++) if( name.find(names[i]) != string::npos) {found=true; break;}
  
  return found;

}

//define this as a plug-in
DEFINE_FWK_MODULE(HFtest);
