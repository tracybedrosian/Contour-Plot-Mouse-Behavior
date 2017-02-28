# Contour-Plot-Mouse-Behavior
Constructing a contour plot of XY position data  

Mouse behavioral data generated with BehaviorCloud

#### 1. Load ```MASS``` package

```
library(MASS)
```

#### 2. Plot elevated plus maze position data

```
epm <- read.csv("epm.csv")
dens <- kde2d(epm$x, epm$y, n=100)
filled.contour(dens, color.palette = colorRampPalette
              (c('white', 'blue', 'darkblue')), axes = FALSE, asp = 1)
```
![EPM](https://github.com/tracybedrosian/Contour-Plot-Mouse-Behavior/blob/master/EPMRplot.jpeg?raw=true "EPM")

#### 3. Plot open field position data

```
of <- read.csv("of.csv")
dens <- kde2d(of$x, of$y, n=100)
filled.contour(dens, color.palette = colorRampPalette
              (c('white', 'yellow', 'orange', 'red', 'darkred')), axes = FALSE, asp = 1)
```
![OF](OFRPlot.jpeg?raw=true "OF")
