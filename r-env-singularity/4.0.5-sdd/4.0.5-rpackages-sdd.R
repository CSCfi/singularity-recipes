# r-env-singularity (R 4.0.5) R package installations
# the container sets up a date-locked CRAN snapshot

# NOTE: THE INSTALLATION ORDER IS EXPLICIT (== EASILY BROKEN!)
# The script is divided into seven sections.
# Set 7 was introduced after Puhti GA and is WIP.

# DEVTOOLS AND BIOCONDUCTOR
# Install these before going through package sets!

install.packages("devtools", dependencies = TRUE)
install.packages("BiocManager", dependencies = TRUE)

# Set Bioconductor version to 3.12
BiocManager::install(version = "3.12", ask = FALSE)

# Load devtools
library(devtools)

# PACKAGE SET 1 
# CRAN packages, lower-level

install_version("abind", dependencies = FALSE)
install_version("acepack", dependencies = FALSE)
install_version("ADGofTest", dependencies = FALSE)
install_version("aggregation", dependencies = FALSE)
install_version("ash", dependencies = FALSE)
install_version("assertive.base", dependencies = FALSE)
install_version("assertthat", dependencies = FALSE)
install_version("base64enc", dependencies = FALSE)
install_version("batch", dependencies = FALSE)
install_version("bdsmatrix", dependencies = FALSE)
install_version("beanplot", dependencies = FALSE)
install_version("beeswarm", dependencies = FALSE)
install_version("BH", dependencies = FALSE)
install_version("BiasedUrn", dependencies = FALSE)
install_version("bigmemory.sri", dependencies = FALSE)
install_version("bindr", dependencies = FALSE)
install_version("bit", dependencies = FALSE)
install_version("bit64", dependencies = FALSE)
install_version("bitops", dependencies = FALSE)
install_version("blob", dependencies = FALSE)
install_version("boot", dependencies = FALSE)
install_version("brew", dependencies = FALSE)
install_version("calibrate", dependencies = FALSE)
install_version("carData", dependencies = FALSE)
install_version("chron", dependencies = FALSE)
install_version("class", dependencies = FALSE)
install_version("cluster", dependencies = FALSE)
install_version("codetools", dependencies = FALSE)
install_version("colorspace", dependencies = FALSE)
install_version("combinat", dependencies = FALSE)

# copula + dependencies
install_version("stabledist", dependencies = FALSE)
install_version("mvtnorm", dependencies = FALSE)
install_version("pcaPP", dependencies = FALSE)
install_version("gsl", dependencies = FALSE)
install_version("pspline", dependencies = FALSE)
install_version("numDeriv", dependencies = FALSE)
install_version("copula", dependencies = FALSE)

install_version("corpcor", dependencies = FALSE)
install_version("corrplot", dependencies = FALSE)
install_version("data.table", dependencies = FALSE)
install_version("DBI", dependencies = FALSE)
install_version("deldir", dependencies = FALSE)
install_version("DEoptimR", dependencies = FALSE)
install_version("Deriv", dependencies = FALSE)
install_version("deSolve", dependencies = FALSE)
install_version("dichromat", dependencies = FALSE)
install_version("diptest", dependencies = FALSE)
install_version("dotCall64", dependencies = FALSE)
install_version("dynamicTreeCut", dependencies = FALSE)
install_version("ellipse", dependencies = FALSE)
install_version("entropy", dependencies = FALSE)
install_version("estimability", dependencies = FALSE)
install_version("extrafontdb", dependencies = FALSE)
install_version("fastcluster", dependencies = FALSE)
install_version("fastmatch", dependencies = FALSE)
install_version("fdrtool", dependencies = FALSE)
install_version("float", dependencies = FALSE)
install_version("fmsb", dependencies = FALSE)
install_version("FNN", dependencies = FALSE)
install_version("fracdiff", dependencies = FALSE)
install_version("fontcm", dependencies = FALSE)
install_version("formatR", dependencies = FALSE)
install_version("foreign", dependencies = FALSE)
install_version("Formula", dependencies = FALSE)
install_version("fracdiff", dependencies = FALSE)
install_version("futile.options", dependencies = FALSE)
install_version("gbRd", dependencies = FALSE)
install_version("generics", dependencies = FALSE)
install_version("getopt", dependencies = FALSE)
install_version("glasso", dependencies = FALSE)
install_version("glue", dependencies = FALSE)
install_version("goftest", dependencies = FALSE)
install_version("gower", dependencies = FALSE)
install_version("gridBase", dependencies = FALSE)
install_version("gss", dependencies = FALSE)
install_version("gtable", dependencies = FALSE)
install_version("gtools", dependencies = FALSE)
install_version("hwriter", dependencies = FALSE)
install_version("ica", dependencies = FALSE)
install_version("inline", dependencies = FALSE)
install_version("intervals", dependencies = FALSE)
install_version("iterators", dependencies = FALSE)
install_version("jpeg", dependencies = FALSE)
install_version("kernlab", dependencies = FALSE)
install_version("KernSmooth", dependencies = FALSE)
install_version("labeling", dependencies = FALSE)
install_version("lattice", dependencies = FALSE)
install_version("LearnBayes", dependencies = FALSE)
install_version("listenv", dependencies = FALSE)
install_version("lmodel2", dependencies = FALSE)
install_version("locpol", dependencies = FALSE)
install_version("lpSolve", dependencies = FALSE)
install_version("lsei", dependencies = FALSE)
install_version("manipulate", dependencies = FALSE)
install_version("maps", dependencies = FALSE)
install_version("matrixcalc", dependencies = FALSE)
install_version("matrixStats", dependencies = FALSE)
install_version("mclust", dependencies = FALSE)
install_version("memuse", dependencies = FALSE)
install_version("microbenchmark", dependencies = FALSE)
install_version("mmap", dependencies = FALSE)
install_version("tmvnsim", dependencies = FALSE)
install_version("mnormt", dependencies = FALSE)
install_version("modeltools", dependencies = FALSE)
# modes was archived (check problems were not corrected despite reminders)
# removed from list
# install_version("modes", dependencies = FALSE)
install_version("NbClust", dependencies = FALSE)
install_version("ncbit", dependencies = FALSE)
install_version("nnet", dependencies = FALSE)
install_version("nnls", dependencies = FALSE)
install_version("nleqslv", dependencies = FALSE)
install_version("nlme", dependencies = FALSE)
install_version("nloptr", dependencies = FALSE)
install_version("NLP", dependencies = FALSE)
install_version("nor1mix", dependencies = FALSE)
install_version("nplplot", dependencies = FALSE)
install_version("outliers", dependencies = FALSE)
install_version("pbapply", dependencies = FALSE)
install_version("pbivnorm", dependencies = FALSE)
install_version("pbmcapply", dependencies = FALSE)
install_version("pdc", dependencies = FALSE)
install_version("permute", dependencies = FALSE)
install_version("pixmap", dependencies = FALSE)
install_version("plogr", dependencies = FALSE)
install_version("plotrix", dependencies = FALSE)
install_version("pinfsc50", dependencise = FALSE)
install_version("pixmap", dependencies = FALSE)
install_version("png", dependencies = FALSE)
install_version("pls", dependencies = FALSE)
install_version("PoiClaClu", dependencies = FALSE)
install_version("polyclip", dependencies = FALSE)
install_version("pracma", dependencies = FALSE)
install_version("praise", dependencies = FALSE)
install_version("PresenceAbsence", dependencies = FALSE)
install_version("princurve", dependencies = FALSE)
install_version("profileModel", dependencies = FALSE)
install_version("proto", dependencies = FALSE)
install_version("proxy", dependencies = FALSE)
install_version("pvclust", dependencies = FALSE)
install_version("qap", dependencies = FALSE)

