# Soal 3a
# Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?
# Diketahui average: 4.5 bayi, x = 6 bayi
dpois(6, 4.5)

# Soal 3b
# Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?
set.seed(2)
babies <- data.frame('data' = rpois(365, 4.5))

babies %>% ggplot() +
  geom_histogram(aes(x = data, y = stat(count / sum(count)), fill = data == 6), binwidth = 1, color = 'black',) +
  scale_fill_manual(values = c("#FFCC66", "#669933")) +
  scale_x_continuous(breaks = 0:10) +
  labs(x = 'Jumlah bayi lahir per periode', y = 'Proporsi', title = 'Simulasi kelahiran selama setahun (n=365) di rumah sakit') +
  theme_bw()

# Soal 3c
# dan bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan
# Perbandingan poin a dan poin b kurang lebih sama karena nilai proporsi yang didapatkan di poin A 
# berada dalam range proporsi yang ada di poin B yaitu 0.10-0.15. Oleh karena itu, pengaruh perhitungan 
# dengan estimasi selama 365 hari memberikan hasil yang mendekati dengan peluang bayi akan dilahirkan keesokan harinya

# Soal 3d
# Inisialiasi
l <- 6
# Mencari nilai rata-rata
rataan <- l
rataan
# Mencari nilai varian
varian <- l
varian