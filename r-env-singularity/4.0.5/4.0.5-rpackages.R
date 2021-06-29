# r-env-singularity (R 4.0.5) R package installations
# the container sets up a date-locked CRAN snapshot

# NOTE: THE INSTALLATION ORDER IS EXPLICIT (== EASILY BROKEN!)
# The script is divided into seven sections.
# Set 7 was introduced after Puhti GA and is WIP.

# R 4.0.5 DEVTOOLS AND BIOCONDUCTOR
# Install these before going through package sets!

libpath <- .libPaths()[2]

install.packages("devtools", dependencies = TRUE, lib = libpath)

# Set Bioconductor version to 3.12
BiocManager::install(version = "3.12", lib = libpath, ask = FALSE)

# Load devtools
library(devtools)

# R 4.0.5 PACKAGE SET 1 
# CRAN packages, lower-level

install_version("abind", dependencies = FALSE, lib = libpath)
install_version("acepack", dependencies = FALSE, lib = libpath)
install_version("ADGofTest", dependencies = FALSE, lib = libpath)
install_version("aggregation", dependencies = FALSE, lib = libpath)
install_version("ash", dependencies = FALSE, lib = libpath)
install_version("assertive.base", dependencies = FALSE, lib = libpath)
install_version("assertthat", dependencies = FALSE, lib = libpath)
install_version("base64enc", dependencies = FALSE, lib = libpath)
install_version("batch", dependencies = FALSE, lib = libpath)
install_version("bdsmatrix", dependencies = FALSE, lib = libpath)
install_version("beanplot", dependencies = FALSE, lib = libpath)
install_version("beeswarm", dependencies = FALSE, lib = libpath)
install_version("BH", dependencies = FALSE, lib = libpath)
install_version("BiasedUrn", dependencies = FALSE, lib = libpath)
install_version("bigmemory.sri", dependencies = FALSE, lib = libpath)
install_version("bindr", dependencies = FALSE, lib = libpath)
install_version("bit", dependencies = FALSE, lib = libpath)
install_version("bit64", dependencies = FALSE, lib = libpath)
install_version("bitops", dependencies = FALSE, lib = libpath)
install_version("blob", dependencies = FALSE, lib = libpath)
install_version("boot", dependencies = FALSE, lib = libpath)
install_version("brew", dependencies = FALSE, lib = libpath)
install_version("calibrate", dependencies = FALSE, lib = libpath)
install_version("carData", dependencies = FALSE, lib = libpath)
install_version("chron", dependencies = FALSE, lib = libpath)
install_version("class", dependencies = FALSE, lib = libpath)
install_version("cluster", dependencies = FALSE, lib = libpath)
install_version("codetools", dependencies = FALSE, lib = libpath)
install_version("colorspace", dependencies = FALSE, lib = libpath)
install_version("combinat", dependencies = FALSE, lib = libpath)

# copula + dependencies
install_version("stabledist", dependencies = FALSE, lib = libpath)
install_version("mvtnorm", dependencies = FALSE, lib = libpath)
install_version("pcaPP", dependencies = FALSE, lib = libpath)
install_version("gsl", dependencies = FALSE, lib = libpath)
install_version("pspline", dependencies = FALSE, lib = libpath)
install_version("numDeriv", dependencies = FALSE, lib = libpath)
install_version("copula", dependencies = FALSE, lib = libpath)

install_version("corpcor", dependencies = FALSE, lib = libpath)
install_version("corrplot", dependencies = FALSE, lib = libpath)
install_version("data.table", dependencies = FALSE, lib = libpath)
install_version("DBI", dependencies = FALSE, lib = libpath)
install_version("deldir", dependencies = FALSE, lib = libpath)
install_version("DEoptimR", dependencies = FALSE, lib = libpath)
install_version("Deriv", dependencies = FALSE, lib = libpath)
install_version("deSolve", dependencies = FALSE, lib = libpath)
install_version("dichromat", dependencies = FALSE, lib = libpath)
install_version("diptest", dependencies = FALSE, lib = libpath)
install_version("dotCall64", dependencies = FALSE, lib = libpath)
install_version("dynamicTreeCut", dependencies = FALSE, lib = libpath)
install_version("ellipse", dependencies = FALSE, lib = libpath)
install_version("entropy", dependencies = FALSE, lib = libpath)
install_version("estimability", dependencies = FALSE, lib = libpath)
install_version("extrafontdb", dependencies = FALSE, lib = libpath)
install_version("fastcluster", dependencies = FALSE, lib = libpath)
install_version("fastmatch", dependencies = FALSE, lib = libpath)
install_version("fdrtool", dependencies = FALSE, lib = libpath)
install_version("float", dependencies = FALSE, lib = libpath)
install_version("fmsb", dependencies = FALSE, lib = libpath)
install_version("FNN", dependencies = FALSE, lib = libpath)
install_version("fracdiff", dependencies = FALSE, lib = libpath)
install_version("fontcm", dependencies = FALSE, lib = libpath)
install_version("formatR", dependencies = FALSE, lib = libpath)
install_version("foreign", dependencies = FALSE, lib = libpath)
install_version("Formula", dependencies = FALSE, lib = libpath)
install_version("fracdiff", dependencies = FALSE, lib = libpath)
install_version("futile.options", dependencies = FALSE, lib = libpath)
install_version("gbRd", dependencies = FALSE, lib = libpath)
install_version("generics", dependencies = FALSE, lib = libpath)
install_version("getopt", dependencies = FALSE, lib = libpath)
install_version("glasso", dependencies = FALSE, lib = libpath)
install_version("glue", dependencies = FALSE, lib = libpath)
install_version("goftest", dependencies = FALSE, lib = libpath)
install_version("gower", dependencies = FALSE, lib = libpath)
install_version("gridBase", dependencies = FALSE, lib = libpath)
install_version("gss", dependencies = FALSE, lib = libpath)
install_version("gtable", dependencies = FALSE, lib = libpath)
install_version("gtools", dependencies = FALSE, lib = libpath)
install_version("hwriter", dependencies = FALSE, lib = libpath)
install_version("ica", dependencies = FALSE, lib = libpath)
install_version("inline", dependencies = FALSE, lib = libpath)
install_version("intervals", dependencies = FALSE, lib = libpath)
install_version("iterators", dependencies = FALSE, lib = libpath)
install_version("jpeg", dependencies = FALSE, lib = libpath)
install_version("kernlab", dependencies = FALSE, lib = libpath)
install_version("KernSmooth", dependencies = FALSE, lib = libpath)
install_version("labeling", dependencies = FALSE, lib = libpath)
install_version("lattice", dependencies = FALSE, lib = libpath)
install_version("LearnBayes", dependencies = FALSE, lib = libpath)
install_version("listenv", dependencies = FALSE, lib = libpath)
install_version("lmodel2", dependencies = FALSE, lib = libpath)
install_version("locpol", dependencies = FALSE, lib = libpath)
install_version("lpSolve", dependencies = FALSE, lib = libpath)
install_version("lsei", dependencies = FALSE, lib = libpath)
install_version("manipulate", dependencies = FALSE, lib = libpath)
install_version("maps", dependencies = FALSE, lib = libpath)
install_version("matrixcalc", dependencies = FALSE, lib = libpath)
install_version("matrixStats", dependencies = FALSE, lib = libpath)
install_version("mclust", dependencies = FALSE, lib = libpath)
install_version("memuse", dependencies = FALSE, lib = libpath)
install_version("microbenchmark", dependencies = FALSE, lib = libpath)
install_version("mmap", dependencies = FALSE, lib = libpath)
install_version("tmvnsim", dependencies = FALSE, lib = libpath)
install_version("mnormt", dependencies = FALSE, lib = libpath)
install_version("modeltools", dependencies = FALSE, lib = libpath)
# modes was archived (check problems were not corrected despite reminders)
# removed from list
# install_version("modes", dependencies = FALSE, lib = libpath)
install_version("NbClust", dependencies = FALSE, lib = libpath)
install_version("ncbit", dependencies = FALSE, lib = libpath)
install_version("nnet", dependencies = FALSE, lib = libpath)
install_version("nnls", dependencies = FALSE, lib = libpath)
install_version("nleqslv", dependencies = FALSE, lib = libpath)
install_version("nlme", dependencies = FALSE, lib = libpath)
install_version("nloptr", dependencies = FALSE, lib = libpath)
install_version("NLP", dependencies = FALSE, lib = libpath)
install_version("nor1mix", dependencies = FALSE, lib = libpath)
install_version("nplplot", dependencies = FALSE, lib = libpath)
install_version("outliers", dependencies = FALSE, lib = libpath)
install_version("pbapply", dependencies = FALSE, lib = libpath)
install_version("pbivnorm", dependencies = FALSE, lib = libpath)
install_version("pbmcapply", dependencies = FALSE, lib = libpath)
install_version("pdc", dependencies = FALSE, lib = libpath)
install_version("permute", dependencies = FALSE, lib = libpath)
install_version("pixmap", dependencies = FALSE, lib = libpath)
install_version("plogr", dependencies = FALSE, lib = libpath)
install_version("plotrix", dependencies = FALSE, lib = libpath)
install_version("pinfsc50", dependencise = FALSE, lib = libpath)
install_version("pixmap", dependencies = FALSE, lib = libpath)
install_version("png", dependencies = FALSE, lib = libpath)
install_version("pls", dependencies = FALSE, lib = libpath)
install_version("PoiClaClu", dependencies = FALSE, lib = libpath)
install_version("polyclip", dependencies = FALSE, lib = libpath)
install_version("pracma", dependencies = FALSE, lib = libpath)
install_version("praise", dependencies = FALSE, lib = libpath)
install_version("PresenceAbsence", dependencies = FALSE, lib = libpath)
install_version("princurve", dependencies = FALSE, lib = libpath)
install_version("profileModel", dependencies = FALSE, lib = libpath)
install_version("proto", dependencies = FALSE, lib = libpath)
install_version("proxy", dependencies = FALSE, lib = libpath)
install_version("pvclust", dependencies = FALSE, lib = libpath)
install_version("qap", dependencies = FALSE, lib = libpath)
# qrng needs randtoolbox (+ randtoolbox needs rngWELL)

