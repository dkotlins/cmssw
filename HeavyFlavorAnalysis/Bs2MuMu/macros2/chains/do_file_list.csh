# Make file list (make chains)
# Can be used for both trees and AODs
# -C for /store/data..  -c for dcap://

# 2011 Tress from HH-Same
#/shome/ursl/perl/srmLs -x "$SRMBASE"/user/kotlinski/root/Data11/hh/Run2011B-PromptReco-v1_same -p \\.root -c | sort >! hh-Run2011B-PromptReco-v1_same
#/shome/ursl/perl/mkCheckedChain hh-Run2011B-PromptReco-v1_same

#/shome/ursl/perl/srmLs -x "$SRMBASE"/user/kotlinski/root/Data11/hh/Run2011A-PromptReco-v4_same -p \\.root -c | sort >! hh-Run2011A-PromptReco-v4_same
#/shome/ursl/perl/mkCheckedChain hh-Run2011A-PromptReco-v4_same

#/shome/ursl/perl/srmLs -x "$SRMBASE"/user/kotlinski/root/Data11/hh/Run2011A-PromptReco-v5_same -p \\.root -c | sort >! hh-Run2011A-PromptReco-v5_same
#/shome/ursl/perl/mkCheckedChain hh-Run2011A-PromptReco-v5_same

#/shome/ursl/perl/srmLs -x "$SRMBASE"/user/kotlinski/root/Data11/hh/Run2011A-PromptReco-v6_same -p \\.root -c | sort >! hh-Run2011A-PromptReco-v6_same
#/shome/ursl/perl/mkCheckedChain hh-Run2011A-PromptReco-v6_same

#/shome/ursl/perl/srmLs -x "$SRMBASE"/user/kotlinski/root/Data11/hh/Run2011A-May10ReReco-v1_same -p \\.root -c | sort >! hh-Run2011A-May10ReReco-v1_same
#/shome/ursl/perl/mkCheckedChain hh-Run2011A-May10ReReco-v1_same


# 2012 Tress from HH-Same
#/shome/ursl/perl/srmLs -x "$SRMBASE"/user/kotlinski/root/Data12/hh_same/Run2012A -p \\.root -c | sort >! hh-Run2012A-PromptReco-v1_same
#/shome/ursl/perl/mkCheckedChain hh-Run2012A-PromptReco-v1_same

#/shome/ursl/perl/srmLs -x "$SRMBASE"/user/kotlinski/root/Data12/hh_same/Run2012B -p \\.root -c | sort >! hh-Run2012B-PromptReco-v1_same
#/shome/ursl/perl/mkCheckedChain hh-Run2012B-PromptReco-v1_same

#/shome/ursl/perl/srmLs -x "$SRMBASE"/user/kotlinski/root/Data12/hh_same/Run2012C -p \\.root -c | sort >! hh-Run2012C-PromptReco_same
#/shome/ursl/perl/mkCheckedChain hh-Run2012C-PromptReco_same


# Tress from Joses production 
#/shome/ursl/perl/srmLs -x "$SRMBASE"/user/bstomumu/root/v11/Run2011A-PromptReco-v4 -p \\.root -c | sort >! bmm-v11-Run2011A-PromptReco-v4-jose
#/shome/ursl/perl/mkCheckedChain bmm-v11-Run2011A-PromptReco-v4-jose

#/shome/ursl/perl/srmLs -x "$SRMBASE"/user/bstomumu/root/v11/Run2011A-PromptReco-v5 -p \\.root -c | sort >! bmm-v11-Run2011A-PromptReco-v5-jose
#/shome/ursl/perl/mkCheckedChain bmm-v11-Run2011A-PromptReco-v5-jose

#/shome/ursl/perl/srmLs -x "$SRMBASE"/user/bstomumu/root/v11/Run2011A-PromptReco-v6 -p \\.root -c | sort >! bmm-v11-Run2011A-PromptReco-v6-jose
#/shome/ursl/perl/mkCheckedChain bmm-v11-Run2011A-PromptReco-v6-jose

