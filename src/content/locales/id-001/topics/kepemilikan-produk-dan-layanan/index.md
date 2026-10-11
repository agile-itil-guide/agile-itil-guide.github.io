# Kepemilikan Produk dan Layanan

**Kepemilikan produk dan layanan memberi setiap produk atau layanan satu orang yang bertanggung jawab dan satu tim yang membangun serta menjalankannya, agar keputusan tentang nilai, kualitas, dan biaya dibuat oleh orang yang hidup dengan hasilnya.**

## Mengapa ini penting

Di banyak organisasi, tak ada yang memiliki layanan secara keseluruhan. Sebuah proyek membangunnya, tim operasi menjalankannya, vendor memasok sebagian, dan departemen keuangan membayarnya. Ketika ada yang salah, ada empat rapat dan tidak ada keputusan. Ketika pengguna menginginkan sesuatu diperbaiki, permintaan masuk ke antrean yang bukan milik siapa pun. Layanan membusuk di antara tim.

Kepemilikan menangani ini secara langsung. Ia meminta dua hal: seseorang yang bertanggung jawab atas nilai produk atau layanan, dan tim yang punya keterampilan dan wewenang untuk membangun, menjalankan, dan memperbaikinya. Gagasan ini lama dalam beberapa bentuk dan sedang tren dalam bentuk lain, dan rinciannya sangat berbeda antarorganisasi. Mendapatkannya dengan benar adalah salah satu kondisi terpenting agar segala hal lain dalam panduan ini berfungsi.

