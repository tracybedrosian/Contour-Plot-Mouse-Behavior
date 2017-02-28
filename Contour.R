library(MASS)
epm <- read.csv("epm.csv")
dens <- kde2d(epm$x, epm$y, n=100)
filled.contour(dens, color.palette = colorRampPalette(c('white', 'blue', 'darkblue')), axes = FALSE, asp = 1)

of <- read.csv("of.csv")
dens <- kde2d(of$x, of$y, n=100)
filled.contour(dens, color.palette = colorRampPalette(c('white', 'yellow', 'orange', 'red', 'darkred')), axes = FALSE, asp = 1)
