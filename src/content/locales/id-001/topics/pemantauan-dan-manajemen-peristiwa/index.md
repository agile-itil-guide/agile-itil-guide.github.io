# Pemantauan dan Manajemen Peristiwa

**Pemantauan memberi tahu Anda apakah layanan bekerja seperti yang dialami pengguna, dan manajemen peristiwa yang baik mengubah banjir sinyal menjadi sejumlah kecil peringatan yang dapat dipahami dan ditindaklanjuti seseorang.**

## Mengapa ini penting

Layanan yang tidak dapat Anda lihat adalah layanan yang tidak dapat Anda jalankan. Tanpa pemantauan, tim mengetahui kegagalan dari pengguna, dan mengetahui pembusukan perlahan dari siapa pun. Dengan pemantauan yang buruk masalahnya kebalikannya: begitu banyak peringatan sehingga engineer on-call berhenti memercayainya, dan satu yang penting hilang dalam kebisingan. Kedua ekstrem memakan tidur, kepercayaan, dan waktu.

Pemantauan dan manajemen peristiwa juga menentukan seberapa cepat insiden dapat ditemukan dan diperbaiki. Segala sesuatu dalam manajemen insiden bergantung pada mengetahui dengan cepat bahwa ada yang salah dan memiliki cukup informasi untuk mencari tahu mengapa (lihat Topik 3.2 — Manajemen Insiden). Tim agile yang sering merilis memerlukan ini lebih lagi, karena setiap rilis adalah kesempatan merusak sesuatu dan setiap keputusan rollback bergantung pada melihat dampaknya.

Buku *Site Reliability Engineering* Google punya dua bab yang membahas subjek ini secara langsung: "Monitoring Distributed Systems" dan "Practical Alerting from Time-Series Data." Keduanya menjelaskan praktik satu organisasi dan membela pendekatan yang sengaja sederhana dan berfokus pada pengguna. Topik ini memakainya sebagai sumber utama, karena artikel Wikipedia yang dirujuk untuk panduan ini memberi sedikit tentang praktiknya. Kosakata ITIL di sini, seperti event, alert, dan event management, diambil dari deskripsi yang banyak diterbitkan yang tidak dapat dipastikan panduan ini terhadap teks pemilik kerangka kerja. Baca bab SRE sebagai satu pilihan yang dijelaskan dengan baik.

## Konsep inti

### Pemantauan

Bab SRE mendefinisikan **pemantauan** sebagai mengumpulkan, memproses, dan menampilkan data kuantitatif waktu nyata tentang sebuah sistem. Ia mengatakan pemantauan mendukung analisis tren jangka panjang, perbandingan antar-eksperimen, peringatan, dasbor, dan debugging ad hoc setelah kejadian. Ia menekankan bahwa pemantauan adalah upaya rekayasa yang signifikan dan bahwa tim biasanya menugaskan setidaknya satu orang untuknya.

### Peristiwa, peringatan, dan insiden

Dalam penggunaan ITSM, **peristiwa** adalah perubahan keadaan yang punya arti bagi pengelolaan layanan. Sebagian besar peristiwa bersifat informasional. Sebagian menunjukkan peringatan atau pengecualian. **Peringatan** adalah, seperti dikatakan bab SRE, pemberitahuan untuk manusia, dikirim sebagai tiket, email, atau page. **Insiden** adalah gangguan tak terencana atau penurunan kualitas (lihat Topik 3.2 — Manajemen Insiden). Manajemen peristiwa adalah praktik memutuskan peristiwa mana yang penting, apa yang dilakukan tentangnya, dan siapa yang diberi tahu. Alurnya dari peristiwa ke peringatan ke, kadang-kadang, insiden.

### Pemantauan kotak hitam dan kotak putih

Bab membedakan dua jenis:

| Jenis | Apa yang dilakukannya | Kekuatan |
|---|---|---|
| **Kotak hitam** | Menguji perilaku yang terlihat dari luar, seperti yang akan dilihat pengguna | Mendeteksi masalah aktif; cocok untuk paging |
| **Kotak putih** | Memakai metrik yang diekspos bagian dalam sistem, seperti log atau handler internal | Mengungkap masalah yang akan datang dan kegagalan yang tertutup oleh percobaan ulang; esensial untuk debugging |

Buku itu menggabungkan keduanya. Probe kotak hitam memberi tahu Anda bahwa checkout gagal; data kotak putih membantu Anda mencari tahu mengapa.

