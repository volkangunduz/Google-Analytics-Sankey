# installation
# install.packages("RGA")
library(RGA)
authorize()
id <- 000000000 # your accound id here
first.date <- firstdate(id)

# source report
sourceReport <- get_ga(id, start.date = "2015-01-01", end.date = "yesterday",
                  metrics = "ga:sessions",
                  dimensions = "ga:sourceMedium, ga:pageTitle")

library(googleVis)
sk1 <- gvisSankey(sourceReport, from="sourceMedium", to="pageTitle", weight="sessions")
plot(sk1)
