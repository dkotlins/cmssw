# MAKE-REDTREES
#
# B0ToJpsiMuMuX

#/shome/kotlinski/perl/run  -c treeNoComp.csh -t ../../../../250912.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -C cuts/bmm2Reader.2e33-Bd2JpsiKstar  -v 0 -m'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/mc/B0ToPsiMuMu/'  ../chains/cbmm-B0ToPsiMuMu-*

# MC

# Bdpipi
#/shome/kotlinski/perl/run  -c treeComp.csh -t ../../../../130613.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -C cuts/bmm2Reader.2e33-Bd2PiPi  -v 0 -y 2012 -m'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/mc/BdToPiPi/'  ../chains/cbmm-2012-v16-BdToPiPi_2PiPtEtaFilter_8TeV-pythia6-evtgen__Summer12_DR53X-PU_S10_START53_V7A-v2-*
# BsKK
#/shome/kotlinski/perl/run  -c treeComp.csh -t ../../../../130613.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -C cuts/bmm2Reader.2e33-Bs2KK  -v 0 -y 2012 -m'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/mc/BsToKK/'  ../chains/cbmm-2012-v16-BsToKK_2KPtEtaFilter_8TeV-pythia6-evtgen__Summer12_DR53X-PU_S10_START53_V7A-v1-*
#

# BsMuMu
#/shome/kotlinski/perl/run  -c treeComp.csh -t ../../../../270613.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -C cuts/bmm2Reader.mix-Bs2MuMu  -v 0 -y 2012 -m'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/mc/BsToMuMu/'  ../chains/cbmm-2012-v16-BsToMuMu_EtaPtFilter_8TeV-pythia6-evtgen__Summer12_DR53X-PU_S10_START53_V7C-v1-*

# PsiPhi
#/shome/kotlinski/perl/run  -c treeComp.csh -t ../../../../130613.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -C cuts/bmm2Reader.mix-Bs2JpsiPhi  -v 0 -y 2012 -m'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/mc/BsToJPsiPhi/'  ../chains/cbmm-2012-v16-BsToJPsiPhi_2K2MuPtEtaFilter_8TeV-pythia6-evtgen__Summer12_DR53X-PU_S10_START53_V7A-v1-*

# PsiK
#/shome/kotlinski/perl/run  -c treeComp.csh -t ../../../../280913.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -C cuts/bmm2Reader.mix-Bu2JpsiK  -v 0 -y 2012 -m'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/mc/BuToJPsiK/'  ../chains/cbmm-2012-v16-BuToJPsiK_K2MuPtEtaEtaFilter_8TeV-pythia6-evtgen__Summer12_DR53X-PU_S10_START53_V7A-v2-*

# DATA 2011

#/shome/kotlinski/perl/run  -c treeComp.csh -t ../../../../210613.tar.gz -m batch -q all.q -x 'bin/runBmm2 -y 2011 -C cuts/bmm2Reader.2011 -v 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data11/bmm/'  ../chains/cbmm-2011-v16-MuOnia__Run2011A-08Nov2011-v1-*
#/shome/kotlinski/perl/run  -c treeComp.csh -t ../../../../210613.tar.gz -m batch -q all.q -x 'bin/runBmm2 -y 2011 -C cuts/bmm2Reader.2011 -v 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data11/bmm/'  ../chains/cbmm-2011-v16-MuOnia__Run2011B-19Nov2011-v1-*