# rngWELL and randtoolbox installations can be tricky with CentOS7 
# (can get locale error for some reason). Use modified version installed
# from source. See 4.0.5-source dir for details on mods to locale.h file

defaultwd <- getwd()
setwd("/appl/soft/math/r-env-singularity/4.0.5/4.0.5-source")
install.packages("rngwell_0.10.-6_centos7.tar.gz", repos = NULL, type = "source", lib = libpath)
install.packages("randtoolbox_1.30.1_centos7.tar.gz", repos = NULL, type = "source", lib = libpath)
setwd(defaultwd)

install_version("qrng", dependencies = FALSE, lib = libpath)
install_version("quadprog", dependencies = FALSE, lib = libpath)
install_version("qvcalc", dependencies = FALSE, lib = libpath)
install_version("R.methodsS3", dependencies = FALSE, lib = libpath)
install_version("RandomFieldsUtils", dependencies = FALSE, lib = libpath)
install_version("RANN", dependencies = FALSE, lib = libpath)
install_version("rematch", dependencies = FALSE, lib = libpath)
install_version("RColorBrewer", dependencies = FALSE, lib = libpath)
install_version("Rcpp", dependencies = FALSE, lib = libpath)
install_version("rjson", dependencies = FALSE, lib = libpath)
install_version("RJSONIO", dependencies = FALSE, lib = libpath)
install_version("rlecuyer", dependencies = FALSE, lib = libpath)
install_version("rmutil", dependencies = FALSE, lib = libpath)
install_version("rpart", dependencies = FALSE, lib = libpath)
install_version("Rttf2pt1", dependencies = FALSE, lib = libpath)
install_version("RUnit", dependencies = FALSE, lib = libpath)
install_version("scatterplot3d", dependencies = FALSE, lib = libpath)
install_version("segmented", dependencies = FALSE, lib = libpath)
install_version("settings", dependencies = FALSE, lib = libpath)
install_version("sfsmisc", dependencies = FALSE, lib = libpath)
install_version("sgeostat", dependencies = FALSE, lib = libpath)
install_version("shape", dependencies = FALSE, lib = libpath)
install_version("slam", dependencies = FALSE, lib = libpath)
install_version("snow", dependencies = FALSE, lib = libpath)
install_version("sourcetools", dependencies = FALSE, lib = libpath)
install_version("sp", dependencies = FALSE, lib = libpath)
install_version("spatstat.utils", dependencies = FALSE, lib = libpath)
# spData needs raster
install_version("raster", dependencies = FALSE, lib = libpath)
install_version("spData", dependencies = FALSE, lib = libpath)
install_version("SparseM", dependencies = FALSE, lib = libpath)
install_version("spatial", dependencies = FALSE, lib = libpath)
install_version("splus2R", dependencies = FALSE, lib = libpath)
install_version("SQUAREM", dependencies = FALSE, lib = libpath)
install_version("sROC", dependencies = FALSE, lib = libpath)
install_version("statmod", dependencies = FALSE, lib = libpath)
install_version("subplex", dependencies = FALSE, lib = libpath)
install_version("SuppDists", dependencies = FALSE, lib = libpath)
install_version("survival", dependencies = FALSE, lib = libpath)
install_version("TeachingDemos", dependencies = FALSE, lib = libpath)
install_version("tensor", dependencies = FALSE, lib = libpath)
install_version("tensorA", dependencies = FALSE, lib = libpath)
install_version("timeDate", dependencies = FALSE, lib = libpath)
install_version("truncnorm", dependencies = FALSE, lib = libpath)
install_version("tsne", dependencies = FALSE, lib = libpath)
install_version("uroot", dependencies = FALSE, lib = libpath)
install_version("uuid", dependencies = FALSE, lib = libpath)
install_version("vipor", dependencies = FALSE, lib = libpath)
install_version("viridisLite", dependencies = FALSE, lib = libpath)
install_version("withr", dependencies = FALSE, lib = libpath)
install_version("zip", dependencies = FALSE, lib = libpath)

# R 4.0.5 PACKAGE SET 2 
# CRAN packages w/ up + downstream dependencies

# pkgmaker
install_version("bibtex", dependencies = FALSE, lib = libpath)
install_version("registry", dependencies = FALSE, lib = libpath)
install_version("xtable", dependencies = FALSE, lib = libpath)
install_version("pkgmaker", dependencies = FALSE, lib = libpath)

# rngtools
install_version("rngtools", dependencies = FALSE, lib = libpath)

# tidyverse
install_version("tidyselect", dependencies = FALSE, lib = libpath)
install_version("dplyr", dependencies = FALSE, lib = libpath)
install_version("tidyr", dependencies = FALSE, lib = libpath) 
install_version("dbplyr", dependencies = FALSE, lib = libpath)
install_version("cellranger", dependencies = FALSE, lib = libpath)
install_version("ellipsis", dependencies = FALSE, lib = libpath)
install_version("forcats", dependencies = FALSE, lib = libpath)
install_version("plyr", dependencies = FALSE, lib = libpath)
install_version("reshape2", dependencies = FALSE, lib = libpath)
install_version("backports", dependencies = FALSE, lib = libpath)
install_version("broom", dependencies = FALSE, lib = libpath)
install_version("munsell", dependencies = FALSE, lib = libpath)
# scales needs farver
install_version("farver", dependencies = FALSE, lib = libpath)
install_version("scales", dependencies = FALSE, lib = libpath)
install_version("mgcv", dependencies = FALSE, lib = libpath)
install_version("isoband", dependencies = FALSE, lib = libpath)
install_version("ggplot2", dependencies = FALSE, lib = libpath)
install_version("hms", dependencies = FALSE, lib = libpath)
install_version("readr", dependencies = FALSE, lib = libpath)
install_version("prettyunits", dependencies = FALSE, lib = libpath)
install_version("progress", dependencies = FALSE, lib = libpath)
install_version("haven", dependencies = FALSE, lib = libpath)
install_version("readxl", dependencies = FALSE, lib = libpath)
install_version("lubridate", dependencies = FALSE, lib = libpath)
install_version("modelr", dependencies = FALSE, lib = libpath)
install_version("processx", dependencies = FALSE, lib = libpath)
install_version("callr", dependencies = FALSE, lib = libpath)
install_version("reprex", dependencies = FALSE, lib = libpath)
install_version("googledrive", dependencies = FALSE, lib = libpath) 
install_version("ids", dependencies = FALSE, lib = libpath)
install_version("googlesheets4", dependencies = FALSE, lib = libpath)
install_version("tidyverse", dependencies = FALSE, lib = libpath) 

# lme4
install_version("minqa", dependencies = FALSE, lib = libpath)
install_version("RcppEigen", dependencies = FALSE, lib = libpath)
install_version("lme4", dependencies = FALSE, lib = libpath)

# strucchange
install_version("zoo", dependencies = FALSE, lib = libpath)
install_version("sandwich", dependencies = FALSE, lib = libpath)
install_version("strucchange", dependencies = FALSE, lib = libpath)

# misc packages w/ upstream and downstream dependencies
install_version("brglm", dependencies = FALSE, lib = libpath)
install_version("coda", dependencies = FALSE, lib = libpath)
install_version("expm", dependencies = FALSE, lib = libpath)
install_version("flexclust", dependencies = FALSE, lib = libpath)
install_version("fs", dependencies = FALSE, lib = libpath)
install_version("globals", dependencies = FALSE, lib = libpath)
install_version("parallelly", dependencies = FALSE, lib = libpath)
install_version("future", dependencies = FALSE, lib = libpath)
install_version("ggrepel", dependencies = FALSE, lib = libpath)
# h5 archived, recommendation is to use hdf5r instead
# install_version("h5", dependencies = FALSE, lib = libpath)
install_version("hdf5r", dependencies = FALSE, lib = libpath)

# hier.part + dependencies
install_version("flexmix", dependencies = FALSE, lib = libpath)
install_version("lmtest", dependencies = FALSE, lib = libpath)
install_version("betareg", dependencies = FALSE, lib = libpath)
install_version("hier.part", dependencies = FALSE, lib = libpath)