# note: these two installed separately from source on Puhti
install_version("rngWELL", dependencies = FALSE)
install_version("randtoolbox", dependencies = FALSE)

install_version("qrng", dependencies = FALSE)
install_version("quadprog", dependencies = FALSE)
install_version("qvcalc", dependencies = FALSE)
install_version("R.methodsS3", dependencies = FALSE)
install_version("RandomFieldsUtils", dependencies = FALSE)
install_version("RANN", dependencies = FALSE)
install_version("rematch", dependencies = FALSE)
install_version("RColorBrewer", dependencies = FALSE)
install_version("Rcpp", dependencies = FALSE)
install_version("rjson", dependencies = FALSE)
install_version("RJSONIO", dependencies = FALSE)
install_version("rlecuyer", dependencies = FALSE)
install_version("rmutil", dependencies = FALSE)
install_version("rpart", dependencies = FALSE)
install_version("Rttf2pt1", dependencies = FALSE)
install_version("RUnit", dependencies = FALSE)
install_version("scatterplot3d", dependencies = FALSE)
install_version("segmented", dependencies = FALSE)
install_version("settings", dependencies = FALSE)
install_version("sfsmisc", dependencies = FALSE)
install_version("sgeostat", dependencies = FALSE)
install_version("shape", dependencies = FALSE)
install_version("slam", dependencies = FALSE)
install_version("snow", dependencies = FALSE)
install_version("sourcetools", dependencies = FALSE)
install_version("sp", dependencies = FALSE)
install_version("spatstat.utils", dependencies = FALSE)
# spData needs raster
install_version("raster", dependencies = FALSE)
install_version("spData", dependencies = FALSE)
install_version("SparseM", dependencies = FALSE)
install_version("spatial", dependencies = FALSE)
install_version("splus2R", dependencies = FALSE)
install_version("SQUAREM", dependencies = FALSE)
install_version("sROC", dependencies = FALSE)
install_version("statmod", dependencies = FALSE)
install_version("subplex", dependencies = FALSE)
install_version("SuppDists", dependencies = FALSE)
install_version("survival", dependencies = FALSE)
install_version("TeachingDemos", dependencies = FALSE)
install_version("tensor", dependencies = FALSE)
install_version("tensorA", dependencies = FALSE)
install_version("timeDate", dependencies = FALSE)
install_version("truncnorm", dependencies = FALSE)
install_version("tsne", dependencies = FALSE)
install_version("uroot", dependencies = FALSE)
install_version("uuid", dependencies = FALSE)
install_version("vipor", dependencies = FALSE)
install_version("viridisLite", dependencies = FALSE)
install_version("withr", dependencies = FALSE)
install_version("zip", dependencies = FALSE)

# PACKAGE SET 2 
# CRAN packages w/ up + downstream dependencies

# pkgmaker
install_version("bibtex", dependencies = FALSE)
install_version("registry", dependencies = FALSE)
install_version("xtable", dependencies = FALSE)
install_version("pkgmaker", dependencies = FALSE)

# rngtools
install_version("rngtools", dependencies = FALSE)

# tidyverse
install_version("tidyselect", dependencies = FALSE)
install_version("dplyr", dependencies = FALSE)
install_version("tidyr", dependencies = FALSE) 
install_version("dbplyr", dependencies = FALSE)
install_version("cellranger", dependencies = FALSE)

# ellipsis (need newer)
defaultwd <- getwd() # get default wd
setwd("/tmp")
download.file(url = 'https://cran.r-project.org/src/contrib/ellipsis_0.3.2.tar.gz',
              destfile = 'ellipsis.tar.gz')
gzname <- list.files(pattern = "ellipsis")
install.packages(gzname, repos = NULL)
setwd(defaultwd)

install_version("forcats", dependencies = FALSE)
install_version("plyr", dependencies = FALSE)
install_version("reshape2", dependencies = FALSE)
install_version("backports", dependencies = FALSE)
install_version("broom", dependencies = FALSE)
install_version("munsell", dependencies = FALSE)
# scales needs farver
install_version("farver", dependencies = FALSE)
install_version("scales", dependencies = FALSE)
install_version("mgcv", dependencies = FALSE)
install_version("isoband", dependencies = FALSE)
install_version("ggplot2", dependencies = FALSE)
install_version("hms", dependencies = FALSE)
install_version("readr", dependencies = FALSE)
install_version("prettyunits", dependencies = FALSE)
install_version("progress", dependencies = FALSE)
install_version("haven", dependencies = FALSE)
install_version("readxl", dependencies = FALSE)
install_version("lubridate", dependencies = FALSE)
install_version("modelr", dependencies = FALSE)
install_version("processx", dependencies = FALSE)
install_version("callr", dependencies = FALSE)
install_version("reprex", dependencies = FALSE)

# tidyverse wants some new things
install_version("dtplyr", dependencies = FALSE)
install_version("googledrive", dependencies = FALSE)
install_version("ids", dependencies = FALSE)
install_version("googlesheets4", dependencies = FALSE) 
install_version("tidyverse", dependencies = FALSE) 

# lme4
install_version("minqa", dependencies = FALSE)
install_version("RcppEigen", dependencies = FALSE)
install_version("lme4", dependencies = FALSE)

# strucchange
install_version("zoo", dependencies = FALSE)
install_version("sandwich", dependencies = FALSE)
install_version("strucchange", dependencies = FALSE)

# misc packages w/ upstream and downstream dependencies
install_version("brglm", dependencies = FALSE)
install_version("coda", dependencies = FALSE)
install_version("expm", dependencies = FALSE)
install_version("flexclust", dependencies = FALSE)
install_version("fs", dependencies = FALSE)
install_version("globals", dependencies = FALSE)
install_version("parallelly", dependencies = FALSE)
install_version("future", dependencies = FALSE)
install_version("ggrepel", dependencies = FALSE)
# h5 archived, recommendation is to use hdf5r instead
# install_version("h5", dependencies = FALSE)
install_version("hdf5r", dependencies = FALSE)

# hier.part + dependencies
install_version("flexmix", dependencies = FALSE)
install_version("lmtest", dependencies = FALSE)
install_version("betareg", dependencies = FALSE)
install_version("hier.part", dependencies = FALSE)

install_version("igraph", dependencies = FALSE)
install_version("huge", dependencies = FALSE)
install_version("influenceR", dependencies = FALSE)
install_version("lambda.r", dependencies = FALSE) 
install_version("libcoin", dependencies = FALSE)
install_version("locfit", dependencies = FALSE)
install_version("maptools", dependencies = FALSE)
install_version("ModelMetrics", dependencies = FALSE)
install_version("npsurv", dependencies = FALSE)
install_version("pbkrtest", dependencies = FALSE)
install_version("qpdf", dependencies = FALSE)
install_version("RandomFields", dependencies = FALSE)
install_version("RcppAnnoy", dependencies = FALSE)
install_version("RcppCNPy", dependencies = FALSE)
install_version("RcppExamples", dependencies = FALSE)
install_version("RcppRoll", dependencies = FALSE)
install_version("rbibutils", dependencies = FALSE)
install_version("Rdpack", dependencies = FALSE)
install_version("RgoogleMaps", dependencies = FALSE)
install_version("rmarkdown", dependencies = FALSE)
install_version("robustbase", dependencies = FALSE)
install_version("RSpectra", dependencies = FALSE)
install_version("RSQLite", dependencies = FALSE) 
install_version("sendmailR", dependencies = FALSE)
install_version("xts", dependencies = FALSE)
install_version("spacetime", dependencies = FALSE)
install_version("spam", dependencies = FALSE)
install_version("splancs", dependencies = FALSE)
install_version("stable", dependencies = FALSE)
install_version("timeSeries", dependencies = FALSE)

