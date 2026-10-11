# Manajemen Pemasok

**Manajemen pemasok memastikan pihak luar yang menjadi tumpuan layanan dipilih dengan cermat, dipegang pada ekspektasi yang jelas, dan diperlakukan sebagai bagian dari layanan, karena janji kepada pelanggan Anda hanya sekuat janji di belakangnya.**

## Mengapa ini penting

Hampir tidak ada layanan modern yang dibangun dan dijalankan oleh satu tim saja. Ia bergantung pada platform cloud, vendor perangkat lunak, pemroses pembayaran, operator jaringan, kontraktor, dan mitra spesialis. Ketika salah satunya gagal, pelanggan tidak membedakan antara kegagalan Anda dan kegagalan mereka. Gangguan mereka adalah gangguan Anda, begitu pula pekerjaan menjelaskannya.

Tim agile memakai pemasok dengan mudah: sebuah kartu kredit, beberapa baris konfigurasi, dan kemampuan baru berjalan. Kecepatan itu berharga, dan ia menciptakan celah. Mungkin tak ada yang bertanya apa yang terjadi jika layanan pemasok menurun, mengubah syaratnya, atau tutup. Mungkin tak ada yang tahu siapa pemilik hubungannya. Manajemen pemasok adalah praktik menutup celah itu sebanding dengan risiko, tanpa mengubah setiap pembelian menjadi proyek.

