#' @name cardplot
#' @export
#' @docType methods
#' @rdname cardplot
#' @importFrom graphics plot
setGeneric("plot", function(x,y,...) standardGeneric("plot"))


#' make an awesome plot of a card!
#' @name cardplot
#' @exportMethod plot
#' @docType methods
#' @rdname cardplot
#' @aliases cardplot,ballgown-method
#' @param x a Card object
setMethod("plot", "Card", function(x){
    plot(0, 0, type='n', xaxt='n', yaxt='n', xlab='', ylab='', main='My Card!')
    
    if(x@number > 10){
           s = ifelse(x@number==11, 'Jack',
               ifelse(x@number==12, 'Queen',
               ifelse(x@number==13, 'King', 'Ace')))
       }else{
           s = x@number
       }
    
    text(0, 0, paste(s, 'of', x@suit), cex=2)
})

#' @name cardplot
#' @export
#' @docType methods
#' @rdname cardplot
#' @importFrom graphics plot
setGeneric("plot", function(x,y,...) standardGeneric("plot"))
