# Manajemen Aliran Nilai

**Manajemen aliran nilai melihat seluruh jalur dari permintaan ke nilai, mengukur di mana pekerjaan menunggu, dan memperbaiki aliran lintas tim, karena penundaan terbesar dalam organisasi layanan biasanya berada di antara tim, bukan di dalamnya.**

## Mengapa ini penting

Sebagian besar tim mengukur pekerjaan mereka sendiri: tiket yang ditutup, story yang selesai, perubahan yang dirilis. Angka-angka ini bisa tampak baik sementara pelanggan menunggu berminggu-minggu. Alasannya, sebagian besar waktu yang berlalu pada permintaan tipikal dihabiskan menunggu, dalam antrean, untuk persetujuan, di antara tim. Tim yang mempercepat langkahnya sendiri mungkin tidak mengubah apa pun bagi orang yang meminta.

Pemikiran lean punya metode untuk melihat ini: peta aliran nilai, yang menggambar setiap langkah dari awal proses sampai pelanggan dan mencatat waktu dan volume pada tiap tahap. ITIL 4 punya gagasan sendiri tentang aliran nilai, seperangkat aktivitas yang menciptakan dan mengirim layanan, menggabungkan aktivitas rantai nilai dalam urutan berbeda (lihat Topik 2.6 — Rantai Nilai Layanan). Keduanya menyatu. Gagasan ITIL mengatakan apa itu aliran, dan metode lean menunjukkan cara mengukur dan memperbaikinya.

Manajemen aliran nilai melampaui lokakarya pemetaan sekali jalan. Ia berarti mengelola aliran kerja secara terus-menerus, dengan ukuran bersama, pemilik yang disebut namanya, dan tinjauan berkala yang mencakup setiap tim dalam aliran. Daftar kapabilitas DORA mencakup visibilitas pekerjaan dalam aliran nilai dan batas pada pekerjaan dalam proses, dan panduannya tentang batas menjelaskan membuat semua pekerjaan terlihat, termasuk pekerjaan di luar tim. Topik ini bersandar pada artikel Wikipedia tentang pemetaan aliran nilai, DORA, dan Kanban Guide, dan menyatakan di mana sumber diam.

## Konsep inti

### Apa itu aliran nilai