# TMB + glmmTMB 
# note: shouldn't really be used since TMB attempts to compile things in installation folder
# (and /appl... is write-protected for Puhti users)
# however, are required as dependencies by other packages (e.g. DHARMa)
install_version("TMB", dependencies = FALSE)
install_version("glmmTMB", dependencies = FALSE)

# need newer vctrs
defaultwd <- getwd() # get default wd
setwd("/tmp")
download.file(url = 'https://cran.r-project.org/src/contrib/vctrs_0.3.8.tar.gz',
              destfile = 'vctrs.tar.gz')
gzname <- list.files(pattern = "vctrs")
install.packages(gzname, repos = NULL)
setwd(defaultwd)

install_version("vegan", dependencies = FALSE)

# quantreg
install_version("MatrixModels", dependencies = FALSE)
install_version("RcppArmadillo", dependencies = FALSE)
install_version("conquer", dependencies = FALSE)
install_version("quantreg", dependencies = FALSE)

# rio
install_version("openxlsx", dependencies = FALSE)
install_version("rio", dependencies = FALSE)

# classInt
install_version("e1071", dependencies = FALSE)
install_version("classInt", dependencies = FALSE)

# promises
install_version("later", dependencies = FALSE)
install_version("promises", dependencies = FALSE)

# shinyjs + dependencies
install_version("httpuv", dependencies = FALSE)
install_version("fastmap", dependencies = FALSE)
install_version("rlang", dependencies = FALSE)
install_version("magrittr", dependencies = FALSE)
install_version("jquerylib", dependencies = FALSE)
install_version("digest", dependencies = FALSE)
install_version("base64enc", dependencies = FALSE)
install_version("htmltools", dependencies = FALSE)
install_version("R6", dependencies = FALSE)
install_version("rappdirs", dependencies = FALSE)
install_version("sass", dependencies = FALSE)
install_version("jsonlite", dependencies = FALSE)
install_version("bslib", dependencies = FALSE)
install_version("shiny", dependencies = FALSE) 
install_version("shinyjs", dependencies = FALSE)

# gmodels
install_version("gdata", dependencies = FALSE)
install_version("gmodels", dependencies = FALSE)

# recipes
install_version("lava", dependencies = FALSE)
install_version("prodlim", dependencies = FALSE)
install_version("ipred", dependencies = FALSE)
install_version("recipes", dependencies = FALSE)

# multcomp
install_version("TH.data", dependencies = FALSE)
install_version("multcomp", dependencies = FALSE)

# geometry
install_version("commonmark", dependencies = FALSE)
install_version("magic", dependencies = FALSE)
install_version("roxygen2", dependencies = FALSE)
install_version("RcppProgress", dependencies = FALSE)
install_version("linprog", dependencies = FALSE)
install_version("geometry", dependencies = FALSE)

# rgexf (Rook, RCurl, XML)
install_version("Rook", dependencies = FALSE)
install_version("RCurl", dependencies = FALSE)
install_version("XML", dependencies = FALSE)
install_version("servr", dependencies = FALSE)
install_version("rgexf", dependencies = FALSE)

# Hmisc
install_version("htmlwidgets", dependencies = FALSE)
install_version("visNetwork", dependencies = FALSE)
install_version("checkmate", dependencies = FALSE) 
install_version("htmlTable", dependencies = FALSE) 
install_version("gridExtra", dependencies = FALSE)
install_version("viridis", dependencies = FALSE)
install_version("latticeExtra", dependencies = FALSE)
install_version("Hmisc", dependencies = FALSE)

# ROCR
install_version("caTools", dependencies = FALSE)
install_version("gplots", dependencies = FALSE)
install_version("ROCR", dependencies = FALSE)

# survey
install_version("mitools", dependencies = FALSE)
install_version("survey", dependencies = FALSE)

# manipulateWidget
install_version("miniUI", dependencies = FALSE)
install_version("webshot", dependencies = FALSE)
install_version("manipulateWidget", dependencies = FALSE) 

# ggraph + dependencies
install_version("tweenr", dependencies = FALSE)
install_version("ggforce", dependencies = FALSE)
install_version("tidygraph", dependencies = FALSE)
install_version("graphlayouts", dependencies = FALSE)
install_version("ggraph", dependencies = FALSE)

# qgraph
install_version("BDgraph", dependencies = FALSE)
install_version("d3Network", dependencies = FALSE)
BiocManager::install("graph", update = FALSE)
install_version("ggm", dependencies = FALSE)
install_version("lavaan", dependencies = FALSE)
install_version("psych", dependencies = FALSE)  
install_version("qgraph", dependencies = FALSE) 

# assertive dependencies (building on assertive.base)
install_version("assertive.matrices", dependencies = FALSE)
install_version("assertive.models", dependencies = FALSE)
install_version("assertive.numbers", dependencies = FALSE)
install_version("assertive.properties", dependencies = FALSE)
install_version("assertive.reflection", dependencies = FALSE)
install_version("assertive.sets", dependencies = FALSE)
install_version("assertive.types", dependencies = FALSE)
install_version("assertive.code", dependencies = FALSE)
install_version("assertive.strings", dependencies = FALSE)
install_version("assertive.data", dependencies = FALSE)
install_version("assertive.data.uk", dependencies = FALSE)
install_version("assertive.data.us", dependencies = FALSE)
install_version("assertive.datetimes", dependencies = FALSE)
install_version("assertive.files", dependencies = FALSE)

# BBmisc 
install_version("BBmisc", dependencies = FALSE)

# pryr + kimisc
install_version("pryr", dependencies = FALSE)
install_version("kimisc", dependencies = FALSE)

# forecast
install_version("TTR", dependencies = FALSE)
install_version("quantmod", dependencies = FALSE)
install_version("tseries", dependencies = FALSE)
install_version("urca", dependencies = FALSE)
install_version("forecast", dependencies = FALSE)

# biomod2 + blockmodeling dependencies
install_version("hexbin", dependencies = FALSE)
install_version("reshape", dependencies = FALSE)
install_version("terra", dependencies = FALSE)
install_version("rasterVis", dependencies = FALSE)
install_version("pROC", dependencies = FALSE)
install_version("gbm", dependencies = FALSE)
install_version("mda", dependencies = FALSE)
install_version("randomForest", dependencies = FALSE)
install_version("dismo", dependencies = FALSE)
install_version("plotmo", dependencies = FALSE)
install_version("earth", dependencies = FALSE)
install_version("foreach", dependencies = FALSE)
install_version("caret", dependencies = FALSE)
install_version("doParallel", dependencies = FALSE)
install_version("glmnet", dependencies = FALSE)
install_version("maxnet", dependencies = FALSE)
install_version("ENMeval", dependencies = FALSE)
install_version("doRNG", dependencies = FALSE)

# Note! dismo package needs maxent.jar, which isn't part of the default installation
# https://biodiversityinformatics.amnh.org/open_source/maxent/
# maxent.jar needs to be copied to: .../dismo/java

# PACKAGE SET 3 
# CRAN packages, top of the food chain

# A

