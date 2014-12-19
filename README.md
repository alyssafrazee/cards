## Cards: examples of S4 classes in R

I used this code to demonstrate the basics of S4 classes in R. The slides are [posted here](https://speakerdeck.com/alyssafrazee/intro-to-object-oriented-programming). They might shed a little more light on the code in this repo.

### installing this package

Use devtools!

```R
install.packages('devtools')
devtools::install_github('alyssafrazee/cards')
```

### card objects
Create cards with the `Card` function.

```R
aceofspades = Card(suit='spades', number=14)
aceofspades #prints "Ace of spades"
```

### a simple function
Find the card of the same color and number, but different suit, as a given card:

```R
find_pair(aceofspades) #returns ace of clubs
```

### the plot method
Make an extremely sophisticated, artistic plot of a card:

```R
plot(aceofspades)
```

I wrote this method to illustrate the concept of making a function generic (`plot` already exists as an S3 method in base R) and defining its behavior for your own class. 

### Python classes
You can see examples of Python card classes in [another project I did](https://github.com/alyssafrazee/fivehundred). That project actually implements a full card game in Python, which involves several classes (card, bid, game, etc.). 

### Further reading

Hadley Wickham's [chapter on object-oriented programming in R](http://adv-r.had.co.nz/OO-essentials.html) is the place to start for OO in R. For Python, I'd start with the [official docs on classes](https://docs.python.org/2/tutorial/classes.html) and go from there.

One important aspect of OO that I didn't cover in this little repo or in my Python project is inheritance. I've written quite a lot of R code and have yet to actually utilize inheritance in R. 

