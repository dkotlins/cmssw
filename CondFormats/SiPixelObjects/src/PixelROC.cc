#include "CondFormats/SiPixelObjects/interface/PixelROC.h"

#include "DataFormats/SiPixelDetId/interface/PixelBarrelName.h"
#include "DataFormats/SiPixelDetId/interface/PixelEndcapName.h"
#include "DataFormats/DetId/interface/DetId.h"
#include "DataFormats/TrackerCommon/interface/TrackerTopology.h"

#include <sstream>
#include <algorithm>
using namespace std;
using namespace sipixelobjects;

PixelROC::PixelROC(uint32_t du, int idDU, int idLk)
  : theDetUnit(du), theIdDU(idDU), theIdLk(idLk) {
  cout<<" is this ever called "<<endl;
  initFrameConversion();
  cout<<" maybe not "<<endl;
}

void PixelROC::initFrameConversion(const TrackerTopology *tt, bool phase1) {
  cout<<"PixelROC::initFramConversion - using topology, phase1 "<<phase1<<endl;

  if(phase1) { // phase1
    cout<<" new initFrameConversion for phase 1 "<<phase1<<endl;

    bool isBarrel = PixelModuleName::isBarrel(theDetUnit);
    int side = 0;
    if(isBarrel) {
      // Barrel Z-index=1,8
      if((tt->pxbModule(theDetUnit))<5) side=-1;
      else side=1;
      cout<<" bpix, side "<<side<<" "<<tt->pxbModule(theDetUnit)<<endl;
    } else {
      // Endcaps, use the panel to find the direction 
      if((tt->pxfPanel(theDetUnit))==1) side=-1; // panel 1
      else side =1; // panel 2
      cout<<" fpix, side "<<side<<" "<<tt->pxfPanel(theDetUnit)<<endl;
    }
    theFrameConverter = FrameConversion(isBarrel,side, theIdDU);

  } else { // phase0
    initFrameConversion();  // old code for phase0
  }

  cout<<" init FrameConversion "<<phase1
      <<" "<<theDetUnit<<" "<<theIdDU<<" "<<theIdLk
      <<" "<<theFrameConverter.row().offset()
      <<" "<<theFrameConverter.row().slope()
      <<" "<<theFrameConverter.collumn().offset()
      <<" "<<theFrameConverter.collumn().slope()
      <<endl;

}

void PixelROC::initFrameConversion() {
  //bool phase1_ = true;
  // bool phase1_ = false;

  // cout<<" old initFrameConversion for phase 0 "<<phase1_<<endl;
  // if(phase1_) { // phase 1 
  //   cout<<" phase 1"<<endl;
  //   int rowOffset=0, rowSlope=0, colOffset=0, colSlope=0;
  //   // for the moment this is only OK for bpix +z side 
  //   if(theIdDU<8) { // first 8 rocs 
  //     rowSlope = -1;
  //     colSlope = 1;
  //     rowOffset = (2*LocalPixel::numRowsInRoc)-1;
  //     colOffset = theIdDU * LocalPixel::numColsInRoc; 
  //   } else { // 2nd 8 rocs 
  //     rowSlope = 1;
  //     colSlope = -1;
  //     rowOffset = 0;
  //     colOffset = ((16-theIdDU) * LocalPixel::numColsInRoc) - 1; 
  //   } // rocs 
  //   theFrameConverter = FrameConversion(rowOffset,rowSlope,colOffset,colSlope);

  // } else { // phase 0
    if ( PixelModuleName::isBarrel(theDetUnit) ) {
      PixelBarrelName barrelName(theDetUnit);
      //cout<<" bpix mod "<<barrelName.name()<<" "<<theDetUnit<<" "<<theIdDU<<" "<<theIdLk<<endl;
      theFrameConverter = FrameConversion(barrelName, theIdDU);
    } else {
      PixelEndcapName endcapName(theDetUnit);
      theFrameConverter =  FrameConversion(endcapName, theIdDU); 
    }
    // } // end phase 

  cout<<" init FrameConversion "
      <<" "<<theDetUnit<<" "<<theIdDU<<" "<<theIdLk
      <<" "<<theFrameConverter.row().offset()
      <<" "<<theFrameConverter.row().slope()
      <<" "<<theFrameConverter.collumn().offset()
      <<" "<<theFrameConverter.collumn().slope()
      <<endl;

}

string PixelROC::print(int depth) const
{

  ostringstream out;
  bool barrel = PixelModuleName::isBarrel(theDetUnit);
  DetId detId(theDetUnit);
  if (depth-- >=0 ) {
    out <<"======== PixelROC ";
    out <<" unit: ";
    if (barrel) out << PixelBarrelName(detId).name();
    else        out << PixelEndcapName(detId).name(); 
    out <<" ("<<theDetUnit<<")"
        <<" idInDU: "<<theIdDU
        <<" idInLk: "<<theIdLk
//        <<" frame: "<<theRowOffset<<","<<theRowSlopeSign<<","<<theColOffset<<","<<theColSlopeSign
//        <<" frame: "<<*theFrameConverter
        <<endl;
  }
  return out.str();
}