install_version("igraph", dependencies = FALSE, lib = libpath)
install_version("huge", dependencies = FALSE, lib = libpath)
install_version("influenceR", dependencies = FALSE, lib = libpath)
install_version("lambda.r", dependencies = FALSE, lib = libpath) 
install_version("libcoin", dependencies = FALSE, lib = libpath)
install_version("locfit", dependencies = FALSE, lib = libpath)
install_version("maptools", dependencies = FALSE, lib = libpath)
install_version("ModelMetrics", dependencies = FALSE, lib = libpath)
install_version("npsurv", dependencies = FALSE, lib = libpath)
install_version("pbkrtest", dependencies = FALSE, lib = libpath)
install_version("qpdf", dependencies = FALSE, lib = libpath)
install_version("RandomFields", dependencies = FALSE, lib = libpath)
install_version("RcppAnnoy", dependencies = FALSE, lib = libpath)
install_version("RcppCNPy", dependencies = FALSE, lib = libpath)
install_version("RcppExamples", dependencies = FALSE, lib = libpath)
install_version("RcppRoll", dependencies = FALSE, lib = libpath)
install_version("rbibutils", dependencies = FALSE, lib = libpath)
install_version("Rdpack", dependencies = FALSE, lib = libpath)
install_version("RgoogleMaps", dependencies = FALSE, lib = libpath)
install_version("rmarkdown", dependencies = FALSE, lib = libpath)
install_version("robustbase", dependencies = FALSE, lib = libpath)
install_version("RSpectra", dependencies = FALSE, lib = libpath)
install_version("RSQLite", dependencies = FALSE, lib = libpath) 
install_version("sendmailR", dependencies = FALSE, lib = libpath)
install_version("xts", dependencies = FALSE, lib = libpath)
install_version("spacetime", dependencies = FALSE, lib = libpath)
install_version("spam", dependencies = FALSE, lib = libpath)
install_version("splancs", dependencies = FALSE, lib = libpath)
install_version("stable", dependencies = FALSE, lib = libpath)
install_version("timeSeries", dependencies = FALSE, lib = libpath)

# TMB + glmmTMB 
# note: shouldn't really be used since TMB attempts to compile things in installation folder
# (and /appl... is write-protected for Puhti users)
# however, are required as dependencies by other packages (e.g. DHARMa)
install_version("TMB", dependencies = FALSE, lib = libpath)
install_version("glmmTMB", dependencies = FALSE, lib = libpath)

install_version("vctrs", dependencies = FALSE, lib = libpath)
install_version("vegan", dependencies = FALSE, lib = libpath)

# quantreg
install_version("MatrixModels", dependencies = FALSE, lib = libpath)
install_version("RcppArmadillo", dependencies = FALSE, lib = libpath)
install_version("conquer", dependencies = FALSE, lib = libpath)
install_version("quantreg", dependencies = FALSE, lib = libpath)

# rio
install_version("openxlsx", dependencies = FALSE, lib = libpath)
install_version("rio", dependencies = FALSE, lib = libpath)

# classInt
install_version("e1071", dependencies = FALSE, lib = libpath)
install_version("classInt", dependencies = FALSE, lib = libpath)

# promises
install_version("later", dependencies = FALSE, lib = libpath)
install_version("promises", dependencies = FALSE, lib = libpath)

# shinyjs + dependencies
install_version("httpuv", dependencies = FALSE, lib = libpath)
install_version("fastmap", dependencies = FALSE, lib = libpath)
install_version("rlang", dependencies = FALSE, lib = libpath)
install_version("magrittr", dependencies = FALSE, lib = libpath)
install_version("jquerylib", dependencies = FALSE, lib = libpath)
install_version("digest", dependencies = FALSE, lib = libpath)
install_version("base64enc", dependencies = FALSE, lib = libpath)
install_version("htmltools", dependencies = FALSE, lib = libpath)
install_version("R6", dependencies = FALSE, lib = libpath)
install_version("rappdirs", dependencies = FALSE, lib = libpath)
install_version("sass", dependencies = FALSE, lib = libpath)
install_version("jsonlite", dependencies = FALSE, lib = libpath)
install_version("bslib", dependencies = FALSE, lib = libpath)
install_version("shiny", dependencies = FALSE, lib = libpath) 
install_version("shinyjs", dependencies = FALSE, lib = libpath)

# gmodels
install_version("gdata", dependencies = FALSE, lib = libpath)
install_version("gmodels", dependencies = FALSE, lib = libpath)

# recipes
install_version("lava", dependencies = FALSE, lib = libpath)
install_version("prodlim", dependencies = FALSE, lib = libpath)
install_version("ipred", dependencies = FALSE, lib = libpath)
install_version("recipes", dependencies = FALSE, lib = libpath)

# multcomp
install_version("TH.data", dependencies = FALSE, lib = libpath)
install_version("multcomp", dependencies = FALSE, lib = libpath)

# geometry
install_version("commonmark", dependencies = FALSE, lib = libpath)
install_version("magic", dependencies = FALSE, lib = libpath)
install_version("roxygen2", dependencies = FALSE, lib = libpath)
install_version("RcppProgress", dependencies = FALSE, lib = libpath)
install_version("linprog", dependencies = FALSE, lib = libpath)
install_version("geometry", dependencies = FALSE, lib = libpath)

# rgexf (Rook, RCurl, XML)
install_version("Rook", dependencies = FALSE, lib = libpath)
install_version("RCurl", dependencies = FALSE, lib = libpath)
install_version("XML", dependencies = FALSE, lib = libpath)
install_version("servr", dependencies = FALSE, lib = libpath)
install_version("rgexf", dependencies = FALSE, lib = libpath)

# Hmisc
install_version("htmlwidgets", dependencies = FALSE, lib = libpath)
install_version("visNetwork", dependencies = FALSE, lib = libpath)
install_version("checkmate", dependencies = FALSE, lib = libpath) 
install_version("htmlTable", dependencies = FALSE, lib = libpath) 
install_version("gridExtra", dependencies = FALSE, lib = libpath)
install_version("viridis", dependencies = FALSE, lib = libpath)
install_version("latticeExtra", dependencies = FALSE, lib = libpath)
install_version("Hmisc", dependencies = FALSE, lib = libpath)

# ROCR
install_version("caTools", dependencies = FALSE, lib = libpath)
install_version("gplots", dependencies = FALSE, lib = libpath)
install_version("ROCR", dependencies = FALSE, lib = libpath)

# survey
install_version("mitools", dependencies = FALSE, lib = libpath)
install_version("survey", dependencies = FALSE, lib = libpath)

# manipulateWidget
install_version("miniUI", dependencies = FALSE, lib = libpath)
install_version("webshot", dependencies = FALSE, lib = libpath)
install_version("manipulateWidget", dependencies = FALSE, lib = libpath) 

# ggraph + dependencies
install_version("tweenr", dependencies = FALSE, lib = libpath)
install_version("ggforce", dependencies = FALSE, lib = libpath)
install_version("tidygraph", dependencies = FALSE, lib = libpath)
install_version("graphlayouts", dependencies = FALSE, lib = libpath)
install_version("ggraph", dependencies = FALSE, lib = libpath)

# qgraph
install_version("BDgraph", dependencies = FALSE, lib = libpath)
install_version("d3Network", dependencies = FALSE, lib = libpath)
BiocManager::install("graph", lib = libpath, update = FALSE)
install_version("ggm", dependencies = FALSE, lib = libpath)
install_version("lavaan", dependencies = FALSE, lib = libpath)
install_version("psych", dependencies = FALSE, lib = libpath)  
install_version("qgraph", dependencies = FALSE, lib = libpath) 

# assertive dependencies (building on assertive.base)
install_version("assertive.matrices", dependencies = FALSE, lib = libpath)
install_version("assertive.models", dependencies = FALSE, lib = libpath)
install_version("assertive.numbers", dependencies = FALSE, lib = libpath)
install_version("assertive.properties", dependencies = FALSE, lib = libpath)
install_version("assertive.reflection", dependencies = FALSE, lib = libpath)
install_version("assertive.sets", dependencies = FALSE, lib = libpath)
install_version("assertive.types", dependencies = FALSE, lib = libpath)
install_version("assertive.code", dependencies = FALSE, lib = libpath)
install_version("assertive.strings", dependencies = FALSE, lib = libpath)
install_version("assertive.data", dependencies = FALSE, lib = libpath)
install_version("assertive.data.uk", dependencies = FALSE, lib = libpath)
install_version("assertive.data.us", dependencies = FALSE, lib = libpath)
install_version("assertive.datetimes", dependencies = FALSE, lib = libpath)
install_version("assertive.files", dependencies = FALSE, lib = libpath)

# BBmisc 
install_version("BBmisc", dependencies = FALSE, lib = libpath)

# pryr + kimisc
install_version("pryr", dependencies = FALSE, lib = libpath)
install_version("kimisc", dependencies = FALSE, lib = libpath)

# forecast
install_version("TTR", dependencies = FALSE, lib = libpath)
install_version("quantmod", dependencies = FALSE, lib = libpath)
install_version("tseries", dependencies = FALSE, lib = libpath)
install_version("urca", dependencies = FALSE, lib = libpath)
install_version("forecast", dependencies = FALSE, lib = libpath)

# biomod2 + blockmodeling dependencies
install_version("hexbin", dependencies = FALSE, lib = libpath)
install_version("reshape", dependencies = FALSE, lib = libpath)
install_version("terra", dependencies = FALSE, lib = libpath)
install_version("rasterVis", dependencies = FALSE, lib = libpath)
install_version("pROC", dependencies = FALSE, lib = libpath)
install_version("gbm", dependencies = FALSE, lib = libpath)
install_version("mda", dependencies = FALSE, lib = libpath)
install_version("randomForest", dependencies = FALSE, lib = libpath)
install_version("dismo", dependencies = FALSE, lib = libpath)
install_version("plotmo", dependencies = FALSE, lib = libpath)
install_version("earth", dependencies = FALSE, lib = libpath)
install_version("foreach", dependencies = FALSE, lib = libpath)
install_version("caret", dependencies = FALSE, lib = libpath)
install_version("doParallel", dependencies = FALSE, lib = libpath)
install_version("glmnet", dependencies = FALSE, lib = libpath)
install_version("maxnet", dependencies = FALSE, lib = libpath)
install_version("ENMeval", dependencies = FALSE, lib = libpath)
install_version("doRNG", dependencies = FALSE, lib = libpath)

