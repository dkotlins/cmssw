import os
import FWCore.ParameterSet.Config as cms

process = cms.Process("test")

# ----------------------------------------------------------------------
process.load("FWCore.MessageLogger.MessageLogger_cfi")
process.MessageLogger.cerr.threshold = 'INFO'
process.MessageLogger.cerr.FwkReport.reportEvery = 1000
process.options   = cms.untracked.PSet( wantSummary = cms.untracked.bool(True) )


# ----------------------------------------------------------------------
# -- Database configuration
process.load("CondCore.DBCommon.CondDBCommon_cfi")
process.load("CondCore.DBCommon.CondDBSetup_cfi")

# -- Conditions
process.load("Configuration.StandardSequences.MagneticField_38T_cff")
process.load("Configuration.Geometry.GeometryIdeal_cff")
process.load("RecoVertex.BeamSpotProducer.BeamSpot_cfi")
process.load("Configuration.StandardSequences.FrontierConditions_GlobalTag_cff")
process.GlobalTag.globaltag = "GR_P_V43::All"

# ----------------------------------------------------------------------
# -- Input files
#POOLSOURCE

process.source = cms.Source(
    "PoolSource", 
    fileNames = cms.untracked.vstring(
 "/store/data/Run2012D/MuOnia/AOD/PromptReco-v1/000/208/686/5424A65B-1F41-E211-BF75-001D09F2424A.root",
    )
)

process.maxEvents = cms.untracked.PSet( input = cms.untracked.int32(100) )



# ----------------------------------------------------------------------

process.analysis =  cms.EDAnalyzer("HFtest",
    verbose      = cms.untracked.int32(1),
    HLTProcessName          = cms.untracked.string('HLT'), 
    L1GTReadoutRecordLabel  = cms.untracked.InputTag("gtDigis"), 
    #hltL1GtObjectMap        = cms.untracked.InputTag("hltL1GtObjectMap"), 
    hltL1GtObjectMap        = cms.untracked.InputTag("l1L1GtObjectMap"), 
    L1MuonsLabel            = cms.untracked.InputTag("hltL1extraParticles"), 
    HLTResultsLabel         = cms.untracked.InputTag("TriggerResults::HLT"), 
    TriggerEventLabel       = cms.untracked.InputTag("hltTriggerSummaryAOD::HLT"), 
)

process.p = cms.Path(process.analysis)
