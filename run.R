library("PixSim")
library("data.table")

## @@@@@@@@@@@@@@@@@@@@@@@
Functions <- list(GrowthModels = GrowthModels)
myMM <- ModelsAndParameters[[1]]
mySSP <- c(1, 2, 3)

## A local folder where simulation results should be written.
Fold <- tempfile()
dir.create(Fold)

## Run simulations
PixSim(Data = PixelTable,
       Np = 10, ## 10 5-year projections
       nSpecies = mySSP,
       functions = Functions,
       WriteOut = TRUE,
       LocalFldr = Fold,
       ModelsAndParameters = myMM)
