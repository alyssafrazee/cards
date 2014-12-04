
#' find_pair
#'
#' Find the card with the same value and color as the given card
#'
#' @param card Object of class “Card”
#' @export

find_pair = function(card){
    new_suit = switch(card@suit, 
        diamonds = 'hearts', hearts = 'diamonds', 
        spades = 'clubs', clubs = 'spades')
    return(new('card', suit = new_suit, number = card@number)) 
}