# Note! dismo package needs maxent.jar, which isn't part of the default installation
# https://biodiversityinformatics.amnh.org/open_source/maxent/
# maxent.jar needs to be copied to: .../dismo/java

# R 4.0.5 PACKAGE SET 3 
# CRAN packages, top of the food chain

# A

install_version("ade4", dependencies = FALSE, lib = libpath) 
# adegenet needs ‘shiny’, ‘seqinr’, ‘spdep’, others installed before but add seqinr here
install_version("seqinr", dependencies = FALSE, lib = libpath)
install_version("akima", dependencies = FALSE, lib = libpath)
install_version("amap", dependencies = FALSE, lib = libpath)
install_version("analogue", dependencies = FALSE, lib = libpath)
install_version("ape", dependencies = FALSE, lib = libpath)
install_version("arm", dependencies = FALSE, lib = libpath)
install_version("assertive", dependencies = FALSE, lib = libpath)

# B

install_version("base64", dependencies = FALSE, lib = libpath)
install_version("BatchJobs", dependencies = FALSE, lib = libpath)
install_version("bazar", dependencies = FALSE, lib = libpath)
install_version("bfast", dependencies = FALSE, lib = libpath)
install_version("bibtex", dependencies = FALSE, lib = libpath)
install_version("biglm", dependencies = FALSE, lib = libpath)
install_version("bigmemory", dependencies = FALSE, lib = libpath)
install_version("bindrcpp", dependencies = FALSE, lib = libpath)
install_version("biomod2", dependencies = FALSE, lib = libpath)
install_version("blockmodeling", dependencies = FALSE, lib = libpath)
install_version("bookdown", dependencies = FALSE, lib = libpath)
install_version("BradleyTerry2", dependencies = FALSE, lib = libpath)

# C

install_version("car", dependencies = FALSE, lib = libpath)
install_version("clue", dependencies = FALSE, lib = libpath)
install_version("clusterGeneration", dependencies = FALSE, lib = libpath)
install_version("clv", dependencies = FALSE, lib = libpath)
install_version("coin", dependencies = FALSE, lib = libpath)
install_version("cowplot", dependencies = FALSE, lib = libpath)
install_version("crosstalk", dependencies = FALSE, lib = libpath)
install_version("cubature", dependencies = FALSE, lib = libpath)
install_version("CVST", dependencies = FALSE, lib = libpath)
install_version("cvTools", dependencies = FALSE, lib = libpath)

# D

install_version("ddalpha", dependencies = FALSE, lib = libpath)
install_version("dendextend", dependencies = FALSE, lib = libpath)
install_version("DetSel", dependencies = FALSE, lib = libpath)
install_version("downloader", dependencies = FALSE, lib = libpath)
install_version("DiagrammeR", dependencies = FALSE, lib = libpath)
install_version("doFuture", dependencies = FALSE, lib = libpath)
install_version("DRR", dependencies = FALSE, lib = libpath)
install_version("dimRed", dependencies = FALSE, lib = libpath)
install_version("diveRsity", dependencies = FALSE, lib = libpath)
install_version("DMwR", dependencies = FALSE, lib = libpath)
install_version("doParallel", dependencies = FALSE, lib = libpath)
install_version("dtplyr", dependencies = FALSE, lib = libpath)
install_version("dtw", dependencies = FALSE, lib = libpath)

# E

# effects + dependencies
install_version("insight", dependencies = FALSE, lib = libpath)
install_version("effects", dependencies = FALSE, lib = libpath)

install_version("expm", dependencies = FALSE, lib = libpath)
install_version("extrafont", dependencies = FALSE, lib = libpath)

# F

install_version("fail", dependencies = FALSE, lib = libpath)
install_version("fBasics", dependencies = FALSE, lib = libpath)
install_version("ff", dependencies = FALSE, lib = libpath)
install_version("fields", dependencies = FALSE, lib = libpath)
install_version("fitdistrplus", dependencies = FALSE, lib = libpath)
install_version("futile.logger", dependencies = FALSE, lib = libpath)
install_version("future", dependencies = FALSE, lib = libpath)
install_version("future.apply", dependencies = FALSE, lib = libpath)

# G

install_version("gam", dependencies = FALSE, lib = libpath)
install_version("gbm", dependencies = FALSE, lib = libpath)

# geiger + dependencies
install_version("phangorn", dependencies = FALSE, lib = libpath)
install_version("phytools", dependencies = FALSE, lib = libpath) # needs Magick++ / ImageMagick
install_version("geiger", dependencies = FALSE, lib = libpath)

install_version("geoR", dependencies = FALSE, lib = libpath)
install_version("geoRglm", dependencies = FALSE, lib = libpath)
install_version("geosphere", dependencies = FALSE, lib = libpath)
install_version("GGally", dependencies = FALSE, lib = libpath)
install_version("ggbeeswarm", dependencies = FALSE, lib = libpath)
install_version("ggdendro", dependencies = FALSE, lib = libpath)

# GGIR + dependencies
install_version("signal", dependencies = FALSE, lib = libpath)
install_version("matlab", dependencies = FALSE, lib = libpath)
install_version("GENEAread", dependencies = FALSE, lib = libpath)
install_version("tuneR", dependencies = FALSE, lib = libpath)
install_version("hexView", dependencies = FALSE, lib = libpath)
install_version("lifecycle", dependencies = FALSE, lib = libpath)
# vroom relocated to container recipe
# (compilation error when installing externally)
# install_version("vroom", dependencies = FALSE, lib = libpath)
install_version("unisensR", dependencies = FALSE, lib = libpath)
install_version("GGIR", dependencies = FALSE, lib = libpath)

install_version("ggmap", dependencies = FALSE, lib = libpath)
install_version("ggridges", dependencies = FALSE, lib = libpath)
install_version("gstat", dependencies = FALSE, lib = libpath)
install_version("gtx", dependencies = FALSE, lib = libpath)

# I

install_version("ifultools", dependencies = FALSE, lib = libpath)
install_version("influenceR", dependencies = FALSE, lib = libpath)
install_version("irlba", dependencies = FALSE, lib = libpath)

# K 

install_version("kdecopula", dependencies = FALSE, lib = libpath)
install_version("kinship2", dependencies = FALSE, lib = libpath)

# L

install_version("leaflet.providers", dependencies = FALSE, lib = libpath)
install_version("leaflet", dependencies = FALSE, lib = libpath)
install_version("leaflet.extras", dependencies = FALSE, lib = libpath)

# M

install_version("mapproj", dependencies = FALSE, lib = libpath)
# maxent not installed. Removed from CRAN due to repeated non-response to requests to fix check issues. 
install_version("MCMCglmm", dependencies = FALSE, lib = libpath)
install_version("mda", dependencies = FALSE, lib = libpath)
install_version("Rdpack", dependencies = FALSE, lib = libpath)
install_version("sn", dependencies = FALSE, lib = libpath)
install_version("TFisher", dependencies = FALSE, lib = libpath)
BiocManager::install("Biobase", lib = libpath, update = FALSE)
install_version("multtest", dependencies = FALSE, lib = libpath)
install_version("mutoss", dependencies = FALSE, lib = libpath)

# metap + dependencies
install_version("mathjaxr", dependencies = FALSE, lib = libpath)
install_version("metap", dependencies = FALSE, lib = libpath)

install_version("mi", dependencies = FALSE, lib = libpath)

# NOTE: genefilter (needed for modeest) is a Bioconductor package
BiocManager::install("genefilter", lib = libpath, update = FALSE)
# also installs ‘BiocGenerics’, ‘IRanges’, ‘S4Vectors’, ‘AnnotationDbi’, ‘annotate’, ‘Biobase’
install_version("statip", dependencies = FALSE, lib = libpath)
install_version("modeest", dependencies = FALSE, lib = libpath)
install_version("msm", dependencies = FALSE, lib = libpath)

# mvoutlier + dependencies
install_version("rrcov", dependencies = FALSE, lib = libpath) 
install_version("prabclus", dependencies = FALSE, lib = libpath)
install_version("fpc", dependencies = FALSE, lib = libpath)
install_version("vcd", dependencies = FALSE, lib = libpath)
install_version("laeken", dependencies = FALSE, lib = libpath)
install_version("ranger", dependencies = FALSE, lib = libpath)
install_version("VIM", dependencies = FALSE, lib = libpath)
install_version("NADA", dependencies = FALSE, lib = libpath)
install_version("zCompositions", dependencies = FALSE, lib = libpath)
install_version("multicool", dependencies = FALSE, lib = libpath)
install_version("misc3d", dependencies = FALSE, lib = libpath)
install_version("plot3D", dependencies = FALSE, lib = libpath)
install_version("ks", dependencies = FALSE, lib = libpath)
install_version("hdrcde", dependencies= FALSE, lib = libpath)
install_version("rainbow", dependencies = FALSE, lib = libpath)
install_version("fds", dependencies = FALSE, lib = libpath)
install_version("fda", dependencies = FALSE, lib = libpath)
install_version("robCompositions", dependencies = FALSE, lib = libpath)
install_version("mvoutlier", dependencies = FALSE, lib = libpath)

# N

install_version("ndjson", dependencies = FALSE, lib = libpath)
install_version("network", dependencies = FALSE, lib = libpath)
install_version("networkD3", dependencies = FALSE, lib = libpath)
install_version("neuralnet", dependencies = FALSE, lib = libpath) 
install_version("NMF", dependencies = FALSE, lib = libpath)
install_version("np", dependencies = FALSE, lib = libpath)

