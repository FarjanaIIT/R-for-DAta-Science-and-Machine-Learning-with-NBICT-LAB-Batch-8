# Intalling packages

install.packages(c("tidyverse", "Car", "emmeans", "effectsize", "performace", "broom", "kableextra"))
install.packages("emmeans")
install.packages("effectsize")
install.packages("kableExtra")
library(tidyverse)

d <- read.csv("cropdata.csv")

# quick exploratory descriptive analysis
summs <- d %>%
  group_by(fert, irr) %>%
  summarise(mean = mean(y), se = sd(y)/sqrt(n()), .groups = "drop")


library(ggplot2)
ggplot(summs, aes(irr, mean, group = fert))+
  geom_line() +
  geom_point(size = 2) +
  geom_errorbar(aes(ymin=mean-se, ymax=mean+se), width = .2)+
  facet_wrap(~fert, nrow = 1) +
  labs(x="Irrigation", y="Mean yield",
       title="Interaction of Fertilizer x Irrigation") +
  theme_classic(base_size = 12)

m <- aov(y ~  fert + irr + fert * irr, data = d)

# Assumptions visual checks
par(mfrow = c(2,2))
plot(m)

par(mfrow = c(1,1))

# Shapiro-wilk test on residuals (normality)

res <- residuals(m)

shapiro.test(res)

#Levene’s test for equal variances (center = median is robust)

library(car)
leveneTest(y ~ fert * irr, data = d, center = median)

# Interaction contrasts (simple effects): effect of fert at each  level
library(emmeans)
contrast(emmeans(m, ~ fert | irr), method = "pairwise", adjust = "tukey")

# effect of irr at each fert
library(emmeans)
contrast(emmeans(m, ~ irr | fert), method = "pairwise", adjust = "tukey")

#Main‑effect comparisons (only if interaction is negligible)

contrast(emmeans(m, ~ fert), method = "tukey")
contrast(emmeans(m, ~ irr), method = "tukey")

# CLD letters
library(multcomp)
# install.packages("multcompView")
library(multcompView)
library(emmeans)  
library(multcomp)  

# Now this will work:
group_letters <- cld(emmeans(m, ~ fert * irr), Letters = letters)


group_letters <- cld(emmeans(m, ~ fert * irr), Letters = letters)
print(group_letters)