### Gejala dan penyebab

Bab mengatakan pemantauan harus menjawab dua pertanyaan: apa yang rusak, dan mengapa. Ia menyarankan memfokuskan peringatan pada gejala, yaitu apa yang dialami pengguna, dan melakukan page pada penyebab hanya ketika pasti dan akan segera terjadi. Satu mesin gagal, dalam kata-katanya di bab peringatan, tidak dapat diterima untuk diperingatkan, karena terlalu bising. Inilah inti pendekatan peringatan yang baik: beri tahu manusia ketika pengguna sedang atau akan dirugikan, bukan setiap kali sebuah bagian berkedut.

### Empat sinyal emas

Bab mengusulkan empat sinyal untuk diamati pada sistem yang menghadap pengguna:

- **Latensi:** waktu untuk melayani permintaan. Lacak permintaan gagal secara terpisah, karena "slow error is even worse than a fast error."
- **Lalu lintas:** permintaan pada sistem.
- **Kesalahan:** permintaan gagal, baik eksplisit, implisit, maupun menurut kebijakan.
- **Kejenuhan:** seberapa "penuh" layanan. Kinerja sering menurun sebelum utilisasi 100%.

Ini terpetakan secara alami ke indikator tingkat layanan (lihat Topik 3.7 — Manajemen Tingkat Layanan). Bab juga memperingatkan bahwa rata-rata menyembunyikan pencilan lambat dan menyarankan mencatat jumlah permintaan dalam bucket latensi untuk melihat distribusinya.

### Apa yang membuat peringatan baik

Bab menawarkan pertanyaan untuk diajukan sebelum menulis peringatan: apakah ia mendeteksi kondisi mendesak, dapat ditindaklanjuti, dan terlihat pengguna; dapatkah diabaikan dengan aman; dan dapatkah responsnya diotomatisasi? Page harus dapat ditindaklanjuti, memerlukan penilaian, dan menyangkut masalah baru. Ia mengatakan peringatan tidak boleh menyala hanya karena "something seems a bit weird." Page yang responsnya rutin dan algoritmik adalah, menurut pandangannya, bendera merah yang menuntut otomatisasi atau perbaikan akar penyebab.

### Merutekan peringatan

Bab peringatan menjelaskan mengirim peringatan layak-page ke staf on-call, yang subkritis ke antrean tiket, dan sisanya ke dasbor status. Ia menjelaskan perkakas untuk merutekan, mendeduplikasi, dan menghambat peringatan, dan mencatat bahwa peringatan harus menunggu durasi minimum sebelum menyala karena dapat berkedip. Ia memperingatkan bahwa "you can only alert on the failures that you expected," itulah sebabnya memadukan probe kotak hitam dengan data kotak putih penting.

### Jaga tetap sederhana

Bab membela sistem sederhana dan cepat daripada "sihir" yang mempelajari ambang atau mendeteksi kausalitas, dan mencatat bahwa hierarki ketergantungan yang kompleks hanya sedikit berhasil. Ia mengatakan untuk menjaga aturan yang menangkap insiden nyata tetap sederhana, menyingkirkan peringatan yang jarang dilatih dan sinyal yang tak terpakai, dan menjaga biaya pemeliharaan tumbuh lebih lambat daripada ukuran layanan. Kasus yang dijelaskannya, seperti tim yang kewalahan oleh peringatan yang sementara melonggarkan sasarannya dan menonaktifkan peringatan email untuk membebaskan waktu bagi perbaikan yang langgeng, menunjukkan kesediaan menyingkirkan kebisingan.

### Dasbor dan tampilan jangka panjang

Bab memperlakukan dasbor sebagai tampilan ringkasan yang telah dibuat sebelumnya atas metrik utama layanan dan mengatakan dasbor lebih baik daripada peringatan email, yang disebutnya bernilai sangat terbatas. Ia juga menganjurkan meninjau frekuensi page dari waktu ke waktu, misalnya dalam laporan triwulanan, untuk menjaga pimpinan mengetahui beban pager. Ini mengubah kualitas peringatan menjadi sesuatu yang dapat dilihat manajer (lihat Topik 1.2 — Prinsip Agile tentang kecepatan berkelanjutan).

### Batas sumber

Bab SRE tidak memberi ambang di luar satu contoh kerja, tidak membahas runbook atau batas beban on-call, dan tidak menjelaskan cara meninjau dan memensiunkan peringatan dari waktu ke waktu, jadi itu menjadi urusan praktik Anda sendiri. Keduanya berasal dari satu organisasi besar dengan sumber daya rekayasa yang kuat. Tim lebih kecil dapat menerapkan prinsipnya dengan perkakas yang lebih sederhana.

