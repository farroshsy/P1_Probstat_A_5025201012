# Poin 3a
bayi_lahir = 6
rata_rata_bayi_lahir = 4.5
dpois(bayi_lahir, rata_rata_bayi_lahir)

# Poin 3b
n = 365
rata_rata_bayi_lahir = 4.5
set.seed(2)
babies <- data.frame('data' = rpois(n, rata_rata_bayi_lahir))

babies %>% ggplot() +
  geom_histogram(aes(x = data, y = stat(count / sum(count)), fill = data == 6), binwidth = 1, color = 'black',) +
  scale_fill_manual(values = c("#6BCB77", "#FF6B6B")) +
  scale_x_continuous(breaks = 0:10) +
  labs(x = 'Jumlah bayi lahir per periode', y = 'Proporsi', title = 'Simulasi kelahiran selama setahun (n = 365)') +
  theme_bw()


# Poin 3c
# Perbandingan poin a dan poin b kurang lebih sama karena nilai proporsi yang didapatkan di poin A 
# berada dalam range proporsi yang ada di poin B yaitu 0.10-0.15. Oleh karena itu, pengaruh perhitungan 
# dengan estimasi selama 365 hari memberikan hasil yang mendekati dengan peluang bayi akan dilahirkan keesokan harinya

# Poin 3d
bayi_lahir = 6
l <- bayi_lahir

rataan <- l
rataan
varian <- l
varian
