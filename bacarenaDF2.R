library(BacArena)

library(sybilSBML)

#source("./bacarenaDF.R")

c_acetobutylicumSBML <- readSBMLmod("./Models/Clostridium_acetobutylicum_ATCC_824.xml")

c_acetobutylicum <- Bac(c_acetobutylicumSBML)

c_beijerinckiiSBML <- readSBMLmod("./Models/Clostridium_beijerinckii_NCIMB_8052.xml")

c_beijerinckii <- Bac(c_beijerinckiiSBML)

c_cellobioparumSBML <- readSBMLmod("./Models/Clostridium_cellobioparum_DSM_1351.xml")

c_cellobioparum <- Bac(c_cellobioparumSBML)

c_tyrobutyricumSBML <- readSBMLmod("./Models/Clostridium_tyrobutyricum_DSM_2637.xml")

c_tyrobutyricum <- Bac(c_tyrobutyricumSBML)

c_butyricumSBML <- readSBMLmod("./Models/Clostridium_butyricum_DSM_10702.xml")

c_butyricum <- Bac(c_butyricumSBML)


# c_methoxybenzovoransSBML <- readSBMLmod("./Models/Clostridium_methoxybenzovorans_SR3.xml")
# # c_methoxybenzovoransSBML <- readSBMLmod("./Models/Clostridium_methoxybenzovorans_SR3.xml")

# c_methoxybenzovorans <- Bac(c_methoxybenzovoransSBML)
# # c_methoxybenzovorans <- Bac(c_methoxybenzovoransSBML)

# c_saccharoperbutylacetonicumSBML <- readSBMLmod("./Models/Clostridium_saccharoperbutylacetonicum_N1_4_HMT.xml")
# # c_saccharoperbutylacetonicumSBML <- readSBMLmod("./Models/Clostridium_saccharoperbutylacetonicum_N1_4_HMT.xml")

# c_saccharoperbutylacetonicum <- Bac(c_saccharoperbutylacetonicumSBML)
# # c_saccharoperbutylacetonicum <- Bac(c_saccharoperbutylacetonicumSBML)

# k_oxytocaSBML <- readSBMLmod("./Models/Klebsiella_oxytoca_KCTC_1686.xml")
# # k_oxytocaSBML <- readSBMLmod("./Models/Klebsiella_oxytoca_KCTC_1686.xml")

# k_oxytoca <- Bac(k_oxytocaSBML)
# # k_oxytoca <- Bac(k_oxytocaSBML)

# l_caseiSBML <- readSBMLmod("./Models/Lactobacillus_casei_ATCC_334.xml")
# # l_caseiSBML <- readSBMLmod("./Models/Lactobacillus_casei_ATCC_334.xml")

# l_casei <- Bac(l_caseiSBML)
# # l_casei <- Bac(l_caseiSBML)

# l_plantarumSBML <- readSBMLmod("./Models/Lactobacillus_plantarum_JDM1.xml")
# # l_plantarumSBML <- readSBMLmod("./Models/Lactobacillus_plantarum_JDM1.xml")

# l_plantarum <- Bac(l_plantarumSBML)
# # l_plantarum <- Bac(l_plantarumSBML)

# p_aeruginosaSBML <- readSBMLmod("./Models/Pseudomonas_aeruginosa_NCGM2_S1.xml")
# # p_aeruginosaSBML <- readSBMLmod("./Models/Pseudomonas_aeruginosa_NCGM2_S1.xml")

# p_aeruginosa <- Bac(p_aeruginosaSBML)
# # p_aeruginosa <- Bac(p_aeruginosaSBML)

# r_albusSBML <- readSBMLmod("./Models/Ruminococcus_albus_7.xml")
# # r_albusSBML <- readSBMLmod("./Models/Ruminococcus_albus_7.xml")

# r_albus <- Bac(r_albusSBML)
# # r_albus <- Bac(r_albusSBML)

# s_epidermidisSBML <- readSBMLmod("./Models/Staphylococcus_epidermidis_ATCC_12228.xml")
# # s_epidermidisSBML <- readSBMLmod("./Models/Staphylococcus_epidermidis_ATCC_12228.xml")

# s_epidermidis <- Bac(s_epidermidisSBML)
# # s_epidermidis <- Bac(s_epidermidisSBML)

