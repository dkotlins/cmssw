#ifndef CANDANAMUMU_H
#define CANDANAMUMU_H

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

class candAnaMuMu : public candAna {
  
public:
  candAnaMuMu(bmm2Reader *pReader, std::string name, std::string cutsFile);
  virtual ~candAnaMuMu();

  void        candAnalysis();
  void        efficiencyCalculation();
  
  void        processType(); 
  void        genMatch(); 
  void        recoMatch(); 
  void        candMatch(); 
  
  void        bookHist();
  void        readCuts(string filename, int dump);

  // tests d.k.   
  bool         fKa1Missid, fKa2Missid, fKa1MuMatch, fKa2MuMatch;
  bool         fKa1Missid2, fKa1MuMatch2; 
  float        fKa1MuMatchR, fKa1MuMatchR2, fKa1MuMatchR3, fKa1MuMatchR4, fKa1MuMatchR5;
  bool         fKa2Missid2, fKa2MuMatch2; 
  float        fKa2MuMatchR, fKa2MuMatchR2, fKa2MuMatchR3, fKa2MuMatchR4, fKa2MuMatchR5;


};

#endif