## Praktik terbaik

1. **Pantau apa yang dialami pengguna.** Tambahkan setidaknya satu probe kotak hitam yang melakukan tindakan pengguna nyata, seperti masuk atau membuat pesanan, dan beri peringatan ketika gagal.
2. **Amati empat sinyal emas.** Untuk tiap layanan, lacak latensi, lalu lintas, kesalahan, dan kejenuhan. Tambahkan ukuran lain hanya jika menjawab pertanyaan yang telah Anda ajukan.
3. **Beri peringatan pada gejala.** Lakukan page ketika pengguna dirugikan atau akan segera. Perlakukan kondisi internal, seperti satu mesin gagal, sebagai informasi berprioritas lebih rendah kecuali pasti dan akan segera terjadi.
4. **Buat setiap page dapat ditindaklanjuti.** Sebelum membuat peringatan, tulis apa yang harus dilakukan responder. Jika tidak ada yang bisa dilakukan, itu bukan page.
5. **Rutekan menurut urgensi.** Kirim peringatan mendesak ke on-call, yang kurang mendesak ke antrean tiket, dan informasi ke dasbor. Jangan kirim peringatan email kepada orang yang akan mengabaikannya.
6. **Pakai distribusi, bukan hanya rata-rata.** Lihat persentil tinggi untuk latensi, atau bucket, agar pencilan lambat terlihat.
7. **Tetapkan durasi minimum.** Wajibkan kondisi bertahan sebentar sebelum memberi peringatan, untuk menghindari berkedip. Setel durasi dengan data nyata.
8. **Pensiunkan peringatan yang bising.** Tinjau peringatan mana yang paling sering menyala dan tidak berujung tindakan. Singkirkan atau perbaiki. Bab SRE memperlakukan respons rutin sebagai sinyal untuk otomatisasi atau perbaikan.
9. **Uji pemantauan Anda.** Rusak sesuatu dengan sengaja di lingkungan uji dan periksa bahwa peringatan yang tepat menyala. Sertakan sistem pemantauan itu sendiri dalam pemeriksaan, agar kegagalannya diperhatikan.
10. **Tinjau beban pager.** Hitung page per shift, interupsi di luar jam kerja, dan alarm palsu setiap kuartal. Bagikan hasilnya kepada manajer dan pakai dalam perencanaan.
11. **Jaga pemantauan dalam definisi selesai.** Untuk tiap fitur baru, tanyakan sinyal apa yang menunjukkan apakah ia berfungsi dan peringatan apa, jika ada, yang dibutuhkannya (lihat Topik 3.5 — Manajemen Rilis dan Deployment).
12. **Jaga tetap sederhana.** Pilih beberapa aturan yang dapat dipahami daripada skema kompleks. Singkirkan sinyal yang tak terpakai dan tinjau aturan setelah insiden.

## Pertanyaan untuk dibahas bersama tim Anda

**Bagaimana kita mengetahui tiga insiden terakhir kita?**

Daftar tiap insiden dan bagaimana pertama kali diketahui: peringatan, pengguna, rekan. Jika sebagian besar datang dari pengguna, pemantauan melewatkan gejala yang penting. Fasilitator dapat menanyakan apa yang akan ditunjukkan probe. Pilih satu tindakan pengguna untuk dipantau lebih dulu.

**Peringatan mana yang kita abaikan, dan mengapa?**

Tanyakan kepada engineer on-call peringatan yang mereka bisukan atau lewati. Masing-masing adalah kandidat untuk diperbaiki atau dihapus. Tanyakan apa yang membuat orang memercayai atau tidak memercayai peringatan. Jawaban terus terang sering mengungkap peringatan yang menyala pada kondisi yang tak dapat ditindaklanjuti siapa pun. Sepakati memensiunkan atau memperbaiki tiga.

**Malam terburuk yang pernah kita alami saat on-call apa, dan apa yang akan memperbaikinya?**

Kumpulkan cerita tanpa menyalahkan. Cari pola: page berulang, peringatan tidak jelas, tiadanya runbook, tanpa eskalasi. Setiap pola adalah perbaikan. Tanyakan dua perubahan mana yang paling membantu. Tujuannya beban lebih ringan dan sinyal lebih jelas.

