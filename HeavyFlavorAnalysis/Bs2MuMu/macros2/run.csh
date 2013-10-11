# MC

# Bu2JpsiPi
#bin/runBmm2 -C cuts/bmm2Reader.2e33-Bu2JpsiPi -c chains/cbmm-v11-2e33-Bu2JpsiPi -v 0 -m -o mc.root

# B02JpsiMuMuX
#bin/runBmm2 -C cuts/bmm2Reader.2e33-Bd2JpsiKstar -c chains/cbmm-B0ToPsiMuMu -v 0 -m -n 10000 -o mc.root
#bin/runBmm2 -C cuts/bmm2Reader.2011 -c chains/cbmm-B0ToPsiMuMu -v 0 -m -n 100 -o mc.root

# Bu2JpsiPi
# bin/runBmm2 -C cuts/bmm2Reader.2011  -c chains/cbmm-v11-2e33-Bu2JpsiPi  -v 0  -o mc.root
# bin/runBmm2 -C cuts/bmm2Reader.Hh  -c chains/cbmm-v11-2e33-Bu2JpsiPi  -v 0 -m  -o mc.root
#bin/runBmm2 -C cuts/bmm2Reader.2e33-Bu2JpsiPi -f dcap://t3se01.psi.ch:22125/pnfs/psi.ch/cms/trivcat/store//user/kotlinski/root/Fall11/bmm/Bu2JpsiPi/bmm-mc-2e33-Bu2JpsiPi-0002.root  -n 1000 -v 0 -m -o mc.root
#bin/runBmm2 -C cuts/bmm2Reader.2e33-Bu2JpsiPi -f dcap://t3se01.psi.ch:22125/pnfs/psi.ch/cms/trivcat/store//user/kotlinski/root/Fall11/bmm/bmm-mc-2e33-Bu2JpsiPi-test.root  -v 0 -m -o mc.root

# BsToPsiMuMu
#bin/runBmm2 -C cuts/bmm2Reader.test -f dcap://t3se01.psi.ch:22125/pnfs/psi.ch/cms/trivcat/store//user/kotlinski/root/Fall11/bmm/bmm-mc-B0ToPsiMuMu-test.root -n 100 -v 0 -o mc.root
#bin/runBmm2 -C cuts/bmm2Reader.2011 -f dcap://t3se01.psi.ch:22125/pnfs/psi.ch/cms/trivcat/store//user/kotlinski/root/Fall11/bmm/bmm-mc-B0ToPsiMuMu-test.root -v 0  -o mc.root

# Bs2JpsiPhi  
#bin/runBmm2 -C cuts/bmm2Reader.mix-Bs2JpsiPhi -c chains/cbmm-v12-cms-BsToJPsiPhi_2K2MuPtEtaFilter_8TeV-START53_V7A-v1 -y 2012 -n 10000 -v 1 -m -o mc.root
# V16, 2012
#bin/runBmm2 -C cuts/bmm2Reader.mix-Bs2JpsiPhi -c chains/cbmm-2012-v16-BsToJPsiPhi_2K2MuPtEtaFilter_8TeV-pythia6-evtgen__Summer12_DR53X-PU_S10_START53_V7A-v1 -y 2012 -n 10000 -v 1 -m -o mc.root
# V16, 2011
#bin/runBmm2 -C cuts/bmm2Reader.mix-Bs2JpsiPhi -c chains/cbmm-2011-v16-mix-Bs2JpsiPhi  -y 201q -n 10000 -v 1 -m -o mc.root

# Bu2JpsiK  
# V16, 2012
bin/runBmm2 -C cuts/bmm2Reader.mix-Bu2JpsiK -c chains/cbmm-2012-v16-BuToJPsiK_K2MuPtEtaEtaFilter_8TeV-pythia6-evtgen__Summer12_DR53X-PU_S10_START53_V7A-v2 -y 2012 -n 10 -v 0 -m -o mc.root
# V16, 2011
#2bin/runBmm2 -C cuts/bmm2Reader.mix-Bu2JpsiK -c chains/cbmm-2011-v16-mix-Bu2JpsiK -y 2011 -n 100 -v -32 -m -o mc.root