# O

install_version("openair", dependencies = FALSE, lib = libpath)
install_version("optparse", dependencies = FALSE, lib = libpath)

# P

install_version("party", dependencies = FALSE, lib = libpath) 
install_version("pheatmap", dependencies = FALSE, lib = libpath)
install_version("picante", dependencies = FALSE, lib = libpath)
install_version("pillar", dependencies = FALSE, lib = libpath)
install_version("plotly", dependencies = FALSE, lib = libpath)
install_version("plotmo", dependencies = FALSE, lib = libpath)
install_version("pls", dependencies = FALSE, lib = libpath)
install_version("polysat", dependencies = FALSE, lib = libpath)
install_version("PopGenome", dependencies = FALSE, lib = libpath)

# R

install_version("R.oo", ependencies = FALSE, lib = libpath)
install_version("R.utils", dependencies = FALSE, lib = libpath)
install_version("R.cache", dependencies = FALSE, lib = libpath)
install_version("R.rsp", dependencies = FALSE, lib = libpath)
install_version("R2admb", dependencies = FALSE, lib = libpath)
install_version("R2WinBUGS", dependencies = FALSE, lib = libpath)
install_version("rARPACK", dependencies = FALSE, lib = libpath)
install_version("reticulate", dependencies = FALSE, lib = libpath)
install_version("RInside", dependencies = FALSE, lib = libpath)
install_version("rioja", dependencies = FALSE, lib = libpath)
install_version("rlas", dependencies = FALSE, lib = libpath)
install_version("Rmisc", dependencies = FALSE, lib = libpath)
install_version("RPMM", dependencies = FALSE, lib = libpath)
install_version("RPostgreSQL", dependencies = FALSE, lib = libpath)
install_version("rsvd", dependencies = FALSE, lib = libpath)
install_version("Rtsne", dependencies = FALSE, lib = libpath)

# S

install_version("satellite", dependencies = FALSE, lib = libpath)
install_version("shapefiles", dependencies = FALSE, lib = libpath)
install_version("sctransform", dependencies = FALSE, lib = libpath)
# SDMtools needs adehabitat (which is archived on CRAN - install latest version from 2018)
# Mar 2020: SDMTools is no longer maintained on CRAN, removing along with adehabitat
install_version("tkrplot", dependencies = FALSE, lib = libpath)
# install_version("adehabitat", version = "1.8.20", dependencies = FALSE, lib = libpath)
# install_version("SDMTools", dependencies = FALSE, lib = libpath)
install_version("seas", dependencies = FALSE, lib = libpath)
install_version("sem", dependencies = FALSE, lib = libpath)

# seriation + dependencies
install_version("TSP", dependencies = FALSE, lib = libpath)
install_version("gclus", dependencies = FALSE, lib = libpath)
install_version("seriation", dependencies = FALSE, lib = libpath)

# Seurat + dependencies
install_version("leiden", dependencies = FALSE, lib = libpath)
install_version("RcppParallel", ependencies = FALSE, lib = libpath)
install_version("sitmo", dependencies = FALSE, lib = libpath)
install_version("dqrng", dependencies = FALSE, lib = libpath)
install_version("uwot", dependencies = FALSE, lib = libpath)
install_version("patchwork", dependencies = FALSE, lib = libpath)
install_version("spatstat.data", dependencies = FALSE, lib = libpath)
install_version("spatstat.sparse", dependencies = FALSE, lib = libpath)
install_version("spatstat.geom", dependencies = FALSE, lib = libpath)
install_version("spatstat.core", dependencies = FALSE, lib = libpath)
install_version("spatstat.linnet", dependencies = FALSE, lib = libpath)
install_version("spatstat", dependencies = FALSE, lib = libpath)
install_version("scattermore", dependencies = FALSE, lib = libpath)
install_version("SeuratObject", dependencies = FALSE, lib = libpath)
install_version("Seurat", dependencies = FALSE, lib = libpath)

# sna needs statnet.common
install_version("rle", dependencies = FALSE, lib = libpath)
install_version("statnet.common", dependencies = FALSE, lib = libpath)
install_version("sna",dependencies = FALSE, lib = libpath)

install_version("snowfall", dependencies = FALSE, lib = libpath)
# install_version("spgrass6", dependencies = FALSE, lib = libpath)
# Note: spgrass6 removed from list 29.11.2019 (grass is being phased out)
install_version("ssgraph", dependencies = FALSE, lib = libpath)
install_version("statip", dependencies = FALSE, lib = libpath)
install_version("streamR", dependencies = FALSE, lib = libpath)

# T

install_version("tm", dependencies = FALSE, lib = libpath)
install_version("TreeSim", dependencies = FALSE, lib = libpath)
install_version("TreePar", dependencies = FALSE, lib = libpath)

# U

install_version("umap", dependencies = FALSE, lib = libpath)

# V

install_version("vcfR", dependencies = FALSE, lib = libpath)
install_version("VineCopula", dependencies = FALSE, lib = libpath)

# R 4.0.5 PACKAGE SET 4 
# CRAN packages, other packages with wider dependencies

# packages that need X11
# (note: rgl also needed for spatial packages)

install_version("rgl", dependencies = FALSE, lib = libpath)
install_version("longitudinalData", dependencies = FALSE, lib = libpath)
install_version("wmtsa", dependencies = FALSE, lib = libpath)
install_version("TSclust", dependencies = FALSE, lib = libpath)

# packages that need Java

install_version("rJava", dependencies = FALSE, lib = libpath)
install_version("JavaGD", dependencies = FALSE, lib = libpath)
install_version("RWekajars", dependencies = FALSE, lib = libpath)
install_version("RWeka", dependencies = FALSE, lib = libpath)
install_version("FSelector", dependencies = FALSE, lib = libpath)

# packages that need TBB

install_version("RcppThread", dependencies = FALSE, lib = libpath)
install_version("dtwclust", dependencies = FALSE, lib = libpath)

# packages that need UDUNITS2
# (note: excluding spatial packages that come later)

install_version("udunits2", dependencies = FALSE, lib = libpath, configure.args='--with-udunits2-include=/usr/include/udunits2/')

# packages that need MPI

install_version("Rmpi", dependencies = FALSE,
configure.args='--with-Rmpi-include=/usr/mpi/gcc/openmpi-4.0.3rc4/include --with-Rmpi-libpath=/usr/mpi/gcc/openmpi-4.0.3rc4/lib64 --with-Rmpi-type=OPENMPI', lib = libpath)

install_version("doMPI", dependencies = FALSE, lib = libpath)

install_version("pbdMPI", dependencies = FALSE, 
configure.args='--with-mpi-include=/usr/mpi/gcc/openmpi-4.0.3rc4/include --with-mpi-libpath=/usr/mpi/gcc/openmpi-4.0.3rc4/lib64 --with-mpi-type=OPENMPI', 
lib = libpath)

install_version("pbdSLAP", dependencies = FALSE, lib = libpath)
install_version("pbdBASE", dependencies = FALSE, lib = libpath)
install_version("pbdDMAT", dependencies = FALSE, lib = libpath)
install_version("pbdDEMO", dependencies = FALSE, lib = libpath)

# packages that need GMP

install_version("gmp", dependencies = FALSE, lib = libpath)
install_version("Rmpfr", dependencies = FALSE, lib = libpath)

# packages that need Magick++ / ImageMagick

install_version("magick", dependencies = FALSE, lib = libpath)
install_version("animation", dependencies = FALSE, lib = libpath)

# packages that need Cairo

install_version("Cairo", dependencies = FALSE, lib = libpath)
# systemfonts moved into container recipe
# (compilation error when installing externally)
# install_version("systemfonts", dependencies = FALSE, lib = libpath)
install_version("gdtools", dependencies = FALSE, lib = libpath)
install_version("svglite", dependencies = FALSE, lib = libpath)

# packages that need NetCDF

install_version("ncdf4", dependencies = FALSE, lib = libpath)

# packages that need Poppler

install_version("pdftools", dependencies = FALSE, lib = libpath)

# packages that need JAGS

install_version("rjags", dependencies = FALSE, configure.args="--enable-rpath", lib = libpath)

install_version("runjags", dependencies = FALSE, lib = libpath)

# packages that need MariaDB-Connector

install_version("RMariaDB", dependencies = FALSE, lib = libpath)

# packages that need libtiff

install_version("rtiff", dependencies = FALSE, lib = libpath)
install_version("sendplot", dependencies = FALSE, lib = libpath)

# R 4.0.5 PACKAGE SET 5
# CRAN packages (spatial packages) + others that need rgdal

# Packages that need GDAL and PROJ4

install_version("rgdal", dependencies = FALSE, lib = libpath)
install_version("units", dependencies = FALSE, lib = libpath)
install_version("sf", dependencies = FALSE, lib = libpath)
install_version("spdep", dependencies = FALSE, lib = libpath)
install_version("spatialreg", dependencies = FALSE, lib = libpath) 
install_version("adegenet", dependencies = FALSE, lib = libpath)
install_version("gaston", dependencies = FALSE, lib = libpath)
install_version("hierfstat", dependencies = FALSE, lib = libpath)
install_version("GWmodel", dependencies = FALSE, lib = libpath)
install_version("rgeos", dependencies = FALSE, lib = libpath)
install_version("gdalUtils", dependencies = FALSE, lib = libpath)
install_version("bmp", dependencies = FALSE, lib = libpath)
install_version("tiff", dependencies = FALSE, lib = libpath)
install_version("readbitmap", dependencies = FALSE, lib = libpath)

