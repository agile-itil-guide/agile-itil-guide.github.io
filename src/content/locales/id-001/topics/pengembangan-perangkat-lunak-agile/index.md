# Pengembangan Perangkat Lunak Agile

**Pengembangan perangkat lunak agile adalah keluarga metode untuk pengiriman perangkat lunak berkelanjutan yang mengirim dalam langkah kecil dan belajar dari umpan balik, dan praktik yang dihasilkannya, seperti pengujian otomatis dan integrasi berkelanjutan, adalah fondasi praktis untuk menjalankan layanan yang terus berubah dengan aman.**

## Mengapa ini penting

Sebagian besar tim yang menjalankan layanan TI juga membangun dan mengubahnya. Cara perangkat lunak dibangun menentukan seberapa sering layanan berubah, seberapa berisiko setiap perubahan, dan seberapa jauh orang yang berjaga dapat memercayai apa yang diberikan kepada mereka. Tim yang membangun dalam batch besar dan jarang menyerahterimakan akan memberi operasi beberapa rilis besar yang menakutkan. Tim yang membangun dalam langkah kecil, dengan pengujian dan umpan balik cepat, dapat memberi mereka banyak rilis kecil yang dipahami.

Pengembangan perangkat lunak agile adalah kumpulan gagasan paling terkenal untuk cara kerja yang kedua. Ia juga banyak disalahpahami. Sebagian orang memakai "agile" untuk berarti "tanpa rencana dan tanpa dokumen," dan yang lain memakainya untuk proses apa pun yang punya rapat harian. Topik ini memberi gambaran yang lebih jernih: dari mana metode agile berasal, apa kesamaannya, apa yang tidak diklaimnya, dan praktik mana yang paling penting bagi tim yang harus menjaga layanan tetap berjalan.