install_version("ade4", dependencies = FALSE) 
# adegenet needs ‘shiny’, ‘seqinr’, ‘spdep’, others installed before but add seqinr here
install_version("seqinr", dependencies = FALSE)
install_version("akima", dependencies = FALSE)
install_version("amap", dependencies = FALSE)
install_version("analogue", dependencies = FALSE)
install_version("ape", dependencies = FALSE)
install_version("arm", dependencies = FALSE)
install_version("assertive", dependencies = FALSE)

# B

install_version("base64", dependencies = FALSE)
install_version("BatchJobs", dependencies = FALSE)
install_version("bazar", dependencies = FALSE)
install_version("bfast", dependencies = FALSE)
install_version("bibtex", dependencies = FALSE)
install_version("biglm", dependencies = FALSE)
install_version("bigmemory", dependencies = FALSE)
install_version("bindrcpp", dependencies = FALSE)
install_version("biomod2", dependencies = FALSE)
install_version("blockmodeling", dependencies = FALSE)
install_version("bookdown", dependencies = FALSE)
install_version("BradleyTerry2", dependencies = FALSE)

# C

install_version("car", dependencies = FALSE)
install_version("clue", dependencies = FALSE)
install_version("clusterGeneration", dependencies = FALSE)
install_version("clv", dependencies = FALSE)
install_version("coin", dependencies = FALSE)
install_version("cowplot", dependencies = FALSE)
install_version("crosstalk", dependencies = FALSE)
install_version("cubature", dependencies = FALSE)
install_version("CVST", dependencies = FALSE)
install_version("cvTools", dependencies = FALSE)

# D

install_version("ddalpha", dependencies = FALSE)
install_version("dendextend", dependencies = FALSE)
install_version("DetSel", dependencies = FALSE)
install_version("downloader", dependencies = FALSE)
install_version("DiagrammeR", dependencies = FALSE)
install_version("doFuture", dependencies = FALSE)
install_version("DRR", dependencies = FALSE)
install_version("dimRed", dependencies = FALSE)
install_version("diveRsity", dependencies = FALSE)
install_version("DMwR", dependencies = FALSE)
install_version("doParallel", dependencies = FALSE)
install_version("dtw", dependencies = FALSE)

# E

# effects + dependencies
install_version("insight", dependencies = FALSE)
install_version("effects", dependencies = FALSE)

install_version("expm", dependencies = FALSE)
install_version("extrafont", dependencies = FALSE)

# F

install_version("fail", dependencies = FALSE)
install_version("fBasics", dependencies = FALSE)
install_version("ff", dependencies = FALSE)
install_version("fields", dependencies = FALSE)
install_version("fitdistrplus", dependencies = FALSE)
install_version("futile.logger", dependencies = FALSE)
install_version("future", dependencies = FALSE)
install_version("future.apply", dependencies = FALSE)

# G

install_version("gam", dependencies = FALSE)
install_version("gbm", dependencies = FALSE)

# geiger + dependencies
install_version("phangorn", dependencies = FALSE)
install_version("phytools", dependencies = FALSE) # needs Magick++ / ImageMagick
install_version("geiger", dependencies = FALSE)

install_version("geoR", dependencies = FALSE)
install_version("geoRglm", dependencies = FALSE)
install_version("geosphere", dependencies = FALSE)
install_version("GGally", dependencies = FALSE)
install_version("ggbeeswarm", dependencies = FALSE)
install_version("ggdendro", dependencies = FALSE)

# GGIR + dependencies
install_version("signal", dependencies = FALSE)
install_version("matlab", dependencies = FALSE)
install_version("GENEAread", dependencies = FALSE)
install_version("tuneR", dependencies = FALSE)
install_version("hexView", dependencies = FALSE)
install_version("lifecycle", dependencies = FALSE)
# vroom relocated to container recipe
# (compilation error when installing externally)
# install_version("vroom", dependencies = FALSE)
install_version("unisensR", dependencies = FALSE)
install_version("GGIR", dependencies = FALSE)

install_version("ggmap", dependencies = FALSE)
install_version("ggridges", dependencies = FALSE)
install_version("gstat", dependencies = FALSE)
install_version("gtx", dependencies = FALSE)

# I

install_version("ifultools", dependencies = FALSE)
install_version("influenceR", dependencies = FALSE)
install_version("irlba", dependencies = FALSE)

# K 

install_version("kdecopula", dependencies = FALSE)
install_version("kinship2", dependencies = FALSE)

# L

install_version("leaflet.providers", dependencies = FALSE)
install_version("leaflet", dependencies = FALSE)
install_version("leaflet.extras", dependencies = FALSE)

# M

install_version("mapproj", dependencies = FALSE)
# maxent not installed. Removed from CRAN due to repeated non-response to requests to fix check issues. 
install_version("MCMCglmm", dependencies = FALSE)
install_version("mda", dependencies = FALSE)
install_version("Rdpack", dependencies = FALSE)
install_version("sn", dependencies = FALSE)
install_version("TFisher", dependencies = FALSE)
BiocManager::install("Biobase", update = FALSE)
install_version("multtest", dependencies = FALSE)
install_version("mutoss", dependencies = FALSE)

# metap + dependencies
install_version("mathjaxr", dependencies = FALSE)
install_version("metap", dependencies = FALSE)

install_version("mi", dependencies = FALSE)

# NOTE: genefilter (needed for modeest) is a Bioconductor package
BiocManager::install("genefilter", update = FALSE)
# also installs ‘BiocGenerics’, ‘IRanges’, ‘S4Vectors’, ‘AnnotationDbi’, ‘annotate’, ‘Biobase’
install_version("statip", dependencies = FALSE)
install_version("modeest", dependencies = FALSE)
install_version("msm", dependencies = FALSE)

# mvoutlier + dependencies
install_version("rrcov", dependencies = FALSE) 
install_version("prabclus", dependencies = FALSE)
install_version("fpc", dependencies = FALSE)
install_version("vcd", dependencies = FALSE)
install_version("laeken", dependencies = FALSE)
install_version("ranger", dependencies = FALSE)
install_version("VIM", dependencies = FALSE)
install_version("NADA", dependencies = FALSE)
install_version("zCompositions", dependencies = FALSE)
install_version("multicool", dependencies = FALSE)
install_version("misc3d", dependencies = FALSE)
install_version("plot3D", dependencies = FALSE)
install_version("ks", dependencies = FALSE)
install_version("hdrcde", dependencies= FALSE)
install_version("rainbow", dependencies = FALSE)
install_version("fds", dependencies = FALSE)
install_version("fda", dependencies = FALSE)
install_version("robCompositions", dependencies = FALSE)
install_version("mvoutlier", dependencies = FALSE)

# N

install_version("ndjson", dependencies = FALSE)
install_version("network", dependencies = FALSE)
install_version("networkD3", dependencies = FALSE)
install_version("neuralnet", dependencies = FALSE) 
install_version("NMF", dependencies = FALSE)
install_version("np", dependencies = FALSE)

# O

install_version("openair", dependencies = FALSE)
install_version("optparse", dependencies = FALSE)

# P

install_version("party", dependencies = FALSE) 
install_version("pheatmap", dependencies = FALSE)
install_version("picante", dependencies = FALSE)
install_version("pillar", dependencies = FALSE)
install_version("plotly", dependencies = FALSE)
install_version("plotmo", dependencies = FALSE)
install_version("pls", dependencies = FALSE)
install_version("polysat", dependencies = FALSE)
install_version("PopGenome", dependencies = FALSE)

# R