# wants fftw3 and libtiff
install_version("imager", dependencies = FALSE, lib = libpath)
install_version("RCSF", dependencies = FALSE, lib = libpath)
install_version("lidR", dependencies = FALSE, lib = libpath)
install_version("leafpm", dependencies = FALSE, lib = libpath)
install_version("colourvalues", dependencies = FALSE, lib = libpath)
install_version("googlePolylines", dependencies = FALSE, lib = libpath)
install_version("rapidjsonr", dependencies = FALSE, lib = libpath)
install_version("jsonify", dependencies = FALSE, lib = libpath)
install_version("geometries", dependencies = FALSE, lib = libpath)
install_version("sfheaders", dependencies = FALSE, lib = libpath)
install_version("geojsonsf", dependencies = FALSE, lib = libpath)
install_version("spatialwidget", dependencies = FALSE, lib = libpath)
install_version("mapdeck", dependencies = FALSE, lib = libpath)
install_version("leafem", dependencies = FALSE, lib = libpath)
install_version("leafpop", dependencies = FALSE, lib = libpath)
install_version("mapview", dependencies = FALSE, lib = libpath)
install_version("mapedit", dependencies = FALSE, lib = libpath)
install_version("RSAGA", dependencies = FALSE, lib = libpath)
install_version("spatial.tools", dependencies = FALSE, lib = libpath)

# dartr + dependencies
install_version("directlabels", dependencies = FALSE, lib = libpath)
install_version("pca3d", dependencies = FALSE, lib = libpath)
install_version("pegas", dependencies = FALSE, lib = libpath)
install_version("polspline", dependencies = FALSE, lib = libpath)
install_version("rms", dependencies = FALSE, lib = libpath)
install_version("arsenal", dependencies = FALSE, lib = libpath)
install_version("haplo.stats", dependencies = FALSE, lib = libpath)
install_version("poisbinom", dependencies = FALSE, lib = libpath)
BiocManager::install("BiocStyle", lib = libpath, update = FALSE)
install_version("SNPassoc", dependencies = FALSE, lib = libpath)
BiocManager::install("SNPRelate", lib = libpath, update = FALSE)
install_version("StAMPP", dependencies = FALSE, lib = libpath)
BiocManager::install("qvalue", lib = libpath, update = FALSE)
install_version("rrBLUP", dependencies = FALSE, lib = libpath)
install_version("mmod", dependencies = FALSE, lib = libpath)
install_version("gap", dependencies = FALSE, lib = libpath)
install_version("genetics", dependencies = FALSE, lib = libpath)
install_version("gdistance", dependencies = FALSE, lib = libpath)
install_version("PopGenReport", dependencies = FALSE, lib = libpath)
install_version("mice", dependencies = FALSE, lib = libpath)
install_version("Rsolnp", dependencies = FALSE, lib = libpath)
install_version("HardyWeinberg", dependencies = FALSE, lib = libpath)
install_version("dartR", dependencies = FALSE, lib = libpath)

# Note: rgrass7 removed from list 29.11.2019 (grass is being phased out)

# R 4.0.5 PACKAGE SET 6
# Bioconductor packages (Bioconductor version 3.11)

# excludes a small number of Bioconductor packages required as 
# CRAN package dependencies

BiocManager::install("affy", lib = libpath, update = FALSE)
BiocManager::install("oligo", lib = libpath, update = FALSE)
BiocManager::install("airway", lib = libpath, update = FALSE)
BiocManager::install("AnnotationFilter", lib = libpath, update = FALSE)
BiocManager::install("AnnotationForge", lib = libpath, update = FALSE)
BiocManager::install("AnnotationHub", lib = libpath, update = FALSE)
BiocManager::install("BiocGenerics", lib = libpath, update = FALSE)
BiocManager::install("BiocNeighbors", lib = libpath, update = FALSE)
BiocManager::install("bioDist", lib = libpath, update = FALSE)
BiocManager::install("biomaRt", lib = libpath, update = FALSE)
BiocManager::install("Rhtslib", lib = libpath, update = FALSE)
BiocManager::install("biovizBase", lib = libpath, update = FALSE)
BiocManager::install("BSgenome.Dmelanogaster.UCSC.dm3", lib = libpath, update = FALSE)
BiocManager::install("BSgenome.Hsapiens.UCSC.hg19", lib = libpath, update = FALSE)

# CRAN package "deconstructSigs" depends on several Bioconductor packages, added here
install_version("deconstructSigs", dependencies = FALSE, lib = libpath) 

BiocManager::install("bumphunter", lib = libpath, update = FALSE)
BiocManager::install("Category", lib = libpath, update = FALSE)
BiocManager::install("cummeRbund", lib = libpath, update = FALSE)
BiocManager::install("DESeq", lib = libpath, update = FALSE)
BiocManager::install("DESeq2", lib = libpath, update = FALSE)
BiocManager::install("destiny", lib = libpath, update = FALSE)
BiocManager::install("DEXSeq", lib = libpath, update = FALSE)
BiocManager::install("FDb.InfiniumMethylation.hg19", lib = libpath, update = FALSE)
BiocManager::install("org.Dm.eg.db", lib = libpath, update = FALSE)
BiocManager::install("TxDb.Dmelanogaster.UCSC.dm3.ensGene", lib = libpath, update = FALSE)
BiocManager::install("fission", lib = libpath, update = FALSE)
BiocManager::install("gage", lib = libpath, update = FALSE)
BiocManager::install("gageData", lib = libpath, update = FALSE)
BiocManager::install("gcrma", lib = libpath, update = FALSE)
BiocManager::install("gdsfmt", lib = libpath, update = FALSE)
BiocManager::install("geneLenDataBase", lib = libpath, update = FALSE)
BiocManager::install("ggbio", lib = libpath, update = FALSE)
BiocManager::install("goseq", lib = libpath, update = FALSE)
BiocManager::install("GSEABase", lib = libpath, update = FALSE)
BiocManager::install("GSVA", lib = libpath, update = FALSE)
BiocManager::install("HSMMSingleCell", lib = libpath, update = FALSE)
BiocManager::install("IRanges", lib = libpath, update = FALSE)
BiocManager::install("KEGGgraph", lib = libpath, update = FALSE)
BiocManager::install("MAST", lib = libpath, update = FALSE)
BiocManager::install("mixOmics", lib = libpath, update = FALSE)
BiocManager::install("monocle", lib = libpath, update = FALSE)
BiocManager::install("MutationalPatterns", lib = libpath, update = FALSE)
BiocManager::install("netbiov", lib = libpath, update = FALSE)
BiocManager::install("pathview", lib = libpath, update = FALSE)
BiocManager::install("PFAM.db", lib = libpath, update = FALSE)
BiocManager::install("ReportingTools", lib = libpath, update = FALSE)
BiocManager::install("ROC", lib = libpath, update = FALSE)
BiocManager::install("SAGx", lib = libpath, update = FALSE)
BiocManager::install("SC3", lib = libpath, update = FALSE)
BiocManager::install("SCnorm", lib = libpath, update = FALSE)
BiocManager::install("seqLogo", lib = libpath, update = FALSE)
BiocManager::install("SingleCellExperiment", lib = libpath, update = FALSE)
BiocManager::install("singscore", lib = libpath, update = FALSE)
BiocManager::install("SIFT.Hsapiens.dbSNP132", lib = libpath, update = FALSE)
BiocManager::install("simpleaffy", lib = libpath, update = FALSE)
BiocManager::install("SNPlocs.Hsapiens.dbSNP.20101109", lib = libpath, update = FALSE)
BiocManager::install("snpStats", lib = libpath, update = FALSE)
BiocManager::install("sva", lib = libpath, update = FALSE)

# packages that need TBB

BiocManager::install("dada2", lib = libpath, update = FALSE)

# packages that need zlib (or hdf5 libs installed using zlib)

BiocManager::install("beachmat", lib = libpath, update = FALSE)
BiocManager::install("biomformat", lib = libpath, update = FALSE)
BiocManager::install("DelayedMatrixStats", lib = libpath, update = FALSE)
BiocManager::install("DiffBind", lib = libpath, update = FALSE)
BiocManager::install("FlowSorted.Blood.450k", lib = libpath, update = FALSE)
BiocManager::install("IlluminaHumanMethylation450kanno.ilmn12.hg19", lib = libpath, update = FALSE)
BiocManager::install("lumi", lib = libpath, update = FALSE)
BiocManager::install("mzR", lib = libpath, update = FALSE)
BiocManager::install("phyloseq", lib = libpath, update = FALSE)
BiocManager::install("scater", lib = libpath, update = FALSE)
BiocManager::install("scran", lib = libpath, update = FALSE)
BiocManager::install("wateRmelon", lib = libpath, update = FALSE)
BiocManager::install("chipseq", lib = libpath, update = FALSE)

# packages that need CRAN package Cairo

BiocManager::install("scde", lib = libpath, update = FALSE)

# R 4.0.5 PACKAGE SET 7
# Later additions
# Extras, GitHub installations, user requests etc

# A

install_version("AnnotationBustR", dependencies = FALSE, lib = libpath)
BiocManager::install("apeglm", lib = libpath, update = FALSE)

# argparse (+ findpython)
install_version("findpython", dependencies = FALSE, lib = libpath)
install_version("argparse", dependencies = FALSE, lib = libpath)

# assignPOP + dependencies
install_version("tree", dependencies = FALSE, lib = libpath)
install_version("assignPOP", dependencies = FALSE, lib = libpath)

