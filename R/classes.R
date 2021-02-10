#th class and method are from the archieved R package chipPCR.
#Roediger S and Burdukiewicz M (2014). chipPCR: Toolkit of helper functions to pre-process amplification data. R package version 0.0.8-4, <http://CRAN.R-project.org/package=chipPCR>.
setOldClass("summary.lm")


#th class, th.cyc function -------------------------------
setClass("th", contains = "matrix", representation(.Data = "matrix",
                                                   stats = "summary.lm",
                                                   input = "matrix"))

setMethod("show", signature(object = "th"), function(object) {
  print(slot(object, ".Data"))
})

setMethod("summary", signature(object = "th"), function(object) {
  cat("Cycle threshold: ", slot(object, ".Data")[, "cyc.th"], "\n")
  cat("Fluorescence threshold: ", slot(object, ".Data")[, "atFluo"], "\n")
  print(slot(object, "stats"))
})