**Aliran nilai** adalah urutan langkah yang melaluinya permintaan menjadi nilai yang terkirim. [Artikel Wikipedia tentang pemetaan aliran nilai](https://en.wikipedia.org/wiki/Value-stream_mapping) menggambarkan metode itu sebagai teknik manajemen lean yang menganalisis keadaan saat ini dan merancang keadaan masa depan untuk peristiwa yang membawa produk atau layanan dari awal proses sampai pelanggan. Dalam pandangan ITIL, aliran nilai adalah seperangkat aktivitas spesifik yang menciptakan dan mengirim layanan atau produk tertentu kepada pelanggan (lihat Topik 2.6 — Rantai Nilai Layanan).

Contoh dalam organisasi layanan: menangani insiden dari laporan sampai pemulihan, mengirim perubahan dari gagasan ke produksi, mengorientasi pelanggan baru, atau memenuhi permintaan akses.

### Pemetaan aliran nilai

Artikel mengatakan peta visual yang dihasilkan menunjukkan setiap langkah kritis dan mengkuantifikasi waktu dan volume pada tiap tahap. Ia menjelaskan dua peta: **peta keadaan saat ini**, dibangun dengan mengamati dan melacak aliran bahan dan informasi yang nyata, dan **peta keadaan masa depan**, yang menunjukkan proses ideal setelah perbaikan. Keadaan saat ini harus dibangun lebih dulu. Artikel mengutip *Learning to See* karya Mike Rother dan John Shook (Lean Enterprise Institute, 1999) sebagai sumber. Ia mendaftar pengembangan perangkat lunak, pengembangan produk, manajemen proyek, dan proses administratif dan kantor sebagai area pemakaian, dan menyebut dua pendekatan berfokus perangkat lunak oleh Ali dan kolega: analisis artefak pengembangan dan analisis aliran informasi.

Artikel tidak mendefinisikan lead time, waktu proses, atau persen lengkap dan akurat, tidak mendaftar simbol, dan tidak membahas kritik. Halaman DORA tentang pengiriman berkelanjutan, bagaimanapun, merujuk pemetaan aliran nilai sebagai cara mengungkap hambatan dengan membandingkan waktu yang berlalu dengan waktu bernilai tambah dan mengukur persen lengkap dan akurat (%C/A). Istilah di bawah adalah pemakaian umum:

| Istilah | Arti, dalam pemakaian umum |
|---|---|
| **Lead time** | Total waktu yang berlalu dari awal permintaan sampai pengiriman |
| **Waktu proses** (atau waktu sentuh) | Waktu seseorang benar-benar mengerjakan permintaan |
| **Waktu tunggu** | Waktu permintaan menganggur di antara langkah |
| **Persen lengkap dan akurat (%C/A)** | Porsi pekerjaan yang tiba di suatu langkah yang tidak memerlukan koreksi atau informasi yang hilang |
| **Efisiensi aliran** | Waktu proses dibagi lead time, sebagai persentase |

Efisiensi aliran adalah rasio sederhana yang dihitung untuk ilustrasi panduan ini, dan sumber yang dibaca tidak mendefinisikannya.

### Ukuran aliran

Kanban Guide menyebut empat ukuran aliran (lihat Topik 1.5 — Kanban): **pekerjaan yang sedang berjalan** (butir yang dimulai tetapi belum selesai), **throughput** (butir selesai per periode), **usia item pekerjaan** (waktu sejak butir yang belum selesai dimulai), dan **cycle time** (waktu dari mulai sampai selesai untuk butir yang selesai). Ini bekerja pada tingkat alur kerja tim. Manajemen aliran nilai menerapkan gagasan yang sama lintas tim: ukur waktu yang berlalu dari permintaan sampai diterima pelanggan, bukan dari titik satu tim mengambilnya.

Ukuran pengiriman perangkat lunak DORA, seperti lead time perubahan, berlaku untuk satu irisan aliran, dari commit ke produksi (lihat Topik 3.4 — Pemampuan Perubahan). Bagian sebelumnya, dari gagasan ke commit, juga bagian aliran nilai dan sering punya penantian terpanjang.

### Batas pekerjaan dalam proses

Halaman DORA tentang batas pekerjaan dalam proses (WIP) menjelaskannya sebagai batas atas berapa banyak butir yang dapat berada di tiap tahap alur kerja. Ia mengatakan riset DORA mengaitkan batas WIP dengan kinerja pengiriman perangkat lunak yang lebih baik hanya bersama kapabilitas lain, seperti tampilan visual dan putaran umpan balik dari pemantauan, dan tidak memberi ukuran efek. Saran implementasinya mencakup membuat semua pekerjaan terlihat, termasuk pekerjaan di luar tim, menetapkan tiap batas menurut kapasitas tim, mempertahankan batas dan tidak menaikkannya ketika orang menganggur, menarik pekerjaan hanya ketika slot terbuka, melacak lead time dan variabilitasnya, mengurangi serah terima, dan menurunkan batas secara bertahap untuk mengungkap kendala berikutnya. Jebakan yang disebutnya mencakup mengabaikan pekerjaan hulu dan hilir, yang mengarah pada optimalisasi lokal, dan menetapkan batas terlalu tinggi.

### Melihat seluruh aliran

Jebakan "optimalisasi lokal" adalah yang sentral. Aliran dengan lima tim punya lima antrean. Jika satu tim menggandakan kecepatannya, lead time aliran mungkin hampir tidak berubah, karena yang lain masih menunggu. Manajemen aliran nilai mencari **kendala**, langkah yang membatasi keseluruhan, dan memperbaikinya lebih dulu (lihat Topik 1.7 — Pengembangan Perangkat Lunak Lean tentang mengoptimalkan keseluruhan).

### Kepemilikan dan tata kelola

Aliran melintasi tim, jadi ia memerlukan seseorang yang bertanggung jawab atas keseluruhan. Pemilik aliran nilai (atau kelompok kecil) memegang peta, ukuran, dan daftar perbaikan, dan mempertemukan tim. Tanpa pemilik, tak ada yang bertanggung jawab atas aliran, dan perbaikan tetap berada dalam batas tim. Ini terkait dengan kepemilikan produk dan layanan (lihat Topik 5.5 — Kepemilikan Produk dan Layanan).

### Perkakas

Perkakas perangkat lunak untuk manajemen aliran nilai mengumpulkan data dari sistem tiket, kendali sumber, dan pipeline untuk menunjukkan aliran lintas rantai perkakas. Sumber yang dibaca untuk panduan ini tidak membahas perkakas semacam itu. Jika Anda mengevaluasi salah satunya, periksa data apa yang dibutuhkannya, seberapa akurat, dan apakah ukurannya menjawab pertanyaan yang Anda punya. Peta kasar yang digambar dengan tangan bersama tim yang terlibat adalah tempat yang baik untuk memulai dan sering mengungkap lebih banyak daripada dasbor.

### Batasan

Artikel Wikipedia tidak membahas kritik, dan halaman WIP DORA tidak memberi ukuran efek atau nilai target. Peringatan praktis, ditawarkan sebagai pengalaman, mencakup pemetaan yang tak pernah mengarah pada perubahan, ukuran yang dipakai untuk memeringkat tim, dan peta yang digambar dari ingatan manajer alih-alih pengamatan butir nyata.

## Praktik terbaik

1. **Pilih satu aliran yang penting.** Pilih aliran yang dipedulikan pengguna, seperti perubahan yang mencapai produksi atau permintaan akses. Aliran sempit yang nyata mengajarkan lebih banyak daripada yang luas dan abstrak.
2. **Petakan dari butir nyata.** Ikuti beberapa butir terbaru dari awal sampai akhir, dan catat tanggal sebenarnya, bukan dokumen proses. Pengamatan mengalahkan ingatan, seperti ditunjukkan penekanan artikel pada mengamati dan melacak aliran yang nyata.
3. **Catat waktu dan penantian pada tiap langkah.** Untuk tiap langkah, catat waktu kerja dan penantian sebelumnya. Penantian biasanya adalah ceritanya.
4. **Sertakan semua orang dalam aliran.** Undang orang dari setiap tim yang menyentuh butir, termasuk penyetuju dan pemasok. Lakukan pemetaan bersama, agar tak ada yang terkejut oleh hasilnya.
5. **Hitung lead time, waktu proses, dan efisiensi aliran.** Bandingkan waktu yang berlalu dengan waktu kerja dan lihat berapa banyak yang menunggu. Pakai angkanya untuk memulai percakapan.
6. **Lihat akurasi.** Tanyakan seberapa sering pekerjaan tiba di suatu langkah tidak lengkap atau salah, memerlukan pengerjaan ulang. Langkah dengan persen lengkap dan akurat rendah menyebabkan penundaan di hilir.
7. **Temukan kendala.** Identifikasi langkah yang membatasi seluruh aliran dan perbaiki lebih dulu. Memperbaiki langkah lain memberi sedikit manfaat.
8. **Gambar keadaan masa depan.** Rancang aliran yang lebih baik bersama tim, bukan yang ideal, dan pilih satu atau dua perubahan pertama. Sepakati pemilik dan tanggal.
9. **Batasi pekerjaan dalam proses.** Batasi apa yang dipegang tiap tahap, tetapkan batas menurut kapasitas, pertahankan ketika orang menganggur, dan turunkan secara bertahap, seperti dijelaskan panduan DORA.
10. **Buat pekerjaan terlihat.** Tunjukkan aliran pada papan atau peta bersama yang mencakup pekerjaan di luar satu tim mana pun. Perbarui saat butir berpindah.
11. **Tunjuk pemilik aliran.** Pilih orang yang bertanggung jawab atas kinerja aliran yang dapat mempertemukan tim dan membawa perbaikan kepada pemimpin.
12. **Tinjau secara berkala.** Adakan tinjauan bulanan singkat atas lead time, penantian, dan daftar perbaikan. Gambar ulang peta setelah perubahan signifikan.

## Pertanyaan untuk dibahas bersama tim Anda

**Jika kita mengikuti satu permintaan dari kontak pertama sampai diterima pelanggan, berapa lama waktunya, dan berapa banyak dari itu adalah waktu kerja?**

Pilih butir terbaru dan kumpulkan tanggal. Minta orang menebak jawabannya sebelum melihat. Tebakan biasanya optimis. Hitung porsi waktu kerja. Fasilitator dapat menanyakan di mana penantian terbesar terjadi dan siapa pemiliknya. Pilih sebagai target pertama.

**Siapa dalam aliran yang belum pernah kita ajak bicara?**

Daftar tim, penyetuju, dan pemasok yang disentuh butir. Tandai yang belum pernah ditemui tim. Tanyakan apa yang akan diperoleh dengan mengundang mereka ke sesi pemetaan. Jawaban lazim: pemahaman mengapa mereka menunggu, atau apa yang mereka butuhkan agar bekerja lebih cepat. Undang satu.

**Apa yang kita serahkan tidak lengkap, dan apa yang kita terima tidak lengkap?**

Minta contoh pekerjaan yang kembali untuk dikerjakan ulang. Catat serah terima mana yang paling banyak menyebabkan pengembalian dan apa yang hilang. Ini gagasan persen lengkap dan akurat dalam bahasa sederhana. Sepakati daftar periksa singkat untuk satu serah terima.

**Di mana kendala dalam aliran kita, dan apa yang terjadi jika kita mempercepat hal lain?**

Bahas langkah mana yang punya antrean terpanjang. Tanyakan apa yang akan terjadi pada waktu ujung ke ujung jika langkah lain menggandakan kecepatan. Intinya melihat bahwa memperbaiki non-kendala sedikit mengubah. Pilih untuk mengerjakan kendala.

**Berapa banyak hal yang dikerjakan setiap tim sekaligus, dan apa yang terjadi jika kita membatasinya?**

Hitung pekerjaan yang sedang berjalan per tim. Bahas apa artinya berhenti memulai. Ketakutan lazim: sesuatu yang penting akan menunggu. Manfaat lazim: hal-hal selesai. Sepakati batas uji coba untuk satu tim dan cara menilai hasilnya.

**Siapa yang bertanggung jawab atas aliran ini secara keseluruhan?**

Minta tim menyebut orangnya. Jika tak ada, bahas siapa yang bisa, dan wewenang apa yang mereka butuhkan. Fasilitator dapat mencatat bahwa perbaikan lintas tim jarang terjadi tanpa pemilik. Usulkan nama dan bawa kepada pemimpin yang relevan.

## Dalam praktik: contoh ITIL agile

Regulator lingkungan nasional menerbitkan izin kepada operator industri. Pemohon mengeluh bahwa izin tipikal memakan sekitar empat bulan, dan kelompok layanan digital regulator beranggotakan dua belas orang diminta mempercepatnya. Kelompok itu sudah membangun formulir aplikasi daring yang lebih cepat, tetapi waktu yang berlalu hampir tidak berubah.

Kepala kelompok mengumpulkan orang dari setiap bagian aliran: tim aplikasi, dua peninjau teknis, seorang petugas hukum, kantor biaya, dan tim yang menerbitkan dokumen izin. Mereka memetakan enam izin terbaru dari tanggal pengajuan sampai tanggal izin sampai ke pemohon. Hasilnya mengejutkan. Total waktunya sekitar 110 hari, dan waktu kerjanya sekitar 12. Penantian terpanjang ada di antrean tinjauan teknis, tempat aplikasi menunggu rata-rata 40 hari sebelum ada yang membukanya, dan sekitar sepertiga aplikasi tiba dengan informasi yang hilang yang harus diminta lagi. Kantor biaya dan tim dokumen masing-masing menambah seminggu penantian untuk pemrosesan batch.

Kelompok menyepakati tiga perubahan. Formulir daring memeriksa butir yang sering hilang sebelum pengajuan. Tim tinjauan teknis menetapkan batas pekerjaan dalam proses dan aturan untuk membuka setiap aplikasi dalam lima hari kerja untuk memeriksa kelengkapan. Kantor biaya dan tim dokumen beralih dari batch mingguan ke pemrosesan harian. Mereka menunjuk kepala layanan digital sebagai pemilik aliran dan meninjau lead time setiap bulan. Setelah tiga bulan, median lead time sekitar 70 hari, dan porsi aplikasi yang dikembalikan karena informasi hilang turun. Beberapa masalah tersisa. Tim tinjauan mengatakan bahwa batas membuat lebih sulit menangani aplikasi besar dan kompleks, dan petugas hukum adalah satu titik penundaan yang tak dihitung siapa pun. Pemilik aliran meminta tim tinjauan memisahkan kasus kompleks ke jalurnya sendiri, dan bekerja dengan kantor hukum untuk peninjau kedua.

## Empat perspektif

### Tim produk dan pengiriman

Tim pengiriman hanya melihat sebagian aliran. Ikuti sesi pemetaan, bagikan data Anda, dan lihat apa yang terjadi sebelum pekerjaan sampai kepada Anda dan setelah Anda merilis. Perlakukan lead time aliran sebagai tujuan bersama, bukan hanya langkah Anda sendiri.

### Tim layanan dan operasi

Tim operasi sering memegang antrean terpanjang: akses, persetujuan, lingkungan, dukungan. Terbukalah tentang kapasitas dan kendala Anda. Pakai peta untuk meminta masukan lengkap dari tim hulu dan untuk menjelaskan prioritas Anda.

### Kepemimpinan dan tata kelola

Pemimpin dapat menyingkirkan kendala lintas tim yang tak dapat disingkirkan tim. Tunjuk pemilik aliran, minta lead time ujung ke ujung, dan tanggapi perbaikan yang disarankan peta. Hindari memakai ukuran aliran untuk memeringkat tim, yang mengecilkan hati data yang jujur.

### Pelanggan dan pengguna

Pelanggan dan pengguna mengalami seluruh aliran. Beri tahu tim di mana penundaan menyakitkan, berikan informasi lengkap di awal, dan ikuti sesi pemetaan jika diundang. Pandangan Anda tentang kapan permintaan benar-benar selesai adalah akhir sebenarnya dari aliran.

## Pola kegagalan umum

- **Mengoptimalkan satu tim.** Keuntungan lokal tidak mengubah apa pun ujung ke ujung. Sebaliknya, temukan dan tangani kendala.
- **Memetakan dari ingatan.** Peta mencerminkan apa yang diyakini manajer. Sebaliknya, lacak butir nyata dengan tanggal nyata.
- **Suara yang hilang.** Pemasok dan penyetuju tidak ada di ruangan. Sebaliknya, sertakan setiap tim dalam aliran.
- **Peta tanpa perubahan.** Poster tergantung di dinding. Sebaliknya, sepakati satu atau dua perubahan dengan pemilik sebelum sesi berakhir.
- **Tanpa pemilik.** Tak ada yang bertanggung jawab atas aliran. Sebaliknya, tunjuk pemilik aliran dengan wewenang mempertemukan.
- **Ukuran sebagai peringkat.** Tim menyembunyikan penantian. Sebaliknya, pakai ukuran untuk memahami aliran dan bahas secara terbuka.
- **Batas yang bergerak.** Batas WIP dinaikkan setiap kali orang menganggur. Sebaliknya, pertahankan batas dan perbaiki penyebabnya, seperti dianjurkan DORA.
- **Perkakas dulu.** Dasbor dibeli sebelum pertanyaan diketahui. Sebaliknya, mulai dengan peta yang digambar tangan dan tambahkan perkakas seperlunya.

## Model kematangan

| Dimensi | Memulai | Mengembangkan | Menstandarkan | Mengelola | Mengorkestrasi |
|---|---|---|---|---|---|
| Melihat aliran | Aliran dinilai menurut perasaan | Beberapa tim memetakan langkah mereka sendiri | Aliran utama dipetakan ujung ke ujung dari butir nyata, bersama semua tim | Lead time, penantian, dan akurasi diukur dan ditinjau | Aliran dipetakan dan diukur lintas organisasi dan pemasok |
| Memperbaiki aliran | Tim mempercepat langkah mereka sendiri | Beberapa perubahan lintas tim dicoba | Daftar perbaikan berfokus kendala per aliran dengan pemilik | Perbaikan dikaitkan dengan lead time terukur dan diperiksa | Perbaikan aliran rutin dan dibagikan lintas aliran |
| Batas dan visibilitas | Pekerjaan dalam proses tanpa batas dan tersembunyi | Beberapa tim memakai papan dan batas | Pekerjaan terlihat lintas tim dengan batas yang disepakati | Batas disetel memakai data lead time | Batas dan visibilitas dikoordinasikan lintas aliran |
| Kepemilikan dan tata kelola | Tak ada yang memiliki aliran | Koordinator informal ada | Setiap aliran utama punya pemilik yang ditunjuk dan tinjauan berkala | Pemilik bertanggung jawab atas hasil terukur | Pemilik berkolaborasi lintas aliran untuk mengoptimalkan keseluruhan |

## Daftar periksa

- [ ] Kami telah memilih satu aliran penting dan memetakannya dari butir nyata.
- [ ] Peta menunjukkan waktu kerja dan waktu tunggu pada tiap langkah.
- [ ] Orang dari setiap tim dalam aliran ikut dalam pemetaan.
- [ ] Kami tahu lead time ujung ke ujung dan berapa banyak yang menunggu.
- [ ] Kami telah mengidentifikasi kendala dan memilih satu atau dua perubahan.
- [ ] Pekerjaan dalam proses terlihat lintas tim, dengan batas yang disepakati pada tahap utama.
- [ ] Seseorang yang ditunjuk memiliki aliran.
- [ ] Tinjauan berkala singkat melihat lead time, penantian, dan daftar perbaikan.
- [ ] Kami melacak seberapa sering pekerjaan tiba tidak lengkap pada serah terima.
- [ ] Ukuran aliran tidak dipakai untuk memeringkat tim.

## Prompt AI

**Tujuan: menghitung lead time dan efisiensi aliran dari butir nyata.**

```text
I have timing data for [number] recent items in the stream [name]. For each item and each step I have the date work began and ended, and the date it arrived at the step: [paste a table with real dates, step names, and the team responsible].

Using only my dates, calculate for each item the total lead time, the working time (end minus begin for each step), the waiting time (arrival at a step minus the end of the previous step), and the flow efficiency (working time divided by lead time). Show the average and range across items, and the three longest waits by team and step. Do not invent numbers. If dates are missing, say what to collect. List what you are unsure of.
```

**Tujuan: merencanakan lokakarya pemetaan aliran nilai.**

```text
Plan a 2-hour value stream mapping workshop for the stream [name].

Participants: [roles and teams].
Data to bring (real dates for [number] recent items): [describe what exists].
Constraints: [for example remote].

Provide a timed agenda: agree the start and end of the stream, walk through real items, mark steps with working time and waiting time, record rework and incomplete handovers, identify the constraint, draw a future state, and agree one or two changes with owners and dates. Include prompts to keep the conversation on the system. Keep it free of any particular tool. Ask clarifying questions first, and list what you are unsure of.
```

**Tujuan: menganalisis kualitas serah terima antara dua tim.**

```text
Teams A and B hand work over in the stream [name]. Here are examples of items that came back for rework or information, with reason: [paste, one per line].

Group the reasons into categories using only the text. Count items per category from my list. For the top two categories, suggest an item for a handover checklist that team A could use, and a question for team B. Do not infer causes beyond the text. List what you are unsure of.
```

**Tujuan: merancang uji coba batas pekerjaan dalam proses.**

```text
Design a four-week trial of work-in-process limits for [team] working in [stream or stage].

Current items in progress per person or stage: [paste real counts].
Lead time data we have: [describe].
Capacity, in people: [number].

Propose limits for each stage based on capacity, how to show work and age on a board, rules for pulling work, what to do when someone is idle (without raising limits), what to measure (leave targets as [to be agreed]), and what would make us stop. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## Keterampilan AI

- [value-stream-map](../../../../skills/value-stream-map/SKILL.md): gunakan untuk memetakan aliran, mencatat waktu, dan menemukan kendala.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md): gunakan untuk mempelajari bagaimana pekerjaan berpindah antarperan dan di mana ia menunggu.
- [kanban](../../../../skills/kanban/SKILL.md): gunakan untuk menyiapkan visualisasi dan batas pekerjaan dalam proses untuk aliran.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md): gunakan untuk memahami apa yang mengalir ke dalam aliran dan dalam volume berapa.
- [portfolio-management](../../../../skills/portfolio-management/SKILL.md): gunakan untuk memutuskan aliran dan inisiatif mana yang layak diinvestasikan.

## Sumber utama

- **Value-stream mapping** (Wikipedia): definisi peta keadaan saat ini dan masa depan dan petunjuk ke *Learning to See*.
- **Work in process limits** (DORA, dora.dev): panduan menetapkan dan mempertahankan batas dan menghindari optimalisasi lokal.
- **The Kanban Guide** (kanbanguides.org): definisi empat ukuran aliran.
- **Lean software development** (Wikipedia): pemborosan dan prinsip di balik pemikiran aliran nilai.

## Referensi

1. Value-stream mapping — Wikipedia — https://en.wikipedia.org/wiki/Value-stream_mapping
2. Work in process limits — DORA, dora.dev — https://dora.dev/capabilities/wip-limits/
3. Continuous delivery — DORA, dora.dev — https://dora.dev/capabilities/continuous-delivery/
4. The Kanban Guide — John Coleman, Daniel Vacanti, and contributors, kanbanguides.org — https://kanbanguides.org/english/
5. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
6. Lean manufacturing — Wikipedia — https://en.wikipedia.org/wiki/Lean_manufacturing
7. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
8. Theory of constraints — Wikipedia — https://en.wikipedia.org/wiki/Theory_of_constraints
9. Value chain — Wikipedia — https://en.wikipedia.org/wiki/Value_chain
