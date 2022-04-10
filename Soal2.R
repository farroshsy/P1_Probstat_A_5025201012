# Poin 2a
# Diketahui size = 20 pasien, prob = 0.2, x = pasien
dbinom(x = 4, size = 20, prob = 0.2)

# Poin 2b
# Gambarkan grafik histogram berdasarkan kasus tersebut.
# Inisialiasi
x <- 3
p <- 0.2
prob <- dbinom(x = 0:10, size = 20, prob = 0.2)

# %>% digunakan untuk memberikan nilai operator sehingga menjadi format X > Y > Z
library(dplyr)
library(ggplot2)

data.frame(heads = 0:10, prob) %>%
  mutate(Heads = ifelse(heads == 4, "4", "lainnya")) %>%
  ggplot(aes(x = factor(heads), y = prob, fill = Heads)) +
  geom_col(colour = "black") +
  scale_fill_manual(values = c("#6BCB77", "#FF6B6B")) +
  geom_text(aes(label = round(prob, 2), y = prob + 0.01)) +
  labs(title = "Peluang jika X = 4 pasien sembuh.", x = "Sukses (x)", y = "Peluang") 

# Poin 2c
# Inisialiasi
n <- 20
p <- 0.2
# Mencari nilai rata-rata
mean <- n * p
paste("Rataan: ", mean)
# Mencari nilai varian
var <- n * p * (1 - p)
paste("Varian: ", var)

