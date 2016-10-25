import FWCore.ParameterSet.Config as cms

process = cms.Process("SLINKTORAW")
process.load("IORawData.SiPixelInputSources.PixelSLinkDataInputSource_cfi")

process.maxEvents = cms.untracked.PSet(
    input = cms.untracked.int32(100000)
)
process.MessageLogger = cms.Service("MessageLogger",
    cout = cms.untracked.PSet(
#        threshold = cms.untracked.string('INFO')
#        threshold = cms.untracked.string('DEBUG')
        threshold = cms.untracked.string('ERROR')
    ),
    destinations = cms.untracked.vstring('cout')
)

#process.PixelSLinkDataInputSource.fileNames = ['rfio:/castor/cern.ch/cms/store/TAC/PIXEL/FPIX/HC+Z1/SCurve_565.dmp']
process.PixelSLinkDataInputSource.fileNames = ['file:/afs/cern.ch/work/t/tvami/public/Gain/Run_2734/GainCalibration_1240_2734.dmp']
#process.PixelSLinkDataInputSource.fileNames = ['file:/afs/cern.ch/user/d/dkotlins/eos/cms/store/group/dpg_tracker_pixel/comm_pixel/GainCalibrations/Run_278087/GainCalibration_0_278087.dmp']

process.out = cms.OutputModule("PoolOutputModule",
    fileName = cms.untracked.string('myfile.root')
)

process.e = cms.EndPath(process.out)


