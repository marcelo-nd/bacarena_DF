library(parallel)

replicates <- 10
cores <- ifelse(detectCores()>=4, 4, 1)

cl <- makeCluster(cores, type="PSOCK")

simlist <- parLapply(cl, 1:replicates, function(i){

# creating bacs

c_acetobutylicumSBML <- sybilSBML::readSBMLmod("./Models/Clostridium_acetobutylicum_ATCC_824.xml")

c_acetobutylicum <- BacArena::Bac(c_acetobutylicumSBML)

c_beijerinckiiSBML <- sybilSBML::readSBMLmod("./Models/Clostridium_beijerinckii_NCIMB_8052.xml")

c_beijerinckii <- BacArena::Bac(c_beijerinckiiSBML)

c_cellobioparumSBML <- sybilSBML::readSBMLmod("./Models/Clostridium_cellobioparum_DSM_1351.xml")

c_cellobioparum <- BacArena::Bac(c_cellobioparumSBML)

c_tyrobutyricumSBML <- sybilSBML::readSBMLmod("./Models/Clostridium_tyrobutyricum_DSM_2637.xml")

c_tyrobutyricum <- BacArena::Bac(c_tyrobutyricumSBML)

c_butyricumSBML <- sybilSBML::readSBMLmod("./Models/Clostridium_butyricum_DSM_10702.xml")

c_butyricum <- BacArena::Bac(c_butyricumSBML)

# creating arena
arena <- BacArena::Arena(n=50, m=50)

# adding organisms
arena <- BacArena::addOrg(arena,c_acetobutylicum,amount=5)

arena <- BacArena::addOrg(arena,c_beijerinckii,amount=5)

arena <- BacArena::addOrg(arena,c_tyrobutyricum,amount=5)

arena <- BacArena::addOrg(arena,c_butyricum,amount=5)

arena <- BacArena::addOrg(arena,c_cellobioparum,amount=5)

# adding medium

arena <- BacArena::addDefaultMed(arena, c_acetobutylicum)

#arena <- BacArena::addDefaultMed(arena, c_beijerinckii)

#arena <- BacArena::addDefaultMed(arena, c_tyrobutyricum)

arena <- BacArena::addDefaultMed(arena, c_butyricum)

#arena <- BacArena::addDefaultMed(arena, c_cellobioparum)

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

#arena <- BacArena::addSubs(arena, smax=0, mediac="EX_pi__40__e__41__", unit="mM", add= FALSE)
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_glu_L__40__e__41__", unit="mM", add= FALSE)
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_thr_L__40__e__41__", unit="mM", add= FALSE)
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_adn__40__e__41__", unit="mM", add= FALSE)
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_ala_D__40__e__41__", unit="mM", add= FALSE)
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_glyleu__40__e__41__", unit="mM", add= FALSE)
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_cytd__40__e__41__", unit="mM", add= FALSE)
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_dad_2__40__e__41__", unit="mM", add= FALSE)
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_dgsn__40__e__41__", unit="mM", add= FALSE)
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_gly__40__e__41__", unit="mM", add= FALSE)
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_cys_L__40__e__41__", unit="mM", add= FALSE)
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_no3__40__e__41__", unit="mM", add= FALSE)
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_glyasp__40__e__41__", unit="mM", add= FALSE)
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_din__40__e__41__", unit="mM", add= FALSE)
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_val_L__40__e__41__", unit="mM", add= FALSE)
arena <- BacArena::addSubs(arena, smax=0, mediac="EX_no2__40__e__41__", unit="mM", add= FALSE)


# # spermidina FUNDAMENRAL para c_cellobiopaum
#arena <- BacArena::addSubs(arena, smax=0, mediac="EX_spmd__40__e__41__", unit="mM", add= FALSE)
# # Octadecanoate FUNDAMENRAL para c_tyrobutyricum y c_butyricum
#arena <- BacArena::addSubs(arena, smax=0, mediac="EX_ocdca__40__e__41__", unit="mM", add= FALSE)


sim <- BacArena::simEnv(arena, time=15)

})

save.image("min_solo_glucosa.Rdata")

plotGrowthCurve(simlist)
plotSubCurve(simlist)


plotSubCurve(simlist, mediac = c("EX_glc_D__40__e__41__", "EX_h2__40__e__41__"))

plotAbundance(simlist)

plotSpecActivity(simlist)


plotSubUsage(simlist)