install_version("aws.signature", dependencies = FALSE, lib = libpath)
install_version("aws.s3", dependencies = FALSE, lib = libpath)

# B

# BayesianTools + dependencies
install_version("IDPmisc", dependencies = FALSE, lib = libpath)
install_version("gmm", dependencies = FALSE, lib = libpath)
install_version("tmvtnorm", dependencies = FALSE, lib = libpath)
install_version("emulator", dependencies = FALSE, lib = libpath)
install_version("qrnn", dependencies = FALSE, lib = libpath)
install_version("ROI", dependencies = FALSE, lib = libpath)
install_version("Rglpk", dependencies = FALSE, lib = libpath)
install_version("ROI.plugin.glpk", dependencies = FALSE, lib = libpath)
install_version("spaMM", dependencies = FALSE, lib = libpath)
install_version("qgam", dependencies = FALSE, lib = libpath)
install_version("DHARMa", dependencies = FALSE, lib = libpath)
install_version("Brobdingnag", dependencies = FALSE, lib = libpath)
install_version("bridgesampling", dependencies = FALSE, lib = libpath)
install_version("BayesianTools", dependencies = FALSE, lib = libpath)

BiocManager::install("bacon", lib = libpath, update = FALSE)
BiocManager::install("Biostrings", lib = libpath, update = FALSE)

# BONE
# Non-standard GitHub installation
# (Package is only available as zip hosted on GitHub)

defaultwd <- getwd() # get default wd
setwd("/appl/soft/math/r-env-singularity/4.0.5/4.0.5-source")
download.file(url = 'https://github.com/markkukuismin/BONE/raw/master/BONE.zip',
              destfile = 'BONE.zip')
unzip("BONE.zip")
system("R CMD build BONE") # build a tar.gz file
gzname <- list.files(pattern = "BONE_") # get tar.gz name
install.packages(gzname, repos = NULL, lib = libpath) # install using tar.gz
setwd(defaultwd) # back to default wd

# brms + dependencies
install_version("StanHeaders", dependencies = FALSE, lib = libpath)
install_version("loo", dependencies = FALSE, lib = libpath)
install_version("V8", dependencies = FALSE, lib = libpath)
# Note: older version of rstan because date-locked version (2.21.2)
# introduced a bug where running brms when logged in as another user
# led to a core dump (but not when logged in as default)
install_version("rstan", version = "2.19.3", dependencies = FALSE, lib = libpath)
install_version("rstantools", dependencies = FALSE, lib = libpath)
install_version("bayesplot", dependencies = FALSE, lib = libpath)
install_version("colourpicker", dependencies = FALSE, lib = libpath)
install_version("dygraphs", dependencies = FALSE, lib = libpath)
install_version("packrat", dependencies = FALSE, lib = libpath)
install_version("rsconnect", dependencies = FALSE, lib = libpath)
install_version("threejs", dependencies = FALSE, lib = libpath)
install_version("shinythemes", dependencies = FALSE, lib = libpath)
install_version("shinystan", dependencies = FALSE, lib = libpath)
install_version("mvnfast", dependencies = FALSE, lib = libpath)
install_version("optimx", dependencies = FALSE, lib = libpath)
install_version("gamm4", dependencies = FALSE, lib = libpath)
install_version("projpred", dependencies = FALSE, lib = libpath)
install_version("brms", dependencies = FALSE, lib = libpath)

BiocManager::install("BSgenome.Mmusculus.UCSC.mm10", lib = libpath, update = FALSE)

# C

# CaSpER + dependencies
install_version("ggsci", dependencies = FALSE, lib = libpath)
install_version("ggsignif", dependencies = FALSE, lib = libpath)
install_version("polynom", dependencies = FALSE, lib = libpath)
install_version("rstatix", dependencies = FALSE, lib = libpath)
install_version("ggpubr", dependencies = FALSE, lib = libpath)
install_version("intergraph", dependencies = FALSE, lib = libpath)
install_version("ggnetwork", dependencies = FALSE, lib = libpath)
install_github("akdess/CaSpER", dep = FALSE, lib = libpath)

install_version("CAST", dependencies = FALSE, lib = libpath)
BiocManager::install("cicero", lib = libpath, update = FALSE)
BiocManager::install("ChIPpeakAnno", lib = libpath, update = FALSE)
BiocManager::install("chromVAR", lib = libpath, update = FALSE)

# CONICSmat + dependencies
install_version("mixtools", dependencies = FALSE, lib = libpath)
install_version("squash", dependencies = FALSE, lib = libpath)
install_github("diazlab/CONICS/CONICSmat", dep = FALSE, lib = libpath)

# conStruct + dependencies
install_version("caroline", dependencies = FALSE, lib = libpath)
install_version("conStruct", dependencies = FALSE, lib = libpath)

# D

install_version("densityClust", dependencies = FALSE, lib = libpath)
BiocManager::install("DiffBind", lib = libpath, update = FALSE)
BiocManager::install("DMRcate", lib = libpath, update = FALSE)

# distrom + dependencies
install_version("gamlr", dependencies = FALSE, lib = libpath)
install_version("distrom", dependencies = FALSE, lib = libpath)

install_version("doSNOW", dependencies = FALSE, lib = libpath)

# E

install_version("enrichR", dependencies = FALSE, lib = libpath)
install_version("evd", dependencies = FALSE, lib = libpath)

# F 

# factoextra + dependencies
install_version("flashClust", dependencies = FALSE, lib = libpath)
install_version("leaps", dependencies = FALSE, lib = libpath)
install_version("FactoMineR", dependencies = FALSE, lib = libpath)
install_version("factoextra", dependencies = FALSE, lib = libpath)

install_version("fasterize", dependencies = FALSE, lib = libpath)
BiocManager::install("FlowSorted.Blood.EPIC", lib = libpath, update = FALSE)
BiocManager::install("FlowSorted.CordBlood.450k", lib = libpath, update = FALSE)
BiocManager::install("FlowSorted.CordBloodCombined.450k", lib = libpath, update = FALSE)
BiocManager::install("FlowSorted.DLPFC.450k", lib = libpath, update = FALSE)
install_version("future.batchtools", dependencies = FALSE, lib = libpath)
install_version("FWDselect", dependencies = FALSE, lib = libpath)

# G

install_version("gapfill", dependencies = FALSE, lib = libpath)
install_github("C2SM/gevXgpd", dep = FALSE, lib = libpath)
install_version("gdalcubes", dependencies = FALSE, lib = libpath)
install_github("rystanley/genepopedit", dependencies = FALSE, lib = libpath)
BiocManager::install("genomation", lib = libpath, update = FALSE)
BiocManager::install("GenomicRanges", lib = libpath, update = FALSE)

# gllvm + dependencies
install_version("fishMod", dependencies = FALSE, lib = libpath)
install_version("tweedie", dependencies = FALSE, lib = libpath)
install_version("RcppGSL", dependencies = FALSE, lib = libpath)
install_version("mvabund", dependencies = FALSE, lib = libpath)
install_version("gllvm", dependencies = FALSE, lib = libpath)

# H

# Hmsc + dependencies
install_version("BayesLogit", dependencies = FALSE, lib = libpath)
install_version("pdist", dependencies = FALSE, lib = libpath)
install_version("mcmc", dependencies = FALSE, lib = libpath)
install_version("MCMCpack", dependencies = FALSE, lib = libpath)
install_version("Hmsc", dependencies = FALSE, lib = libpath)

# HoneyBADGER
install_version("HiddenMarkov", dependencies = FALSE, lib = libpath)
install_github('JEFworks/HoneyBADGER', dependencies = FALSE, lib = libpath)

# hyprcoloc + dependencies
install_version("arrangements", dependencies = FALSE, lib = libpath)
install_version("iterpc", dependencies = FALSE, lib = libpath)
install_github("jrs95/hyprcoloc", build_opts = c("--no-resave-data", "--no-manual"), build_vignettes = TRUE, dep = FALSE, lib = libpath)

# I

BiocManager::install("infercnv", lib = libpath, update = FALSE)

# imputeTS + dependencies
install_version("gridtext", dependencies = FALSE, lib = libpath)
install_version("ggtext", dependencies = FALSE, lib = libpath)
install_version("stinepack", dependencies = FALSE, lib = libpath)
install_version("imputeTS", dependencies = FALSE, lib = libpath)

BiocManager::install("IlluminaHumanMethylationEPICanno.ilm10b2.hg19", lib = libpath, update = FALSE)
BiocManager::install("IlluminaHumanMethylationEPICmanifest", lib = libpath, update = FALSE)
BiocManager::install("IsoformSwitchAnalyzeR", lib = libpath, update = FALSE)

#IlluminaHumanMethylation450kmanifest + dependencies
BiocManager::install("BiocGenerics", lib = libpath, update = FALSE)
BiocManager::install("IlluminaHumanMethylation450kmanifest", lib = libpath, update = FALSE)

# INLA
install.packages("INLA", repos = c(getOption("repos"), INLA = "https://inla.r-inla-download.org/R/stable"), dep = TRUE, lib = libpath)

# J

BiocManager::install("JASPAR2016", lib = libpath, update = FALSE)
BiocManager::install("JASPAR2018", lib = libpath, update = FALSE)
BiocManager::install("JASPAR2020", lib = libpath, update = FALSE) 

# K

# kdetrees + dependencies
install_version("distory", dependencies = FALSE, lib = libpath)
install_version("kdetrees", dependencies = FALSE, lib = libpath)

# klaR + dependencies
install_version("labelled", dependencies = FALSE, lib = libpath)
install_version("styler", dependencies = FALSE, lib = libpath)
install_version("questionr", dependencies = FALSE, lib = libpath)
install_version("klaR", dependencies = FALSE, lib = libpath)