Dua gagasan berada di balik topik ini. Yang pertama Product Owner dalam Scrum Guide, yang bertanggung jawab memaksimalkan nilai produk dan mengurutkan backlog-nya, dan yang adalah satu orang dan bukan komite (lihat Topik 1.4 — Perkiraan Pengiriman dan Metrik Perencanaan). Yang kedua slogan "you build it, you run it," yang dikaitkan dengan chief technology officer Amazon Werner Vogels dalam wawancara yang diterbitkan di ACM Queue pada 2006, yang tidak dapat dibaca langsung oleh panduan ini (halaman mengembalikan kesalahan akses) dan diketahui dari deskripsi sekunder. Seperti dilaporkan deskripsi itu, Vogels membandingkan model lama, ketika pengembang melempar perangkat lunak melewati dinding ke operasi, dengan model ketika pengembang tetap berhubungan sehari-hari dengan pengoperasian perangkat lunak mereka dan dengan pelanggan. [Artikel Wikipedia tentang manajemen produk](https://en.wikipedia.org/wiki/Product_management) memberi deskripsi umum tentang disiplin itu tetapi tidak mengatakan apa-apa tentang peran product owner agile atau kepemilikan layanan, jadi topik ini melakukan pekerjaan menghubungkan dan mengatakannya.

## Konsep inti

### Produk, layanan, proyek

| Istilah | Arti, dalam pemakaian umum | Cakrawala waktu |
|---|---|---|
| **Proyek** | Upaya sementara dengan cakupan, awal, dan akhir yang ditetapkan | Berakhir ketika cakupan terkirim |
| **Produk** | Sesuatu yang ditawarkan kepada pelanggan atau pengguna yang dikembangkan dan diperbaiki dari waktu ke waktu | Berlanjut selama menciptakan nilai |
| **Layanan** | Cara mengirimkan nilai kepada pihak lain tanpa mereka memiliki biaya dan risikonya (lihat Topik 2.1 — Manajemen Layanan TI) | Berlanjut selama ditawarkan |

Produk digital sering juga layanan: pengguna bergantung padanya berjalan dengan baik. Pembedaan antara produk dan layanan kurang penting daripada peralihan dari proyek ke tanggung jawab berkelanjutan, seperti dijelaskan Topik 1.9 — Manajemen Agile.

### Manajemen produk

Artikel Wikipedia menjelaskan manajemen produk sebagai proses bisnis merencanakan, mengembangkan, meluncurkan, dan mengelola produk atau layanan, memastikan produk memenuhi kebutuhan pasar sasaran dan mendukung strategi bisnis sepanjang siklus hidup produk. Ia mendaftar tanggung jawab manajer produk: mengelola lini produk sehari-hari, memiliki kasus bisnis dan pengiriman ke pasar, menganalisis riset pelanggan dan persaingan, mendokumentasikan persyaratan, menetapkan strategi dan membuat peta jalan, dan menyelaraskan dengan desain, pengembangan, pemasaran, penjualan, dukungan, dan hukum. Ia menelusuri konsep itu ke memo 1931 oleh presiden Procter & Gamble Neil H. McElroy yang meminta "Brand Men" untuk mengelola produk. Ia mengatakan manajer produk sering diukur menurut tanggung jawab laba-rugi.

Artikel tidak mengaitkan manajemen produk dengan Product Owner agile, jadi kaitannya adalah pembacaan panduan ini: Product Owner bertanggung jawab atas nilai produk dan mengurutkan backlog-nya, dan di banyak organisasi manajer produk menjalankan peran bisnis yang lebih luas. Dalam tim kecil satu orang mungkin melakukan keduanya.

### Product owner dan service owner

| Peran | Bertanggung jawab atas | Pertanyaan tipikal |
|---|---|---|
| **Product owner** (Scrum) | Memaksimalkan nilai produk; mengurutkan product backlog | Apa yang harus kita bangun atau perbaiki berikutnya, dan mengapa? |
| **Manajer produk** | Kasus bisnis, strategi, dan peta jalan produk | Apakah ini produk yang tepat, untuk pasar yang tepat? |
| **Service owner** (penggunaan ITSM) | Kinerja dan perbaikan layanan sepanjang hidupnya | Apakah layanan memenuhi kebutuhan pengguna, dengan biaya dan risiko yang dapat diterima? |

Peran-peran itu tumpang tindih. Untuk layanan TI internal, satu orang dapat menjadi product owner sekaligus service owner. Scrum Guide menekankan bahwa Product Owner adalah satu orang, bukan komite, agar keputusan tentang urutan punya pemilik yang jelas. Apa pun jabatannya, ujiannya adalah apakah satu orang yang disebut namanya dapat membuat pertukaran antara fitur baru, keandalan, dan biaya.

### "You build it, you run it"

Seperti dijelaskan dalam ringkasan sekunder wawancara Vogels 2006, frasa itu mengungkapkan model ketika tim yang membangun layanan juga menjalankannya, sehingga tetap berhubungan sehari-hari dengan pengguna dan dengan akibat desainnya. Wawancara dilakukan Jim Gray dan diterbitkan di ACM Queue pada 2006; blog Amazon sendiri mencatat wawancara itu ketika muncul. Panduan ini belum membaca aslinya, jadi tidak mengutipnya. Model ini punya biaya selain manfaat:

| Manfaat | Biaya atau risiko |
|---|---|
| Pembangun merasakan sakitnya kemampuan operasi yang buruk dan memperbaikinya | Pembangun memikul beban on-call dan bisa kelelahan |
| Umpan balik lebih pendek dari pengguna dan insiden | Keterampilan operasi, keamanan, dan kepatuhan harus ada dalam tim |
| Tanpa serah terima yang menghilangkan pengetahuan | Standar lintas tim memerlukan mekanisme lain |
| Akuntabilitas jelas | Tim kecil mungkin merasa seluruh beban terlalu berat |

Site reliability engineering dan DevOps menawarkan cara mendukung tim semacam itu (lihat Topik 5.2 — DevOps dan Topik 5.3 — Site Reliability Engineering). Tim platform dapat menyediakan perkakas umum agar tiap tim produk tidak membangunnya kembali.

### Tim yang memiliki

Kepemilikan memerlukan tim dengan keterampilan untuk mengirim dan menjalankan, dan wewenang untuk bertindak. Scrum menjelaskan tim kecil lintas fungsi dan mengelola diri yang tidak bergantung pada pihak lain untuk seluruh pekerjaannya. Dalam praktik, tim produk juga bergantung pada platform bersama, keamanan, dan layanan data. Mengelola ketergantungan ini adalah bagian kepemilikan (lihat Topik 1.8 — Agile dalam Skala Besar).

### Pendanaan dan tujuan

Kepemilikan memerlukan pendanaan stabil dan tujuan jelas. Tim yang didanai proyek demi proyek dibubarkan ketika proyek berakhir, dan service owner tidak punya tim. Tim tetap yang didanai untuk produk atau layanan, dengan tujuan yang berubah seiring ia belajar, adalah jawaban yang lazim (lihat Topik 1.9 — Manajemen Agile). Tujuan harus tentang hasil bagi pengguna dan bisnis, dan ditetapkan bersama pemilik.

### Kepemilikan dalam manajemen layanan

Praktik ITIL memerlukan pemilik: setiap layanan punya pemilik, setiap praktik punya pemilik, dan setiap proses utama punya pemilik (lihat Topik 5.1 — Manajemen Layanan Agile). Service owner memegang tingkat layanan, entri katalog, daftar perbaikan, dan hubungan dengan pelanggan (lihat Topik 3.7 — Manajemen Tingkat Layanan dan Topik 3.8 — Manajemen Katalog Layanan).

### Batasan dan peringatan

Sumber yang dibaca untuk panduan ini tidak menawarkan bukti tentang seberapa baik model kepemilikan bekerja, dan artikel Wikipedia tentang manajemen produk tidak mendaftar kritik. Peringatan praktis yang ditawarkan dari pengalaman mencakup pemilik dengan jabatan tanpa wewenang, pemilik yang kewalahan dengan beberapa produk, "you build it, you run it" tanpa dukungan yang mengarah pada kelelahan, dan kepemilikan yang berhenti di batas tim sementara aliran nilai melintasinya (lihat Topik 5.4 — Manajemen Aliran Nilai).

## Praktik terbaik

1. **Tunjuk satu orang yang bertanggung jawab untuk setiap produk atau layanan.** Tulis namanya dalam katalog layanan (ITIL mengejanya "service catalogue"). Pastikan mereka punya wewenang atas prioritas dan suara dalam pendanaan.
2. **Tentukan apa yang diputuskan pemilik.** Nyatakan keputusan mana yang dibuat pemilik sendiri, mana bersama tim, dan mana yang perlu eskalasi. Tanpa ini, kepemilikan hanyalah jabatan.
3. **Beri pemilik waktu.** Jangan menjadikan seseorang pemilik beberapa produk besar, atau pemilik dengan pekerjaan pengiriman penuh juga. Kepemilikan adalah pekerjaan nyata.
4. **Danai tim sepanjang umur layanan.** Hindari membubarkan tim ketika proyek berakhir. Tinjau pendanaan dalam siklus berkala terhadap hasil.
5. **Tetapkan tujuan hasil bersama pemilik.** Jelaskan apa yang harus lebih baik bagi pengguna dan bisnis, dengan beberapa ukuran yang dapat dihasilkan tim sendiri (lihat Topik 5.6 — Metrik dan Pengukuran).
6. **Taruh membangun dan menjalankan dalam satu tim bila bisa.** Sertakan keterampilan untuk pengembangan, operasi, dan dukungan, dan beri tim akses ke data dan perkakas produksi dalam batas aman. Bila tidak bisa, buat kesepakatan kerja yang kuat.
7. **Dukung tim dengan platform.** Sediakan perkakas bersama untuk deployment, pemantauan, dan keamanan agar tiap tim tidak membangun sendiri. Perlakukan platform sebagai produk dengan pengguna.
8. **Bagi beban on-call dengan adil.** Batasi panggilan malam, setel peringatan, dan waspadai kelelahan. "You build it, you run it" gagal ketika orang yang menjalankannya kelelahan.
9. **Simpan satu backlog per produk.** Sertakan fitur, cacat, pekerjaan operasi, dan butir perbaikan dalam satu daftar berurutan, agar pemilik dapat menimbangnya satu sama lain.
10. **Hubungkan pemilik satu sama lain.** Adakan percakapan berkala di antara pemilik produk dan layanan yang saling bergantung, untuk menyelesaikan konflik dan menyelaraskan rencana.
11. **Tinjau kepemilikan setiap tahun.** Periksa bahwa setiap layanan masih punya pemilik aktif, tim, dan backlog, dan bahwa peran masih cocok.
12. **Beri ruang bagi tim kecil.** Di tempat satu tim memiliki banyak layanan kecil, kelompokkan dengan masuk akal dan pakai praktik ringan. Jangan menerapkan model berat pada layanan kecil.

## Pertanyaan untuk dibahas bersama tim Anda

**Siapa yang bertanggung jawab atas tiap layanan kita, dan apakah mereka akan mengatakannya?**

Daftar layanan utama dan sebut pemilik. Lalu tanyakan kepada tiap orang yang disebut apakah mereka akan menyebut diri pemilik. Celah antara daftar dan jawaban menunjukkan seberapa banyak kepemilikan hanya nominal. Fasilitator dapat menanyakan layanan mana yang tak punya pemilik dan apa harganya.

**Apa yang dapat diputuskan pemilik kita hari ini tanpa bertanya kepada siapa pun?**

Minta contoh: prioritas, pengeluaran, rilis, komitmen pelanggan. Jika sebagian besar keputusan memerlukan persetujuan pihak lain, bahas mana yang harus didelegasikan dan dengan batas apa. Sepakati satu keputusan untuk dipindahkan.

**Ketika sesuatu salah di produksi, siapa yang dibangunkan, dan apakah mereka punya sarana untuk memperbaikinya?**

Tanyakan siapa yang on-call dan apa yang dapat mereka ubah. Jika bukan pembangun, tanyakan mengapa. Bahas bagaimana umpan balik dari insiden sampai ke orang yang merancang layanan. Sepakati satu jalur untuk dipersingkat.

**Bagaimana kita mendanai layanan ini, dan apa yang terjadi ketika proyek berakhir?**

Telusuri pendanaan layanan utama. Tanyakan siapa yang dapat membelanjakan untuk perbaikan dan siapa yang memutuskan berhenti. Jika tim dibubarkan setelah proyek, bahas harga hilangnya pengetahuan. Usulkan uji coba pendanaan tetap untuk satu layanan.

**Keterampilan apa yang kurang untuk membangun dan menjalankan layanan kita, dan bagaimana kita bisa mendapatkannya?**

Daftar keterampilan yang dibutuhkan pekerjaan: pengembangan, operasi, keamanan, data, dukungan. Tandai celah. Bahas pairing, pelatihan, meminjam spesialis, atau platform bersama. Pilih satu celah untuk ditutup.

**Berapa banyak pemilik yang kita minta menjadi satu orang?**

Hitung produk dan layanan yang menjadi tanggung jawab tiap pemilik. Pemilik yang kewalahan tidak dapat membuat keputusan baik. Bahas membagi, mendelegasikan, atau memensiunkan layanan. Sepakati maksimum, dan rencana untuk pemilik yang melampauinya.

## Dalam praktik: contoh ITIL agile

Badan ketenagakerjaan nasional menjalankan layanan pencocokan kerja daring yang dipakai pencari kerja dan pemberi kerja. Layanan itu dibangun tim proyek, diserahkan kepada kelompok operasi, dan kini didanai sebagai rangkaian proyek kecil. Kepala layanan digital menemukan bahwa tak ada yang bisa mengatakan siapa pemiliknya: sponsor proyek asli sudah pensiun, operasi menangani insiden, dan unit kebijakan meminta perubahan lewat antrean yang memakan berbulan-bulan. Pemberi kerja mengeluh tentang formulir pendaftaran yang tidak berubah selama tiga tahun.

Kepala menunjuk service owner dari unit hubungan pemberi kerja, orang yang memahami pemberi kerja dan layanan, dan memberinya suara atas backlog dan bagian anggaran. Tim tetap berisi delapan orang, menggabungkan pengembang, engineer operasi, penguji, dan desainer, dibentuk dari orang yang sudah mengerjakan layanan. Tim bergabung dengan jadwal on-call, dengan batas panggilan malam, dan memakai platform bersama untuk deployment dan pemantauan yang dipelihara tim pusat. Permintaan unit kebijakan masuk ke backlog tunggal, tempat pemilik memeringkatnya terhadap perbaikan dan pembetulan. Tim dan pemilik menyepakati tiga tujuan hasil untuk tahun itu dengan beberapa ukuran: porsi pendaftaran pemberi kerja yang diselesaikan, waktu yang dibutuhkan pencari kerja menemukan kecocokan, dan jumlah insiden berulang.

Setelah delapan bulan, formulir pendaftaran dibangun ulang, penyelesaian membaik, dan insiden berulang turun. Pemilik dapat menjawab pertanyaan pemberi kerja tentang apa yang direncanakan. Beberapa kesulitan tersisa. Pemilik juga bertanggung jawab atas layanan kecil lain dan kewalahan, unit kebijakan kesal harus bersaing untuk slot backlog, dan engineer on-call mengatakan platform bersama kekurangan perkakas yang mereka butuhkan. Kepala layanan digital mengurangi tugas lain pemilik, meminta unit kebijakan dan pemilik menyiapkan rapat perencanaan bulanan, dan menaruh permintaan platform pada backlog tim pusat.

## Empat perspektif

### Tim produk dan pengiriman

Tim pengiriman sebaiknya bekerja dengan pemilik yang jelas dan mengambil alih menjalankan apa yang mereka bangun. Tawarkan kepada pemilik bukti dari pengguna, insiden, dan biaya, dan jujurlah tentang pertukaran. Minta perkakas dan dukungan yang Anda butuhkan untuk memikul on-call dengan adil.

### Tim layanan dan operasi

Tim operasi mendukung tim produk dengan keahlian, platform, dan standar bersama. Di tempat mereka menjalankan layanan untuk pihak lain, tunjuk pemilik dan sepakati tingkat layanan. Tahan godaan menyerahkan setiap masalah operasional kepada kelompok pusat yang tak memiliki apa pun.

### Kepemimpinan dan tata kelola

Pemimpin menciptakan kepemilikan dengan menunjuk pemilik, memberi mereka wewenang dan waktu, dan mendanai tim tetap. Minta hasil dan bukti dari pemilik, dan tahan diri dari menimpa prioritas mereka tanpa diskusi. Waspadai pemilik yang punya jabatan tetapi tidak punya kuasa.

### Pelanggan dan pengguna

Pelanggan dan pengguna diuntungkan ketika mereka tahu siapa yang bertanggung jawab atas layanan dan dapat menjangkaunya. Beri tahu pemilik apa yang paling penting dan apa yang menyakitkan. Harapkan informasi jelas tentang apa yang direncanakan, dan suara dalam bagaimana prioritas ditetapkan.

## Pola kegagalan umum

- **Jabatan tanpa wewenang.** Pemilik tidak dapat memutuskan apa pun. Sebaliknya, nyatakan apa yang diputuskan pemilik dan dukung.
- **Kepemilikan oleh komite.** Tak ada yang bertanggung jawab. Sebaliknya, tunjuk satu orang untuk setiap produk atau layanan.
- **Pemilik yang kewalahan.** Satu orang memiliki terlalu banyak produk. Sebaliknya, batasi jumlah dan delegasikan.
- **Membubarkan tim setelah proyek.** Pengetahuan pergi. Sebaliknya, danai tim tetap untuk layanan yang berlanjut.
- **"You build it, you run it" tanpa dukungan.** Tim kelelahan. Sebaliknya, sediakan platform, on-call bersama, dan peringatan yang disetel.
- **Kepemilikan yang berhenti di tim.** Aliran nilai melintasi tim. Sebaliknya, hubungkan pemilik layanan yang saling bergantung.
- **Banyak backlog.** Fitur, cacat, dan operasi bersaing dalam antrean tersembunyi. Sebaliknya, simpan satu backlog berurutan per produk.
- **Menyalin model tanpa konteks.** Pola perusahaan besar diterapkan pada layanan kecil. Sebaliknya, sesuaikan model dengan ukuran dan risiko.

## Model kematangan

| Dimensi | Memulai | Mengembangkan | Menstandarkan | Mengelola | Mengorkestrasi |
|---|---|---|---|---|---|
| Akuntabilitas | Layanan tak punya pemilik jelas | Beberapa layanan punya pemilik informal | Setiap layanan punya pemilik yang ditunjuk dengan hak keputusan dan waktu yang ditetapkan | Efektivitas dan hasil pemilik ditinjau | Pemilik berkoordinasi lintas layanan yang saling bergantung dan dengan pelanggan |
| Tim dan keterampilan | Membangun dan menjalankan adalah tim terpisah | Beberapa tim berbagi on-call | Tim tetap memiliki build dan run dengan keterampilan yang dibutuhkan | Celah keterampilan dan beban diukur dan ditangani | Keterampilan dan platform dibagikan lintas tim dan pemasok |
| Pendanaan dan tujuan | Pendanaan per proyek | Beberapa tim tetap ada | Layanan punya pendanaan tetap dan tujuan hasil | Pendanaan mengikuti hasil terukur | Pendanaan dan tujuan diselaraskan lintas layanan dan dengan pelanggan |
| Backlog dan prioritas | Prioritas datang dari banyak antrean | Beberapa pemilik menyimpan daftar | Satu backlog berurutan per produk mencakup semua jenis pekerjaan | Aliran dan prioritas backlog ditinjau bersama pemangku kepentingan | Prioritas diselaraskan lintas pemilik dan dengan pelanggan |

## Daftar periksa

- [ ] Setiap produk atau layanan punya satu pemilik yang ditunjuk dan bertanggung jawab, tercantum dalam katalog layanan.
- [ ] Apa yang diputuskan setiap pemilik sendiri, bersama tim, dan lewat eskalasi dituliskan.
- [ ] Pemilik punya waktu untuk peran dan jumlah layanan yang dapat dikelola.
- [ ] Tim tetap didanai untuk setiap layanan yang berlanjut.
- [ ] Setiap layanan punya tujuan hasil dengan beberapa ukuran.
- [ ] Tim yang membangun layanan punya keterampilan dan akses untuk menjalankannya, atau punya kesepakatan kerja yang jelas dengan yang menjalankan.
- [ ] Beban on-call dibagi dengan adil dengan batas dan peringatan yang disetel.
- [ ] Platform bersama mendukung tim dengan deployment, pemantauan, dan keamanan.
- [ ] Setiap produk punya satu backlog berurutan yang mencakup fitur, cacat, operasi, dan perbaikan.
- [ ] Kepemilikan ditinjau setidaknya sekali setahun.

## Prompt AI

**Tujuan: menyusun hak keputusan untuk pemilik produk atau layanan.**

```text
Help me draft decision rights for the owner of [product or service].

What the service does and who uses it: [describe].
Decisions that come up often: [list 8-12, such as priorities, spending, releases, customer commitments, supplier choices].
Rules we must follow (financial, security, legal), with source text if you have it: [paste, or write "none known"].
Current arrangement: [describe].

Produce a table with three columns: owner decides alone, owner decides with the team, and escalate. Place each decision in one column with a one-sentence reason. Mark any placement that is a guess. Do not invent rules. Ask clarifying questions first, and list what you are unsure of.
```

**Tujuan: menemukan layanan tanpa pemilik yang jelas.**

```text
Here is a list of our services with the owner we have recorded, the team that builds, the team that runs, and who funds each: [paste].

Using only this list, identify services with no owner, with different people named as owner by different columns, or with build and run split between teams. For each, suggest a question to ask. Do not decide who should own anything. List what you are unsure of.
```

**Tujuan: merencanakan model on-call untuk tim yang membangun dan menjalankan.**

```text
Help me plan an on-call model for a team of [number] people who build and run [service].

Current incidents and pages (counts by week, out-of-hours share): [paste real data].
Skills in the team: [list].
Constraints: [for example time zones, leave rules].

Propose a rota design, limits on night calls, how alerts will be tuned, what support the team needs from a platform or operations group, and what to review each quarter. Leave numeric limits as [to be agreed]. Do not invent data. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Tujuan: menyiapkan argumen untuk pendanaan tetap sebuah layanan.**

```text
Help me prepare a short case for funding [service] with a standing team instead of by project.

How it is funded today and what happens at the end of each project: [describe].
Costs of the current arrangement, in facts (rework, lost knowledge, delays; use only real examples): [paste].
What a standing team would need: [describe roles and rough size].
Outcome goals proposed: [list].

Write a one-page case with the problem, the proposal, risks (including the risk of a standing team becoming complacent), what we will measure, and how funding would be reviewed. Do not invent figures. Ask clarifying questions first, and list what you are unsure of.
```

## Keterampilan AI

- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): gunakan untuk memperjelas siapa yang memiliki, mendukung, dan dikonsultasikan untuk setiap produk atau layanan.
- [product-roadmap](../../../../skills/product-roadmap/SKILL.md): gunakan untuk menjelaskan arah dan rencana jangka dekat sebuah produk atau layanan.
- [agile-charter](../../../../skills/agile-charter/SKILL.md): gunakan untuk menetapkan tujuan, hasil, dan batas tim di awal.
- [feature-prioritization](../../../../skills/feature-prioritization/SKILL.md): gunakan untuk membantu pemilik mengurutkan backlog menurut nilai dan biaya.
- [agile-discovery](../../../../skills/agile-discovery/SKILL.md): gunakan untuk memvalidasi apa yang harus dilakukan produk atau layanan berikutnya sebelum membangunnya.

## Sumber utama

- **The Scrum Guide** (Ken Schwaber dan Jeff Sutherland, scrumguides.org): definisi akuntabilitas Product Owner dan tim lintas fungsi yang mengelola diri.
- **Product management** (Wikipedia): deskripsi umum disiplin, tanggung jawab, dan sejarahnya.
- **A Conversation with Werner Vogels** (Jim Gray, ACM Queue, 2006): wawancara yang menjelaskan "you build it, you run it"; baca aslinya untuk redaksi persis.
- **Site Reliability Engineering** (Google, sre.google): satu cara mendukung tim yang menjalankan apa yang mereka bangun.

## Referensi

1. The Scrum Guide (November 2020) — Ken Schwaber and Jeff Sutherland, scrumguides.org — https://scrumguides.org/scrum-guide.html
2. Product management — Wikipedia — https://en.wikipedia.org/wiki/Product_management
3. ACM Queue interview with Werner Vogels (2006), noted on the AWS News Blog — Amazon Web Services — https://aws.amazon.com/blogs/aws/acm_queue_inter/
4. Introduction — Google SRE book, sre.google — https://sre.google/sre-book/introduction/
5. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
6. Scrum (software development) — Wikipedia — https://en.wikipedia.org/wiki/Scrum_(software_development)
7. Project management — Wikipedia — https://en.wikipedia.org/wiki/Project_management
8. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
9. Platform engineering — Wikipedia — https://en.wikipedia.org/wiki/Platform_engineering
