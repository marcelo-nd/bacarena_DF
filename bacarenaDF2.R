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

# arena <- Arena(n=50, m=50)
arena <- Arena(n=50, m=50)

# arena <- addOrg(arena,c_acetobutylicum,amount=20)
arena <- addOrg(arena,c_acetobutylicum,amount=5)

arena <- addOrg(arena,c_beijerinckii,amount=5)

arena <- addOrg(arena,c_tyrobutyricum,amount=5)

arena <- addOrg(arena,c_butyricum,amount=5)

arena <- addOrg(arena,c_cellobioparum,amount=5)

# # arena <- addOrg(arena, l_plantarum , amount=20)

arena <- addDefaultMed(arena, c_acetobutylicum)

# arena <- addDefaultMed(arena, c_beijerinckii)

# arena <- addDefaultMed(arena, c_tyrobutyricum)

# arena <- addDefaultMed(arena, c_butyricum)

# arena <- addDefaultMed(arena, c_cellobioparum)

# arena <- addDefaultMed(arena, l_plantarum)

# arena <- addSubs(arena, smax=0.5, mediac="EX_glc_D__40__e__41__", unit="mM")

# eval <- simEnv(arena,time=10)

# arena <- addSubs(arena, smax=0, mediac="EX_glc_D__40__e__41__", unit="mM", add= FALSE)

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

eval <- simEnv(arena,time=15)

# plotCurves2(eval, legendpos = "topleft")

# evalArena(eval, show_legend = FALSE, time=1:10)

# getVarSubs(eval)

# getSubHist(eval, "EX_glc_D__40__e__41__")

# p <- plotSubCurve(eval)
# p[[3]]

# p <- plotSubCurve(eval, mediac = c("EX_glc_D__40__e__41__", "EX_h2__40__e__41__"))
# p[[3]]