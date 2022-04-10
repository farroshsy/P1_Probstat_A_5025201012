# Soal 5a
# Fungsi Probabilitas dari Distribusi Exponensial
# Diketahui lambda = 3
# Menggunakan seed(1) dan fungsi bawaan
set.seed(1)
rexp(3)

# Soal 5b
# Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random
# Menggunakan fungsi hist() dan menghitung rexp sesuai ketentuan
hist(rexp(10))
hist(rexp(100))
hist(rexp(1000))
hist(rexp(10000))

# Soal 5c
# Nilai Rataan (??) dan Varian (  ) dari Distribusi Exponensial untuk n = 100 dan ?? = 3
# Inisialiasi
lamda <- 3
# Mencari nilai rata-rata
rataan <- 1 / lamda
rataan
# Mencari nilai varian
varian <- 1 / (lamda * lamda)
varian