# DATA 2012 
/shome/kotlinski/perl/run  -c treeComp.csh -t ../../../../280913.tar.gz -m batch -q all.q -x 'bin/runBmm2  -y 2012 -C cuts/bmm2Reader.2012 -v 0 -b 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/bmm/'  ../chains/cbmm-2012-v16-MuOnia__Run2012A-13Jul2012-v1-*
/shome/kotlinski/perl/run  -c treeComp.csh -t ../../../../280913.tar.gz -m batch -q all.q -x 'bin/runBmm2  -y 2012 -C cuts/bmm2Reader.2012 -v 0 -b 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/bmm/'  ../chains/cbmm-2012-v16-MuOnia__Run2012A-recover-06Aug2012-v1-*
/shome/kotlinski/perl/run  -c treeComp.csh -t ../../../../280913.tar.gz -m batch -q all.q -x 'bin/runBmm2 -y 2012 -C cuts/bmm2Reader.2012 -v 0 -b 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/bmm/'  ../chains/cbmm-2012-v16-MuOnia__Run2012B-13Jul2012-v1-*
/shome/kotlinski/perl/run  -c treeComp.csh -t ../../../../280913.tar.gz -m batch -q all.q -x 'bin/runBmm2  -y 2012 -C cuts/bmm2Reader.2012 -v 0 -b 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/bmm/'  ../chains/cbmm-2012-v16-MuOnia__Run2012C-24August2012-v1-*
/shome/kotlinski/perl/run  -c treeComp.csh -t ../../../../280913.tar.gz -m batch -q all.q -x 'bin/runBmm2  -y 2012 -C cuts/bmm2Reader.2012 -v 0 -b 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/bmm/'  ../chains/cbmm-2012-v16-MuOnia__Run2012C-PromptReco-v2-*
/shome/kotlinski/perl/run  -c treeComp.csh -t ../../../../280913.tar.gz -m batch -q all.q -x 'bin/runBmm2 -y 2012 -C cuts/bmm2Reader.2012 -v 0 -b 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/bmm/'  ../chains/cbmm-2012-v16-MuOnia__Run2012D-16Jan2013-v1-*
/shome/kotlinski/perl/run  -c treeComp.csh -t ../../../../280913.tar.gz -m batch -q all.q -x 'bin/runBmm2 -y 2012 -C cuts/bmm2Reader.2012 -v 0 -b 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/bmm/'  ../chains/cbmm-2012-v16-MuOnia__Run2012D-PromptReco-v1-*


# testing
#/shome/kotlinski/perl/run  -c treeComp.csh -t ../../../../270413.tar.gz -m batch -q all.q -x 'bin/runBmm2 -n 100000 -b 0 -y 2012 -C cuts/bmm2Reader.2012 -v 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/bmm/'  ../chains//cbmm-2012-v14-MuOnia__Run2012D-PromptReco-v1

#/shome/kotlinski/perl/run  -c treeComp.csh -t ../../../../270413.tar.gz -m batch -q all.q -x 'bin/runBmm2  -b 0 -y 2012 -C cuts/bmm2Reader.2012 -v 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/bmm/'  ../chains/cbmm-2012-v14-MuOnia__Run2012D-PromptReco-v1-00


# DSTAR
#==========
# V16 MUONIA
# 2012
#/shome/kotlinski/perl/run_new  -c treeComp.csh -t ../../../../200913.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -C cuts/bmm2Reader.Dstar.2012  -v 0 -y 2012 -b 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/muonia-dstar/'  ../chains/chadronic-2012-v16-2012D-MuOnia-*
#/shome/kotlinski/perl/run_new  -c treeComp.csh -t ../../../../200913.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -C cuts/bmm2Reader.Dstar.2012  -v 0 -y 2012 -b 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/muonia-dstar/'  ../chains/chadronic-2012-v16-2012C-MuOnia-*
#/shome/kotlinski/perl/run_new  -c treeComp.csh -t ../../../../200913.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -C cuts/bmm2Reader.Dstar.2012  -v 0 -y 2012 -b 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/muonia-dstar/'  ../chains/chadronic-2012-v16-2012B-MuOnia-*
#/shome/kotlinski/perl/run_new  -c treeComp.csh -t ../../../../200913.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -C cuts/bmm2Reader.Dstar.2012  -v 0 -y 2012 -b 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/muonia-dstar/'  ../chains/chadronic-2012-v16-2012A-MuOnia-*

# 2011
#/shome/kotlinski/perl/run_new  -c treeComp.csh -t ../../../../110613.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -C cuts/bmm2Reader.Dstar.2011  -v 0 -y 2011 -b 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data11/muonia-dstar/'  ../chains/chadronic-2011-v16-2011B-MuOnia-*
#/shome/kotlinski/perl/run_new  -c treeComp.csh -t ../../../../110613.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -C cuts/bmm2Reader.Dstar.2011  -v 0 -y 2011 -b 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data11/muonia-dstar/'  ../chains/chadronic-2011-v16-2011A-MuOnia-*


# test
#/shome/kotlinski/perl/run_new  -c treeComp.csh -t ../../../../030413.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -C cuts/bmm2Reader.Dstar.2012  -v 0 -y 2012 -b 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/test/'  ../chains/chadronic-test-0*


