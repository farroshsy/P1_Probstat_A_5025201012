# Poin 2a
  n = 4
  sample_space = 20
  peluang_sembuh = 0.2
  peluang_tidak_sembuh = 1 - peluang_sembuh

  dbinom(x = n, s = sample_space, prob = peluang_sembuh)

# Poin 2b

x <- 3
sample_space = 20
peluang_sembuh <- 0.2
prob <- dbinom(x = 0:10, s = sample_space, prob = peluang_sembuh)

# %>% digunakan untuk memberikan nilai operator sehingga menjadi format X > Y > Z
library(magrittr)
library(ggplot2)
library(tidyverse)

data.frame(x = 0:10, prob) %>%
  mutate(Sembuh = ifelse(x == 4, "4", "lainnya")) %>%
  ggplot(aes(x = factor(x), y = prob, fill = Sembuh)) +
  geom_col(colour = "black") +
  scale_fill_manual(values = c("#6BCB77", "#FF6B6B")) +
  geom_text(aes(label = round(prob, 2), y = prob + 0.01)) +
  labs(title = "Peluang jika X = 4 Pasien Sembuh", x = "Sukses(x)", y = "Peluang") 

# Poin 2c
n = 20
peluang_sembuh = 0.2
peluang_tidak_sembuh = 1 - peluang_sembuh

rataan = n * (p = peluang_sembuh)
cat("rataan = ", rataan, "\n")
var = n * (p = peluang_sembuh) * (q = peluang_tidak_sembuh)
cat("varian = ", var, "\n")



