#' getYVar function
#'
#' @param mod model object
#' @export
#' @author Ramnath Vaidyanathan, Bridget Toomey
getYVar <- function(mod) {
  UseMethod('getYVar')
}

# Get y variable from model object
#' @export
getYVar.default <- function(mod){
  as.character(formula(mod))[2]
}

#' @export
getYVar.elnet <- function(mod) {
  mod$yvar
}

#' @export
getYVar.C5.0 <- function(mod) {
  mod$yvar
}

#' @export
getYVar.cv.glmnet <- function(mod) {
  mod$yvar
}

#' @export
getYVar.lognet <- function(mod) {
  mod$yvar
}

#' @export
getYVar.naiveBayes <- function(mod) {
  mod$yvars
}