# BsMuMu cms MC
#bin/runBmm2 -C cuts/bmm2Reader.mix-Bs2MuMu -c chains/cbmm-2012-v16-BsToMuMu_EtaPtFilter_8TeV-pythia6-evtgen__Summer12_DR53X-PU_S10_START53_V7C-v1 -y 2012 -n 10000 -v 0 -m -o mc.root

# rare decays MC
#bin/runBmm2 -C cuts/bmm2Reader.Bd2PiPi -c chains/cbmm-v12-cms-BdToPiPi_2PiPtEtaFilter_8TeV-START53_V7A-v2 -y 2012 -n 10000 -v 1 -m -o mc.root
#bin/runBmm2 -C cuts/bmm2Reader.2e33-Bs2KK   -c chains/cbmm-2012-v16-BsToKK_2KPtEtaFilter_8TeV-pythia6-evtgen__Summer12_DR53X-PU_S10_START53_V7A-v1  -y 2012 -n 10000 -v 0 -m -o mc.root


# TESTING - DATA 
#bin/runBmm2 -C cuts/bmm2Reader.2012 -c chains/cbmm-2012-v16-MuOnia__Run2012D-PromptReco-v1 -y 2012  -n 10000 -b 0 -v 0 -o data.root
#bin/runBmm2 -C cuts/bmm2Reader.2012 -c chains/cbmm-2012-v16-MuOnia__Run2012C-24August2012-v1 -y 2012   -b 0 -v 1 -o data.root
#bin/runBmm2 -C cuts/bmm2Reader.2012 -c chains/cbmm-2012-v16-MuOnia__Run2012C-PromptReco-v2-12 -y 2012   -b 0 -v 1 -o data.root

#bin/runBmm2 -C cuts/bmm2Reader.2012 -c chains/test    -y 2012   -b 0 -v 1 -o data.root

# <----------------
#bin/runBmm2 -C cuts/bmm2Reader.PsiK.2012 -c chains/cbmm-2012-v16-MuOnia__Run2012D-PromptReco-v1 -y 2012  -n 10000 -b 0 -v 0  -o data.root

#bin/runBmm2 -C cuts/bmm2Reader.PsiPhi.2012 -c chains/cbmm-2012-v16-MuOnia__Run2012D-PromptReco-v1 -y 2012  -n 10000 -b 0 -v 1 -o data.root
#bin/runBmm2 -C cuts/bmm2Reader.MuMu.2012 -c chains/cbmm-2012-v16-MuOnia__Run2012D-PromptReco-v1 -y 2012  -n 10000 -b 0 -v 1 -o data.root

#bin/runBmm2 -C cuts/bmm2Reader.2011 -c chains/cbmm-2011-v16-MuOnia__Run2011A-08Nov2011-v1-34  -y 2011  -n 10000 -b 0 -v 1 -o data.root

#bin/runBmm2 -C cuts/bmm2Reader.PsiK.2011 -c chains/cbmm-2011-v16-MuOnia__Run2011A-08Nov2011-v1-34  -y 2011  -n 10000 -b 0 -v 1 -o data.root
#bin/runBmm2 -C cuts/bmm2Reader.PsiK.2011 -c chains/cbmm-2011-v16-MuOnia__Run2011A-08Nov2011-v1-10  -y 2011  -n 100 -b 0 -v -32 -o data.root
#bin/runBmm2 -C cuts/bmm2Reader.PsiK.2011 -c chains/cbmm-2011-v16-MuOnia__Run2011B-19Nov2011-v1-00  -y 2011  -n 100 -b 0 -v -32 -o data.root


# Dstar
#======
# V16 Muonia-dstar