# s_mutansSBML <- readSBMLmod("./Models/Streptococcus_mutans_ATCC_25175.xml")
# # s_mutansSBML <- readSBMLmod("./Models/Streptococcus_mutans_ATCC_25175.xml")

# s_mutans <- Bac(s_mutansSBML)
# # s_mutans <- Bac(s_mutansSBML)


### simulacion

arena <- Arena(n=50, m=50)

arena <- addOrg(arena,c_acetobutylicum,amount=5)

arena <- addOrg(arena,c_beijerinckii,amount=5)

arena <- addOrg(arena,c_cellobioparum,amount=5)

arena <- addOrg(arena,c_tyrobutyricum,amount=5)

arena <- addOrg(arena,c_butyricum,amount=5)




### add media

arena <- addDefaultMed(arena, c_acetobutylicum)

arena <- addDefaultMed(arena, c_beijerinckii)

arena <- addDefaultMed(arena, c_cellobioparum)

arena <- addDefaultMed(arena, c_tyrobutyricum)

arena <- addDefaultMed(arena, c_butyricum)




### carbs
#arena <- BacArena::addSubs(arena, smax=0, mediac="EX_glc_D__40__e__41__", unit="mM", add= FALSE)

arena <- BacArena::addSubs(arena, smax=0, mediac="EX_fru__40__e__41__", unit="mM", add= FALSE)

arena <- BacArena::addSubs(arena, smax=0, mediac="EX_cellb__40__e__41__", unit="mM", add= FALSE)

arena <- BacArena::addSubs(arena, smax=0, mediac="EX_malt__40__e__41__", unit="mM", add= FALSE)

arena <- BacArena::addSubs(arena, smax=0, mediac="EX_man__40__e__41__", unit="mM", add= FALSE)

arena <- BacArena::addSubs(arena, smax=0, mediac="EX_xyl_D__40__e__41__", unit="mM", add= FALSE)

arena <- BacArena::addSubs(arena, smax=0, mediac="EX_sucr__40__e__41__", unit="mM", add= FALSE)

arena <- BacArena::addSubs(arena, smax=0, mediac="EX_lcts__40__e__41__", unit="mM", add= FALSE)

arena <- BacArena::addSubs(arena, smax=0, mediac="EX_strch1__40__e__41__", unit="mM", add= FALSE)

arena <- BacArena::addSubs(arena, smax=0, mediac="EX_strch2__40__e__41__", unit="mM", add= FALSE)

arena <- BacArena::addSubs(arena, smax=0, mediac="EX_malttr__40__e__41__", unit="mM", add= FALSE)

arena <- BacArena::addSubs(arena, smax=0, mediac="EX_malthx__40__e__41__", unit="mM", add= FALSE)

arena <- BacArena::addSubs(arena, smax=0, mediac="EX_dextrin__40__e__41__", unit="mM", add= FALSE)

arena <- BacArena::addSubs(arena, smax=0, mediac="EX_man6p__40__e__41__", unit="mM", add= FALSE)

arena <- BacArena::addSubs(arena, smax=0, mediac="EX_mantr__40__e__41__", unit="mM", add= FALSE)

arena <- BacArena::addSubs(arena, smax=0, mediac="EX_melib__40__e__41__", unit="mM", add= FALSE)

arena <- BacArena::addSubs(arena, smax=0, mediac="EX_arab_L__40__e__41__", unit="mM", add= FALSE)

arena <- BacArena::addSubs(arena, smax=0, mediac="EX_gal__40__e__41__", unit="mM", add= FALSE)

# trehalose
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_tre__40__e__41__", unit="mM", add= FALSE)
# raffinosa
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_raffin__40__e__41__", unit="mM", add= FALSE)


