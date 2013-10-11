# MAKE-REDTREES
#
#====================================================================================================================================================
#
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

# MC
# srmrm "$SRMBASE"/user/kotlinski/redtree/mc/BuToJPsiK/bu2jpsik_mc.root
# $home/perl/merge  -h -o bu2jpsik_mc.root  -r redtree/mc/BuToJPsiK/

# $home/perl/merge  -h -o bs2jpsiphi_mc.root  -r redtree/mc/BsToJPsiPhi/
# $home/perl/merge  -h -o bs2mumu_mc.root  -r redtree/mc/BsToMuMu/
# $home/perl/merge  -h -o bd2pipi_mc.root  -r redtree/mc/BdToPiPi/
# srmrm "$SRMBASE"/user/kotlinski/redtree/mc/BsToKK/bs2kk_mc.root
# $home/perl/merge  -h -o bs2kk_mc.root  -r redtree/mc/BsToKK/

# DATA
# 2012
srmrm "$SRMBASE"/user/kotlinski/redtree/Data12/bmm/v16-2012ABCD-bmm-data.root
$home/perl//merge  -h  -o v16-2012ABCD-bmm-data.root   -r redtree/Data12/bmm/

#srmrm "$SRMBASE"/user/kotlinski/redtree/Data11/bmm/v16-2011AB-bmm-data.root
#$home/perl//merge  -h  -o v16-2011AB-bmm-data.root   -r redtree/Data11/bmm/


#-----------------------------------
# DSTAR
# 2011
#srmrm "$SRMBASE"/user/kotlinski/redtree/Data11/muonia-dstar/dstar_muonia_2011.root
#$home/perl/merge  -h  -o dstar_muonia_2011.root   -r redtree/Data11/muonia-dstar/

# 2012
#srmrm "$SRMBASE"/user/kotlinski/redtree/Data12/muonia-dstar/dstar_muonia_2012.root
#$home/perl/merge  -h  -o dstar_muonia_2012.root       -r redtree/Data12/muonia-dstar/

#srmrm "$SRMBASE"/user/kotlinski/redtree/Data11/dstar/dstar_ht_2011.root
#$home/perl/merge  -h  -o dstar_ht_2011.root       -r redtree/Data11/dstar/
# srmrm "$SRMBASE"/user/kotlinski/redtree/Data12/dstar/dstar_ht_2012.root
#./merge  -h  -o dstar_ht_2012.root       -r redtree/Data12/dstar/
#./merge  -h  -o dstar_test_2012.root       -r redtree/Data12/test/
#srmrm "$SRMBASE"/user/kotlinski/redtree/Data12/jet/dstar_jet_2012.root
#./merge  -h  -o dstar_jet_2012.root       -r redtree/Data12/jet/
#srmrm "$SRMBASE"/user/kotlinski/redtree/Data12/electron/dstar_electron_2012.root
#./merge  -h  -o dstar_electron_2012.root  -r redtree/Data12/electron/
#srmrm "$SRMBASE"/user/kotlinski/redtree/Data12/mb/dstar_mb_2012.root
#./merge  -h  -o dstar_mb_2012.root        -r redtree/Data12/mb/

# MC dstar
# srmrm "$SRMBASE"/user/kotlinski/redtree/mc/dstar/dstar_mc_2012.root
# $home/perl/merge  -h  -o dstar_mc_2012.root  -r redtree/mc/dstar/

# srmrm "$SRMBASE"/user/kotlinski/redtree/mc/dstar11/dstar_mc_2011.root
# $home/perl/merge  -h  -o dstar_mc_2011.root       -r redtree/mc/dstar11/


#-----------------------------------------------------
# HH

#./merge  -h -o hh_2011.root  -r redtree/Data11/hh/

#./merge  -h  -o hh_2012.root       -r redtree/Data12/hh/
#./merge  -h  -o hh_2012_all.root       -r redtree/Data12/test/

#./merge  -h  -o hh_2012_hh2.root       -r redtree/Data12/hh2/
#./merge  -h  -o hh_2012_hh1.root       -r redtree/Data12/hh1/
#./merge  -h  -o hh_2012_hh3.root       -r redtree/Data12/hh3/
#./merge  -h  -o hh_2012_hh4.root       -r redtree/Data12/t/
#./merge  -h  -o hh_2012_hh6.root       -r redtree/Data12/hh1/

# with name selection (-v)
#./runMy  -h  -v Run2012A -o hh_2012_Run2012A.root       -r redtree/Data12/test/
#./runMy  -h  -v Run2012B -o hh_2012_Run2012B.root       -r redtree/Data12/test/
#./runMy  -h  -v Run2012C -o hh_2012_Run2012C.root       -r redtree/Data12/test/

# delete (use -d to test)
#~ursl/perl/srmRemove  -x  srm://t3se01.psi.ch:8443/srm/managerv2\?SFN=/pnfs/psi.ch/cms/trivcat/store/user/kotlinski/redtree/Data12/hh-official  -p \\.root
