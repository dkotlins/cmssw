#ifndef DQM_L1TMonitor_L1TStage2uGTCaloLayer2Comp
#define DQM_L1TMonitor_L1TStage2uGTCaloLayer2Comp

#include "FWCore/Framework/interface/MakerMacros.h"

#include "DQMServices/Core/interface/DQMEDAnalyzer.h"
#include "DQMServices/Core/interface/MonitorElement.h"

#include "FWCore/Framework/interface/Event.h"
#include "FWCore/MessageLogger/interface/MessageLogger.h"
#include "FWCore/ParameterSet/interface/ParameterSet.h"

#include "DataFormats/L1Trigger/interface/EGamma.h"
#include "DataFormats/L1Trigger/interface/Jet.h"
#include "DataFormats/L1Trigger/interface/EtSum.h"
#include "DataFormats/L1Trigger/interface/Tau.h"

/**
 * Class to perform event by event comparisons between CaloLayer2 ouputs and uGT
 * inputs and produce summary of problems found
 *
 * Module should be run as part of L1TStage2 online sequence and relies on
 * collections of jets, e/g, tau and sum objects as they come out of CaloLayer2
 * and are unpacked by uGT. The purpose of the comparisions is to identify
 * issues with the data transmission links or the unpacking process in the uGT
 * FPGA firmare.
 *
 * Summary differentiates between different types of errors and errors with
 * different objects in attempt to identify issues with specific links. In the
 * case of the sums, due to the large number of different types and their spread
 * over many links, it was decided to not differentiate between the different
 * types of objects and their properties for the current implementation.
 */
class L1TStage2uGTCaloLayer2Comp : public DQMEDAnalyzer {

 public:
  /**
   * Class constructor
   *
   * Receives the set of parameters, specified by the python configuration file
   * used to initialise the module as a part of a sequence. The contents of the
   * set is used to configure the internal state of the objects of this class.
   * Values from the parameter set are extracted and used to initialise
   * bxcollections for jet, e/g, tau and sum objects reconstructed and unpacked
   * by CaloLayer2 and uGT firmwares. These collections are the basis of the
   * comparisons performed by this module.
   *
   * @param edm::ParamterSet & ps A pointer to the parameter set used
   */
  L1TStage2uGTCaloLayer2Comp (const edm::ParameterSet & ps);


 protected:

  /**
   * Method to declare or "book" all histograms that will be part of module
   *
   * Histograms that are to be visualised as part of the DQM module should be
   * registered with the IBooker object any additional configuration such as
   * title or axis labels and ranges. A good rule of thumb for the amount of
   * configuration is that it should be possible to understnand the contents of
   * the histogram using the configuration received from this method since the
   * plots generated by this module would later be stored into ROOT files for
   * transfer to the DQM system and it should be possible to extract useful
   * information without the need for specific render plugins.
   *
   * @param DQMStore::IBooker& ibooker Object that handles the creation of plots
   * @param edm::Run const &           Reference to run object
   * @param edm::EventSetup const &    Reference to event configuration object
   *
   * @return void
   */
  void bookHistograms (DQMStore::IBooker&,
			       const edm::Run&,
			       const edm::EventSetup&) override;

  /**
   * Main method where the analysis code resides, executed once for each run
   *
   * The main body of the module code is contained in this method. The different
   * object collections are extracted from the run and are passed to the
   * respective comparison methods for processing of each object type.
   *
   * @param edm::Event const &      Reference to event object
   * @param edm::EventSetup const & Reference to event configuration object
   *
   * @return void
   */
  void analyze (const edm::Event&, const edm::EventSetup&) override;

 private:

  /**
   * Encapsulates the code required for performing a comparison of
   * the jets contained in a given event.
   *
   * Method is called once per each event with the jet collections associated
   * with the event being extracted for all bx. The implementation checks
   * if the size of collections is the same and when so, compares the jets in
   * the same positions within the calol2/ugt collections. The number and type
   * of discrepancies are accumulated in different bins of a summary histogram.
   *
   * @param edm::Handle<l1t::JetBXCollection>& calol2Col Reference to jet
   *    collection from CaloLayer2
   * @param edm::Handle<l1t::JetBXCollection>& uGTCol Reference to jet
   *    collection from uGT
   *
   * @return bool Flag of whether the agreement was perfect
   */
  bool compareJets(const edm::Handle<l1t::JetBxCollection> & calol2Col,
                   const edm::Handle<l1t::JetBxCollection> & uGTCol);

