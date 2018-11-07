repmat <- function(data, nrows, ncols, byrow=T) {
  ncols <- length(data) * ncols
  rep <- matrix(rep(data, nrows), nrow=nrows, ncol=ncols, byrow=byrow)
  return(rep)
}

data <- c(2,3,3,4,4,5,5,6,5,7,2,1,3,2,4,2,4,3,6,4,7,6)
y <- c(1,1,1,1,1,2,2,2,2,2,2);
X <- matrix(data, ncol=2, byrow=T)
mean <- colMeans(X)
Xm <- X - repmat(mean, nrow(X), 1)
C <- cov(Xm)
eig <- eigen(C)

z <- Xm%*%eig$vectors[,1]
p <- z%*%eig$vectors[,1]
p <- p + repmat(mean, nrow(p), 1)

plot(p[y==1,], col="red", xlim=c(0,8), ylim=c(0,8))
points(p[y==2,], col="green")

title(main="PCA projection", xlab="X", ylab="Y")