Bukti perlu dibaca dengan cermat. [Artikel Wikipedia tentang pengembangan perangkat lunak agile](https://en.wikipedia.org/wiki/Agile_software_development) mengatakan bahwa bukti anekdotal untuk agile kuat tetapi bukti empirisnya "terbatas dan kurang meyakinkan," dan merujuk pada survei, seperti survei State of Agile tahunan, yang melaporkan manfaat tetapi berasal dari pendapat yang dilaporkan sendiri. Perlakukan metode agile sebagai pendekatan menjanjikan yang diuji dalam lingkungan Anda sendiri.

## Konsep inti

### Apa yang dicakup istilah ini

"Pengembangan perangkat lunak agile" adalah istilah payung. Artikel Wikipedia menggambarkannya sebagai mencakup pendekatan yang tumbuh dari nilai dan prinsip yang disepakati pada 2001 oleh 17 praktisi (lihat Topik 1.1 — Manifesto Agile dan Topik 1.2 — Prinsip Agile). "Agile" berhuruf besar A sering dipakai untuk praktik yang tumbuh dari pola pikir itu, dan "agile" huruf kecil untuk kualitas mampu beradaptasi. Perbedaannya tidak ketat, dan Anda akan mendengar keduanya.

Metode agile bertujuan pada pengiriman perangkat lunak berkelanjutan. Metode ini bergantung pada kolaborasi berkelanjutan antara pemangku kepentingan dan pengembang, membangun proyek di sekitar individu yang termotivasi, dan mengejar peningkatan berkelanjutan melalui umpan balik, dengan perhatian pada kualitas. Metode-metode itu berbeda dalam hal yang ditekankan. Sebagian, seperti Extreme Programming, berfokus pada praktik rekayasa, dan yang lain, seperti Scrum dan Kanban, berfokus pada cara pekerjaan dikelola.

### Sejarah singkat

Artikel Wikipedia menelusuri pengembangan iteratif dan inkremental hingga 1957, dengan manajemen proyek evolusioner dan pengembangan perangkat lunak adaptif muncul pada awal 1970-an. Pada 1990-an muncul sekelompok metode ringan sebagai reaksi terhadap proses berat yang digerakkan rencana, yang sering disebut [model air terjun](https://en.wikipedia.org/wiki/Waterfall_model). Artikel itu mendaftar rapid application development (1991), unified process dan dynamic systems development method, DSDM (1994), Scrum (1995), Crystal Clear dan Extreme Programming (1996), serta feature-driven development (1997).

Pada Februari 2001 tujuh belas praktisi bertemu di Snowbird, Utah, dan menulis Manifesto. Pernyataan-pernyataan berikutnya dibangun di atasnya: PM Declaration of Interdependence pada 2005, Software Craftsmanship Manifesto pada 2009, dan *Guide to Agile Practices* dari Agile Alliance pada 2011, yang diganti namanya menjadi *Agile Glossary* pada 2016.

### Pendekatan adaptif dan prediktif

Artikel menggambarkan kontinum antara pendekatan prediktif dan adaptif. Metode prediktif merencanakan sebagian besar pekerjaan secara terperinci sebelum dimulai, dan bekerja baik ketika kebutuhan stabil dan dipahami dengan baik. Metode adaptif mengharapkan perubahan dan merencanakan dalam cakrawala pendek. Boehm dan Turner, yang dikutip artikel itu, berpendapat bahwa masing-masing sisi punya "home ground"-nya sendiri, artinya tidak ada yang benar di semua tempat.

Ini penting bagi tim layanan karena pekerjaannya campuran. Mengganti jaringan pusat data lebih dekat dengan pekerjaan prediktif. Memperbaiki aplikasi yang berhadapan dengan pelanggan lebih dekat dengan pekerjaan adaptif. Pilih pendekatan untuk tiap jenis pekerjaan, bukan sekali untuk seluruh organisasi.

### Metode yang umum

Artikel mendaftar banyak metode. Yang paling mungkin Anda temui:

| Metode | Penekanan utama | Dibahas di |
|---|---|---|
| Scrum | Peran yang ditetapkan, acara berkala, dan irama tetap | Topik 1.4 — Perkiraan Pengiriman dan Metrik Perencanaan |
| Kanban | Memvisualisasikan pekerjaan dan membatasi jumlah yang sedang dikerjakan | Topik 1.5 — Kanban |
| Extreme Programming (XP) | Praktik rekayasa seperti pair programming dan test-driven development | Topik 1.6 — Extreme Programming |
| Pengembangan perangkat lunak lean | Menerapkan gagasan lean, seperti menghilangkan pemborosan, pada perangkat lunak | Topik 1.7 — Pengembangan Perangkat Lunak Lean |
| Feature-driven development, DSDM, Crystal, dan pengembangan perangkat lunak adaptif | Metode ringan lain untuk pengiriman perangkat lunak berkelanjutan dengan peran dan praktiknya sendiri | Topik ini |
| Scrumban | Campuran acara Scrum dan aliran Kanban | Topik 1.4 — Perkiraan Pengiriman dan Metrik Perencanaan dan Topik 1.5 — Kanban |

Tidak ada metode agile yang menjadi "satu-satunya". Artikel mengutip pandangan Ken Schwaber bahwa tim mendapat masalah ketika memburu metodologi sempurna padahal perusahaan itu sendiri yang perlu berubah, dan saran Bas Vodde bahwa Scrum menyediakan dasar yang diperluas tim secara lokal.

### Praktik yang umum

Artikel mendaftar praktik yang dipakai banyak tim agile. Sebagian, beserta kegunaan masing-masing:

- **User story dan backlog:** menggambarkan pekerjaan dari sudut pandang pengguna dan menyimpan daftar prioritas tentang apa yang dikerjakan berikutnya.
- **Stand-up harian:** rapat harian singkat, sering sekitar 15 menit, untuk berbagi kemajuan dan hambatan.
- **Test-driven development (TDD) dan acceptance test-driven development (ATDD):** menulis pengujian lebih dulu, sehingga "selesai" didefinisikan sebelum pekerjaan dimulai.
- **Integrasi berkelanjutan (CI):** menggabungkan perubahan secara sering dan membangun serta menguji secara otomatis. Artikel mencatat bahwa Grady Booch pertama kali mengusulkan istilah itu pada 1991.
- **Pair programming dan refactoring:** dua orang berbagi pekerjaan untuk meningkatkan kualitas dan menyebarkan pengetahuan, dan kode diperbaiki terus-menerus tanpa mengubah apa yang dilakukannya.
- **Retrospektif:** tim berefleksi secara berkala tentang cara memperbaiki diri.

Bagi tim layanan, tiga di antaranya patut mendapat perhatian khusus. Pengujian otomatis dan integrasi berkelanjutan membuat perubahan yang sering menjadi aman. Retrospektif menyediakan tempat tetap untuk memperbaiki cara kerja tim. Backlog memberi satu daftar berurutan tempat perbaikan layanan bersaing secara adil dengan fitur baru.

### Pengalaman, pengukuran, dan jebakan

Artikel melaporkan bahwa survei, di antaranya survei Shine Technologies pada 2002–2003 dan survei State of Agile sejak 2006, menemukan peningkatan yang dirasakan dalam kualitas, produktivitas, dan kepuasan bisnis. Artikel juga mencatat bahwa survei VersionOne menemukan pelatihan yang tidak memadai sebagai penyebab kegagalan implementasi yang paling sering disebut, dan mendaftar jebakan seperti mengisi peran product owner dengan anggota tim pengembang dan kurangnya dukungan sponsor.

Mengukur "seberapa agile" sebuah tim telah menghasilkan beberapa penilaian mandiri, seperti tes Nokia, dan satu indeks yang menilai proyek berdasarkan durasi, risiko, kebaruan, upaya, dan interaksi. Berhati-hatilah dengan skor semacam itu. Angka adalah pemantik percakapan, dan tim yang mengoptimalkan skornya dapat kehilangan intinya.

### Pekerjaan skala besar, terdistribusi, dan teregulasi

Artikel mengatakan bahwa berkembang melampaui sekitar 20 pengembang, atau lintas lokasi, membawa tantangan, dan bahwa sejumlah kerangka kerja telah diusulkan, meskipun pandangan berbeda tentang seberapa baik kerjanya (lihat Topik 1.8 — Agile dalam Skala Besar). Artikel juga melaporkan bahwa ranah teregulasi seperti perangkat medis, farmasi, keuangan, nuklir, otomotif, dan avionika pada mulanya dianggap tidak cocok untuk agile, dan bahwa kini ada adaptasinya. Kekhawatiran yang didaftarnya adalah jaminan kualitas, keselamatan dan keamanan, ketertelusuran, serta verifikasi dan validasi.

Inilah kekhawatiran manajemen layanan. Ketika regulator atau auditor meminta bukti, tim agile dapat menyediakannya dari perkakas yang sudah dipakainya, seperti riwayat kendali versi, hasil pengujian otomatis, dan catatan perubahan (lihat Topik 5.7 — Tata Kelola, Risiko, dan Kepatuhan).

### Kritik yang perlu diketahui

Steven Rakitin, dalam surat kepada *IEEE Computer* pada 2001, menyebut agile "satu lagi upaya untuk merusak disiplin rekayasa perangkat lunak" dan membaca preferensi Manifesto pada perangkat lunak yang berfungsi sebagai izin melewatkan dokumentasi. Para pendukung menjawab bahwa dokumentasi harus "cukup baik saja," dalam frasa Scott Ambler. Tim layanan mengenal kedua sisinya: dokumentasi yang terlalu sedikit memperlambat serah terima dan respons insiden, dan yang terlalu banyak menjadi usang.

## Praktik terbaik

1. **Sesuaikan metode dengan jenis pekerjaan.** Gunakan pengiriman perangkat lunak berkelanjutan dan umpan balik yang sering di tempat kebutuhan berubah, dan gunakan lebih banyak perencanaan di muka di tempat kebutuhan tetap dan biaya kesalahan tinggi. Putuskan ini untuk setiap jenis pekerjaan dan tinjau ketika keadaan berubah.
2. **Mulai dengan batch berguna terkecil.** Pecah pekerjaan menjadi bagian yang dapat dibangun, diuji, dan dirilis dalam hitungan hari. Batch kecil memberi umpan balik lebih cepat dan membuat perubahan yang gagal lebih mudah dipahami dan dibalik.
3. **Otomatisasi pengujian sebelum mempercepat rilis.** Rilis yang sering tanpa pengujian otomatis memindahkan risiko kepada pengguna Anda. Bangun rangkaian pengujian yang berjalan pada setiap perubahan dan gagal dengan lantang, dan perlakukan build yang rusak sebagai prioritas pertama tim.
4. **Integrasikan secara berkelanjutan.** Gabungkan pekerjaan ke cabang bersama sesering mungkin dan bangun secara otomatis. Cabang berumur panjang menyembunyikan konflik sampai mahal diperbaiki.
5. **Jadikan "selesai" mencakup operasi.** Sebuah story belum selesai sampai dapat dipantau, didukung, dan di-rollback. Tambahkan pemeriksaan ini ke definisi selesai Anda, dan minta staf operasi membantu menulisnya (lihat Topik 3.5 — Manajemen Rilis dan Deployment).
6. **Simpan satu backlog berurutan per tim.** Tempatkan fitur, cacat, dan perbaikan layanan dalam daftar prioritas yang sama agar bersaing secara terbuka. Antrean samping yang tersembunyi adalah tempat pekerjaan operasional diam-diam kelaparan.
7. **Tulis dokumentasi secukupnya.** Simpan dokumen yang dipakai orang, seperti runbook, deskripsi layanan, dan catatan arsitektur, dan beri masing-masing pemilik dan tanggal tinjauan. Hapus sisanya. Ini menjawab kekhawatiran Rakitin tanpa kembali ke dokumen berat.
8. **Adakan retrospektif berkala dan tindak lanjuti.** Pilih satu perubahan dari tiap retrospektif, dengan pemilik dan tanggal. Retrospektif yang hanya menghasilkan diskusi menjadi ritual.
9. **Investasikan pada pelatihan dan sponsor.** Bukti survei dalam artikel Wikipedia menunjuk pelatihan dan dukungan sponsor sebagai titik lemah yang umum. Rencanakan keduanya sebelum meminta tim mengubah cara kerjanya.
10. **Sesuaikan, dan katakan alasannya.** Adaptasikan metode dengan konteks Anda, dan tuliskan apa yang Anda ubah dan alasannya. Mengubah praktik karena merepotkan, tanpa alasan, adalah cara tim menjauh dari manfaatnya.
11. **Ukur hasil, bukan skor kelincahan.** Lacak hal seperti lead time sebuah perubahan, seberapa sering rilis menyebabkan insiden, dan seberapa cepat layanan dipulihkan (lihat Topik 5.6 — Metrik dan Pengukuran). Gunakan penilaian mandiri hanya sebagai pemantik diskusi.
12. **Bawa data layanan kembali ke pengembangan.** Masukkan insiden berulang dan catatan masalah ke dalam backlog, agar pengembangan belajar dari operasi (lihat Topik 3.3 — Manajemen Masalah).

## Pertanyaan untuk dibahas bersama tim Anda

**Praktik agile mana yang benar-benar kita pakai, dan mana yang hanya kita kenal namanya?**

Daftar praktik yang menurut Anda diikuti: stand-up, retrospektif, backlog, pengujian otomatis. Untuk masing-masing, tanyakan kapan terakhir kali ia mengubah keputusan. Praktik yang tidak dapat dikaitkan siapa pun dengan keputusan adalah ritual. Fasilitator sebaiknya meminta bukti tanpa menyiratkan kesalahan. Lanjutkan dengan memilih satu ritual untuk diperbaiki atau dibuang.

**Untuk pekerjaan kita yang mana pendekatan yang lebih prediktif akan lebih bijak, dan mengapa?**

Artikel Wikipedia melaporkan bahwa tiap pendekatan punya "home ground". Minta orang memilah pekerjaan terbaru menjadi yang stabil dan yang cepat berubah. Pekerjaan stabil yang lazim mencakup penyegaran perangkat keras, pemindahan pusat data, dan pembaruan kontrak besar. Tanyakan apa yang akan dibeli oleh rencana yang lebih cermat dalam tiap kasus. Tujuannya menghindari penerapan satu gaya untuk segalanya.

**Seberapa cepat kita tahu bahwa sesuatu yang kita bangun tidak berfungsi, dan apa yang akan mempercepatnya?**

Telusuri jalur dari menulis perubahan sampai mengetahui perilakunya dalam pemakaian. Hitung tahap dan penantiannya: tinjauan, build, pengujian, rilis, pemantauan. Tanyakan tahap mana yang paling kurang dipercaya tim. Sering kali jawabannya pengujian manual atau langkah rilis yang bergantung pada satu orang. Pilih satu tahap untuk dipersingkat dan sepakati bagaimana Anda akan tahu ia menjadi lebih singkat.

**Apa yang perlu dilihat auditor atau regulator dari kita, dan apakah cara kerja kita sudah menghasilkannya?**

Minta seseorang yang berpengalaman dalam audit atau keamanan untuk bergabung. Kumpulkan bukti yang sudah dihasilkan perkakas Anda: riwayat perubahan, hasil pengujian, persetujuan. Lalu daftar apa yang kurang. Tim sering terkejut menemukan bahwa perubahan kecil yang sering dengan pemeriksaan otomatis menghasilkan bukti yang lebih baik daripada yang jarang dan besar. Catat celahnya untuk diskusi tata kelola di Topik 5.7 — Tata Kelola, Risiko, dan Kepatuhan.

**Di mana dokumentasi kita membantu orang, dan di mana ia hanya ada karena kita disuruh menulisnya?**

Tanyakan kepada orang dokumen apa yang mereka pakai bulan lalu. Runbook yang dipakai dan dijaga mutakhir dihitung. Dokumen desain yang tidak dibaca siapa pun sejak hari disetujui tidak. Minta tim memutuskan mana yang dipertahankan, digabung, dan dihapus, dan tunjuk pemiliknya. Ini cara aman menerapkan gagasan "cukup baik saja".

**Apa yang terakhir kali kita ubah tentang cara kerja karena apa yang kita pelajari, dan apa perubahan berikutnya?**

Minta perubahan konkret terbaru dari retrospektif dan apakah berhasil. Jika tidak ada yang bisa menyebutkannya, retrospektif tidak menjalankan tugasnya. Cari tahu mengapa: tindakannya mungkin terlalu besar, tidak punya pemilik, atau bersaing dengan pekerjaan pengiriman. Tutup dengan memilih satu perubahan kecil untuk dilakukan dalam dua minggu ke depan.

## Dalam praktik: contoh ITIL agile

Sebuah toko ritel daring berukuran menengah memiliki tim pengembang sepuluh orang yang membangun sistem manajemen pesanannya, dan tim operasi terpisah berisi enam orang yang menjalankannya. Tim pengembang memilih memakai sprint dan rilis setiap dua minggu. Tim operasi menerima setiap rilis dengan catatan singkat dan permintaan untuk men-deploy-nya dalam jendela Kamis malam. Staf operasi mengeluh bahwa mereka baru tahu apa yang berubah ketika ada yang rusak, dan pengembang mengeluh bahwa jendela Kamis terlalu terlambat untuk memperbaiki apa pun yang ditemukan dalam pengujian.

Dalam retrospektif bersama, kedua tim memetakan satu rilis terbaru langkah demi langkah. Mereka menemukan bahwa satu-satunya pengujian otomatis hanya mencakup sekitar separuh alur pesanan, bahwa tak seorang pun di sisi operasi pernah melihat rilis sebelum catatan Kamis, dan bahwa langkah rollback tidak pernah dicoba. Mereka menyepakati tiga perubahan. Tim pengembang akan menambahkan pemeriksaan pemantauan dan pengujian rollback ke definisi selesai mereka. Seorang engineer operasi akan bergabung dalam setiap tinjauan sprint. Rilis yang lulus seluruh rangkaian pengujian otomatis akan di-deploy segera setelah siap, tidak hanya pada hari Kamis.

Selama dua bulan berikutnya, dua dari empat rilis berikutnya di-deploy di tengah pekan. Engineer operasi menangkap pesan log yang hilang dalam satu tinjauan sprint, yang menghemat satu jam pencarian dalam insiden berikutnya. Tidak semuanya membaik: rangkaian pengujian otomatis masih melewatkan jalur pengembalian dana, dan satu kesalahan pengembalian dana sampai ke pelanggan. Kedua tim menambahkan pengujian pengembalian dana pada sprint berikutnya dan sepakat meninjau celah cakupan setiap bulan. Engineer operasi juga mengatakan bahwa menghadiri tinjauan sprint memakan waktu yang tidak diberikan jadwal jaga, sehingga manajer operasi menggeser sebagian tugas lain engineer itu.

## Empat perspektif

### Tim produk dan pengiriman

Tim pengiriman memiliki praktik yang membuat perubahan aman: pengujian, integrasi berkelanjutan, batch kecil, dan definisi selesai yang jelas. Perlakukan operasi sebagai pelanggan pekerjaan Anda. Tanyakan apa yang mereka perlukan untuk menjalankan rilis, dan masukkan ke dalam backlog seperti Anda memasukkan fitur.

### Tim layanan dan operasi

Staf operasi dapat memakai praktik agile pada pekerjaan mereka sendiri: backlog perbaikan yang terlihat, siklus umpan balik pendek atas insiden, dan retrospektif berkala. Minta bergabung dalam sesi perencanaan dan tinjauan sejak dini. Bawa pengetahuan tentang bagaimana layanan gagal, yang merupakan masukan paling berguna yang bisa diterima tim pengiriman.

### Kepemimpinan dan tata kelola

Pemimpin memutuskan apakah tim mendapat waktu dan pelatihan untuk bekerja dengan cara ini. Bukti survei dalam artikel Wikipedia menunjuk pelatihan dan sponsor sebagai titik lemah yang umum. Tanyakan kendali apa yang Anda perlukan dan bagaimana tim dapat memenuhinya dengan perkakasnya sendiri, alih-alih menambahkan proses paralel.

### Pelanggan dan pengguna

Pelanggan melihat manfaat metode agile sebagai perbaikan yang terlihat dengan irama stabil, bukan sebagai upacara. Harapkan meninjau perubahan yang berfungsi secara berkala dan ditanya apa yang paling penting. Sebagai imbalannya, tim memerlukan jawaban tepat waktu dan kesediaan menerima rilis kecil yang tidak sempurna yang membaik seiring waktu.

## Pola kegagalan umum

- **Mengadopsi ritual tanpa praktik rekayasa.** Rapat harian dan papan muncul, tetapi tanpa pengujian otomatis, sehingga rilis tetap berisiko. Sebaliknya, investasikan pada pengujian, integrasi, dan otomatisasi rilis bersama upacaranya.
- **Menyebut proses perubahan "agile" tanpa mengubah hak keputusan.** Tim masih menunggu persetujuan yang jauh. Sebaliknya, pindahkan keputusan kepada orang yang punya pengetahuan, dan tetapkan batas yang jelas.
- **Memakai agile sebagai dalih tanpa dokumentasi.** Serah terima dan insiden menderita. Sebaliknya, simpan dokumen singkat yang dipakai orang dan beri masing-masing pemilik.
- **Melewatkan pelatihan.** Temuan VersionOne dalam artikel Wikipedia menyebut pelatihan yang tidak memadai sebagai penyebab kegagalan implementasi yang paling sering disebut. Sebaliknya, latih tim dan pemimpin sebelum dan selama perubahan.
- **Menempatkan anggota tim pengembang pada peran product owner.** Artikel mendaftarnya sebagai jebakan. Sebaliknya, pilih orang yang mewakili bisnis dan punya waktu untuk memutuskan.
- **Berkembang dengan menyalin kerangka kerja.** Kerangka besar yang dipasang tanpa pemahaman menambah proses dan memperlambat tim. Sebaliknya, mulailah dari masalah yang Anda punya dan adopsi hanya yang membantu (lihat Topik 1.8 — Agile dalam Skala Besar).
- **Mengejar skor kelincahan.** Tim mengoptimalkan metrik. Sebaliknya, lacak hasil seperti lead time, kegagalan rilis, dan waktu pemulihan layanan.
- **Memisahkan pengembangan dan operasi.** Tim pengiriman mengirim dan tim operasi mewarisi. Sebaliknya, bawa mereka ke perencanaan, tinjauan, dan pembelajaran insiden bersama (lihat Topik 5.2 — DevOps).

## Model kematangan

| Dimensi | Memulai | Mengembangkan | Menstandarkan | Mengelola | Mengorkestrasi |
|---|---|---|---|---|---|
| Pengiriman perangkat lunak berkelanjutan | Pekerjaan dikirim dalam rilis besar | Beberapa tim mengirim dalam siklus pendek | Tim berbagi irama pengiriman bersama dan definisi selesai | Lead time dan hasil rilis diukur dan ditinjau | Ritme rilis dikoordinasikan lintas tim dan pemasok |
| Praktik rekayasa | Pengujian dan build sebagian besar manual | Beberapa tim memiliki pengujian dan build otomatis | Pipeline bersama menjalankan pengujian pada setiap perubahan | Cakupan pengujian dan laju kegagalan dilacak dan celah diperbaiki | Pipeline dan praktik diperbaiki lintas tim dari bukti bersama |
| Backlog dan prioritas | Permintaan datang lewat email dan ad hoc | Tim menyimpan backlog sendiri | Setiap tim punya satu backlog berurutan yang mencakup pekerjaan layanan | Aliran dan usia backlog ditinjau bersama pemangku kepentingan | Prioritas diselaraskan lintas tim, pelanggan, dan pemasok |
| Pembelajaran dan adaptasi | Tinjauan hanya mengikuti kegagalan besar | Beberapa tim mengadakan retrospektif | Semua tim mengadakan retrospektif berkala dan mencatat tindakan | Tindakan dilacak sampai selesai dan dampaknya diperiksa | Pelajaran berpindah antartim dan ke kebijakan tanpa arahan pusat |

## Daftar periksa

- [ ] Tim dapat mengatakan metode atau praktik agile mana yang dipakainya dan mengapa memilihnya.
- [ ] Pekerjaan dipilah menjadi jenis prediktif dan adaptif, dengan pendekatan yang dinyatakan untuk masing-masing.
- [ ] Pengujian otomatis berjalan pada setiap perubahan, dan build yang gagal menghentikan lini.
- [ ] Definisi selesai kami mencakup pemantauan, catatan dukungan, dan rollback yang teruji.
- [ ] Setiap tim punya satu backlog berurutan yang mencakup perbaikan layanan dan cacat.
- [ ] Runbook dan deskripsi layanan punya pemilik dan tanggal tinjauan.
- [ ] Retrospektif diadakan dengan ritme teratur dan masing-masing berakhir dengan satu tindakan yang dimiliki.
- [ ] Tim dan pemimpin telah mendapat pelatihan dalam cara kerja yang kami minta dari mereka.
- [ ] Kami tahu bukti apa yang dibutuhkan auditor dan bagaimana perkakas kami menyediakannya.
- [ ] Ukuran hasil, seperti lead time dan waktu pemulihan layanan, ditinjau secara berkala.

## Prompt AI

**Tujuan: memetakan praktik Anda saat ini ke praktik agile yang umum dan menemukan celah.**

```text
You are helping a team understand which agile software development practices it actually uses.

Practices to consider: user stories and backlogs, daily stand-ups, retrospectives, test-driven development, continuous integration, pair programming, refactoring, definition of done, regular reviews with customers.

Our team: [team size and what you build and run].
What we do today, in our own words: [paste a short description of a typical week, including meetings, tools, and how a change reaches production].

For each practice, say whether the description shows it in use, partly in use, or not mentioned, and quote the words you based that on. Do not assume a practice exists if it is not described. Then list three questions I should ask my team to fill gaps. Ask me clarifying questions first if the description is too thin, and list what you are unsure of.
```

**Tujuan: menyusun definisi selesai yang mencakup operasi.**

```text
Help us write a definition of done for [type of work, e.g. "backend changes to our order service"] that covers both building and running the service.

Our current definition of done is: [paste it, or write "none"].
Things operations staff tell us they need before they accept a release: [paste a list, or write "unknown"].
Rules we must follow: [list any known audit, security, or safety rules, or write "none known"].

Produce a checklist of 8 to 12 items, grouped as build quality, release readiness, and operational readiness. Mark each item that you added by assumption. Do not claim that any standard requires an item unless I have pasted its text. Ask me clarifying questions first, and list what you are unsure of.
```

**Tujuan: menyiapkan bukti untuk auditor dari perkakas agile Anda.**

```text
An auditor has asked: [paste the question, e.g. "show me how changes are reviewed and approved"].

Our tools and records: [list your version control, build, test, ticket, and release tools, and what each records].
Our practice: [describe how a change goes from idea to production].

List what evidence each tool already produces that relates to the question, what gaps remain, and three lightweight ways to close each gap. Do not state that any law or standard requires something unless I have pasted its text. Separate facts from assumptions, and list what you are unsure of.
```

**Tujuan: merencanakan retrospektif tentang bagaimana tim Anda mengadopsi praktik agile.**

```text
Plan a 60-minute retrospective for a team of [number] people who are [adopting / improving] agile practices. The main problem right now is [problem].

Include: a timed agenda, a way to gather facts first, a short discussion of two or three of these questions: [paste questions from the "Questions to discuss" section], and a closing step that records exactly one action with an owner and a date.

Keep the plan free of any specific tool. If anything is missing, ask me clarifying questions first, and list what you are unsure of.
```

## Keterampilan AI

- [scrum](../../../../skills/scrum/SKILL.md): gunakan untuk menyiapkan atau meninjau peran, acara, dan artefak tim Scrum.
- [kanban](../../../../skills/kanban/SKILL.md): gunakan untuk merancang papan visual dengan batas pekerjaan yang sedang berjalan bagi tim layanan atau operasi.
- [extreme-programming](../../../../skills/extreme-programming/SKILL.md): gunakan untuk meninjau atau mengadopsi praktik rekayasa seperti test-driven development dan integrasi berkelanjutan.
- [user-story](../../../../skills/user-story/SKILL.md): gunakan untuk menulis user story dengan kriteria penerimaan yang mencakup kebutuhan operasional.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): gunakan untuk menjalankan retrospektif yang berakhir dengan satu perubahan yang dimiliki.

## Sumber utama

- **Manifesto for Agile Software Development** dan **Principles behind the Agile Manifesto** (agilemanifesto.org): pernyataan utama tentang nilai dan prinsip.
- **Agile software development** (Wikipedia): tinjauan luas tentang sejarah, metode, praktik, adopsi, dan kritik dengan banyak sumber yang dikutip.
- **Agile Glossary** (Agile Alliance): definisi praktik dan istilah agile, dipelihara oleh komunitas yang tumbuh dari Manifesto.

## Referensi

1. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
2. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
3. Principles behind the Agile Manifesto — Beck et al., agilemanifesto.org — https://agilemanifesto.org/principles.html
4. Waterfall model — Wikipedia — https://en.wikipedia.org/wiki/Waterfall_model
5. Scrum (software development) — Wikipedia — https://en.wikipedia.org/wiki/Scrum_(software_development)
6. Extreme programming — Wikipedia — https://en.wikipedia.org/wiki/Extreme_programming
7. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
8. Test-driven development — Wikipedia — https://en.wikipedia.org/wiki/Test-driven_development
9. Continuous integration — Wikipedia — https://en.wikipedia.org/wiki/Continuous_integration
10. Feature-driven development — Wikipedia — https://en.wikipedia.org/wiki/Feature-driven_development
11. Dynamic systems development method — Wikipedia — https://en.wikipedia.org/wiki/Dynamic_systems_development_method
12. Agile Glossary — Agile Alliance — https://www.agilealliance.org/agile101/agile-glossary/
