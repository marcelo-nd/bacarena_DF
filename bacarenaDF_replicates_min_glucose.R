library(parallel)

replicates <- 10
cores <- ifelse(detectCores()>=2, 4, 1)

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

arena <- BacArena::addDefaultMed(arena, c_beijerinckii)

arena <- BacArena::addDefaultMed(arena, c_tyrobutyricum)

arena <- BacArena::addDefaultMed(arena, c_butyricum)

arena <- BacArena::addDefaultMed(arena, c_cellobioparum)

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

sim <- BacArena::simEnv(arena, time=15)

})

save.image("sin_carbs.Rdata")

# p <- plotGrowthCurve(simlist)
# p[[2]]

# p <- plotSubCurve(simlist)
# p[[3]]

# p <- plotSubCurve(simlist, mediac = c("EX_glc_D__40__e__41__", "EX_h2__40__e__41__"))
# p[[3]]

# plotAbundance(simlist)

# p + ggplot2::scale_color_manual(values=colpal3)

# plotSpecActivity(simlist)
# p[[2]]

 # p <- plotSubUsage(simlist, subs = c("EX_glc_D__40__e__41__"))