# V14 HT
# 2012
#/shome/kotlinski/perl/run_new  -c treeComp.csh -t ../../../../030413.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -C cuts/bmm2Reader.Dstar.2012  -v 0 -y 2012 -b 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/dstar/'  ../chains/chadronic-v14-2012A-HT-*

#/shome/kotlinski/perl/run_new  -c treeComp.csh -t ../../../../030413.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -C cuts/bmm2Reader.Dstar.2012  -v 0 -y 2012 -b 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/dstar/'  ../chains/chadronic-v14-2012B-HT-*

#/shome/kotlinski/perl/run_new  -c treeComp.csh -t ../../../../030413.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -C cuts/bmm2Reader.Dstar.2012  -v 0 -y 2012 -b 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/dstar/'  ../chains/chadronic-v14-2012C-HT-*

#/shome/kotlinski/perl/run_new  -c treeComp.csh -t ../../../../030413.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -C cuts/bmm2Reader.Dstar.2012  -v 0 -y 2012 -b 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/dstar/'  ../chains/chadronic-v14-2012D-HT-*

# MB
#/shome/kotlinski/perl/run_new  -c treeComp.csh -t ../../../../030413.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -C cuts/bmm2Reader.Dstar.2012  -v 0 -y 2012 -b 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/mb/'  ../chains/chadronic-v14-2012A-MinimumBias-*

#/shome/kotlinski/perl/run_new  -c treeComp.csh -t ../../../../030413.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -C cuts/bmm2Reader.Dstar.2012  -v 0 -y 2012 -b 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/mb/'  ../chains/chadronic-v14-2012B-MinimumBias-*

#/shome/kotlinski/perl/run_new  -c treeComp.csh -t ../../../../030413.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -C cuts/bmm2Reader.Dstar.2012  -v 0 -y 2012 -b 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/mb/'  ../chains/chadronic-v14-2012C-MinimumBias-*

#/shome/kotlinski/perl/run_new  -c treeComp.csh -t ../../../../030413.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -C cuts/bmm2Reader.Dstar.2012  -v 0 -y 2012 -b 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/mb/'  ../chains/chadronic-v14-2012D-MinimumBias-*

# Jet
#/shome/kotlinski/perl/run_new  -c treeComp.csh -t ../../../../030413.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -C cuts/bmm2Reader.Dstar.2012  -v 0 -y 2012 -b 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/jet/'  ../chains/chadronic-v14-2012A-MultiJet-*

#/shome/kotlinski/perl/run_new  -c treeComp.csh -t ../../../../030413.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -C cuts/bmm2Reader.Dstar.2012  -v 0 -y 2012 -b 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/jet/'  ../chains/chadronic-v14-2012B-MultiJet-*

#/shome/kotlinski/perl/run_new  -c treeComp.csh -t ../../../../030413.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -C cuts/bmm2Reader.Dstar.2012  -v 0 -y 2012 -b 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/jet/'  ../chains/chadronic-v14-2012C-MultiJet-*

#/shome/kotlinski/perl/run_new  -c treeComp.csh -t ../../../../030413.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -C cuts/bmm2Reader.Dstar.2012  -v 0 -y 2012 -b 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/jet/'  ../chains/chadronic-v14-2012D-MultiJet-*

# Electron
#/shome/kotlinski/perl/run_new  -c treeComp.csh -t ../../../../030413.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -C cuts/bmm2Reader.Dstar.2012  -v 0 -y 2012 -b 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/electron/'  ../chains/chadronic-v14-2012A-SingleElectron-*

#/shome/kotlinski/perl/run_new  -c treeComp.csh -t ../../../../030413.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -C cuts/bmm2Reader.Dstar.2012  -v 0 -y 2012 -b 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/electron/'  ../chains/chadronic-v14-2012B-SingleElectron-*

#/shome/kotlinski/perl/run_new  -c treeComp.csh -t ../../../../030413.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -C cuts/bmm2Reader.Dstar.2012  -v 0 -y 2012 -b 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/electron/'  ../chains/chadronic-v14-2012C-SingleElectron-*

#/shome/kotlinski/perl/run_new  -c treeComp.csh -t ../../../../030413.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -C cuts/bmm2Reader.Dstar.2012  -v 0 -y 2012 -b 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/electron/'  ../chains/chadronic-v14-2012D-SingleElectron-*


