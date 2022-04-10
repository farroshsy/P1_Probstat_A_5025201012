# P1_Probstat_A_5025201012

Praktikum Probabilitas dan Statistik 2022 Modul 1 (Distribusi Probabilitas)

## Generated By:
| Nama          | NRP                                                      |  Kelas                                                     | 
| ------------- | -------------------------------------------------------- | --------------------------------------------------------   |
| Farros Hilmi Syafei | 5025201012 | Probabilitas dan Statistik A |

## Dosen: Dr. Ahmad Saikhu, S.Si., MT.

<br />

## Soal 1
> Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.
  - A. Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi sebelum keberhasilan pertama ketika p = 0.20 dari populasi menghadiri acara vaksinasi? (distribusi Geometrik)

      ```R
    # Poin 1a
    prob = 0.2
    x = 3
    P <- dgeom(x, prob)
    P
 
       ```
       - Hasil 1a yaitu sebagai berikut:
            <img width="1680" alt="Screen Shot 2022-04-10 at 12 42 26" src="https://user-images.githubusercontent.com/86004023/162603220-ff5cc81a-2476-496c-b638-af7bcbb7bc18.png">


  - B.  mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )

     ```R
    # Poin 1b
      mean(rgeom(n = 10000, prob = p) == 3)
      mean

       ```
       - Hasil 1b yaitu sebagai berikut:
        <img width="1680" alt="Screen Shot 2022-04-10 at 12 47 21" src="https://user-images.githubusercontent.com/86004023/162604090-d9445b65-12bf-4b68-8020-cd54db4b8635.png">

  - C. Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?

    Hasil dari perhitungan a dan b tidak terlalu jauh, bedanya kalau a itu nilainya tetap
    sedangkan kalau b itu hasilnya random, besar kecil nilainya ditentukan oleh X
       
  - D. Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama

     ```R
    # Poin 1d
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
 
       ```
       - Hasil 1d yaitu sebagai berikut:          
          <img width="1680" alt="Screen Shot 2022-04-10 at 13 27 36" src="https://user-images.githubusercontent.com/86004023/162605454-2278556a-32c6-4902-83c3-265b8627bc4e.png">
     
  - E. Nilai Rataan (μ) dan Varian (σ2) dari Distribusi Geometrik.

     ```R
    # Poin 1e
      mean = n / (prob = p)
      paste("Rataan: ", mean)
      var = (n - (prob = p)) / ('^'((prob = p), 2))
      paste("Varian: ", var)

       ```
    - Hasil 1e yaitu sebagai berikut:          
       <img width="1680" alt="Screen Shot 2022-04-10 at 13 32 26" src="https://user-images.githubusercontent.com/86004023/162605651-a31daa3f-1057-4ef5-a106-96e7d07a5a01.png">

       
  <br />

## Soal 2
> Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :
  - A. Peluang terdapat 4 pasien yang sembuh.
 
       ``` R
     # 2a
      n = 4
      sample_space = 20
      peluang_sembuh = 0.2
      peluang_tidak_sembuh = 1 - peluang_sembuh

      dbinom(x = n, s = samplespace, prob = peluang_sembuh)
 
       ```
      - Hasil 2a yaitu sebagai berikut:
        <img width="1680" alt="Screen Shot 2022-04-10 at 14 55 01" src="https://user-images.githubusercontent.com/86004023/162608430-73a87868-c2c3-4c8a-a32f-03556557e0dc.png">

       
  - B. Gambarkan grafik histogram berdasarkan kasus tersebut.

      ```R
     # 2b
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
 
       ```
      - Hasil 2b yaitu sebagai berikut:
         <img width="1680" alt="Screen Shot 2022-04-10 at 14 56 06" src="https://user-images.githubusercontent.com/86004023/162608461-ea082fa3-15f6-45f2-bcdb-55901f60e7e9.png">


  - C. Nilai Rataan (μ) dan Varian (σ2) dari Distribusi Binomial.

       ```R
      # 2c
      n = 20
      peluang_sembuh = 0.2
      peluang_tidak_sembuh = 1 - peluang_sembuh

      rataan = n * (p = peluang_sembuh)
      cat("rataan = ", rataan, "\n")
      var = n * (p = peluang_sembuh) * (q = peluang_tidak_sembuh)
      cat("varian = ", var, "\n")
 
       ```
       - Hasil 2c yaitu sebagai berikut:
         <img width="1680" alt="Screen Shot 2022-04-10 at 14 58 28" src="https://user-images.githubusercontent.com/86004023/162608528-87429c74-19bb-44ec-ba5d-c01ad8408dae.png">

 <br />
 
## Soal 3
> Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis
4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)
  - A. Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?
  
      ```R
    # 3a
      bayi_lahir = 6
      rata_rata_bayi_lahir = 4.5
      dpois(bayi_lahir, rata_rata_bayi_lahir)

       ```
       - Hasil 3a yaitu sebagai berikut:
       <img width="1680" alt="Screen Shot 2022-04-10 at 15 28 27" src="https://user-images.githubusercontent.com/86004023/162609726-a0126a43-572c-4a4b-873b-377ad7941269.png">


  - B.  simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini selama
