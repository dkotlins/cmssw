#ifndef GUARD_HFTEST_H
#define GUARD_HFTEST_H

// system include files
#include <memory>
#include <string>

// user include files
#include "FWCore/Framework/interface/Frameworkfwd.h"
#include "FWCore/Framework/interface/EDAnalyzer.h"

#include "FWCore/Framework/interface/Event.h"
#include "FWCore/Framework/interface/MakerMacros.h"

#include "FWCore/ParameterSet/interface/ParameterSet.h"

#include "HLTrigger/HLTcore/interface/HLTConfigProvider.h"

class TFile;
class TTree;
//class TAna01Event;


// ----------------------------------------------------------------------
class HFtest : public edm::EDAnalyzer {
 public:
  explicit HFtest(const edm::ParameterSet&);
  ~HFtest();
  
 private:
  virtual void beginJob() ;
  virtual void beginRun(const edm::Run &, const edm::EventSetup &);
  virtual void analyze(const edm::Event&, const edm::EventSetup&);
  virtual void endJob() ;
  virtual void endRun(edm::Run const&, edm::EventSetup const&);
  bool isInTheMuoniaList(std::string name);

  int           fVerbose;
  int           fNevt;

  std::string   fHLTProcessName; 
  edm::InputTag fL1GTReadoutRecordLabel; 
  edm::InputTag fL1GTmapLabel;
  edm::InputTag fL1MuonsLabel;
  edm::InputTag fTriggerEventLabel;
  edm::InputTag fHLTResultsLabel;
  
  HLTConfigProvider hltConfig;
  bool validHLTConfig;
};

#endif
