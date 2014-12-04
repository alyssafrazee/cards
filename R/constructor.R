#' Card constructor function
#' 
#' @param suit suit of card. Must be one of "spades", "clubs", "diamonds", or "hearts"
#' @param number value of card. Must be an integer between 2 and 14, but can be numeric type.
#'   11 through 14 represent Jack through Ace, respectively.
#' @param trump set to TRUE if the card is a trump card. default FALSE.
#' @export

Card = function(suit, number, trump=FALSE){
    suit = match.arg(suit, c('spades', 'clubs', 'diamonds', 'hearts'))
    stopifnot(number %in% 2:14)

    new('Card', suit=suit, number=number, trump=trump)
}