#just for writing comfort, self explanatory
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