# <------------------
#bin/runBmm2 -C cuts/bmm2Reader.Dstar.2012 -c chains/chadronic-2012-v16-2012D-MuOnia-00 -y 2012 -n 10000 -b 0 -v 0 -o data.root

#bin/runBmm2 -C cuts/bmm2Reader.Dstar.2012 -c chains/test1 -y 2012 -n 100000 -b 0 -v 0  -o data.root
#bin/runBmm2 -C cuts/bmm2Reader.Dstar.2012 -f /scratch/kotlinski/bmm_2012_muonia.root -y 2012 -n 10000 -b 0 -v 10  -o data.root

#bin/runBmm2 -C cuts/bmm2Reader.Dstar.2011 -c chains/chadronic-2011-v14-MuOnia__Run2011A-08Nov2011-v1-00 -y 2011 -n 10000 -b 0 -v 1 -o data.root

# Dstar MC
#bin/runBmm2 -C cuts/bmm2Reader.Dstar.2012 -c chains/cbmm-2012-v14-BdToD0starPi_EtaPtFilter_8TeV-pythia6-evtgen__Summer12_DR53X-PU_S10_START53_V7C-v1 -y 2012 -n 1000 -b 0 -v -66 -m -o mc.root

#bin/runBmm2 -C cuts/bmm2Reader.Dstar.2012 -c chains/cbmm-2012-v16-BdToD0starPi_EtaPtFilter_8TeV-pythia6-evtgen__Summer12_DR53X-PU_S10_START53_V7C-v1-00 -y 2012 -n 100 -b 0 -v -66 -m -o mc.root
#bin/runBmm2 -C cuts/bmm2Reader.Dstar.2011 -c chains/cbmm-2011-v16-2e33-Bd2DstarPi -y 2012 -n 100 -b 0 -v -66 -m -o mc.root
#bin/runBmm2 -C cuts/bmm2Reader.Dstar.2011 -c chains/chadronic_v16_mc_BdToD0starPi-00 -y 2012 -n 10000 -b 0 -v 0 -m -o mc.root

# BMM normal processing



# test Hh
# MC
# bin/runBmm2 -C cuts/bmm2Reader.Hh -f /scratch/kotlinski/trees/bhh-bdpipi_1file_4_7_3_0p1.root  -v 0   -m -o run.root

#bin/runBmm2 -C cuts/bmm2Reader.Hh -f /scratch/kotlinski/trees/bhh-bdpipi_1file_4_7_4_0p025.root  -v 0   -m -o mc_bdpipi.root
#bin/runBmm2 -C cuts/bmm2Reader.Hh -f /scratch/kotlinski/trees/bhh-bdkk_1file_4_7_4_0p025.root    -v 0   -m -o mc_bdkk.root
#bin/runBmm2 -C cuts/bmm2Reader.Hh -f /scratch/kotlinski/trees/bhh-bdkpi_1file_4_7_4_0p025.root   -v 0   -m -o mc_bdkpi.root
#bin/runBmm2 -C cuts/bmm2Reader.Hh -f /scratch/kotlinski/trees/bhh-bspipi_1file_4_7_4_0p025.root  -v 0   -m -o mc_bspipi.root
#bin/runBmm2 -C cuts/bmm2Reader.Hh -f /scratch/kotlinski/trees/bhh-bskk_1file_4_7_4_0p025.root    -v 0   -m -o mc_bskk.root
#bin/runBmm2 -C cuts/bmm2Reader.Hh -f /scratch/kotlinski/trees/bhh-bskpi_1file_4_7_4_0p025.root   -v 0   -m -o mc_bs_kpi.root

# data