#/shome/ursl/perl/srmLs -x "$SRMBASE"/user/bstomumu/root/v11/Run2011B-PromptReco-v1 -p \\.root -c | sort >! bmm-v11-Run2011B-PromptReco-v1-jose-test
#/shome/ursl/perl/mkCheckedChain bmm-v11-Run2011B-PromptReco-v1-jose-test

#/shome/ursl/perl/srmLs -x "$SRMBASE"/user/bstomumu/root/v11/Run2011A-May10ReReco-v1 -p \\.root -c | sort >! bmm-v11-Run2011A-May10ReReco-v1-jose
#/shome/ursl/perl/mkCheckedChain bmm-v11-Run2011A-May10ReReco-v1-jose

# Tress HH
#/shome/ursl/perl/srmLs -x "$SRMBASE"/user/kotlinski/root/Data11/hh/Run2011B-PromptReco-v1 -p \\.root -c | sort >! hh_chain.txt
#/shome/ursl/perl/mkCheckedChain hh_chain.txt

#/shome/ursl/perl/srmLs -x "$SRMBASE"/user/kotlinski/root/Data11/hh/Run2011B-PromptReco-v1_0_20 -p \\.root -c | sort >! hh_0_20_chain.txt
#/shome/ursl/perl/mkCheckedChain hh_0_20_chain.txt

# MC Bu2JpsiPi
#/shome/ursl/perl/srmLs -x "$SRMBASE"/user/kotlinski/root/Fall11/bmm/Bu2JpsiPi -p \\.root -c | sort >! bmm-v11-2e33-Bu2JpsiPi
#/shome/ursl/perl/mkCheckedChain bmm-v11-2e33-Bu2JpsiPi

# MC B02JpsiMuMu
#/shome/ursl/perl/srmLs -x "$SRMBASE"/user/kotlinski/root/Fall11/bmm/B0ToPsiMuMu -p \\.root -c | sort >! bmm-B0ToPsiMuMu
#/shome/ursl/perl/mkCheckedChain bmm-B0ToPsiMuMu

# MC Dstar
/shome/ursl/perl/srmLs -x "$SRMBASE"/user/bstomumu/v16/cmsRun/2012/mc-cms-had/BdToD0starPi_EtaPtFilter_8TeV-pythia6-evtgen__Summer12_DR53X-PU_S10_START53_V7C-v1/ -p \\.root -c | sort >! hadronic_v16_mc_BdToD0starPi 
/shome/ursl/perl/mkCheckedChain hadronic_v16_mc_BdToD0starPi




# For trees, 3E33
#/shome/ursl/perl/srmLs -x "$SRMBASE"/user/ursl/production/Fall11/reco3e33/Bd2MuMu0 -p \\.root -C | sort >! 3e33-Bd2MuMu
#/shome/ursl/perl/srmLs -x "$SRMBASE"/user/ursl/production/Fall11/reco3e33/Bs2MuMu0 -p \\.root -C | sort >! 3e33-Bs2MuMu

#/shome/ursl/perl/srmLs -x "$SRMBASE"/user/ursl/production/Fall11/reco3e33/Bs2JpsiPhi0 -p \\.root -C | sort >! 3e33-Bs2JpsiPhi
#/shome/ursl/perl/srmLs -x "$SRMBASE"/user/ursl/production/Fall11/reco3e33/Bs2JpsiPhi1 -p \\.root -C | sort >> 3e33-Bs2JpsiPhi
#/shome/ursl/perl/srmLs -x "$SRMBASE"/user/ursl/production/Fall11/reco3e33/Bs2JpsiPhi2 -p \\.root -C | sort >> 3e33-Bs2JpsiPhi
#/shome/ursl/perl/srmLs -x "$SRMBASE"/user/ursl/production/Fall11/reco3e33/Bs2JpsiPhi3 -p \\.root -C | sort >> 3e33-Bs2JpsiPhi
#/shome/ursl/perl/srmLs -x "$SRMBASE"/user/ursl/production/Fall11/reco3e33/Bs2JpsiPhi4 -p \\.root -C | sort >> 3e33-Bs2JpsiPhi
#/shome/ursl/perl/srmLs -x "$SRMBASE"/user/ursl/production/Fall11/reco3e33/Bs2JpsiPhi5 -p \\.root -C | sort >> 3e33-Bs2JpsiPhi