  /**
   * Encapsulates the code required for performing a comparison of
   * the e/gs contained in a given event.
   *
   * Method is called once per each event with the e/g collections associated
   * with the event being extracted for all bx. The implementation checks
   * if the size of collections is the same and when so, compares the e/gs in
   * the same positions within the calol2/ugt collections. The number and type
   * of discrepancies are accumulated in different bins of a summary histogram.
   *
   * @param edm::Handle<l1t::EGammaBXCollection>& calol2Col Reference to e/gamma
   *    collection from CaloLayer2
   * @param edm::Handle<l1t::EGammaBXCollection>& uGTCol Reference to e/gamma
   *    collection from uGT
   *
   * @return bool Flag of whether the agreement was perfect
   */
  bool compareEGs(const edm::Handle<l1t::EGammaBxCollection> & calol2Col,
                  const edm::Handle<l1t::EGammaBxCollection> & uGTCol);

  /**
   * Encapsulates the code required for performing a comparison of
   * the taus contained in a given event.
   *
   * Method is called once per each event with the e/g collections associated
   * with the event being extracted for all bx. The implementation checks
   * if the size of collections is the same and when so, compares the taus in
   * the same positions within the calol2/ugt collections. The number and type
   *
   * @param edm::Handle<l1t::TauBXCollection>& calol2Col Reference to tau
   *    collection from CaloLayer2
   * @param edm::Handle<l1t::TauBXCollection>& uGTCol Reference to tau
   *    collection from uGT
   *
   * @return bool Flag of whether the agreement was perfect
   */
  bool compareTaus(const edm::Handle<l1t::TauBxCollection> & calol2Col,
                   const edm::Handle<l1t::TauBxCollection> & uGTCol);

  /**
   * Encapsulates the code required for performing a comparison of
   * the taus contained in a given event.
   *
   * Method is called once per each event with the sum collections associated
   * with the event being extracted for all bx. The implementation loops
   * over the collection and depending of the their type
   * sums are compared separately but all sum errors are accumulated together.
   *
   * @param edm::Handle<l1t::TauBXCollection>& calol2Col Reference to sum
   *    collection from CaloLayer2
   * @param edm::Handle<l1t::TauBXCollection>& uGTCol Reference to sum
   *    collection from uGT
   *
   * @return bool Flag of whether the agreement was perfect
   */
  bool compareSums(const edm::Handle<l1t::EtSumBxCollection> & calol2Col,
                   const edm::Handle<l1t::EtSumBxCollection> & uGTCol);

  // Holds the name of directory in DQM where module hostograms will be shown.
  // Value is taken from python configuration file (passed in class constructor)
  std::string monitorDir;

  // collections to hold entities reconstructed from calol2 and ugt
  edm::EDGetTokenT<l1t::JetBxCollection> calol2JetCollection;
  edm::EDGetTokenT<l1t::JetBxCollection> uGTJetCollection;
  edm::EDGetTokenT<l1t::EGammaBxCollection> calol2EGammaCollection;
  edm::EDGetTokenT<l1t::EGammaBxCollection> uGTEGammaCollection;
  edm::EDGetTokenT<l1t::TauBxCollection> calol2TauCollection;
  edm::EDGetTokenT<l1t::TauBxCollection> uGTTauCollection;
  edm::EDGetTokenT<l1t::EtSumBxCollection> calol2EtSumCollection;
  edm::EDGetTokenT<l1t::EtSumBxCollection> uGTEtSumCollection;

  enum numeratorBins {
    EVENTBAD = 1,   // number of (no.) bad events (where an error was found)
    EVENTBADJETCOL, // no. events with a jet collection size difference
    EVENTBADEGCOL,  // no. events with a eg collection size difference
    EVENTBADTAUCOL, // no. events with a tau collection size difference
    EVENTBADSUMCOL, // no. events with a sum collection size difference
    JETBADET,       // no. jets with bad Et
    JETBADETA,      // no. jets with bad eta
    JETBADPHI,      // no. jets with bad phi
    EGBADET,        // no. egs with bad Et
    EGBADPHI,       // no. egs with bad eta
    EGBADETA,       // no. egs with bad phi
    TAUBADET,       // no. tau with bad Et
    TAUBADPHI,      // no. tau with bad phi
    TAUBADETA,      // no. tau with bad eta
    BADSUM          // no. sums with any disagreement
  };

  enum denumBins {
    EVENTS1 = 1, // total no. events (used for taking a ratio) x5
    EVENTS2,
    EVENTS3,
    EVENTS4,
    EVENTS5,
    JETS1,       // total no. jets x3
    JETS2,
    JETS3,
    EGS1,        // total no. egs x3
    EGS2,
    EGS3,
    TAUS1,       // total no. taus x3
    TAUS2,
    TAUS3,
    SUMS         // total no. sums
  };

  // objects to represent individual plots shown in DQM
  MonitorElement * comparisonNum;
  MonitorElement * comparisonDenum;
  bool verbose;
};

#endif