# my trees
#bin/runBmm2 -C cuts/bmm2Reader.Hh -c chains/chh_chain.txt  -v 0   -o run.root
# 0-20
#bin/runBmm2 -C cuts/bmm2Reader.Hh -c chains/chh_chain_0_20.txt  -v 0  -o run.root
#bin/runBmm2 -C cuts/bmm2Reader.Hh -c chains/hh_chain_0_20_single.txt  -v 0  -o run.root
#bin/runBmm2 -C cuts/bmm2Reader.Hh_0_20 -c chains/hh_chain_0_20_single.txt  -v 0  -o run.root
#bin/runBmm2 -C cuts/bmm2Reader.Hh_0_20_muon -c chains/hh_chain_0_20_single.txt  -v 0  -o run.root
# 0-200
#bin/runBmm2 -C cuts/bmm2Reader.Hh -c chains/hh_chain_0_200.txt  -v 0  -o run.root

# my
#bin/runBmm2 -C cuts/bmm2Reader.Hh -f dcap://t3se01.psi.ch:22125/pnfs/psi.ch/cms/trivcat/store//user/kotlinski/root/Data11/hh/Run2011B-PromptReco-v1/bhh-Run2011B-PromptReco-v1-hh-0000.root  -v 0 -n 10000 -o data.root

# same sign, my
#bin/runBmm2 -C cuts/bmm2Reader.Hh -f dcap://t3se01.psi.ch:22125/pnfs/psi.ch/cms/trivcat/store//user/kotlinski/root/Data11/hh/Run2011B-PromptReco-v1_same/bhh-Run2011B-PromptReco-v1-hh-0000.root -v 0 -n 10000 -o data.root

# official, 1 file
# bin/runBmm2 -C cuts/bmm2Reader.Hh -f dcap://t3se01.psi.ch:22125/pnfs/psi.ch/cms/trivcat/store//user/bstomumu/root/v11/Run2011B-PromptReco-v1/bmm-v11-Run2011B-PromptReco-v1-0000.root  -v 0 -n 10000 -o data.root
#bin/runBmm2 -C cuts/bmm2Reader.Hh -f dcap://t3se01.psi.ch:22125/pnfs/psi.ch/cms/trivcat/store//user/bstomumu/root/v11/Run2011A-PromptReco-v4/bmm-v11-Run2011A-PromptReco-v4-0000.root  -v 0 -n 10000 -o data.root

# official same 2011
#bin/runBmm2 -C cuts/bmm2Reader.Hh -f dcap://t3se01.psi.ch:22125/pnfs/psi.ch/cms/trivcat/store//user/kotlinski/root/Data11/hh/Run2011B-PromptReco-v1_same/bhh-Run2011B-PromptReco-v1-hh-0000.root  -v 0 -n 1000 -o data.root

# official, 1 chain
#bin/runBmm2 -C cuts/bmm2Reader.Hh_all -c chains/cbmm-v11-Run2011B-PromptReco-v1-00 -v 0 -n 1000 -o data.root
#bin/runBmm2 -C cuts/bmm2Reader.Hh -c chains/cbmm-v11-Run2011B-PromptReco-v1-jose-test-01 -v 0  -o data.root

# 2012
#bin/runBmm2 -C cuts/bmm2Reader.Hh -c chains/cbmm-v12-Run2012A-PromptReco-v1_All  -v 1000  -n 10 -o run.root
#bin/runBmm2 -C cuts/bmm2Reader.Hh -f dcap://t3se01.psi.ch:22125/pnfs/psi.ch/cms/trivcat/store//user/bstomumu/root/v12/Run2012A-PromptReco-v1/bmm-v12-Run2012A-PromptReco-v1_1-0000.root  -v 0 -n 10000 -o data.root

# same 2012
#bin/runBmm2 -C cuts/bmm2Reader.Hh -f dcap://t3se01.psi.ch:22125/pnfs/psi.ch/cms/trivcat/store//user/kotlinski/root/Data12/hh_same/Run2012A/bhh-MuOnia__Run2012A-PromptReco-v1__AOD_All-hh-0000.root  -v 0 -n 10000 -o data.root




