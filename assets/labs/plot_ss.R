plot_ss <- function(x, y, leastSquares = FALSE){
  plot(y~x, asp = 1)
  
  if(leastSquares){
    m1 <- lm(y~x)
    y.hat <- m1$fit
  } else{
    cat("Click two points to make a line.")
    pts <- data.frame(locator(2))
    m1 <- lm(y ~ x, data = pts)
    y.hat <- predict(m1, newdata = data.frame(x))
  }
  r <- y - y.hat
  abline(m1)
  
  oSide <- x - r
  LLim <- par()$usr[1]
  RLim <- par()$usr[2]
  oSide[oSide < LLim | oSide > RLim] <- c(x + r)[oSide < LLim | oSide > RLim] # move boxes to avoid margins
  
  n <- length(y.hat)
  for(i in 1:n){
    lines(rep(x[i], 2), c(y[i], y.hat[i]), lty = 2, col = "red")
    lines(rep(oSide[i], 2), c(y[i], y.hat[i]), lty = 2, col = "blue")
    lines(c(oSide[i], x[i]), rep(y.hat[i],2), lty = 2, col = "blue")
    lines(c(oSide[i], x[i]), rep(y[i],2), lty = 2, col = "blue")
  }
  
  SS <- round(sum(r^2), 3)
  print(m1)
  cat("Sum of Squares: ", SS)
}