chol <- read.table("chol.txt", header = TRUE)
library(ggplot2)
ggplot(chol, aes(x=chol$WEIGHT, y=chol$HEIGHT)) +
  geom_point(aes(colour = factor(chol$MORT), shape = chol$SMOKE)) +
  xlab("Weight") +
  ylab("Height") +
  scale_color_discrete(name ="Condition", labels=c("Alive", "Dead")) +
  scale_shape_discrete(name="Smoker", labels=c("Non-smoker", "Sigare", "Pipe" )) +
  theme(legend.position=c(1,0.5),
        legend.justification = c(1,1),
        panel.grid.major = element_line(colour = "grey40"),
        panel.grid.minor = element_line(colour = "grey40"))