# 2011
#/shome/kotlinski/perl/run_new  -c treeComp.csh -t ../../../../130613.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -C cuts/bmm2Reader.Dstar.2011  -v 0 -y 2011 -b 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data11/dstar/'  ../chains/chadronic-2011-v16-HT__Run2011A-08Nov2011-v1-*

#/shome/kotlinski/perl/run_new  -c treeComp.csh -t ../../../../130613.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -C cuts/bmm2Reader.Dstar.2011  -v 0 -y 2011 -b 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data11/dstar/'  ../chains/chadronic-2011-v16-HT__Run2011B-19Nov2011-v1-*


# Dstar MC
#/shome/kotlinski/perl/run_new  -c treeComp.csh -t ../../../../130613.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -C cuts/bmm2Reader.Dstar.2012  -v 0 -m -y 2012 -b 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/mc/dstar/'  ../chains/chadronic_v16_mc_BdToD0starPi-*

# same for 2011
#/shome/kotlinski/perl/run_new  -c treeComp.csh -t ../../../../030413.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -C cuts/bmm2Reader.Dstar.2011  -v 0 -m -y 2011 -b 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/mc/dstar11/'  ../chains/cbmm-mc-2012-v14-BdToD0starPi_EtaPtFilter_8TeV-pythia6-evtgen__Summer12_DR53X-PU_S10_START53_V7C-v1-*




#===============================================================================================================================
# 2011 HH

# 2011 FOR OFFICIAL HH SAME-SIGN REDTREES
 
#/shome/kotlinski/perl/run  -c treeNoComp.csh -t ../../../../050912_same.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -C cuts/bmm2Reader.Hh  -v 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data11/hh-same/'  ../chains/chh-Run2011B-PromptReco-v1_same-0*

#/shome/kotlinski/perl/run  -c treeNoComp.csh -t ../../../../050912_same.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -C cuts/bmm2Reader.Hh  -v 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data11/hh-same/'  ../chains/chh-Run2011A-PromptReco-v4_same-0*

#/shome/kotlinski/perl/run  -c treeNoComp.csh -t ../../../../050912_same.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -C cuts/bmm2Reader.Hh  -v 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data11/hh-same/'  ../chains/chh-Run2011A-PromptReco-v5_same-0*

#/shome/kotlinski/perl/run  -c treeNoComp.csh -t ../../../../050912_same.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -C cuts/bmm2Reader.Hh  -v 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data11/hh-same/'  ../chains/chh-Run2011A-PromptReco-v6_same-0*

#/shome/kotlinski/perl/run  -c treeNoComp.csh -t ../../../../050912_same.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -C cuts/bmm2Reader.Hh  -v 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data11/hh-same/'  ../chains/chh-Run2011A-May10ReReco-v1_same-0*



# FOR 2011 OFFICIAL HH REDTREES

# run2011B
#/shome/kotlinski/perl/run_new  -c treeComp.csh -t ../../../../051212.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -y 2011 -C cuts/bmm2Reader.Hh  -v 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data11/hh/'  ../chains/cbmm-v11-Run2011B-PromptReco-v1-0*

# run2011A
#/shome/kotlinski/perl/run  -c treeComp.csh -t ../../../../051212.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -y 2011 -C cuts/bmm2Reader.Hh  -v 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data11/hh/'  ../chains/cbmm-v11-Run2011A-PromptReco-v4-0*

#/shome/kotlinski/perl/run  -c treeComp.csh -t ../../../../051212.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -y 2011 -C cuts/bmm2Reader.Hh  -v 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data11/hh/'  ../chains/cbmm-v11-Run2011A-PromptReco-v5-0*

#/shome/kotlinski/perl/run  -c treeComp.csh -t ../../../../051212.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -y 2011 -C cuts/bmm2Reader.Hh  -v 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data11/hh/'  ../chains/cbmm-v11-Run2011A-PromptReco-v6-0*

#/shome/kotlinski/perl/run  -c treeComp.csh -t ../../../../051212.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -y 2011 -C cuts/bmm2Reader.Hh  -v 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data11/hh/'  ../chains/cbmm-v11-Run2011A-May10ReReco-v1-0*

# for 2011 tests (all) 

