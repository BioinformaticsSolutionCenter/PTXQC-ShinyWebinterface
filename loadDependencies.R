local({
  ##
  ## set CRAN mirror
  ##
  r = list()
  # alt: r= getOption("repos") ## this will keep CRANextra @ http://www.stats.ox.ac.uk active, which is not required nor accessible here
  r["CRAN"] = "https://cran.uni-muenster.de/"
  ## alt: https://ftp.gwdg.de/pub/misc/cran/
  ## see: https://cran.r-project.org/mirrors.html
  options(repos = r)
})

#update.packages(ask = FALSE)

## order of packages is important here, since calling
## 'library(x) will load all packages and dependencies, which cannot be
## unloaded if another package needs an updated version (which is only later downloaded; but can then not be loaded)
## ---> install.packages ALL packages, BEFORE loading them using library
if (!require(dplyr)) install.packages("dplyr")

if (!require(shiny)) install.packages("shiny")

if (!require(PTXQC)) install.packages("PTXQC")

if (!require(magrittr)) install.packages("magrittr")

if (!require(shinyBS)) install.packages("shinyBS")

if (!require(shinythemes)) install.packages("shinythemes")

if (!require(yaml)) install.packages("yaml")

if (!require(waiter)) install.packages("waiter")

if (!require(htmlwidgets)) install.packages("htmlwidgets")

if (!require(digest)) install.packages("digest")

if (!require(shinyjs)) install.packages("shinyjs")


library(waiter)
library(dplyr)
library(shiny)
library(PTXQC)
library(yaml)
library(shinythemes)
library(shinyBS)
library(magrittr)
library(htmlwidgets)
library(digest)
library(shinyjs)