install_version("R.oo", ependencies = FALSE)
install_version("R.utils", dependencies = FALSE)
install_version("R.cache", dependencies = FALSE)
install_version("R.rsp", dependencies = FALSE)
install_version("R2admb", dependencies = FALSE)
install_version("R2WinBUGS", dependencies = FALSE)
install_version("rARPACK", dependencies = FALSE)
install_version("reticulate", dependencies = FALSE)
install_version("RInside", dependencies = FALSE)
install_version("rioja", dependencies = FALSE)
install_version("rlas", dependencies = FALSE)
install_version("Rmisc", dependencies = FALSE)
install_version("RPMM", dependencies = FALSE)
install_version("RPostgreSQL", dependencies = FALSE)
install_version("rsvd", dependencies = FALSE)
install_version("Rtsne", dependencies = FALSE)

# S

install_version("satellite", dependencies = FALSE)
install_version("shapefiles", dependencies = FALSE)
install_version("sctransform", dependencies = FALSE)
# SDMtools needs adehabitat (which is archived on CRAN - install latest version from 2018)
# Mar 2020: SDMTools is no longer maintained on CRAN, removing along with adehabitat
install_version("tkrplot", dependencies = FALSE)
# install_version("adehabitat", version = "1.8.20", dependencies = FALSE)
# install_version("SDMTools", dependencies = FALSE)
install_version("seas", dependencies = FALSE)
install_version("sem", dependencies = FALSE)

# seriation + dependencies
install_version("TSP", dependencies = FALSE)
install_version("gclus", dependencies = FALSE)
install_version("seriation", dependencies = FALSE)

# Seurat + dependencies
install_version("leiden", dependencies = FALSE)
install_version("RcppParallel", ependencies = FALSE)
install_version("sitmo", dependencies = FALSE)
install_version("dqrng", dependencies = FALSE)
install_version("uwot", dependencies = FALSE)
install_version("patchwork", dependencies = FALSE)
install_version("spatstat.data", dependencies = FALSE)
install_version("spatstat.sparse", dependencies = FALSE)
install_version("spatstat.geom", dependencies = FALSE)
install_version("spatstat.core", dependencies = FALSE)
install_version("spatstat.linnet", dependencies = FALSE)
install_version("spatstat", dependencies = FALSE)
install_version("scattermore", dependencies = FALSE)
install_version("SeuratObject", dependencies = FALSE)
install_version("Seurat", dependencies = FALSE)

# sna needs statnet.common
install_version("rle", dependencies = FALSE)
install_version("statnet.common", dependencies = FALSE)
install_version("sna",dependencies = FALSE)

install_version("snowfall", dependencies = FALSE)
# install_version("spgrass6", dependencies = FALSE)
# Note: spgrass6 removed from list 29.11.2019 (grass is being phased out)
install_version("ssgraph", dependencies = FALSE)
install_version("statip", dependencies = FALSE)
install_version("streamR", dependencies = FALSE)

# T

install_version("tm", dependencies = FALSE)
install_version("TreeSim", dependencies = FALSE)
install_version("TreePar", dependencies = FALSE)

# U

install_version("umap", dependencies = FALSE)

# V

install_version("vcfR", dependencies = FALSE)
install_version("VineCopula", dependencies = FALSE)

# PACKAGE SET 4 
# CRAN packages, other packages with wider dependencies

# packages that need X11
# (note: rgl also needed for spatial packages)

install_version("rgl", dependencies = FALSE)
install_version("longitudinalData", dependencies = FALSE)
install_version("wmtsa", dependencies = FALSE)
install_version("TSclust", dependencies = FALSE)

# packages that need Java

install_version("rJava", dependencies = FALSE)
install_version("JavaGD", dependencies = FALSE)
install_version("RWekajars", dependencies = FALSE)
install_version("RWeka", dependencies = FALSE)
install_version("FSelector", dependencies = FALSE)

# packages that need TBB

install_version("RcppThread", dependencies = FALSE)
install_version("dtwclust", dependencies = FALSE)

# packages that need UDUNITS2
# (note: excluding spatial packages that come later)

install_version("udunits2", dependencies = FALSE, configure.args='--with-udunits2-include=/usr/include/udunits2/')

# packages that need MPI

# install_version("Rmpi", dependencies = FALSE,
# configure.args='--with-Rmpi-include=/usr/mpi/gcc/openmpi-4.0.3rc4/include --with-Rmpi-libpath=/usr/mpi/gcc/openmpi-4.0.3rc4/lib64 --with-Rmpi-type=OPENMPI')

# install_version("doMPI", dependencies = FALSE)

# install_version("pbdMPI", dependencies = FALSE, 
# configure.args='--with-mpi-include=/usr/mpi/gcc/openmpi-4.0.3rc4/include --with-mpi-libpath=/usr/mpi/gcc/openmpi-4.0.3rc4/lib64 --with-mpi-type=OPENMPI', 
# lib = libpath)

# install_version("pbdSLAP", dependencies = FALSE)
# install_version("pbdBASE", dependencies = FALSE)
# install_version("pbdDMAT", dependencies = FALSE)
# install_version("pbdDEMO", dependencies = FALSE)

# packages that need GMP

install_version("gmp", dependencies = FALSE)
install_version("Rmpfr", dependencies = FALSE)

# packages that need Magick++ / ImageMagick

install_version("magick", dependencies = FALSE)
install_version("animation", dependencies = FALSE)

# packages that need Cairo

install_version("Cairo", dependencies = FALSE)
# systemfonts moved into container recipe
# (compilation error when installing externally)
# install_version("systemfonts", dependencies = FALSE)
install_version("gdtools", dependencies = FALSE)
install_version("svglite", dependencies = FALSE)

# packages that need NetCDF

install_version("ncdf4", dependencies = FALSE)

# packages that need Poppler

install_version("pdftools", dependencies = FALSE)

# packages that need JAGS

install_version("rjags", dependencies = FALSE, configure.args="--enable-rpath")

install_version("runjags", dependencies = FALSE)

# packages that need MariaDB-Connector

install_version("RMariaDB", dependencies = FALSE)

# packages that need libtiff

install_version("rtiff", dependencies = FALSE)
install_version("sendplot", dependencies = FALSE)

# PACKAGE SET 5
# CRAN packages (spatial packages) + others that need rgdal

# Packages that need GDAL and PROJ4

install_version("rgdal", dependencies = FALSE)
install_version("units", dependencies = FALSE)
install_version("sf", dependencies = FALSE)
install_version("spdep", dependencies = FALSE)
install_version("spatialreg", dependencies = FALSE) 
install_version("adegenet", dependencies = FALSE)
install_version("gaston", dependencies = FALSE)
install_version("hierfstat", dependencies = FALSE)
install_version("GWmodel", dependencies = FALSE)
install_version("rgeos", dependencies = FALSE)
install_version("gdalUtils", dependencies = FALSE)
install_version("bmp", dependencies = FALSE)
install_version("tiff", dependencies = FALSE)
install_version("readbitmap", dependencies = FALSE)

# wants fftw3 and libtiff
install_version("imager", dependencies = FALSE)
install_version("RCSF", dependencies = FALSE)
install_version("lidR", dependencies = FALSE)
install_version("leafpm", dependencies = FALSE)
install_version("colourvalues", dependencies = FALSE)
install_version("googlePolylines", dependencies = FALSE)
install_version("rapidjsonr", dependencies = FALSE)
install_version("jsonify", dependencies = FALSE)
install_version("geometries", dependencies = FALSE)
install_version("sfheaders", dependencies = FALSE)
install_version("geojsonsf", dependencies = FALSE)
install_version("spatialwidget", dependencies = FALSE)
install_version("mapdeck", dependencies = FALSE)
install_version("leafem", dependencies = FALSE)
install_version("leafpop", dependencies = FALSE)
install_version("mapview", dependencies = FALSE)
install_version("mapedit", dependencies = FALSE)
install_version("RSAGA", dependencies = FALSE)
install_version("spatial.tools", dependencies = FALSE)