########################## mostly others
# acetato
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_ac__40__e__41__", unit="mM", add= FALSE)
# # Acetaldehyde 
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_acald__40__e__41__", unit="mM", add= FALSE)
# # N-Acetyl-D-glucosamine 
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_acgam__40__e__41__", unit="mM", add= FALSE)
# # oxoglutarato
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_akg__40__e__41__", unit="mM", add= FALSE)
# # arabintriosa
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_arabttr__40__e__41__", unit="mM", add= FALSE)
# # arbutin
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_arbt__40__e__41__", unit="mM", add= FALSE)
# # biomass
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_biomass__40__e__41__", unit="mM", add= FALSE)
# # butanol
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_btoh__40__e__41__", unit="mM", add= FALSE)
# # butirate
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_but__40__e__41__", unit="mM", add= FALSE)
# # etanolamina
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_etha__40__e__41__", unit="mM", add= FALSE)
# # Deoxycytidine
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_dcyt__40__e__41__", unit="mM", add= FALSE)
# # etanol
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_etoh__40__e__41__", unit="mM", add= FALSE)
# # formato
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_for__40__e__41__", unit="mM", add= FALSE)
# # galactosa 1 fosfato
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_galt__40__e__41__", unit="mM", add= FALSE)
# #  glucosamina
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_gam__40__e__41__", unit="mM", add= FALSE)
# # Glycolaldehyde
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_gcald__40__e__41__", unit="mM", add= FALSE)
# # Glycerate
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_glyc__40__e__41__", unit="mM", add= FALSE)
# # Glycerol 3-phosphate
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_glyc3p__40__e__41__", unit="mM", add= FALSE)
# # H+
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_h__40__e__41__", unit="mM", add= FALSE)
# # H2
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_h2__40__e__41__", unit="mM", add= FALSE)
# # H2S
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_h2s__40__e__41__", unit="mM", add= FALSE)
# # Idnoate
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_idon_L__40__e__41__", unit="mM", add= FALSE)
# # lactato d
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_lac_D__40__e__41__", unit="mM", add= FALSE)
# # lactato l
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_lac_L__40__e__41__", unit="mM", add= FALSE)
# # malato
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_mal_L__40__e__41__", unit="mM", add= FALSE)
# # Mannitol
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_mnl__40__e__41__", unit="mM", add= FALSE)
# # putrescine
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_ptrc__40__e__41__", unit="mM", add= FALSE)
# # salicina
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_salcn__40__e__41__", unit="mM", add= FALSE)
# # sorbitol
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_sbt_D__40__e__41__", unit="mM", add= FALSE)
# succinato
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_succ__40__e__41__", unit="mM", add= FALSE)
# oxygen
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_o2__40__e__41__", unit="mM", add= FALSE)
####### otros
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_13ppd__40__e__41__", unit="mM", add= FALSE)
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_amp__40__e__41__", unit="mM", add= FALSE)
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_12ppd_S__40__e__41__", unit="mM", add= FALSE)
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_2ddglcn__40__e__41__", unit="mM", add= FALSE)
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_acac__40__e__41__", unit="mM", add= FALSE)
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_bhb__40__e__41__", unit="mM", add= FALSE)
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_butso3__40__e__41__", unit="mM", add= FALSE)
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_ethso3__40__e__41__", unit="mM", add= FALSE)
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_galctn_D__40__e__41__", unit="mM", add= FALSE)
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_galur__40__e__41__", unit="mM", add= FALSE)
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_hexs__40__e__41__", unit="mM", add= FALSE)
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_inost__40__e__41__", unit="mM", add= FALSE)
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_isetac__40__e__41__", unit="mM", add= FALSE)
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_meoh__40__e__41__", unit="mM", add= FALSE)
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_pect__40__e__41__", unit="mM", add= FALSE)
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_sulfac__40__e__41__", unit="mM", add= FALSE)
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_taur__40__e__41__", unit="mM", add= FALSE)
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_2obut__40__e__41__", unit="mM", add= FALSE)
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_ddca__40__e__41__", unit="mM", add= FALSE)
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_tsul__40__e__41__", unit="mM", add= FALSE)
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_15dap__40__e__41__", unit="mM", add= FALSE)


# # spermidina FUNDAMENRAL para c_cellobiopaum
#arena <- BacArena::addSubs(arena, smax=0, mediac="EX_spmd__40__e__41__", unit="mM", add= FALSE)
# # Octadecanoate FUNDAMENRAL para c_tyrobutyricum y c_butyricum
#arena <- BacArena::addSubs(arena, smax=0, mediac="EX_ocdca__40__e__41__", unit="mM", add= FALSE)


eval <- simEnv(arena,time=5)

plotCurves2(eval, legendpos = "topleft")

evalArena(eval, show_legend = FALSE, time=1:5)

plotSubCurve(eval)

plotSubCurve(eval, mediac = c("EX_glc_D__40__e__41__", "EX_h2__40__e__41__"))

# getVarSubs(eval)

# getSubHist(eval, "EX_glc_D__40__e__41__")
