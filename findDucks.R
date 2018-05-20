dMagnusonPark <- readRDS("dMagnusonPark.rds")
dMontlakeFill <- readRDS("dMontlakeFill.rds")
#
duckGenusDF <- read.csv("duckGenus.csv", stringsAsFactors=FALSE)
indxGenusMagnuson <- unlist(lapply(duckGenusDF[, "Genus"],
  function(genus) grep(genus, dMagnusonPark[["scientific_name"]])))
indxGenusMontlake <- unlist(lapply(duckGenusDF[, "Genus"],
  function(genus) grep(genus, dMontlakeFill[["scientific_name"]])))
ducksMagnusonPark <- dMagnusonPark[indxGenusMagnuson,]
ducksMontlakeFill <- dMontlakeFill[indxGenusMontlake,]
#
write.csv(ducksMagnusonPark, "ducksMagnusonPark.csv", row.names=FALSE)
write.csv(ducksMontlakeFill, "ducksMontlakeFill.csv", row.names=FALSE)
#
saveRDS(ducksMagnusonPark, "ducksMagnusonPark.rds")
saveRDS(ducksMontlakeFill, "ducksMontlakeFill.rds")