# dartr + dependencies
install_version("directlabels", dependencies = FALSE)
install_version("pca3d", dependencies = FALSE)
install_version("pegas", dependencies = FALSE)
install_version("polspline", dependencies = FALSE)
install_version("rms", dependencies = FALSE)
install_version("arsenal", dependencies = FALSE)
install_version("haplo.stats", dependencies = FALSE)
install_version("poisbinom", dependencies = FALSE)
BiocManager::install("BiocStyle", update = FALSE)
install_version("SNPassoc", dependencies = FALSE)
BiocManager::install("SNPRelate", update = FALSE)
install_version("StAMPP", dependencies = FALSE)
BiocManager::install("qvalue", update = FALSE)
install_version("rrBLUP", dependencies = FALSE)
install_version("mmod", dependencies = FALSE)
install_version("gap", dependencies = FALSE)
install_version("genetics", dependencies = FALSE)
install_version("gdistance", dependencies = FALSE)
install_version("PopGenReport", dependencies = FALSE)
install_version("mice", dependencies = FALSE)
install_version("Rsolnp", dependencies = FALSE)
install_version("HardyWeinberg", dependencies = FALSE)
install_version("dartR", dependencies = FALSE)

# Note: rgrass7 removed from list 29.11.2019 (grass is being phased out)

# PACKAGE SET 6
# Bioconductor packages (Bioconductor version 3.11)

# excludes a small number of Bioconductor packages required as 
# CRAN package dependencies

BiocManager::install("affy", update = FALSE)
BiocManager::install("oligo", update = FALSE)
BiocManager::install("airway", update = FALSE)
BiocManager::install("AnnotationFilter", update = FALSE)
BiocManager::install("AnnotationForge", update = FALSE)
BiocManager::install("AnnotationHub", update = FALSE)
BiocManager::install("BiocGenerics", update = FALSE)
BiocManager::install("BiocNeighbors", update = FALSE)
BiocManager::install("bioDist", update = FALSE)
BiocManager::install("biomaRt", update = FALSE)
BiocManager::install("Rhtslib", update = FALSE)
BiocManager::install("biovizBase", update = FALSE)
BiocManager::install("BSgenome.Dmelanogaster.UCSC.dm3", update = FALSE)
BiocManager::install("BSgenome.Hsapiens.UCSC.hg19", update = FALSE)

# CRAN package "deconstructSigs" depends on several Bioconductor packages, added here
install_version("deconstructSigs", dependencies = FALSE) 

BiocManager::install("bumphunter", update = FALSE)
BiocManager::install("Category", update = FALSE)
BiocManager::install("cummeRbund", update = FALSE)
BiocManager::install("DESeq", update = FALSE)
BiocManager::install("DESeq2", update = FALSE)
BiocManager::install("destiny", update = FALSE)
BiocManager::install("DEXSeq", update = FALSE)
BiocManager::install("FDb.InfiniumMethylation.hg19", update = FALSE)
BiocManager::install("org.Dm.eg.db", update = FALSE)
BiocManager::install("TxDb.Dmelanogaster.UCSC.dm3.ensGene", update = FALSE)
BiocManager::install("fission", update = FALSE)
BiocManager::install("gage", update = FALSE)
BiocManager::install("gageData", update = FALSE)
BiocManager::install("gcrma", update = FALSE)
BiocManager::install("gdsfmt", update = FALSE)
BiocManager::install("geneLenDataBase", update = FALSE)
BiocManager::install("ggbio", update = FALSE)
BiocManager::install("goseq", update = FALSE)
BiocManager::install("GSEABase", update = FALSE)
BiocManager::install("GSVA", update = FALSE)
BiocManager::install("HSMMSingleCell", update = FALSE)
BiocManager::install("IRanges", update = FALSE)
BiocManager::install("KEGGgraph", update = FALSE)
BiocManager::install("MAST", update = FALSE)
BiocManager::install("mixOmics", update = FALSE)
BiocManager::install("monocle", update = FALSE)
BiocManager::install("MutationalPatterns", update = FALSE)
BiocManager::install("netbiov", update = FALSE)
BiocManager::install("pathview", update = FALSE)
BiocManager::install("PFAM.db", update = FALSE)
BiocManager::install("ReportingTools", update = FALSE)
BiocManager::install("ROC", update = FALSE)
BiocManager::install("SAGx", update = FALSE)
BiocManager::install("SC3", update = FALSE)
BiocManager::install("SCnorm", update = FALSE)
BiocManager::install("seqLogo", update = FALSE)
BiocManager::install("SingleCellExperiment", update = FALSE)
BiocManager::install("singscore", update = FALSE)
BiocManager::install("SIFT.Hsapiens.dbSNP132", update = FALSE)
BiocManager::install("simpleaffy", update = FALSE)
BiocManager::install("SNPlocs.Hsapiens.dbSNP.20101109", update = FALSE)
BiocManager::install("snpStats", update = FALSE)
BiocManager::install("sva", update = FALSE)

# packages that need TBB

BiocManager::install("dada2", update = FALSE)

# packages that need zlib (or hdf5 libs installed using zlib)

BiocManager::install("beachmat", update = FALSE)
BiocManager::install("biomformat", update = FALSE)
BiocManager::install("DelayedMatrixStats", update = FALSE)
BiocManager::install("DiffBind", update = FALSE)
BiocManager::install("FlowSorted.Blood.450k", update = FALSE)
BiocManager::install("IlluminaHumanMethylation450kanno.ilmn12.hg19", update = FALSE)
BiocManager::install("lumi", update = FALSE)
BiocManager::install("mzR", update = FALSE)
BiocManager::install("phyloseq", update = FALSE)
BiocManager::install("scater", update = FALSE)
BiocManager::install("scran", update = FALSE)
BiocManager::install("wateRmelon", update = FALSE)
BiocManager::install("chipseq", update = FALSE)

# packages that need CRAN package Cairo

BiocManager::install("scde", update = FALSE)

# PACKAGE SET 7
# Later additions
# Extras, GitHub installations, user requests etc

# A

install_version("AnnotationBustR", dependencies = FALSE)
BiocManager::install("apeglm", update = FALSE)

# argparse (+ findpython)
install_version("findpython", dependencies = FALSE)
install_version("argparse", dependencies = FALSE)

# assignPOP + dependencies
install_version("tree", dependencies = FALSE)
install_version("assignPOP", dependencies = FALSE)

install_version("aws.signature", dependencies = FALSE)
install_version("aws.s3", dependencies = FALSE)

# B

# BayesianTools + dependencies
install_version("IDPmisc", dependencies = FALSE)
install_version("gmm", dependencies = FALSE)
install_version("tmvtnorm", dependencies = FALSE)
install_version("emulator", dependencies = FALSE)
install_version("qrnn", dependencies = FALSE)
install_version("ROI", dependencies = FALSE)
install_version("Rglpk", dependencies = FALSE)
install_version("ROI.plugin.glpk", dependencies = FALSE)
install_version("spaMM", dependencies = FALSE)
install_version("qgam", dependencies = FALSE)
install_version("DHARMa", dependencies = FALSE)
install_version("Brobdingnag", dependencies = FALSE)
install_version("bridgesampling", dependencies = FALSE)
install_version("BayesianTools", dependencies = FALSE)

