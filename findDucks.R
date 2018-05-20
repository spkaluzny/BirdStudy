dMagnusonPark <- readRDS("dMagnusonPark.rds")
# ducksGenusSpecies <- scan("ducksGenusSpecies.txt", wh="", sep="\n")
# ducks <- read.csv("duckSpecies.csv", stringsAsFactors=FALSE)
# in.p <- ducks[["GenusSpecies"]] %in% dMagnusonPark$scientific_name
# ducks[["GenusSpecies"]][in.p]
# ducks[["CommonName"]][in.p]
#
duckGenusDF <- read.csv("duckGenus.csv", stringsAsFactors=FALSE)
indxGenus <- unlist(lapply(duckGenusDF[, "Genus"],
  function(genus) grep(genus, dMagnusonPark[["scientific_name"]])))
ducksMagnusonPark <- dMagnusonPark[indxGenus,]
write.csv(ducksMagnusonPark, "ducksMagnusonPark.csv")
