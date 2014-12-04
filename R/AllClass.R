#' Card
#'
#' A playing card
#'
#' @slot suit Is this card a spade, club, diamond, or heart?
#' @slot number The card’s value. Can be 2-10, ‘J’, ‘Q’, ‘K’, or ‘A’
#’ @slot trump Is the card a trump card? Boolean.
#'
#' @exportClass Card

setClass("Card",
   representation(
       suit = "character", number = "numeric", trump = "logical")
)