BiocManager::install("bacon", update = FALSE)
BiocManager::install("Biostrings", update = FALSE)

# BONE
# Non-standard GitHub installation
# (Package is only available as zip hosted on GitHub)

defaultwd <- getwd() # get default wd
setwd("/tmp")
download.file(url = 'https://github.com/markkukuismin/BONE/raw/master/BONE.zip',
              destfile = 'BONE.zip')
unzip("BONE.zip")
system("R CMD build BONE") # build a tar.gz file
gzname <- list.files(pattern = "BONE_") # get tar.gz name
install.packages(gzname, repos = NULL) # install using tar.gz
setwd(defaultwd) # back to default wd

# brms + dependencies
install_version("StanHeaders", dependencies = FALSE)
install_version("loo", dependencies = FALSE)
install_version("V8", dependencies = FALSE)
# Note: older version of rstan because date-locked version (2.21.2)
# introduced a bug where running brms when logged in as another user
# led to a core dump (but not when logged in as default)
install_version("rstan", version = "2.19.3", dependencies = FALSE)
install_version("rstantools", dependencies = FALSE)
install_version("bayesplot", dependencies = FALSE)
install_version("colourpicker", dependencies = FALSE)
install_version("dygraphs", dependencies = FALSE)
install_version("packrat", dependencies = FALSE)
install_version("rsconnect", dependencies = FALSE)
install_version("threejs", dependencies = FALSE)
install_version("shinythemes", dependencies = FALSE)
install_version("shinystan", dependencies = FALSE)
install_version("mvnfast", dependencies = FALSE)
install_version("optimx", dependencies = FALSE)
install_version("gamm4", dependencies = FALSE)
install_version("projpred", dependencies = FALSE)
install_version("brms", dependencies = FALSE)

BiocManager::install("BSgenome.Mmusculus.UCSC.mm10", update = FALSE)

# C

# CaSpER + dependencies
install_version("ggsci", dependencies = FALSE)
install_version("ggsignif", dependencies = FALSE)
install_version("polynom", dependencies = FALSE)
install_version("rstatix", dependencies = FALSE)
install_version("ggpubr", dependencies = FALSE)
install_version("intergraph", dependencies = FALSE)
install_version("ggnetwork", dependencies = FALSE)
install_github("akdess/CaSpER", dep = FALSE)

install_version("CAST", dependencies = FALSE)
BiocManager::install("cicero", update = FALSE)
BiocManager::install("ChIPpeakAnno", update = FALSE)
BiocManager::install("chromVAR", update = FALSE)

# CONICSmat + dependencies
install_version("mixtools", dependencies = FALSE)
install_version("squash", dependencies = FALSE)
install_github("diazlab/CONICS/CONICSmat", dep = FALSE)

# conStruct + dependencies
install_version("caroline", dependencies = FALSE)
install_version("conStruct", dependencies = FALSE)

# D

install_version("densityClust", dependencies = FALSE)
BiocManager::install("DMRcate", update = FALSE)

# distrom + dependencies
install_version("gamlr", dependencies = FALSE)
install_version("distrom", dependencies = FALSE)

install_version("doSNOW", dependencies = FALSE)

# E

install_version("enrichR", dependencies = FALSE)
install_version("evd", dependencies = FALSE)

# F 

# factoextra + dependencies
install_version("flashClust", dependencies = FALSE)
install_version("leaps", dependencies = FALSE)
install_version("FactoMineR", dependencies = FALSE)
install_version("factoextra", dependencies = FALSE)

install_version("fasterize", dependencies = FALSE)
BiocManager::install("FlowSorted.Blood.EPIC", update = FALSE)
BiocManager::install("FlowSorted.CordBlood.450k", update = FALSE)
BiocManager::install("FlowSorted.CordBloodCombined.450k", update = FALSE)
BiocManager::install("FlowSorted.DLPFC.450k", update = FALSE)
install_version("future.batchtools", dependencies = FALSE)
install_version("FWDselect", dependencies = FALSE)
install_version("fst", dependencies = FALSE)

# G

install_version("gapfill", dependencies = FALSE)
install_github("C2SM/gevXgpd", dep = FALSE)
install_version("gdalcubes", dependencies = FALSE)
install_github("rystanley/genepopedit", dependencies = FALSE)
BiocManager::install("genomation", update = FALSE)
BiocManager::install("GenomicRanges", update = FALSE)

# gllvm + dependencies
install_version("fishMod", dependencies = FALSE)
install_version("tweedie", dependencies = FALSE)
install_version("RcppGSL", dependencies = FALSE)
install_version("mvabund", dependencies = FALSE)
install_version("gllvm", dependencies = FALSE)

# H

# Hmsc + dependencies
install_version("BayesLogit", dependencies = FALSE)
install_version("pdist", dependencies = FALSE)
install_version("mcmc", dependencies = FALSE)
install_version("MCMCpack", dependencies = FALSE)
install_version("Hmsc", dependencies = FALSE)

# HoneyBADGER
install_version("HiddenMarkov", dependencies = FALSE)
install_github('JEFworks/HoneyBADGER', dependencies = FALSE)

# hyprcoloc + dependencies
install_version("arrangements", dependencies = FALSE)
install_version("iterpc", dependencies = FALSE)
install_github("jrs95/hyprcoloc", build_opts = c("--no-resave-data", "--no-manual"), build_vignettes = TRUE, dep = FALSE)

# I

BiocManager::install("infercnv", update = FALSE)

# imputeTS + dependencies
install_version("gridtext", dependencies = FALSE)
install_version("ggtext", dependencies = FALSE)
install_version("stinepack", dependencies = FALSE)
install_version("imputeTS", dependencies = FALSE)

BiocManager::install("IlluminaHumanMethylationEPICanno.ilm10b2.hg19", update = FALSE)
BiocManager::install("IlluminaHumanMethylationEPICmanifest", update = FALSE)
BiocManager::install("IsoformSwitchAnalyzeR", update = FALSE)

#IlluminaHumanMethylation450kmanifest + dependencies
BiocManager::install("BiocGenerics", update = FALSE)
BiocManager::install("IlluminaHumanMethylation450kmanifest", update = FALSE)

# INLA
install.packages("INLA", repos = c(getOption("repos"), INLA = "https://inla.r-inla-download.org/R/stable"), dep = TRUE)

# J

BiocManager::install("JASPAR2016", update = FALSE)
BiocManager::install("JASPAR2018", update = FALSE)
BiocManager::install("JASPAR2020", update = FALSE) 

# K

# kdetrees + dependencies
install_version("distory", dependencies = FALSE)
install_version("kdetrees", dependencies = FALSE)

# klaR + dependencies
install_version("labelled", dependencies = FALSE)
install_version("styler", dependencies = FALSE)
install_version("questionr", dependencies = FALSE)
install_version("klaR", dependencies = FALSE)

# L
BiocManager::install("LEA", update = FALSE)
install_version("lhs", dependencies = FALSE)
install_github("variani/lme4qtl", dependencies = FALSE) 

# M

#meffill + dependencies
BiocManager::install("DNAcopy", update = FALSE)
BiocManager::install("SmartSVA", update = FALSE)
install_github("perishky/meffil", dependencies = FALSE)

