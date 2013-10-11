# merge trees (beware, it merges all root files in the specified directory & and copies the sum to the folder)
#./runMy -t ../../../../150512.tar.gz -h   -r redtree/Data11/hh/
# option -d just tp show
#./runMy  -h -d -o hh.root  -r redtree/Data11/hh/
#./runMy  -h -o hh_0_20_muon.root  -r redtree/Data11/hh_0_20_muon/
#./runMy  -h -o hh_0_20.root  -r redtree/Data11/hh_0_20/
# merge my hh redtrees
#./runMy  -h -o hh.root  -r redtree/Data11/hh/

#             name in my/scratch       files in SE:
#./runMy -h -o cbmm-B0ToPsiMuMu.root -r redtree/mc/B0ToPsiMuMu/

# merge official hh redtrees
#./runMy  -h -o hh_official.root           -r redtree/Data11/hh-official/
#./runMy  -h -o hh_official_same.root      -r redtree/Data11/hh-same-official/
#./runMy  -h -o hh_official_same_new.root  -r redtree/Data11/hh-same-official_new/
#./runMy  -h -o hh_official_new.root       -r redtree/Data11/hh-official_new/
#./runMy  -h -o hh_2011_same_v3.root       -r redtree/Data11/hh-same/
#./runMy  -h -o hh_2011_v3.root            -r redtree/Data11/hh/
#./runMy  -h -o hh_2011_test.root            -r redtree/Data11/test/
#./runMy  -h -o hh_2012_test.root            -r redtree/Data12/test/


# 2012
#./runMy  -h -o hh_2012_same_v2.root  -r redtree/Data12/hh-same/
#./runMy  -h -o hh_2012_v2.root       -r redtree/Data12/hh/

#delete MC
#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data11/hh-same  -p \\.root
#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/mc/B0ToPsiMuMu  -p \\.log
#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/mc/BdToPiPi  -p \\.log
#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/mc/BdToPiPi  -p \\.root
#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/mc/BsToKK  -p \\.log
#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/mc/BsToKK  -p \\.root
#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/mc/BsToMuMu  -p \\.log
#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/mc/BsToMuMu  -p \\.root
#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/mc/BsToJPsiPhi  -p \\.log
#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/mc/BsToJPsiPhi  -p \\.root
#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/mc/BuToJPsiK  -p \\.log
#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/mc/BuToJPsiK  -p \\.root

# delete (use -d to test)
# 2011
#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data11/bmm  -p \\.root
#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data11/bmm  -p \\.log

#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data11/hh-same  -p \\.root
#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data11/hh-same  -p \\.log

#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data11/test  -p \\.root
#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data11/test  -p \\.log

#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data11/test  -p \\.root
#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data11/test  -p \\.log

#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data11/dstar  -p \\.root
#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data11/dstar  -p \\.log

#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data11/muonia-dstar  -p \\.root
#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data11/muonia-dstar  -p \\.log


#~ursl/perl/srmRemove -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/root/Data11/hh/Run2011A-May10ReReco-v1_same -p \\.root
#~ursl/perl/srmRemove -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/root/Data11/hh/Run2011A-PromptReco-v4_same -p \\.root
#~ursl/perl/srmRemove -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/root/Data11/hh/Run2011A-PromptReco-v5_same -p \\.root
#~ursl/perl/srmRemove -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/root/Data11/hh/Run2011A-PromptReco-v6_same -p \\.root
#~ursl/perl/srmRemove -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/root/Data11/hh/Run2011B-PromptReco-v1_same -p \\.root
#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/root/Data11/bmt/Run2011A-May10ReReco-v1  -p \\.root
#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/root/Data11/bmt/Run2011A-PromptReco-v4  -p \\.root
#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/root/Data11/bmt/Run2011A-PromptReco-v5  -p \\.root
#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/root/Data11/bmt/Run2011A-PromptReco-v6  -p \\.root
#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/root/Data11/bmt/Run2011B-PromptReco-v1  -p \\.root



# 2012
#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/hh-same-official  -p \\.root
#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/hh-same-official  -p \\.log

#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/hh-same  -p \\.root
#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/hh-same  -p \\.log

#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/hh  -p \\.root
#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/hh  -p \\.log

#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/hh-official  -p \\.root
#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/hh-official  -p \\.log

#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/test  -p \\.root
#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/test  -p \\.log

#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/bmm  -p \\.root
#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/bmm  -p \\.log

#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/hh3  -p \\.root
#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/hh3  -p \\.log

#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/bmm  -p \\.root
#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/bmm  -p \\.log

#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/root/Data12/hh_same/Run2012A  -p \\.root
#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/root/Data12/hh_same/Run2012B  -p \\.root
#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/root/Data12/hh_same/Run2012C  -p \\.root

#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/dstar  -p \\.root
#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/dstar  -p \\.log

#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/muonia-dstar  -p \\.root
#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/muonia-dstar  -p \\.log

#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/mc/dstar  -p \\.root
#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/mc/dstar  -p \\.log


# copy 
#lcg-cp -b -D srmv2  "$SRMBASE"/user/kotlinski/redtree/mc/B0ToPsiMuMu/cbmm-B0ToPsiMuMu.root file:////shome/kotlinski/scratch/cbmm-B0ToPsiMuMu.root