#/shome/kotlinski/perl/run_new  -c treeComp.csh -t ../../../../051212.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -y 2011 -C cuts/bmm2Reader.Hh_all  -v 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data11/test/'  ../chains/cbmm-v11-Run2011B-PromptReco-v1-0*
#/shome/kotlinski/perl/run  -c treeComp.csh -t ../../../../051212.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -y 2011 -C cuts/bmm2Reader.Hh_all  -v 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data11/test/'  ../chains/cbmm-v11-Run2011A-PromptReco-v4-0*
#/shome/kotlinski/perl/run  -c treeComp.csh -t ../../../../051212.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -y 2011 -C cuts/bmm2Reader.Hh_all  -v 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data11/test/'  ../chains/cbmm-v11-Run2011A-PromptReco-v5-0*
#/shome/kotlinski/perl/run  -c treeComp.csh -t ../../../../051212.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -y 2011 -C cuts/bmm2Reader.Hh_all  -v 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data11/test/'  ../chains/cbmm-v11-Run2011A-PromptReco-v6-0*
#/shome/kotlinski/perl/run  -c treeComp.csh -t ../../../../051212.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -y 2011 -C cuts/bmm2Reader.Hh_all  -v 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data11/test/'  ../chains/cbmm-v11-Run2011A-May10ReReco-v1-0*




#---------------------------------------------------------------------------------------------------------------------------------
# special HH tests
# FOR 0-20
#/shome/kotlinski/perl/run  -c treeNoComp.csh -t ../../../../220512_0_20.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -C cuts/bmm2Reader.Hh  -v 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data11/hh_0_20/'  ../chains/chh_0_20_chain-*
#/shome/kotlinski/perl/run  -c treeNoComp.csh -t ../../../../060612.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -C cuts/bmm2Reader.Hh_0_20_muon  -v 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data11/hh_0_20_muon/'  ../chains/chh_0_20_chain-*


#=========================================================================================================================

# RUN2012 HH

# 2012 - same 
#/shome/kotlinski/perl/run  -c treeNoComp.csh -t ../../../../120912.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -C cuts/bmm2Reader.Hh  -v 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/hh-same/'  ../chains/chh-Run2012A-PromptReco-v1_same-0*

#/shome/kotlinski/perl/run  -c treeNoComp.csh -t ../../../../050912_same.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -C cuts/bmm2Reader.Hh  -v 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/hh-same/'  ../chains/chh-Run2012B-PromptReco-v1_same-0*

#/shome/kotlinski/perl/run  -c treeNoComp.csh -t ../../../../050912_same.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -C cuts/bmm2Reader.Hh  -v 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/hh-same/'  ../chains/chh-Run2012C-PromptReco_same-0*

# tests 2012  (all)
#/shome/kotlinski/perl/run_new  -c treeComp.csh -t ../../../../161112.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -y 2012 -C cuts/bmm2Reader.Hh_all  -v 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/test/'  ../chains/cbmm-v12-Run2012A-PromptReco-v1_*


# 2012 no mu-veto
# A
#/shome/kotlinski/perl/run_new  -c treeComp.csh -t ../../../../051212.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -y 2012 -C cuts/bmm2Reader.Hh_test -v 0' -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/test/'  ../chains/cbmm-v12-Run2012A-13Jul2012-v1-*
# B
#/shome/kotlinski/perl/run_new  -c treeComp.csh -t ../../../../051212.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -y 2012 -C cuts/bmm2Reader.Hh_test -v 0' -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/test/'  ../chains/cbmm-v12-Run2012B-13Jul2012-v1-*
# C v1
#/shome/kotlinski/perl/run_new  -c treeComp.csh -t ../../../../051212.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -y 2012 -C cuts/bmm2Reader.Hh_test -v 0' -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/test/'  ../chains/cbmm-v12-Run2012C-PromptReco-v1-*
# C v2
#/shome/kotlinski/perl/run_new  -c treeComp.csh -t ../../../../051212.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -y 2012 -C cuts/bmm2Reader.Hh_test -v 0' -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/test/'  ../chains/cbmm-v12-Run2012C-PromptReco-v2-*
# D
#/shome/kotlinski/perl/run_new  -c treeComp.csh -t ../../../../051212.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -y 2012 -C cuts/bmm2Reader.Hh_test -v 0' -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/test/'  ../chains/cbmm-v12-Run2012D-PromptReco-v1-*