[Artikel Wikipedia tentang manajemen hubungan pemasok](https://en.wikipedia.org/wiki/Supplier_relationship_management) menjelaskan penilaian sistematis di seluruh perusahaan atas kekuatan, kinerja, dan kemampuan pemasok, selaras dengan strategi bisnis, dan mencatat bahwa sumbernya tipis dan usang, dengan beberapa referensi dari 2009 sampai 2012. [Artikel tentang integrasi dan manajemen layanan](https://en.wikipedia.org/wiki/Service_integration_and_management) menjelaskan pendekatan untuk organisasi yang memakai beberapa pemasok. Topik ini menggabungkannya dengan topik lain panduan dan dengan praktik umum dalam manajemen layanan, dan mengatakan ketika ia melakukan yang terakhir.

## Konsep inti

### Manajemen hubungan pemasok

Menurut Wikipedia, manajemen hubungan pemasok (SRM) mengoordinasikan interaksi dengan pemasok sepanjang siklus hidup hubungan, dengan tujuan membangun kemitraan dua arah dengan pemasok strategis, dengan cara analog dengan manajemen hubungan pelanggan. Artikel membuat beberapa poin yang berguna bagi tim layanan:

- **Segmentasikan pemasok.** Pemasok disegmentasi menurut total nilai potensial lintas beberapa dimensi, bukan hanya pengeluaran, dan menurut tingkat risiko yang memengaruhi nilai itu. Artikel mengkritik pendekatan "satu ukuran untuk semua."
- **Ukur kinerja dua arah.** Organisasi memakai balanced scorecard bersama dua arah dengan ukuran kuantitatif dan kualitatif, dan sebagian memakai scorecard 360 derajat yang juga mensurvei pemasok.
- **Berkolaborasi.** Kegiatan bersama mencakup pertemuan puncak pemasok, rapat eksekutif, perencanaan bisnis bersama, tinjauan operasional, dan perkiraan permintaan bersama. Artikel mengklaim bahwa perkiraan bersama dan rekayasa ulang proses telah membuka penghematan 10 sampai 30 persen bagi organisasi terkemuka, tetapi artikel memiliki penanda pemeliharaan untuk redaksi lemah dan kutipan yang hilang, jadi perlakukan angka itu sebagai klaim, bukan temuan.

### Mengapa segmentasi penting

Anda tidak dapat mengelola setiap pemasok dengan ketat. Segmentasi yang berguna menanyakan dua pertanyaan: seberapa bergantung layanan pada pemasok ini, dan seberapa sulit menggantikannya? Berikut grid kasar.

| Ketergantungan dan kemudahan penggantian | Contoh | Pendekatan |
|---|---|---|
| **Kritis dan sulit digantikan** | Platform cloud, pemroses pembayaran | Hubungan erat: pemilik yang ditunjuk, tinjauan berkala, perencanaan bersama, rencana keluar dan kontinuitas |
| **Penting tetapi dapat digantikan** | Perkakas pemantauan, layanan pesan | Tinjauan berkala, tingkat layanan yang jelas, dan rencana beralih jika perlu |
| **Rutin dan mudah digantikan** | Perlengkapan kantor, pustaka kecil | Kontrak ringan dan pemeriksaan berkala |

Grid ini adalah ilustrasi panduan ini, bukan dari sumber.

### Kinerja pemasok dan layanan yang Anda janjikan

Tingkat layanan Anda bergantung pada milik pemasok Anda (lihat Topik 3.7 — Manajemen Tingkat Layanan). Jika Anda menjanjikan ketersediaan 99,9% dan satu-satunya penyedia cloud Anda menjanjikan lebih sedikit, aritmetikanya tidak cocok. Manajemen pemasok mencakup membandingkan apa yang telah dijanjikan pemasok dengan apa yang Anda janjikan, dan merancang di sekitar celahnya dengan redundansi atau dengan menyesuaikan janji Anda sendiri.

Dalam kosakata ITIL, perjanjian dengan pemasok luar yang mendukung perjanjian tingkat layanan disebut kontrak penopang (underpinning contract), dan perjanjian antartim internal yang mendukungnya disebut perjanjian tingkat operasional. Sumber yang dibaca untuk panduan ini tidak mendefinisikannya, jadi periksa publikasi ITIL untuk istilah persisnya.

### Lingkungan multi-pemasok dan SIAM

Artikel tentang integrasi dan manajemen layanan (SIAM) menjelaskan pendekatan untuk mengelola beberapa pemasok dan mengintegrasikannya ke dalam satu layanan yang menghadap bisnis. Ia mencatat bahwa organisasi makin sering mengambil kemampuan TI dari beberapa pemasok eksternal, model yang disebut multisourcing, yang dapat menurunkan biaya dan mendorong persaingan tetapi menambah beban manajemen dan mempersulit manajemen layanan ujung ke ujung. **Integrator layanan** menyediakan tata kelola dan koordinasi agar penyedia bekerja bersama.

Artikel mendaftar empat model untuk integrator (internal, pemasok utama, eksternal, dan hibrida) dan tiga lapisan: organisasi pelanggan, integrator layanan, dan penyedia layanan. Ia mengatakan SIAM berasal sekitar 2005 di sektor publik Inggris, pertama dirancang untuk Department for Work and Pensions, dan mendaftar tonggak termasuk kumpulan pengetahuan pada 2016 dan revisi pada 2019 untuk COBIT 2019 dan ITIL 4. Ia mencatat bahwa ITIL menyediakan fondasi dan bahasa bersama untuk bekerja dengan pemasok tetapi tidak membahas lingkungan multi-pemasok secara mendalam. Tantangan implementasi yang didaftarnya mencakup perjanjian tingkat layanan yang tidak selaras, penyedia saling menyalahkan, kepemilikan keputusan akar penyebab yang tidak jelas, dan celah komunikasi.

Sedikit tim agile yang memerlukan SIAM formal, tetapi pelajarannya berguna: ketika beberapa pihak berkontribusi pada satu layanan, seseorang harus memiliki keseluruhan, menyepakati bagaimana masalah ditangani lintas batas, dan menjaga tingkat layanan pemasok konsisten satu sama lain.

### Kontrak dan ketangkasan

Kontrak dapat membantu atau menghalangi kerja agile. Kontrak cakupan tetap dan harga tetap cocok buruk dengan belajar sambil berjalan (lihat Topik 1.1 — Manifesto Agile tentang kolaborasi dengan pelanggan lebih dari negosiasi kontrak). Perjanjian yang mengizinkan perubahan, dengan cara jelas untuk menyesuaikan cakupan dan mengukur nilai, lebih cocok. Kontrak juga harus mencakup hal-hal yang dipedulikan manajemen layanan: tingkat layanan, jam dukungan, penanganan insiden, perlindungan data, kewajiban keamanan, hak audit, keluar, dan kontinuitas. Rekan hukum dan pengadaan Anda sebaiknya memimpin syarat hukum.

### Risiko

Pemasok membawa risiko: kegagalan, perubahan syarat atau harga, kelemahan keamanan, konsentrasi pada satu penyedia, lock-in, dan ketergantungan pemasok sendiri. Artikel SRM mendaftar mengurangi risiko kegagalan sebagai tujuan tanpa menjelaskan metodenya. Langkah praktis mencakup mengetahui pengaturan kontinuitas pemasok sendiri, menyebarkan ketergantungan kritis, menjaga data portabel, dan melatih keluar (lihat Topik 3.12 — Manajemen Kontinuitas Layanan dan Topik 3.13 — Manajemen Keamanan Informasi).

### Hubungan, bukan hanya kontrak

Artikel SRM menekankan kemitraan dua arah. Pemasok yang memahami rencana Anda dapat membantu; pemasok yang diperlakukan hanya sebagai sumber faktur tidak akan. Bagikan perkiraan, libatkan mereka dalam tinjauan insiden yang menyangkut mereka, dan dengarkan umpan balik mereka tentang perilaku Anda, seperti pembayaran terlambat atau permintaan yang tidak jelas.

### Batas sumber

Artikel SRM tidak memberi kriteria pemilihan, klausul kontrak, atau lini masa implementasi. Artikel SIAM tidak punya bagian kritik. Keduanya umum. Untuk syarat hukum dan keuangan, andalkan fungsi pengadaan dan hukum Anda serta kontrak itu sendiri.

## Praktik terbaik

1. **Daftar pemasok Anda dan untuk apa Anda bergantung pada mereka.** Sertakan cloud, perangkat lunak, jaringan, pembayaran, dan kontraktor. Untuk masing-masing, catat layanan apa yang didukungnya dan siapa di tim Anda yang memiliki hubungannya.
2. **Segmentasikan menurut ketergantungan dan kemudahan penggantian.** Putuskan beberapa pemasok mana yang kritis dan tanamkan perhatian Anda di sana. Jaga sentuhan ringan untuk sisanya.
3. **Tunjuk pemilik untuk setiap pemasok penting.** Satu orang sebaiknya mengetahui kontrak, kontak, kinerja, dan rencana. Tanpa pemilik, hubungan membusuk.
4. **Periksa bahwa komitmen pemasok mendukung janji Anda.** Bandingkan apa yang telah dijanjikan tiap pemasok kritis dengan apa yang Anda katakan kepada pelanggan. Tutup celah dengan desain, negosiasi, atau mengubah janji Anda.
5. **Sepakati penanganan insiden sebelumnya.** Ketahui cara melaporkan masalah kepada pemasok, seberapa cepat mereka merespons, siapa yang dapat mengeskalasi, dan bagaimana mereka akan berkomunikasi. Uji jalurnya sebelum Anda membutuhkannya.
6. **Sertakan keamanan dan perlindungan data.** Tanyakan kepada pemasok bagaimana mereka melindungi informasi Anda dan apa yang akan mereka katakan setelah pelanggaran. Masukkan dalam kontrak, bersama tim hukum.
7. **Rencanakan keluar dan kegagalan.** Untuk pemasok kritis, jaga data portabel, ketahui alternatif, dan tulis rencana singkat untuk kegagalan pemasok atau kepergian Anda. Latih bagian yang bisa.
8. **Tinjau kinerja bersama.** Adakan tinjauan berkala dengan pemasok kritis, bagikan data dua arah, dan sepakati tindakan. Tanyakan kepada pemasok bagaimana Anda dapat menjadi pelanggan yang lebih baik.
9. **Sertakan pemasok dalam pembelajaran.** Undang mereka ke tinjauan insiden dan sesi perencanaan yang melibatkan mereka. Bagikan pelajaran yang membantu mereka membantu Anda.
10. **Buat kontrak fleksibel di tempat pembelajaran diharapkan.** Untuk pekerjaan pengembangan, utamakan perjanjian yang memungkinkan cakupan berubah, dengan titik tinjauan yang jelas, daripada janji cakupan tetap. Jaga kewajiban layanan tetap tegas.
11. **Pakai satu integrator ketika banyak pemasok berkontribusi.** Untuk layanan yang bergantung pada beberapa penyedia, sebut siapa pemilik hasil ujung ke ujung dan bagaimana masalah lintas pemasok diselesaikan. Jangan serahkan kepada pelanggan.
12. **Tinjau portofolio pemasok secara berkala.** Sekali setahun, periksa pemasok mana yang masih dibutuhkan, mana yang risiko terkonsentrasi, dan mana yang lebih murah atau lebih baik di tempat lain.

## Pertanyaan untuk dibahas bersama tim Anda

**Pemasok mana yang dapat menghentikan layanan kita jika gagal, dan apa yang akan kita lakukan?**

Minta tiap orang menyebut ketergantungan yang paling mereka khawatirkan. Susun daftar dan tandai masing-masing sebagai kritis, penting, atau rutin. Untuk tiap yang kritis, tanyakan apa yang akan dilakukan tim pada jam pertama kegagalan. Jawaban lazim mengungkap celah dalam kontak, alternatif, dan data. Pilih satu untuk direncanakan.

**Apa yang telah dijanjikan pemasok kita kepada kita, dan apa yang telah kita janjikan kepada pelanggan?**

Taruh keduanya berdampingan untuk layanan utama. Di tempat janji pemasok lebih lemah, janji pelanggan berisiko. Fasilitator dapat menanyakan apakah ada yang membaca tingkat layanan pemasok baru-baru ini. Sepakati satu celah untuk ditutup.

**Siapa yang memiliki setiap hubungan pemasok yang penting?**

Telusuri daftar dan sebut pemilik untuk masing-masing. Celah itu umum: orang yang menandatangani kontrak sudah pergi, atau perkakas dibeli dengan kartu dan tak ada yang mengelolanya. Tanyakan apa yang dibutuhkan pemilik untuk menjalankan tugas, seperti waktu dan kontak. Tunjuk pemilik di tempat yang hilang.

**Bagaimana kita mengetahui masalah pemasok, dan bagaimana kita memberi tahu pengguna kita?**

Telusuri terakhir kali pemasok mengalami gangguan. Tanyakan bagaimana Anda mengetahuinya, berapa lama, dan apa yang Anda katakan kepada pelanggan. Bahas halaman status, kontak, dan kanal yang disepakati. Rencanakan perbaikan, seperti berlangganan umpan status pemasok atau kontak eskalasi yang ditunjuk.

**Apa yang diperlukan untuk meninggalkan pemasok ini, dan apakah kita pernah ingin?**

Untuk pemasok kritis, tanyakan tentang ekspor data, produk alternatif, dan syarat kontrak. Tim sering menemukan lock-in yang tidak mereka maksudkan. Bahas cara menguranginya di tempat risiko membenarkan biaya. Catat catatan keluar singkat.

**Apakah pemasok kita tahu apa yang kita rencanakan, dan apakah kita tahu apa yang mereka rencanakan?**

Tanyakan kapan tiap pemasok kritis terakhir mendengar rencana Anda, dan kapan Anda terakhir mendengar rencana mereka. Kejutan ke arah mana pun menimbulkan masalah. Bahas percakapan berkala. Sepakati satu pemasok untuk dimulai.

## Dalam praktik: contoh ITIL agile

Penyiar regional menjalankan aplikasi dan situs berita dengan tim empat belas orang. Layanan bergantung pada penyedia cloud, jaringan pengiriman konten, layanan notifikasi push, perkakas moderasi komentar, dan perusahaan kecil yang memasok widget blog langsung. Ketika layanan pemasok blog langsung gagal pada malam pemilu, aplikasi menampilkan kesalahan selama dua jam dan reputasi penyiar menderita. Tak ada yang di tim dapat mengatakan siapa kontak pemasok; widget itu ditambahkan seorang pengembang yang sudah pindah.

Kepala platform memimpin tinjauan. Tim mendaftar semua pemasok, memilahnya menurut seberapa bergantung layanan pada mereka dan seberapa mudah masing-masing digantikan. Penyedia cloud dan jaringan pengiriman konten kritis, dan layanan notifikasi serta widget penting tetapi dapat digantikan. Masing-masing mendapat pemilik di tim. Untuk pemasok widget, tim memperoleh kontak, membaca syarat, dan menemukan bahwa tidak ada tingkat layanan yang dijanjikan. Mereka memutuskan mempertahankan pemasok tetapi menambah cadangan: jika widget gagal dimuat, halaman menampilkan tautan statis ke blog langsung. Untuk penyedia cloud, mereka membandingkan komitmennya dengan ketersediaan yang telah mereka janjikan kepada editor penyiar dan menemukan celah di satu wilayah, yang mereka tutup dengan menyebarkan layanan ke dua.

Enam bulan kemudian, gangguan kedua pada penyedia notifikasi terdeteksi pemantauan dalam hitungan menit, pemilik mengangkatnya kepada pemasok melalui jalur yang disepakati, dan aplikasi terus berfungsi dengan notifikasi tertunda. Kesulitan tersisa. Para editor ingin widget blog langsung melakukan lebih banyak, tetapi pemasok terlalu kecil untuk berkomitmen pada tingkat layanan, dan aturan pengadaan penyiar membuat penggantian lambat. Kepala platform menyepakati dengan pengadaan untuk menjalankan uji coba kecil alternatif, dan meninjau daftar pemasok setiap tahun.

## Empat perspektif

### Tim produk dan pengiriman

Tim pengiriman memilih dan mengintegrasikan banyak pemasok. Catat setiap ketergantungan saat Anda menambahkannya, tunjuk pemilik, dan tanyakan tentang tingkat layanan dan keluar sebelum Anda mengandalkannya. Bangun cadangan untuk kegagalan yang dapat Anda bayangkan.

### Tim layanan dan operasi

Tim operasi berurusan dengan pemasok saat insiden. Jaga kontak dan jalur eskalasi tetap mutakhir, uji, dan catat kinerja pemasok. Bawa bukti ini ke tinjauan dan ke pengadaan.

### Kepemimpinan dan tata kelola

Pemimpin dan pengadaan membentuk syarat dan hubungan. Minta daftar pemasok kritis dan risikonya, dukung kontrak fleksibel untuk pekerjaan berbasis pembelajaran, dan pastikan kontrak mencakup tingkat layanan, keamanan, dan keluar. Tanyakan siapa pemilik hasil ujung ke ujung ketika banyak pemasok berkontribusi.

### Pelanggan dan pengguna

Pelanggan dan pengguna bergantung pada seluruh rantai, bukan satu mata rantai. Tanyakan kepada penyedia pemasok mana yang penting bagi layanan yang Anda pakai dan bagaimana mereka melindunginya. Ketika ada yang salah, harapkan kejujuran tentang bagian mana yang gagal dan apa yang dilakukan.

## Pola kegagalan umum

- **Ketergantungan tersembunyi.** Perkakas yang ditambahkan satu pengembang menjadi kritis, dan tak ada yang memilikinya. Sebaliknya, catat setiap ketergantungan dan tunjuk pemilik.
- **Satu ukuran untuk semua.** Setiap pemasok mendapat proses berat yang sama, atau tak ada yang mendapat apa pun. Sebaliknya, segmentasikan menurut ketergantungan dan kemudahan penggantian.
- **Janji yang tidak cocok.** Janji pelanggan lebih kuat daripada milik pemasok. Sebaliknya, bandingkan komitmen dan tutup celah.
- **Tanpa jalur teruji.** Saluran dukungan pemasok ditemukan saat gangguan. Sebaliknya, sepakati dan uji kontak dan eskalasi sebelumnya.
- **Lock-in karena kebetulan.** Data tidak dapat diekspor. Sebaliknya, periksa portabilitas sejak awal dan catat catatan keluar.
- **Hanya kontrak, tanpa hubungan.** Pemasok adalah orang asing ketika masalah datang. Sebaliknya, adakan tinjauan berkala dan bagikan rencana.
- **Tak ada yang memiliki keseluruhan.** Beberapa pemasok saling menyalahkan. Sebaliknya, tunjuk integrator untuk layanan ujung ke ujung dan sepakati penanganan lintas pemasok.
- **Kontrak cakupan tetap untuk pekerjaan tak pasti.** Kontrak melawan pembelajaran. Sebaliknya, pakai perjanjian yang membiarkan cakupan berubah dalam batas yang jelas.

## Model kematangan

| Dimensi | Memulai | Mengembangkan | Menstandarkan | Mengelola | Mengorkestrasi |
|---|---|---|---|---|---|
| Mengenal pemasok | Pemasok diketahui individu | Beberapa tim mendaftar pemasok mereka | Daftar bersama dengan ketergantungan, kemudahan penggantian, dan pemilik | Daftar ditinjau terhadap insiden dan perubahan | Daftar dibagikan lintas tim dan tertaut ke layanan |
| Komitmen dan layanan | Tingkat layanan pemasok tidak diketahui | Syarat pemasok utama dibaca | Komitmen pemasok dibandingkan dengan janji pelanggan | Kinerja pemasok diukur dan ditinjau | Komitmen diselaraskan sepanjang rantai dengan tinjauan bersama |
| Insiden dan risiko | Masalah pemasok ditemukan kebetulan | Beberapa kontak diketahui | Jalur eskalasi disepakati dan diuji; risiko dicatat | Insiden dan risiko pemasok dilacak dan ditindaklanjuti | Penanganan insiden dan rencana risiko bersama pemasok |
| Hubungan dan keluar | Pemasok bersifat transaksional | Beberapa pertemuan pemasok | Tinjauan berkala dengan pemasok kritis dan catatan keluar singkat | Kesehatan hubungan dan kesiapan keluar ditinjau | Pemasok ikut serta dalam perencanaan dan perbaikan |

## Daftar periksa

- [ ] Kami punya daftar pemasok dan apa yang didukung masing-masing.
- [ ] Pemasok dipilah menurut ketergantungan dan kemudahan penggantian.
- [ ] Setiap pemasok penting punya pemilik yang ditunjuk.
- [ ] Kami telah membandingkan komitmen pemasok dengan janji pelanggan kami untuk layanan utama.
- [ ] Kontak dan jalur eskalasi untuk pemasok kritis diketahui dan diuji.
- [ ] Ekspektasi keamanan dan perlindungan data ada dalam kontrak atau disepakati tertulis.
- [ ] Catatan keluar atau kegagalan singkat ada untuk setiap pemasok kritis.
- [ ] Kami mengadakan tinjauan berkala dengan pemasok kritis.
- [ ] Di tempat beberapa pemasok berkontribusi, seseorang memiliki hasil ujung ke ujung.
- [ ] Daftar pemasok ditinjau setidaknya setahun sekali.

## Prompt AI

**Tujuan: menyusun daftar pemasok dan ketergantungan dari apa yang Anda ketahui.**

```text
Help me build a supplier and dependency list for [service].

What the service does and what it is built on: [describe components, cloud services, tools, and contractors].
What I know about each: [for example name, what we use it for, who set it up, contract status].

Produce a table with: supplier, what it supports, who owns the relationship (or "unknown"), how critical it seems (critical, important, routine, with a reason from my text), and one question to ask. Mark guesses. Do not invent suppliers or terms. Ask clarifying questions first, and list what you are unsure of.
```

**Tujuan: membandingkan komitmen pemasok dengan janji pelanggan Anda.**

```text
Here are the commitments we have made to customers for [service]: [paste, for example availability and response time].
Here are the commitments our suppliers have made, with the exact wording from their terms: [paste for each supplier].

Compare them. For each customer commitment, list which suppliers it depends on, whether their commitments appear to support ours (using only the pasted text), and what gaps there are. Suggest design or agreement changes as questions to consider. Do not interpret legal terms; flag anything ambiguous for legal review. List what you are unsure of.
```

**Tujuan: bersiap untuk rapat tinjauan pemasok.**

```text
Plan a 45-minute review with [supplier] about [service they provide to us].

Data we have: [incidents involving them, response times, requests, with dates; real data only].
Concerns we want to raise: [list].
Things we want to ask about their plans: [list].
Things they may want from us: [list, or write "unknown"].

Give a timed agenda, a one-page summary of our data, five questions for them, three things we should offer, and a closing step that records actions with owners and dates. Do not invent data. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Tujuan: menyusun catatan keluar singkat untuk pemasok kritis.**

```text
Help me draft an exit note for [supplier], which provides [service].

What we store with or through them, and how we could export it: [describe].
Alternatives we know of: [list, or write "unknown"].
Contract terms about notice and data return, if known (paste the exact text): [paste, or write "not read"].

Write a one-page note with: what depends on them, what we would need to leave (data, configuration, skills), a rough sequence of steps (leave timing as [to be estimated]), risks, and questions to ask the supplier. Do not interpret the contract. Ask clarifying questions first, and list what you are unsure of.
```

## Keterampilan AI

- [vendor-management](../../../../skills/vendor-management/SKILL.md): gunakan untuk merencanakan pemilihan, tinjauan, dan hubungan dengan pemasok.
- [risk-register](../../../../skills/risk-register/SKILL.md): gunakan untuk mencatat risiko pemasok dan bagaimana dikelola.
- [stakeholder-analysis](../../../../skills/stakeholder-analysis/SKILL.md): gunakan untuk memahami siapa di organisasi Anda dan di pihak pemasok yang penting bagi hubungan.
- [service-level-agreement](../../../../skills/service-level-agreement/SKILL.md): gunakan untuk memeriksa bahwa komitmen pemasok mendukung apa yang Anda janjikan.
- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): gunakan untuk memperjelas siapa yang memiliki tiap hubungan pemasok dan siapa yang dikonsultasikan.

## Sumber utama

- **Supplier relationship management** (Wikipedia): tinjauan segmentasi, scorecard, dan kolaborasi dengan pemasok, dengan penanda pemeliharaan yang menunjukkan di mana sumbernya lemah.
- **Service integration and management** (Wikipedia): pendekatan multi-pemasok, dengan lapisan, model, dan tantangan implementasinya.
- **Service-level agreement** (Wikipedia): latar belakang perjanjian yang ditandatangani pemasok dan pelanggan.
- **ITIL** (Wikipedia): konteks tentang bagaimana ITIL memperlakukan pemasok.

## Referensi

1. Supplier relationship management — Wikipedia — https://en.wikipedia.org/wiki/Supplier_relationship_management
2. Service integration and management — Wikipedia — https://en.wikipedia.org/wiki/Service_integration_and_management
3. Service-level agreement — Wikipedia — https://en.wikipedia.org/wiki/Service-level_agreement
4. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
5. Outsourcing — Wikipedia — https://en.wikipedia.org/wiki/Outsourcing
6. Vendor lock-in — Wikipedia — https://en.wikipedia.org/wiki/Vendor_lock-in
7. Balanced scorecard — Wikipedia — https://en.wikipedia.org/wiki/Balanced_scorecard
8. Procurement — Wikipedia — https://en.wikipedia.org/wiki/Procurement
9. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
