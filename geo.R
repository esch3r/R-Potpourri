geo.mean <- function(x){

# geometric mean 
prod.x <- prod(x)
n <- length(x)
gm <- prod.x^(1/n)
return(gm)
}