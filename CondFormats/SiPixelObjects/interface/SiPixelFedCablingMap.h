#ifndef EventFilter_SiPixelRawToDigi_SiPixelFedCablingMap_H
#define EventFilter_SiPixelRawToDigi_SiPixelFedCablingMap_H

#include "CondFormats/Serialization/interface/Serializable.h"

#include "CondFormats/SiPixelObjects/interface/SiPixelFedCabling.h"
#include "CondFormats/SiPixelObjects/interface/PixelROC.h"

#include <string>
#include <map>
#include<memory>

#include "FWCore/Utilities/interface/GCC11Compatibility.h"
#if !defined(__CINT__) && !defined(__MAKECINT__) && !defined(__REFLEX__)
#define NO_DICT
#endif


class SiPixelFedCablingTree;
class TrackerTopology;

class SiPixelFedCablingMap : public SiPixelFedCabling {

public: 

  SiPixelFedCablingMap(const SiPixelFedCablingTree *cab);

  SiPixelFedCablingMap(const std::string & version="") : theVersion(version) {
    std::cout<<" SiPixelFedCablingMap constructor: NOT CALLED "<<theVersion<<std::endl;}

  void initializeRocs();
  void initializeRocs(const TrackerTopology *tt,bool phase1=false) const;

  virtual ~SiPixelFedCablingMap() {}

#ifdef NO_DICT
  std::unique_ptr<SiPixelFedCablingTree> cablingTree() const; 
#endif

  virtual std::string version() const { return theVersion; }

  virtual const sipixelobjects::PixelROC* findItem(
      const sipixelobjects::CablingPathToDetUnit & path) const;

  virtual std::vector<sipixelobjects::CablingPathToDetUnit> pathToDetUnit(uint32_t rawDetId) const;

  std::vector<unsigned int> fedIds() const;

  struct Key { unsigned int fed, link, roc; bool operator < (const Key & other) const; 
  COND_SERIALIZABLE;
};

private:
  std::string theVersion;
  typedef std::map<Key, sipixelobjects::PixelROC> Map;
  // Add mutable to be able to construct it 
  mutable Map theMap;  


  COND_SERIALIZABLE;
};

#endif
