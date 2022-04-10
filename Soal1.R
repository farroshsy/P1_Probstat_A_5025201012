# Poin 1A
p = 0.2
n = 3
P <- dgeom(x = n, prob = p)
P

# Poin 1B
mean(rgeom(n = 10000, prob = p) == 3)
mean

# Poin 1C
#Hasil dari perhitungan a dan b tidak terlalu jauh, bedanya kalau a itu nilainya tetap
#sedangkan kalau b itu hasilnya random, besar kecil nilainya ditentukan oleh X

# Poin 1D

library(magrittr)
library(ggplot2)
library(tidyverse)

# %>% digunakan untuk memberikan nilai operator sehingga menjadi format X > Y > Z
data.frame(x = 0:10, prob = dgeom(x = 0:10, prob = p)) %>%
  mutate(Failures = ifelse(x == n, n, "lainnya")) %>%
  ggplot(aes(x = factor(x), y = prob, fill = Failures)) +
  geom_col(colour = "black") +
  scale_fill_manual(values = c("#6BCB77", "#FF6B6B")) +
  geom_text(
    aes(label = round(prob,2), y = prob - 0.01),
    position = position_dodge(0.9),
    size = 3,
    vjust = 0
  ) +
  labs(title = "Histogram Distribusi Geometrik 
      Peluang X = 3 Gagal Sebelum Sukses Pertama",
       subtitle = "Geometric(.2)",
       x = "Kegagalan sebelum sukses yang pertama (x)",
       y = "Peluang") 


# Poin 1E
mean = n / (prob = p)
paste("Rataan: ", mean)
var = (n - (prob = p)) / ('^'((prob = p), 2))
paste("Varian: ", var)