**Jika sistem pemantauan kita gagal, bagaimana kita tahu?**

Tanyakan siapa yang mengawasi pengawas. Banyak tim tidak punya pemeriksaan bahwa pemantauan berfungsi. Bahas heartbeat sederhana atau probe dari sistem terpisah. Sepakati satu pemeriksaan untuk ditambahkan.

**Apa yang ditunjukkan dasbor kita, dan siapa yang melihatnya?**

Daftar dasbor dan tanyakan siapa yang memakai masing-masing dalam sebulan terakhir. Dasbor yang tak terpakai adalah kekacauan; yang berguna menceritakan kisah tentang layanan. Tanyakan pertanyaan apa yang dijawab masing-masing. Simpan sekumpulan kecil yang menjawab pertanyaan nyata.

**Bagaimana kita tahu bahwa rilis memperburuk keadaan?**

Pilih rilis terbaru dan tanyakan sinyal apa yang akan menunjukkan masalah. Jika jawabannya "kami akan mendengar dari pengguna," bahas sinyal mana yang diamati setelah rilis dan siapa yang bertanggung jawab. Pertanyaan ini menghubungkan pemantauan dengan deployment. Tulis daftar periksa pascarilis singkat.

## Dalam praktik: contoh ITIL agile

Otoritas transportasi umum sebuah kota menjalankan situs web dan aplikasi perencanaan perjalanan yang dipakai 400.000 orang per hari. Tim platform sepuluh orang memiliki layanan dengan jadwal on-call empat orang. Tim punya ratusan peringatan: CPU di setiap server, ruang disk, panjang antrean, dan hitungan kesalahan. Engineer on-call menerima 40 page dalam minggu tipikal, kebanyakan di luar jam kerja, dan dua insiden dalam kuartal terakhir pertama kali dilaporkan pengguna di media sosial.

Kepala tim dan seorang engineer meninjau page tiga bulan. Mereka menemukan bahwa tiga perempatnya untuk kondisi yang tidak memerlukan tindakan atau pulih sendiri. Mereka sepakat mengikuti pendekatan sederhana dari buku SRE: beri peringatan pada apa yang dialami pengguna. Mereka menambahkan probe yang merencanakan perjalanan standar setiap menit dan mengukur keberhasilan dan kecepatan, dan mempertahankan sekumpulan kecil peringatan pada kejenuhan basis data dan antrean. Mereka memindahkan sisanya ke dasbor dan tiket harian. Setiap page yang tersisa mendapat entri runbook singkat yang menyatakan apa yang harus diperiksa.

Setelah sebulan, page turun menjadi sekitar lima seminggu, dan dua insiden yang menyusul keduanya terdeteksi probe sebelum pengguna mengeluh. Beberapa masalah tersisa. Probe hanya mencakup satu jenis perjalanan, dan kesalahan yang memengaruhi perjalanan bersepeda tidak diperhatikan selama sehari. Seorang engineer juga melaporkan bahwa keputusan "pindahkan ke dasbor" menyembunyikan masalah disk lambat yang kemudian menyebabkan kegagalan. Tim menambahkan probe untuk jenis perjalanan lain, menambahkan tinjauan dasbor harian ke jadwal, dan menyepakati meninjau beban pager setiap kuartal.

## Empat perspektif

### Tim produk dan pengiriman

Tim pengiriman tahu apa yang dimaksudkan dilakukan perangkat lunak dan di mana ia mungkin gagal. Bangun sinyal ke dalam kode: log yang berguna, metrik, dan pemeriksaan kesehatan. Tentukan probe untuk tindakan pengguna utama, dan perlakukan pemantauan sebagai bagian dari selesai. Ikut serta dalam tinjauan peringatan agar page mencerminkan masalah nyata.

### Tim layanan dan operasi

Tim operasi memikul pager dan dasbor. Jaga peringatan sedikit dan dapat ditindaklanjuti, rutekan menurut urgensi, dan lacak beban pager. Dorong peringatan bising kembali ke tim pemiliknya, dengan bukti, dan bagikan apa yang Anda pelajari dari insiden tentang apa yang diamati.

### Kepemimpinan dan tata kelola

Pemimpin sebaiknya meminta data beban pager dan deteksi insiden, bukan lebih banyak peringatan. Dukung waktu untuk memensiunkan kebisingan dan menambah sinyal berguna. Perlakukan jumlah page di luar jam kerja yang meningkat sebagai risiko bagi layanan dan orang.