# L
BiocManager::install("LEA", lib = libpath, update = FALSE)
install_version("lhs", dependencies = FALSE, lib = libpath)
install_github("variani/lme4qtl", dependencies = FALSE, lib = libpath) 

# M

install_version("fgui", dependencies = FALSE, lib = libpath)

install_version("glmmADMB", 
    repos = c("http://glmmadmb.r-forge.r-project.org/repos",
    getOption("repos")),
    type = "source",
    lib = libpath)

install_github("katrikorpela/mare", dep = FALSE, lib = libpath)

#meffill + dependencies
BiocManager::install("DNAcopy", lib = libpath, update = FALSE)
BiocManager::install("SmartSVA", lib = libpath, update = FALSE)
install_github("perishky/meffil", dependencies = FALSE, lib = libpath)

# metacoder + dependencies
install_version("triebeard", dependencies = FALSE, lib = libpath)
install_version("urltools", dependencies = FALSE, lib = libpath)
install_version("httpcode", dependencies = FALSE, lib = libpath)
install_version("crul", dependencies = FALSE, lib = libpath)
install_version("bold", dependencies = FALSE, lib = libpath)
install_version("rredlist", dependencies = FALSE, lib = libpath)
install_version("rentrez", dependencies = FALSE, lib = libpath)
install_version("rncl", dependencies = FALSE, lib = libpath)
install_version("rotl", dependencies = FALSE, lib = libpath)
install_version("solrium", dependencies = FALSE, lib = libpath)
install_version("ritis", dependencies = FALSE, lib = libpath)
install_version("worrms", dependencies = FALSE, lib = libpath)
install_version("natserv", dependencies = FALSE, lib = libpath)
install_version("WikipediR", dependencies = FALSE, lib = libpath)
install_version("WikidataR", dependencies = FALSE, lib = libpath)
install_version("wikitaxa", dependencies = FALSE, lib = libpath)
install_version("conditionz", dependencies = FALSE, lib = libpath)
install_version("taxize", dependencies = FALSE, lib = libpath)
install_version("taxa", dependencies = FALSE, lib = libpath)
install_version("hoardr", dependencies = FALSE, lib = libpath)
install_version("traits", dependencies = FALSE, lib = libpath)
install_version("phylotate", dependencies = FALSE, lib = libpath)
install_version("shades", dependencies = FALSE, lib = libpath)
install_version("ggfittext", dependencies = FALSE, lib = libpath)
install_version("GA", dependencies = FALSE, lib = libpath)
install_version("metacoder", dependencies = FALSE, lib = libpath)

BiocManager::install("methylKit", lib = libpath, update = FALSE)

# mgcViz + dependencies
install_version("gamm4", dependencies = FALSE, lib = libpath)
install_version("mgcViz", dependencies = FALSE, lib = libpath)

BiocManager::install("minfi", lib = libpath, update = FALSE)
install_version("miniCRAN", dependencies = FALSE, lib = libpath)

# monocle3 + dependencies
# some dependencies in original installation instructions
# omitted, as already installed.
# see: https://cole-trapnell-lab.github.io/monocle3/docs/installation/
BiocManager::install("batchelor", lib = libpath, update = FALSE)
BiocManager::install("Matrix.utils", lib = libpath, update = FALSE)
install_github('cole-trapnell-lab/leidenbase', dep = FALSE, lib = libpath)
install_version("pscl", dependencies = FALSE, lib = libpath)
install_version("furrr", dependencies = FALSE, lib = libpath)
install_version("modeldata", dependencies = FALSE, lib = libpath)
install_version("warp", dependencies = FALSE, lib = libpath)
install_version("slider", dependencies = FALSE, lib = libpath)
install_version("rsample", dependencies = FALSE, lib = libpath)
install_version("RhpcBLASctl", dependencies = FALSE, lib = libpath)
install_version("speedglm", dependencies = FALSE, lib = libpath)
install_github('cole-trapnell-lab/monocle3', dep = FALSE, lib = libpath)

# cicero (version relying on monocle3)
install_github("cole-trapnell-lab/cicero-release", ref = "monocle3", dep = FALSE, lib = libpath)

BiocManager::install("motifmatchr", lib = libpath, update = FALSE)
install_version("MuMIn", dependencies = FALSE, lib = libpath)

# N

install_version("ncf", dependencies = FALSE, lib = libpath)

# O
# P

BiocManager::install("PharmacoGx", lib = libpath, update = FALSE)
install_version("profvis", lib = libpath)

# Q

# qdapRegex + dependencies
install_version("stringi", dependencies = FALSE, lib = libpath)
install_version("qdapRegex", dependencies = FALSE, lib = libpath)

# qs + dependencies
install_version("RApiSerialize", dependencies = FALSE, lib = libpath)
install_version("stringfish", dependencies = FALSE, lib = libpath)
install_version("qs", dependencies = FALSE, lib = libpath)

# R

install_version("R2jags", dependencies = FALSE, lib = libpath)

# reader + dependencies
install_version("proftools", dependencies = FALSE, lib = libpath)
install_version("NCmisc", dependencies = FALSE, lib = libpath)
install_version("reader", dependencies = FALSE, lib = libpath)

BiocManager::install("regioneR", lib = libpath, update = FALSE)
install_version("reldist", dependencies = FALSE, lib = libpath)
install_version("reutils", dependencies = FALSE, lib = libpath)
BiocManager::install("rGREAT", lib = libpath, update = FALSE)

# Rsagacmd + dependencies
install_version("minpack.lm", dependencies = FALSE, lib = libpath)
install_version("Rsagacmd", dependencies = FALSE, lib = libpath)

BiocManager::install("Rsubread", lib = libpath, update = FALSE)
# downgrading rstanarm to 2.19.3 to link with rstan 2.9.13
install_version("rstanarm", version = "2.19.3", dependencies = FALSE, lib = libpath)
install_version("IntCal", dependencies = FALSE, lib = libpath)
install_version("rbacon", dependencies = FALSE, lib = libpath)

install_version("rubias", dependencies = FALSE, lib = libpath)

# S

# SAIGE

# SAIGE not available on CRAN or Bioconductor
# Installed separately

# SAIGEgds + dependencies
install_version("SPAtest", dependencies = FALSE, lib = libpath)
BiocManager::install("SeqArray", lib = libpath, update = FALSE)
BiocManager::install("SAIGEgds", lib = libpath, update = FALSE)

devtools::install_github('satijalab/seurat-wrappers', dep = FALSE, lib = libpath)
install_version("scoringRules", dependencies = FALSE, lib = libpath)

# Signac + dependencies
install_version("ggseqlogo", dependencies = FALSE, lib = libpath)
install_version("gggenes", dependencies = FALSE, lib = libpath)
install_version("SnowballC", dependencies = FALSE, lib = libpath)
install_version("lsa", dependencies = FALSE, lib = libpath)
install_version("Signac", dependencies = FALSE, lib = libpath)

install_version("splitstackshape", dependencies = FALSE, lib = libpath)
install_version("lwgeom", dependencies = FALSE, lib = libpath)
install_version("stars", dependencies = FALSE, lib = libpath)
BiocManager::install("SummarizedExperiment", lib = libpath, update = FALSE)

# T

# targets and associated packages
install_version("targets", dependencies = FALSE, lib = libpath)
install_version("tarchetypes", dependencies = FALSE, lib = libpath)

BiocManager::install("TFBSTools", lib = libpath, update = FALSE) 
install_version("tictoc", dependencies = FALSE, lib = libpath)

# tidymodels + dependencies
install_version("DiceDesign", dependencies = FALSE, lib = libpath)
install_version("dials", dependencies = FALSE, lib = libpath)
install_version("infer", dependencies = FALSE, lib = libpath)
install_version("parsnip", dependencies = FALSE, lib = libpath)
install_version("yardstick", dependencies = FALSE, lib = libpath)
install_version("GPfit", dependencies = FALSE, lib = libpath)
install_version("hardhat", dependencies = FALSE, lib = libpath)
install_version("workflows", dependencies = FALSE, lib = libpath)
install_version("tune", dependencies = FALSE, lib = libpath)
install_version("tidymodels", dependencies = FALSE, lib = libpath)

install_version("topicmodels", dependencies = FALSE, lib = libpath)
install_version("TraMineR", dependencies = FALSE, lib = libpath)

# TSS.RESTREND + dependencies
install_version("mblm", dependencies = FALSE, lib = libpath)
install_version("TSS.RESTREND", dependencies = FALSE, lib = libpath)

BiocManager::install("TxDb.Mmusculus.UCSC.mm10.knownGene", lib = libpath, update = FALSE) 
BiocManager::install("tximport", lib = libpath, update = FALSE)
BiocManager::install("tximportData", lib = libpath, update = FALSE)

BiocManager::install("TxDb.Dmelanogaster.UCSC.dm6.ensGene", lib = libpath, update = FALSE)

# U
# V

# velox removed (taken off CRAN on 17 Mar 2021 due to check problems not being corrected)
install_version("vioplot", dependencies = FALSE, lib = libpath)
install_version("visreg", dependencies = FALSE, lib = libpath)

# W

install_version("WeightedCluster", dependencies = FALSE, lib = libpath)
BiocManager::install("WGCNA", lib = libpath, update = FALSE)

# X
# Y
# Z

# R 4.0.5 PACKAGE SET 8
# GPU packages

install_version("keras", lib = libpath)
install_version("tensorflow", lib = libpath)

### END ###