# 2012 mu-veto
# A
#/shome/kotlinski/perl/run_new  -c treeComp.csh -t ../../../../051212.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -y 2012 -C cuts/bmm2Reader.Hh  -v 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/hh-official/'  ../chains/cbmm-v12-Run2012A-13Jul2012-v1-*

# B
#/shome/kotlinski/perl/run_new  -c treeComp.csh -t ../../../../051212.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -y 2012 -C cuts/bmm2Reader.Hh  -v 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/hh-official/'  ../chains/cbmm-v12-Run2012B-13Jul2012-v1-*

# C v1
#/shome/kotlinski/perl/run_new  -c treeComp.csh -t ../../../../051212.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -y 2012 -C cuts/bmm2Reader.Hh  -v 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/hh-official/'  ../chains/cbmm-v12-Run2012C-PromptReco-v1-*

# C v2
#/shome/kotlinski/perl/run_new  -c treeComp.csh -t ../../../../051212.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -y 2012 -C cuts/bmm2Reader.Hh  -v 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/hh-official/'  ../chains/cbmm-v12-Run2012C-PromptReco-v2-*

# D
#/shome/kotlinski/perl/run_new  -c treeComp.csh -t ../../../../051212.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -y 2012 -C cuts/bmm2Reader.Hh  -v 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/hh-official/'  ../chains/cbmm-v12-Run2012D-PromptReco-v1-*


#=============================================================================================================================
# FOR 2012 tests
# testing
#/shome/kotlinski/perl/run  -c treeComp.csh -t ../../../../161112.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -y 2012 -C cuts/bmm2Reader.2012 -n 1000 -v 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/t/'  ../chains/cbmm-v12-Run2012C-PromptReco-v2_6

# Hh
#/shome/kotlinski/perl/run  -c treeComp.csh -t ../../../../111212.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -y 2012 -C cuts/bmm2Reader.Hh  -v 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/hh1/'  ../chains/OLD/cbmm-v12-Run2012C-PromptReco-v2_6-*

#/shome/kotlinski/perl/run  -c treeComp.csh -t ../../../../231112.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -y 2012 -C cuts/bmm2Reader.Hh_Bs  -v 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/hh3/'  ../chains/OLD/cbmm-v12-Run2012C-PromptReco-v2_6-*

#/shome/kotlinski/perl/run  -c treeComp.csh -t ../../../../161112.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -y 2012 -C cuts/bmm2Reader.Hh_test  -v 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/hh1/'  ../chains/cbmm-v12-Run2012C-PromptReco-v2_6-*



# real 
#/shome/kotlinski/perl/run  -c treeComp.csh -t ../../../../141112.tar.gz -m batch -q all.q -x 'bin/runBmm2 -b 0 -y 2012 -C cuts/bmm2Reader.2012  -v 0'  -r  'STORAGE1 srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/bmm/'  ../chains/cbmm-v12-Run2012C-PromptReco-v2_6-*

#====================================================================================================================================================

# merge trees (beware, it merges all root files in the specified directory & and copies the sum to the folder)
#./runMy -t ../../../../150512.tar.gz -h   -r redtree/Data11/hh/
# option -d just tp show
#./runMy  -h -d -o hh.root  -r redtree/Data11/hh/
# merge my hh redtrees
#./runMy  -h -o hh.root  -r redtree/Data11/hh/
# merge official hh redtrees
#./runMy  -h -o hh_official.root  -r redtree/Data11/hh-official/

#./runMy  -h -o hh_0_20_muon.root  -r redtree/Data11/hh_0_20_muon/
#./runMy  -h -o hh_0_20.root  -r redtree/Data11/hh_0_20/
#./runMy  -h -o hh_official_same.root  -r redtree/Data11/hh-same-official/
#./runMy  -h -o hh_official_same_new.root  -r redtree/Data11/hh-same-official_new/
#./runMy  -h -o hh_official_new.root  -r redtree/Data11/hh-official_new/

# 2012
#./runMy  -h -o hh_2012_official_same.root  -r redtree/Data12/hh-same-official/
#./runMy  -h -o hh_2012_official.root       -r redtree/Data12/hh-official/


# delete (use -d to test)
#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/hh-official  -p \\.root