### Pelanggan dan pengguna

Pelanggan dan pengguna diuntungkan ketika masalah ditemukan sebelum mereka menyadarinya. Laporkan masalah dengan rincian, seperti apa yang Anda coba dan kapan, karena itu membantu menyetel pemantauan. Tanyakan kepada penyedia bagaimana mereka mendeteksi kegagalan dan seberapa cepat, dan apakah mereka menerbitkan informasi status.

## Pola kegagalan umum

- **Memberi peringatan pada segalanya.** Pager terus berbunyi dan kepercayaan hilang. Sebaliknya, lakukan page pada gejala dan kirim sisanya ke tiket atau dasbor.
- **Memantau sistem, bukan pengguna.** Semua mesin hijau sementara pengguna tidak dapat masuk. Sebaliknya, tambahkan probe kotak hitam atas tindakan pengguna nyata.
- **Tanpa tindakan terlampir.** Page tiba tanpa apa pun untuk dilakukan. Sebaliknya, wajibkan setiap page punya respons yang dijelaskan, atau hapus.
- **Hanya rata-rata.** Sekelompok pengguna menderita sementara rata-rata tampak baik. Sebaliknya, lihat persentil tinggi atau distribusi.
- **Aturan kompleks dan cerdik.** Ambang yang dipelajari dan pohon ketergantungan membingungkan responder. Sebaliknya, pilih aturan sederhana yang dapat dipahami.
- **Pemantauan yang tak diawasi.** Sistem pemantauan gagal diam-diam. Sebaliknya, periksa dengan heartbeat dan pengujian.
- **Respons rutin.** Orang mengulang perbaikan yang sama setelah setiap page. Sebaliknya, otomatisasi responsnya atau perbaiki penyebabnya.
- **Mengabaikan beban pager.** Page malam hari diperlakukan sebagai normal. Sebaliknya, ukur dan tinjau, dan perlakukan beban tinggi sebagai risiko.

## Model kematangan

| Dimensi | Memulai | Mengembangkan | Menstandarkan | Mengelola | Mengorkestrasi |
|---|---|---|---|---|---|
| Visibilitas pengalaman pengguna | Pengguna melaporkan sebagian besar masalah | Beberapa layanan punya probe atau metrik untuk tindakan pengguna | Tindakan pengguna utama diprobe dan sinyal emas dilacak untuk setiap layanan | Waktu deteksi dan cakupan diukur dan celah diperbaiki | Pemantauan dibagikan lintas tim, pemasok, dan pelanggan |
| Kualitas peringatan | Banyak peringatan, sedikit tindakan | Beberapa tim memangkas peringatan | Page berbasis gejala, dapat ditindaklanjuti, dan dirutekan menurut urgensi | Presisi dan kebisingan peringatan diukur dan ditinjau | Desain peringatan diperbaiki lintas tim dari bukti bersama |
| Respons dan otomatisasi | Respons diimprovisasi | Beberapa runbook ada | Page tertaut ke runbook, dan respons rutin diotomatisasi | Waktu respons dan pemakaian otomatisasi diukur | Respons dikoordinasikan lintas tim dan pemasok |
| Orang dan beban | Beban pager tidak dilacak | Beberapa tim menghitung page | Beban pager ditinjau setiap kuartal | Beban diseimbangkan dan dikurangi dari data | Beban dan pembelajaran dibagikan lintas tim dan tercermin dalam perencanaan |

## Daftar periksa

- [ ] Setiap layanan penting punya setidaknya satu probe atas tindakan pengguna nyata.
- [ ] Kami melacak latensi, lalu lintas, kesalahan, dan kejenuhan untuk tiap layanan.
- [ ] Setiap page punya respons tertulis dan menyangkut kondisi yang terlihat pengguna atau akan segera.
- [ ] Peringatan dirutekan menurut urgensi ke on-call, tiket, atau dasbor.
- [ ] Persentil tinggi atau distribusi terlihat untuk latensi.
- [ ] Kami meninjau peringatan mana yang paling sering menyala dan memensiunkan yang tidak berujung tindakan.
- [ ] Sistem pemantauan itu sendiri diperiksa.
- [ ] Beban pager (page per shift, interupsi di luar jam kerja) ditinjau setiap kuartal.
- [ ] Fitur baru menyertakan pemantauan dalam definisi selesai.
- [ ] Setelah tiap rilis, seseorang memeriksa sinyal terhadap daftar singkat.

## Prompt AI