#/shome/ursl/perl/srmLs -x "$SRMBASE"/user/ursl/production/Fall11/reco3e33/Bu2JpsiK0 -p \\.root -C | sort >! 3e33-Bu2JpsiK
#/shome/ursl/perl/srmLs -x "$SRMBASE"/user/ursl/production/Fall11/reco3e33/Bu2JpsiK1 -p \\.root -C | sort >> 3e33-Bu2JpsiK
#/shome/ursl/perl/srmLs -x "$SRMBASE"/user/ursl/production/Fall11/reco3e33/Bu2JpsiK2 -p \\.root -C | sort >> 3e33-Bu2JpsiK
#/shome/ursl/perl/srmLs -x "$SRMBASE"/user/ursl/production/Fall11/reco3e33/Bu2JpsiK3 -p \\.root -C | sort >> 3e33-Bu2JpsiK
#/shome/ursl/perl/srmLs -x "$SRMBASE"/user/ursl/production/Fall11/reco3e33/Bu2JpsiK4 -p \\.root -C | sort >> 3e33-Bu2JpsiK
#/shome/ursl/perl/srmLs -x "$SRMBASE"/user/ursl/production/Fall11/reco3e33/Bu2JpsiK5 -p \\.root -C | sort >> 3e33-Bu2JpsiK
#/shome/ursl/perl/srmLs -x "$SRMBASE"/user/ursl/production/Fall11/reco3e33/Bu2JpsiK6 -p \\.root -C | sort >> 3e33-Bu2JpsiK
#/shome/ursl/perl/srmLs -x "$SRMBASE"/user/ursl/production/Fall11/reco3e33/Bu2JpsiK7 -p \\.root -C | sort >> 3e33-Bu2JpsiK


#/shome/ursl/perl/srmLs -x "$SRMBASE"/user/ursl/production/Spring11/hlt-1e33/Bu2JpsiK3 -p \\.root -C | sort >! list_psik3.txt
#/shome/ursl/perl/srmLs -x "$SRMBASE"/user/ursl/production/Spring11/hlt-1e33/Bs2JpsiPhi2 -p \\.root -C | sort >! list_psiphi.txt
#/shome/ursl/perl/srmLs -x "$SRMBASE"/user/ursl/production/Spring11/hlt-1e33/Bd2MuMu2 -p \\.root -C | sort >! list_bdmumu.txt

# For red-trees
#/shome/ursl/perl/srmLs -x "$SRMBASE"/user/kotlinski/root/Spring11//Bs2MuMu -p \\.root -c | sort >! chain.txt
#/shome/ursl/perl/srmLs -x "$SRMBASE"/user/kotlinski/root/Spring11//Bs2JpsiPhi -p \\.root -c | sort >! chain.txt
#/shome/ursl/perl/srmLs -x "$SRMBASE"/user/kotlinski/root/Spring11//Bu2JpsiK -p \\.root -c | sort >! chain.txt

#/shome/ursl/perl/srmLs -x "$SRMBASE"/user/kotlinski/root/Spring11/5E32/Bs2MuMu -p \\.root -c | sort >! chain.txt
#/shome/ursl/perl/srmLs -x "$SRMBASE"/user/kotlinski/root/Spring11/5E32/Bs2JpsiPhi -p \\.root -c | sort >! chain.txt
#/shome/ursl/perl/srmLs -x "$SRMBASE"/user/kotlinski/root/Spring11/5E32/Bu2JpsiK -p \\.root -c | sort >! chain.txt


