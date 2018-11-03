library(BacArena)

library(sybilSBML)

#source("./bacarenaDF.R")

# c_acetobutylicumSBML <- readSBMLmod("./Models/c_acetobutylicum_sd.sbml")

# c_acetobutylicum <- Bac(c_acetobutylicumSBML)

c_beijerinckiiSBML <- readSBMLmod("./Models/c_beijerinckii_sd.sbml")

c_beijerinckii <- Bac(c_beijerinckiiSBML)

# c_thermocellumSBML <- readSBMLmod("./Models/c_thermocellum_sd.sbml")

# c_thermocellum <- Bac(c_thermocellumSBML)

c_tyrobutyricumSBML <- readSBMLmod("./Models/c_tyrobutyricum.sbml")

c_tyrobutyricum <- Bac(c_tyrobutyricumSBML)

c_butyricumSBML <- readSBMLmod("./Models/c_butyricum_sd.sbml")

c_butyricum <- Bac(c_butyricumSBML)



### simulacion

arena <- Arena(n=50, m=50)

# arena <- addOrg(arena,c_acetobutylicum,amount=5)

arena <- addOrg(arena,c_beijerinckii,amount=5)

# arena <- addOrg(arena,c_thermocellum,amount=5)

arena <- addOrg(arena,c_tyrobutyricum,amount=5)

# arena <- addOrg(arena,c_butyricum,amount=5)




### add media

# arena <- addDefaultMed(arena, c_acetobutylicum)

arena <- addDefaultMed(arena, c_beijerinckii)

# arena <- addDefaultMed(arena, c_cellobioparum)

#arena <- addDefaultMed(arena, c_tyrobutyricum)

#arena <- addDefaultMed(arena, c_butyricum)




### carbs





 eval <- simEnv(arena,time=5)

# plotCurves2(eval, legendpos = "topleft")

# evalArena(eval, show_legend = FALSE, time=1:5)

# plotSubCurve(eval)

# plotSubCurve(eval, mediac = c("EX_glc_D__40__e__41__", "EX_h2__40__e__41__"))

# plotSubUsage(eval)

# getVarSubs(eval)

# getSubHist(eval, "EX_glc_D__40__e__41__")