setahun (n = 365)
    
             ```R
            # 3b
            n = 365
            rata_rata_bayi_lahir = 4.5
            set.seed(2)
            babies <- data.frame('data' = rpois(n, rata_rata_bayi_lahir))

              babies %>% ggplot() +
              geom_histogram(aes(x = data, y = stat(count / sum(count)), fill = data == 6), binwidth = 1, color =   'black',) +
             scale_fill_manual(values = c("#6BCB77", "#FF6B6B")) +
             scale_x_continuous(breaks = 0:10) +
             labs(x = 'Jumlah bayi lahir per periode', y = 'Proporsi', title = 'Simulasi kelahiran selama setahun (n = 365)') +
              theme_bw()

               ```
           
            
   - Hasil 3b yaitu sebagai berikut:
     <img width="1680" alt="Screen Shot 2022-04-10 at 15 30 36" src="https://user-images.githubusercontent.com/86004023/162609802-c19cc71f-d757-4e64-98ac-adfdf9d57b6c.png">



  - C. dan bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan

     Perbandingan poin a dan poin b kurang lebih sama karena nilai proporsi yang didapatkan di poin A 
     berada dalam range proporsi yang ada di poin B yaitu 0.10-0.15. Oleh karena itu, pengaruh perhitungan 
     dengan estimasi selama 365 hari memberikan hasil yang mendekati dengan peluang bayi akan dilahirkan keesokan      harinya

       
  - D. Nilai Rataan (μ) dan Varian (σ2) dari Distribusi Poisson.

     ```R
    # 3d
    bayi_lahir = 6
    l <- bayi_lahir

    rataan <- l
    rataan
    varian <- l
    varian
 
       ```
       - Hasil 3d yaitu sebagai berikut:
       <img width="1680" alt="Screen Shot 2022-04-10 at 15 37 06" src="https://user-images.githubusercontent.com/86004023/162609978-d44136e1-4cfe-4fdb-9d01-77239e432a3e.png">

       
<br />

## Soal 4
> Diketahui nilai x = 2 dan v = 10. Tentukan:
  - A. Fungsi Probabilitas dari Distribusi Chi-Square.
 
       ```R
     # 4a
     x = 2
     v = 10
     dchisq(x, v)
 
       ```
       - Hasil 4a yaitu sebagai berikut:
       <img width="1680" alt="Screen Shot 2022-04-10 at 15 42 49" src="https://user-images.githubusercontent.com/86004023/162610148-c9ff1c19-f454-4514-8b47-e9853ce0d8f4.png">

  - B. Histogram dari Distribusi Chi-Square dengan 100 data random.
  
      ```R
     # 4b
     random_data = 100
     hist(rchisq(random_data, v))
 
       ```
       - Hasil 4b yaitu sebagai berikut:
       <img width="1680" alt="Screen Shot 2022-04-10 at 15 44 07" src="https://user-images.githubusercontent.com/86004023/162610178-65813cad-ba94-4a8e-95b0-968fef1e2468.png">

       
  - C. Nilai Rataan (μ) dan Varian (σ2) dari Distribusi Chi-Square.

       ```R
      # 4c
        d = 10
        rataan <- d
        rataan
        varian <- 2 * d
        varian
       ```
       - Hasil 4c yaitu sebagai berikut:
       <img width="1680" alt="Screen Shot 2022-04-10 at 15 45 07" src="https://user-images.githubusercontent.com/86004023/162610233-ae64d304-6354-4303-9cc6-4891465d7fd0.png">

       
 <br />
 
## Soal 5
> Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan
  - A. Fungsi Probabilitas dari Distribusi Exponensial
 
       ```R
     # 5a
 
       ```
       
  - B. Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random
  
      ```R
     # 5b
 
       ```
       
  - C. Nilai Rataan (μ) dan Varian (σ2) dari Distribusi Exponensial untuk n = 100 dan λ = 3
    - Petunjuk: 
      - Gunakan set.seed(1)
      - Gunakan fungsi bawaan R

    ```R
    # 5c
 
    ```
       
 <br />
 
## Soal 6
> Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8. Tentukan
  - A. Fungsi Probabilitas dari Distribusi Normal P(X1 ≤ x ≤ X2), hitung Z-Score Nya dan plot
data generate randomnya dalam bentuk grafik. Petunjuk(gunakan fungsi plot()).
    - Keterangan:
      - X1 = Dibawah rata-rata
      - X2 = Diatas rata-rata
      - Contoh Data: 
        - 1,2,4,2,6,3,10,11,5,3,6,8 
        - rata-rata = 5.083333
        - X1 = 5 
        - X2 = 6
 
 
    ```R
    # 6a
 
    ```
       
  - B. Generate Histogram dari Distribusi Normal dengan breaks 50 dan format penamaan:
  - **NRP_Nama_Probstat_{Nama Kelas}_DNhistogram**
  - Contoh:
    -  312312312_Rola_Probstat_A_DNhistogram
  
      ```R
      
      # 6b
 
       ```
       
  - C. Nilai Varian (σ2) dari hasil generate random nilai Distribusi Normal.

       ```R
      # 5c
 
       ```
       
 <br />
 
# Referensi
