library(latticeExtra)
chol <- read.table("chol.txt", header = TRUE)
Age <- chol$AGE
Chol <- chol$CHOL
Smoke <- chol$SMOKE
State <- chol$MORT
a <- xyplot(Chol ~ Age|State)
b <- xyplot(Smoke ~ Age|State)
doubleYScale(a, b, style1 = 0, style2 = 3, add.ylab2 = TRUE, columns=3)