**Tujuan: meninjau daftar peringatan untuk kebisingan dan kemampuan ditindaklanjuti.**

```text
Here is a list of our alerts with how often each fired in the last [period], and what happened after (acted on, ignored, resolved by itself): [paste as a table; use real data].

Using only my data, group the alerts into: fired often with no action; fired and led to action; rarely fired. For each of the first group, suggest a question to ask its owner (for example whether it can be removed, routed to a ticket, or turned into a symptom-based alert). Do not invent frequencies or outcomes. Tell me what additional data would help, and list what you are unsure of.
```

**Tujuan: menentukan probe untuk perjalanan pengguna.**

```text
Help me define a black-box probe for this user action in [service]: [describe, for example "a user searches for a journey and receives results"].

What counts as success: [describe].
What is too slow: [say "unknown" or describe in words, not numbers].
What systems the action touches: [list].

Describe the steps the probe should perform, what it should record (success, time taken, and where it failed), what alert condition to propose (leave thresholds as [to be agreed]), and what a responder would check first. Mark assumptions. Do not invent system details. Ask clarifying questions first, and list what you are unsure of.
```

**Tujuan: menulis bagian respons untuk sebuah peringatan.**

```text
For this alert, write a short response entry for on-call staff.

Alert name and condition: [paste].
What it means for users: [describe].
What I know to check first: [list].
Who to escalate to: [role, or write "unknown"].

Write: what the alert means, the first three checks, how to tell whether users are affected, when to escalate, and a note on whether the response could be automated. Use only my information; mark anything you added as [CHECK]. Ask clarifying questions first, and list what you are unsure of.
```

**Tujuan: menyiapkan tinjauan beban pager triwulanan.**

```text
Help me prepare a quarterly pager load review for [team].

Data for the quarter (pages by week, out-of-hours pages, pages with no action, incidents detected by monitoring versus by users): [paste real figures].
Context: [describe changes in the period].

Summarize the data in plain language, using only my figures. Highlight trends and outliers as questions, not conclusions. Suggest three questions for the team and one for management. Do not invent causes. If the data is incomplete, say what to collect. List what you are unsure of.
```

## Keterampilan AI

- [runbook](../../../../skills/runbook/SKILL.md): gunakan untuk menulis respons yang menyertai setiap page.
- [on-call-rotation](../../../../skills/on-call-rotation/SKILL.md): gunakan untuk merancang jadwal yang adil dan merencanakan bagaimana beban pager dibagi dan ditinjau.
- [software-engineering-metrics](../../../../skills/software-engineering-metrics/SKILL.md): gunakan untuk memilih dan menafsirkan ukuran kinerja layanan dan pengiriman.
- [performance-testing](../../../../skills/performance-testing/SKILL.md): gunakan untuk memeriksa latensi dan kejenuhan di bawah beban sebelum masalah sampai ke pengguna.
- [chaos-testing](../../../../skills/chaos-testing/SKILL.md): gunakan untuk menguji bahwa kegagalan terdeteksi dan ditangani dengan menyebabkannya secara sengaja dalam pengaturan yang aman.

## Sumber utama

- **Monitoring Distributed Systems** (*Site Reliability Engineering*, Google, sre.google): definisi, empat sinyal emas, gejala versus penyebab, dan saran tentang peringatan sederhana.
- **Practical Alerting from Time-Series Data** (*Site Reliability Engineering*, Google, sre.google): bagaimana aturan peringatan, perutean, dan kedipan bekerja dalam praktik.
- **Service Level Objectives** (*Site Reliability Engineering*, Google, sre.google): kaitan antara indikator, sasaran, dan peringatan.
- **IT service management** (Wikipedia): tempat pemantauan dan insiden dalam ITSM.

## Referensi

1. Monitoring Distributed Systems — Google SRE book, sre.google — https://sre.google/sre-book/monitoring-distributed-systems/
2. Practical Alerting from Time-Series Data — Google SRE book, sre.google — https://sre.google/sre-book/practical-alerting/
3. Service Level Objectives — Google SRE book, sre.google — https://sre.google/sre-book/service-level-objectives/
4. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
5. Network monitoring — Wikipedia — https://en.wikipedia.org/wiki/Network_monitoring
6. Observability (software) — Wikipedia — https://en.wikipedia.org/wiki/Observability_(software)
7. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
8. Alarm fatigue — Wikipedia — https://en.wikipedia.org/wiki/Alarm_fatigue
9. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
