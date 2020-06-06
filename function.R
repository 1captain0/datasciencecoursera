colmean <- function(df,removeNA=TRUE){
  nc <- ncol(df)
  meansv <- numeric(nc)
  for (i in 1:nc) {
    meansv[i] <- mean(df[,i],na.rm = removeNA)
  }
  names(meansv) <- colnames(df)
  meansv
}



x <- 1
f <- function(a) x + a
g <- function() {
  x <- 2
  f(0)
}