# metacoder + dependencies
install_version("triebeard", dependencies = FALSE)
install_version("urltools", dependencies = FALSE)
install_version("httpcode", dependencies = FALSE)
install_version("crul", dependencies = FALSE)
install_version("bold", dependencies = FALSE)
install_version("rredlist", dependencies = FALSE)
install_version("rentrez", dependencies = FALSE)
install_version("rncl", dependencies = FALSE)
install_version("rotl", dependencies = FALSE)
install_version("solrium", dependencies = FALSE)
install_version("ritis", dependencies = FALSE)
install_version("worrms", dependencies = FALSE)
install_version("natserv", dependencies = FALSE)
install_version("WikipediR", dependencies = FALSE)
install_version("WikidataR", dependencies = FALSE)
install_version("wikitaxa", dependencies = FALSE)
install_version("conditionz", dependencies = FALSE)
install_version("taxize", dependencies = FALSE)
install_version("taxa", dependencies = FALSE)
install_version("hoardr", dependencies = FALSE)
install_version("traits", dependencies = FALSE)
install_version("phylotate", dependencies = FALSE)
install_version("shades", dependencies = FALSE)
install_version("ggfittext", dependencies = FALSE)
install_version("GA", dependencies = FALSE)
install_version("metacoder", dependencies = FALSE)

BiocManager::install("methylKit", update = FALSE)

# mgcViz + dependencies
install_version("gamm4", dependencies = FALSE)
install_version("mgcViz", dependencies = FALSE)

BiocManager::install("minfi", update = FALSE)
install_version("miniCRAN", dependencies = FALSE)

# monocle3 + dependencies
# some dependencies in original installation instructions
# omitted, as already installed.
# see: https://cole-trapnell-lab.github.io/monocle3/docs/installation/
BiocManager::install("batchelor", update = FALSE)
BiocManager::install("Matrix.utils", update = FALSE)
install_github('cole-trapnell-lab/leidenbase', dep = FALSE)
install_version("pscl", dependencies = FALSE)
install_version("furrr", dependencies = FALSE)
install_version("modeldata", dependencies = FALSE)
install_version("warp", dependencies = FALSE)
install_version("slider", dependencies = FALSE)
install_version("rsample", dependencies = FALSE)
install_version("RhpcBLASctl", dependencies = FALSE)
install_version("speedglm", dependencies = FALSE)
install_github('cole-trapnell-lab/monocle3', dep = FALSE)

# cicero (version relying on monocle3)
install_github("cole-trapnell-lab/cicero-release", ref = "monocle3", dep = FALSE)

BiocManager::install("motifmatchr", update = FALSE)
install_version("MuMIn", dependencies = FALSE)

# N

install_version("ncf", dependencies = FALSE)

# O
# P

BiocManager::install("PharmacoGx", update = FALSE)
install_version("profvis")

# pacman + dependencies
install_version("remotes", dependencies = FALSE)
install_version("pacman", dependencies = FALSE)

# Q

# qdapRegex + dependencies
install_version("stringi", dependencies = FALSE)
install_version("qdapRegex", dependencies = FALSE)

# qs + dependencies
install_version("RApiSerialize", dependencies = FALSE)
install_version("stringfish", dependencies = FALSE)
install_version("qs", dependencies = FALSE)

# R

install_version("R2jags", dependencies = FALSE)
BiocManager::install("reactome.db", update = FALSE)
BiocManager::install("regioneR", update = FALSE)
install_version("reldist", dependencies = FALSE)
install_version("reutils", dependencies = FALSE)
BiocManager::install("rGREAT", update = FALSE)

# Rsagacmd + dependencies
install_version("minpack.lm", dependencies = FALSE)
install_version("Rsagacmd", dependencies = FALSE)

BiocManager::install("Rsubread", update = FALSE)
# downgrading rstanarm to 2.19.3 to link with rstan 2.9.13
install_version("rstanarm", version = "2.19.3", dependencies = FALSE)
install_version("IntCal", dependencies = FALSE)
install_version("rbacon", dependencies = FALSE)

install_version("rubias", dependencies = FALSE)

# S

# SAIGE

# SAIGE not available on CRAN or Bioconductor
# Installed separately

# SAIGEgds + dependencies
install_version("SPAtest", dependencies = FALSE)
BiocManager::install("SeqArray", update = FALSE)
BiocManager::install("SAIGEgds", update = FALSE)

devtools::install_github('satijalab/seurat-wrappers', dep = FALSE)
install_version("scoringRules", dependencies = FALSE)

# Signac + dependencies
install_version("ggseqlogo", dependencies = FALSE)
install_version("gggenes", dependencies = FALSE)
install_version("SnowballC", dependencies = FALSE)
install_version("lsa", dependencies = FALSE)
install_version("Signac", dependencies = FALSE)

install_version("splitstackshape", dependencies = FALSE)
install_version("lwgeom", dependencies = FALSE)
install_version("stars", dependencies = FALSE)
BiocManager::install("SummarizedExperiment", update = FALSE)

# T

# targets and associated packages
install_version("targets", dependencies = FALSE)
install_version("tarchetypes", dependencies = FALSE)

BiocManager::install("TFBSTools", update = FALSE) 
install_version("tictoc", dependencies = FALSE)

# tidymodels + dependencies
install_version("DiceDesign", dependencies = FALSE)
install_version("dials", dependencies = FALSE)
install_version("infer", dependencies = FALSE)
install_version("parsnip", dependencies = FALSE)
install_version("yardstick", dependencies = FALSE)
install_version("GPfit", dependencies = FALSE)
install_version("hardhat", dependencies = FALSE)
install_version("workflows", dependencies = FALSE)
install_version("tune", dependencies = FALSE)
install_version("conflicted", dependencies = FALSE)
install_version("cli", dependencies = FALSE)
install_version("workflowsets", dependencies = FALSE)
install_version("tidymodels", dependencies = FALSE)

install_version("topicmodels", dependencies = FALSE)
install_version("TraMineR", dependencies = FALSE)

# TSS.RESTREND + dependencies
install_version("mblm", dependencies = FALSE)
install_version("TSS.RESTREND", dependencies = FALSE)

BiocManager::install("TxDb.Mmusculus.UCSC.mm10.knownGene", update = FALSE) 
BiocManager::install("tximport", update = FALSE)
BiocManager::install("tximportData", update = FALSE)

# U
# V

# velox removed (taken off CRAN on 17 Mar 2021 due to check problems not being corrected)
install_version("vioplot", dependencies = FALSE)
install_version("visreg", dependencies = FALSE)

# W

install_version("WeightedCluster", dependencies = FALSE)
BiocManager::install("WGCNA", update = FALSE)

# X

install_version("xgboost", dependencies = FALSE)

# Y
# Z

# PACKAGE SET 8
# GPU packages

install_version("keras")
install_version("tensorflow")

# PACKAGE SET 9 

install_version("fst")
install_version("xgboost")
install_version("pacman")

# Fiona
install_version("lfe", dependencies = FALSE)
install_version("estimatr", dependencies = FALSE)
install_version("texreg", dependencies = FALSE)
install_version("binsreg", dependencies = FALSE)
install_version("stargazer", dependencies = FALSE)
install_version("dreamerr", dependencies = FALSE)
install_version("fixest", dependencies = FALSE)
install_version("tidylog", dependencies = FALSE)
install_version("stringdist", dependencies = FALSE)
install_version("fuzzyjoin", dependencies = FALSE)
install_version("sjlabelled", dependencies = FALSE)
install_version("sjmisc", dependencies = FALSE)
install_version("psychTools", dependencies = FALSE)
install_version("GPArotation", dependencies = FALSE)

### END ###
