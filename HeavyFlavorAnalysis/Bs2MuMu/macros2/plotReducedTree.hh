#ifndef PLOTREDUCEDTREE
#define PLOTREDUCEDTREE

#include "plotClass.hh"

class plotReducedTree: public plotClass {

public:

  plotReducedTree(const char *files="anaBmm.default.files", const char *cuts = "default", const char *dir = "default", int mode = 11);
  ~plotReducedTree();

  void makeAll(int channels = 3);
  
  void tnpVsMC(double m1pt, double m2pt, int chan = 3, std::string what = "default");
  void triggerSignal(std::string cuts = "fls3d>8&&chi2/dof<2");
  void triggerNormalization(std::string cuts = "fls3d>8&&chi2/dof<2&&alpha<0.05&&iso>0.5");

  ClassDef(plotReducedTree,1) //Testing plotReducedTree

};


#endif

