#ifndef CANDANADSTAR_H
#define CANDANADSTAR_H

#include <iostream>
#include <string>
#include <utility>
#include <vector>
#include <map>

#include <TROOT.h>
#include <TString.h>
#include <TVector3.h>
#include <TLorentzVector.h>
#include <TChain.h>
#include <TFile.h>
#include <TH1.h>
#include <TH2.h>
#include <TTree.h>

#include "candAna.hh"

class candAnaDstar : public candAna {
  
public:
  candAnaDstar(bmm2Reader *pReader, std::string name, std::string cutsFile);
  ~candAnaDstar();

  //void        evtAnalysis(TAna01Event *evt);
  bool        anaMC();
  void        candAnalysis();
  void        moreBasicCuts();

  int         truthMatch(TAnaCand *pC, int verbose = 0); 
  void        dumpHFTruthCand(TAnaCand *pC); 
  void        dumpHFDstarCand(TAnaCand *pC); 
  void        readCuts(string filename, int dump);
  void        bookHist();
  void        genMatch();
  void        recoMatch();
  void        candMatch();
  void        efficiencyCalculation();
  int         doTest(TAnaCand *pC, int mode =-1); 
  int         getJpsi(int &idx1, int &idx2);

  double      doTriggerMatchingTest(TAnaTrack *pt, int trig, double &hpt, double &heta, double &hphi, int &hid, int hltid1=-1, int hltid2=-1); // match a single track to HLT
  int         doTriggerSelection(void); // match all muon pairs 

private:
  TTree * tree;
  int ftm, fnclose;
  bool fmuid1, fmuid2, fquality1, fquality2;
  float fmds, fmdz;
  float ffls3d,fchi2,falpha,fqpis,fdr;
  float fpt,fptdz,fptpis,fptpi,fptk;
  float fpvd, fiso;
  float feta, fetapi, fetak, fphipi, fphik;
  float fchipi, fchik;
  float mudr1, mudr2;
  int fnumHltMuons, fnumHltPureMuons,fnumHltPureMuons2, fnumHltPureTMuons; // for number of hlt matched muons
  bool fmuidmva1, fmuidmva2; // MVA muon id
  double fmva1, fmva2; // MVA
  // test
  float match1dr1, match2dr1,match1dr2, match2dr2,match1dr3, match2dr3,match1dr4, match2dr4;
  float match1dr5, match2dr5;
  vector<int> hltMatchedMuons, hltMatchedTMuons, hltMatchedMuonId;
  bool fMatchedPion,fMatchedKaon,fMatchedTPion,fMatchedTKaon,fRejectPion,fRejectKaon;
  int foundJpsis;
  float fangle;
  double       fHltMu3Pt, fHltMu3Eta, fHltMu4Pt, fHltMu4Eta,fHltMu3Phi,fHltMu4Phi ;
  int          fHltMu4Id, fHltMu3Id;
  int fTrkId3, fTrkId4, fTrkId1, fTrkId2;


};

#endif
