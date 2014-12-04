setMethod("show", "Card", 
    function(object){
        if(object@number > 10){
            s = ifelse(object@number==11, 'Jack', 
                ifelse(object@number==12, 'Queen',
                ifelse(object@number==13, 'King', 'Ace')))
        }else{
            s = object@number
        }
        
        if(object@trump){
            cat(paste(s, 'of', object@suit, '(trump)\n'))
        }else{
            cat(paste(s, 'of', object@suit, '\n'))
        }
    }
)