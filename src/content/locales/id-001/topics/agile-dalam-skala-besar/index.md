# Agile dalam Skala Besar

**Menerapkan agile dalam skala besar berarti mengoordinasikan banyak tim, layanan, dan pemasok tanpa kehilangan putaran umpan balik pendek yang membuat agile berhasil, dan risiko utamanya adalah menambah lapisan proses sebelum Anda tahu masalah mana yang sedang diselesaikan.**

## Mengapa ini penting

Satu tim agile beranggotakan hingga sepuluh orang dapat berbicara satu sama lain setiap hari. Layanan nyata biasanya melibatkan lebih banyak: beberapa tim pengiriman, kelompok operasi, service desk, keamanan, tim jaringan, dan pemasok. Ketika pekerjaan banyak kelompok harus saling cocok, percakapan harian satu tim tidak cukup, dan masalah baru muncul. Prioritas berbenturan, ketergantungan menghentikan pekerjaan, dan setiap tim memperbaiki bagiannya sendiri sementara layanan secara keseluruhan tidak membaik.

Beberapa kerangka kerja mengklaim dapat menyelesaikan ini. Mereka berbeda dalam ukuran, biaya, dan filosofi, dan menarik pendapat yang kuat. Sebagian organisasi mengadopsi kerangka besar sebagai program dan menghabiskan bertahun-tahun untuk peluncurannya. Yang lain berkembang dengan menyingkirkan hambatan dan menjaga seperangkat kecil aturan. Posisi yang jujur, yang didukung [artikel Wikipedia tentang pengembangan perangkat lunak agile](https://en.wikipedia.org/wiki/Agile_software_development), adalah bahwa pendapat tentang efektivitas kerangka kerja skala besar berbeda-beda dan buktinya terbatas.

Bagi orang di bidang manajemen layanan TI (ITSM), skala itu penting karena ITIL sudah bekerja dalam skala besar. Ia menjelaskan sistem nilai layanan yang menghubungkan banyak praktik dan pihak (lihat Topik 2.3 — Sistem Nilai Layanan ITIL). Pertanyaan yang dibantu topik ini adalah bagaimana menggabungkan keduanya: cara mengoordinasikan banyak tim agile sambil mempertahankan praktik manajemen layanan yang melindungi pengguna, dan tanpa membangun lapisan birokrasi kedua di atas yang pertama.

## Konsep inti

### Mengapa satu tim berbeda dari banyak tim

Artikel Wikipedia tentang pengembangan perangkat lunak agile melaporkan bahwa skala membawa tantangan ketika proyek melibatkan lebih dari sekitar 20 pengembang atau ketika tim tersebar di beberapa lokasi. Strategi dan kerangka kerja ada untuk kasus ini, tetapi artikel mencatat pandangan yang bertentangan tentang apakah semuanya sesuai dengan definisi agile.

Tiga masalah berulang ketika Anda menambah tim:

- **Keselarasan:** tim memerlukan arah bersama dan prioritas yang konsisten, atau mereka akan mengoptimalkan hal yang berbeda.
- **Ketergantungan:** pekerjaan di satu tim menunggu tim lain, dan penantian berlipat seiring bertambahnya jumlah tim.
- **Integrasi:** keluaran banyak tim harus menyatu menjadi sesuatu yang berfungsi sebagai layanan, dan semakin lambat Anda mengujinya, semakin mahal kejutannya.

### Empat pendekatan yang terkenal

Tabel berikut merangkum empat pendekatan bernama. Ringkasannya bersandar pada artikel Wikipedia dan halaman pemilik kerangka kerja sendiri seperti yang dibaca untuk panduan ini; periksa versi terkini di sumbernya sebelum mengandalkan detailnya.

| Pendekatan | Pencipta atau pemilik | Gagasan utama | Ukuran dan bentuk |
|---|---|---|---|
| **Scaled Agile Framework (SAFe)** | Pertama dijelaskan dalam buku Dean Leffingwell tahun 2007 *Scaling Software Agility*; materi diterbitkan Scaled Agile, Inc. | Seperangkat pola organisasi dan alur kerja yang bersumber dari agile, pengembangan produk lean, dan pemikiran sistem | Konfigurasi dari tingkat tim dan program (Agile Release Train) hingga solusi besar dan portofolio |
| **Large-Scale Scrum (LeSS)** | Craig Larman dan Bas Vodde | Menskalakan Scrum itu sendiri: satu Product Owner dan satu Product Backlog untuk satu produk, banyak feature team lintas fungsi, dengan peran dan artefak tambahan sesedikit mungkin | LeSS untuk sekitar dua sampai delapan tim; LeSS Huge untuk lebih banyak, dengan Requirement Area yang masing-masing terdiri dari beberapa tim |
| **Disciplined Agile (DA)** | Scott Ambler dan Mark Lines; diakuisisi Project Management Institute (PMI) pada Agustus 2019 | Perangkat tujuan proses dan opsi yang membantu tim memilih cara kerjanya sendiri sesuai konteks | Hibrida dan peka konteks, dengan beberapa siklus hidup dan lapisan untuk perusahaan |
| **Scrum@Scale dan lainnya** | Disebut bersama SAFe dalam artikel Wikipedia | Kerangka kerja lain untuk mengoordinasikan beberapa tim Scrum | Lihat situs pemiliknya |

### SAFe lebih rinci

Artikel Wikipedia mengatakan SAFe pertama kali dijelaskan secara formal pada 2007, dengan rilis pertama pada 2011 dan versi 6.0 pada Maret 2023. Untuk versi 5.1 ia mendaftar empat konfigurasi: Essential SAFe (tingkat tim dan program), Large Solution SAFe, Portfolio SAFe, dan Full SAFe. Artikel juga mendaftar sepuluh prinsip, termasuk mengambil pandangan ekonomi dan menerapkan pemikiran sistem.

SAFe menuai kritik terbuka, yang dicatat artikel. Thoughtworks berpendapat bahwa kendali dari atas ke bawah menghasilkan pemborosan, Ken Schwaber mengkritiknya dalam sebuah tulisan 2013, dan Jeff Gothelf berpendapat pada 2021 bahwa SAFe bukan agile. Para pengkritik menyebutnya hierarkis dan kaku dan mengatakan ia dapat memberi organisasi kesan kelincahan sambil mempertahankan proses lama. Para pendukung menghargai kosakata bersama dan strukturnya untuk organisasi besar. Baca kedua sisi sebelum memutuskan.

### LeSS: berkembang dengan menyingkirkan

Larman dan Vodde menggambarkan LeSS sebagai Scrum yang diterapkan pada banyak tim yang mengerjakan satu produk. Ia tidak menambah lapisan di atas Scrum. Menurut pengantar kerangka kerja itu sendiri, satu Product Owner mengelola satu Product Backlog dan tim menghasilkan satu produk yang dapat dikirim dalam Sprint bersama. LeSS menyatakan gagasan "more with less": lebih sedikit peran, artefak, dan aturan menghasilkan tim yang lebih bertanggung jawab. Untuk metode dasarnya, lihat Topik 1.4 — Perkiraan Pengiriman dan Metrik Perencanaan.

### Disciplined Agile: pilih cara kerja Anda

Artikel Wikipedia tentang Disciplined Agile Delivery menggambarkan perangkat hibrida yang mengutamakan manusia dan mencakup seluruh siklus hidup pengiriman. Ia mendukung enam siklus hidup dan menjelaskan 21 tujuan proses. Pendekatannya membantu tim memilih praktik yang cocok dengan situasinya, bukan menetapkan satu kerangka kerja. Artikel itu memuat pemberitahuan pemeliharaan bahwa ia mungkin terlalu bersandar pada sumber yang dekat dengan subjeknya.

### Scrum of scrums dan koordinasi sederhana

Sebelum mengadopsi kerangka kerja, pertimbangkan perkakas paling sederhana. "Scrum of scrums" mempertemukan perwakilan beberapa tim untuk berbagi kemajuan dan menyelesaikan ketergantungan. Perencanaan triwulanan bersama, backlog bersama untuk satu produk, dan rapat berkala para kepala tim adalah pilihan ringan lainnya. Banyak organisasi berkembang cukup baik dengan ini.

### Skala dalam organisasi layanan

Dalam organisasi TI, tim dapat diatur dengan beberapa cara, dan pilihannya memengaruhi seberapa baik agile berkembang:

| Organisasi | Bagaimana tim diatur | Pengaruh pada skala |
|---|---|---|
| **Menurut komponen** | Satu tim per lapisan teknis atau sistem | Fitur memerlukan beberapa tim, sehingga ketergantungan banyak |
| **Menurut fitur atau produk** | Tim lintas fungsi yang memiliki irisan yang berhadapan dengan pelanggan | Ketergantungan lebih sedikit; memerlukan standar bersama untuk platform |
| **Menurut layanan** | Satu tim per layanan, memiliki build dan run-nya | Dekat dengan manajemen layanan; memerlukan cara menangani platform bersama |
| **Platform plus aliran** | Tim yang menyediakan platform, dan tim yang memakainya | Memerlukan perjanjian layanan yang jelas di antara keduanya |

Tidak ada pola yang terbaik untuk semua. Berpindah dari tim komponen ke tim yang diatur di sekitar produk atau layanan adalah langkah umum, dan sulit dilakukan, karena mengubah siapa melapor kepada siapa.

### Apa kata penelitian dan kritik

Artikel pengembangan perangkat lunak agile menyatakan bahwa bukti empiris untuk metode agile secara umum terbatas dan kurang meyakinkan. Untuk kerangka kerja skala besar, sumber yang dirujuk kebanyakan menawarkan opini dan materi vendor. Perlakukan setiap klaim perbaikan terukur dengan hati-hati, minta bukti di baliknya, dan uji kerangka kerja apa pun pada bagian kecil organisasi Anda lebih dulu.

## Praktik terbaik

1. **Mulai dari masalah, bukan kerangka kerja.** Sebutkan apa yang salah: ketergantungan lambat, prioritas bertentangan, integrasi terlambat. Pilih pendekatan teringan yang mengatasinya, dan adopsi lebih banyak hanya jika kurang.
2. **Coba koordinasi paling sederhana dahulu.** Perencanaan bersama, scrum of scrums, dan backlog bersama untuk tiap produk menyelesaikan banyak masalah dengan biaya kecil. Tambahkan struktur hanya ketika ini berhenti bekerja.
3. **Atur tim di sekitar nilai.** Pilih tim yang memiliki produk atau layanan dari ujung ke ujung, dengan keterampilan untuk membangun dan menjalankannya. Ini mengurangi serah terima dan ketergantungan dan sesuai dengan cara ITIL memikirkan layanan (lihat Topik 2.6 — Rantai Nilai Layanan).
4. **Simpan satu daftar berurutan per produk.** Memiliki satu product backlog dengan satu pemilik yang bertanggung jawab, seperti yang dianjurkan LeSS, menghilangkan banyak konflik antartim. Bila ini tidak mungkin, buat urutan prioritas lintas tim terlihat.
5. **Rencanakan bersama dengan ritme teratur.** Pertemukan tim dan pemangku kepentingan utama setiap beberapa bulan untuk menyelaraskan tujuan, ketergantungan, dan risiko. Jaga acara itu singkat dan berbasis bukti, dan hindari mengubahnya menjadi negosiasi atas rencana terperinci.
6. **Integrasikan secara berkelanjutan.** Uji keluaran semua tim bersama sesering mungkin, idealnya setiap hari. Integrasi yang terlambat adalah alasan paling umum mengapa program besar mengejutkan sponsornya (lihat Topik 1.6 — Extreme Programming).
7. **Buat ketergantungan terlihat dan kurangi.** Daftar tim mana menunggu tim mana, dan hitung penantiannya. Kurangi dengan mengubah batas tim, berbagi keterampilan, atau membangun platform bersama dengan antarmuka yang jelas.
8. **Definisikan perjanjian layanan antartim.** Di tempat satu tim menyediakan platform atau layanan bagi tim lain, sepakati apa yang diharapkan: ketersediaan, respons, jam dukungan, dan cara meminta perubahan (lihat Topik 3.7 — Manajemen Tingkat Layanan).
9. **Sesuaikan dan tuliskan apa yang Anda ubah.** Kerangka kerja apa pun yang Anda adopsi, catat bagian mana yang Anda ikuti, mana yang Anda tinggalkan, dan mengapa. Label yang jujur mencegah situasi ketika hibrida dinilai terhadap kerangka kerja yang tak pernah dimaksudkan untuk diikuti.
10. **Uji coba sebelum meluncurkan.** Coba pendekatan dengan beberapa tim, ukur hasil yang Anda pedulikan, dan belajar. Perluas hanya ketika uji coba menunjukkan manfaat yang dapat Anda jelaskan.
11. **Jaga tata kelola ringan dan berbasis hasil.** Minta bukti seperti aliran pengiriman, tren insiden, dan umpan balik pengguna, bukan laporan status yang ditulis setiap tim dalam format berbeda (lihat Topik 5.7 — Tata Kelola, Risiko, dan Kepatuhan).
12. **Tinjau struktur secara berkala.** Adakan tinjauan sekali atau dua kali setahun untuk menanyakan apakah batas tim, peran, dan upacara masih melayani pekerjaan. Struktur yang tepat untuk 30 orang mungkin salah untuk 300.

## Pertanyaan untuk dibahas bersama tim Anda

**Masalah apa yang kita harapkan diselesaikan oleh penskalaan, dan bagaimana kita tahu bahwa masalah itu sudah selesai?**

Minta orang menyebut rasa sakitnya: integrasi terlambat, prioritas bertentangan, penantian panjang untuk tim lain. Tuliskan masing-masing dengan contoh terbaru. Kerangka kerja yang dipilih tanpa masalah yang dinyatakan adalah solusi yang mencari masalah. Fasilitator dapat menanyakan apa perbaikan paling sederhana untuk tiap masalah, dan bukti apa yang akan menunjukkan bahwa itu berhasil.

**Tim lain mana yang paling sering kita tunggu, dan berapa lama kita menunggu?**

Petakan ketergantungan di dinding dan tambahkan penantian tipikal untuk masing-masing. Tim yang mengira dirinya mandiri sering terkejut. Tanyakan ketergantungan mana yang nyata dan mana yang berasal dari batas tim yang bersifat historis. Pilih satu ketergantungan untuk disingkirkan, baik dengan mengubah cara tim diatur maupun dengan berbagi keterampilan.

**Siapa yang memutuskan urutan pekerjaan lintas tim kita, dan bagaimana kita mengetahuinya?**

Ikuti satu konflik prioritas terbaru dari awal sampai penyelesaian. Cari eskalasi, rapat, dan kesepakatan informal. Tanyakan apakah satu orang yang bertanggung jawab, seperti dalam LeSS, dapat membuat keputusan. Pertimbangkan apa yang akan hilang atau diperoleh. Hasil yang baik adalah jalur yang jelas untuk memutuskan konflik, meskipun bukan peran baru.

**Apa yang akan diberikan kerangka kerja seperti SAFe, LeSS, atau Disciplined Agile kepada kita yang tidak bisa kita peroleh lebih murah?**

Minta seseorang yang telah membaca tentang masing-masing untuk menjelaskannya dalam beberapa kalimat, dan minta kritik terkuatnya. Artikel Wikipedia tentang SAFe mendaftar beberapa, dan situs pemilik kerangka kerja mendaftar manfaatnya. Fasilitator sebaiknya menjaga diskusi tetap praktis: apa yang akan kita lakukan pada hari Senin jika kita mengadopsinya, dan siapa yang perlu mengubah apa? Putuskan apa yang dicoba, jika ada, dan apa yang dibiarkan seperti adanya.

**Bagaimana kita menguji bahwa pekerjaan semua tim kita saling cocok, dan seberapa sering?**

Hitung hari antara perubahan oleh satu tim dan pengujian pertamanya bersama perubahan semua orang lain. Jeda yang lebih panjang berarti kejutan yang lebih besar. Tanyakan apa yang mencegah integrasi harian, seperti lingkungan, data uji, atau kepemilikan. Pilih satu hambatan untuk disingkirkan.

**Kendali kita yang mana berlaku sama untuk setiap tim, dan mana yang seharusnya bergantung pada risiko?**

Daftar kendali standar, seperti tinjauan, persetujuan, dan pelaporan. Tanyakan mana yang disesuaikan untuk pekerjaan berisiko rendah. Kendali yang seragam mudah dikelola dan lambat bagi semua orang. Kendali yang bergantung pada risiko memerlukan kriteria yang jelas. Pilih satu kendali untuk ditinjau.

## Dalam praktik: contoh ITIL agile

Grup TI sebuah bank ritel besar memiliki 14 tim pengiriman dan kelompok operasi pusat. Setiap tim telah mengadopsi Scrum, tetapi pelanggan bank melihat sedikit perbaikan. Rilis untuk aplikasi mobile banking memerlukan perubahan dari lima tim, dan setiap rilis dikoordinasikan oleh kantor program yang melacak ketergantungan dalam spreadsheet. Sebuah rilis terbaru tertunda tiga minggu karena dua tim menemukan di menit terakhir bahwa perubahan mereka tidak kompatibel.

Seorang arsitek dan kepala operasi menjalankan kajian atas rilis enam bulan. Mereka menemukan bahwa sebagian besar penundaan berasal dari integrasi yang terlambat dan prioritas yang tidak jelas antara tim yang berbagi backlog fitur mobile. Mereka mempertimbangkan mengadopsi kerangka kerja besar, tetapi memutuskan mulai dari yang kecil. Mereka membuat satu backlog untuk aplikasi mobile dengan satu product owner yang bertanggung jawab, dan menggabungkan perencanaan kelima tim dalam sesi bersama setiap enam minggu. Mereka menyiapkan pipeline bersama yang membangun dan menguji perubahan semua tim bersama setiap malam, dan menambahkan kelompok operasi ke sesi perencanaan bersama.

Setelah dua kuartal, jumlah ketidakcocokan menit terakhir turun dan rilis datang setiap dua minggu. Beberapa masalah berlanjut. Product owner kewalahan dengan volume permintaan dan menghabiskan sebagian besar waktunya untuk arbitrase, dan dua tim masih bergantung pada tim basis data pusat dengan antrean panjang. Bank sepakat membuat antrean tim basis data terlihat dalam perencanaan bersama, dan mencoba jalur swalayan untuk perubahan basis data yang umum. Bank juga memutuskan menunda keputusan kerangka kerja apa pun sampai area produk kedua mencoba pendekatan yang sama.

## Empat perspektif

### Tim produk dan pengiriman

Tim pengiriman memikul sebagian besar beban skala: perencanaan bersama, pipeline bersama, dan perjanjian dengan tetangga. Berupayalah mengurangi ketergantungan di sumbernya, dengan mempelajari keterampilan di tim sebelah, atau dengan membangun antarmuka yang tidak memerlukan koordinasi. Ikut serta dalam acara perencanaan dengan informasi nyata tentang kemajuan dan risiko.

### Tim layanan dan operasi

Staf operasi sebaiknya menjadi bagian dari perencanaan sejak awal, karena banyak ketergantungan lintas tim bersifat operasional: lingkungan, akses, pemantauan, dan dukungan. Bawa data layanan ke sesi perencanaan, dan sepakati tingkat layanan dengan tim yang bergantung pada Anda. Perjuangkan platform yang memberi tim pengiriman layanan swalayan.

### Kepemimpinan dan tata kelola

Pemimpin membentuk struktur yang menentukan seberapa baik skala bekerja. Tahanlah godaan membeli kerangka kerja sebagai pengganti memutuskan organisasi ingin menjadi apa. Minta pernyataan masalah yang jelas, uji coba, dan bukti. Jaga pelaporan tetap ringan, dan terimalah bahwa perubahan struktur mungkin tidak nyaman bagi para manajer.

### Pelanggan dan pengguna

Pelanggan sebaiknya melihat layanan yang koheren dan bukan sambungan antartim. Harapkan satu titik kontak untuk sebuah produk dan jalur permintaan yang jelas. Beri tahu product owner apa yang paling penting, dan harapkan jawabannya mencakup pertukaran di antara tuntutan yang bersaing.

## Pola kegagalan umum

- **Membeli kerangka kerja untuk menghindari keputusan.** Organisasi mengadopsi kerangka kerja dengan harapan ia akan menyelesaikan perselisihan tentang prioritas. Sebaliknya, putuskan siapa yang berwenang atas prioritas lalu lihat kerangka kerja mana, jika ada, yang membantu.
- **Menyalin diagram.** Peran dan rapat ditambahkan tanpa memahami alasannya. Sebaliknya, adopsi hanya elemen yang mengatasi masalah yang disebutkan.
- **Menambah lapisan.** Koordinator, kantor program, dan komite berlipat sementara tim kehilangan otonomi. Sebaliknya, singkirkan ketergantungan agar ada lebih sedikit yang dikoordinasikan.
- **Integrasi terlambat.** Tim berintegrasi di akhir siklus panjang. Sebaliknya, integrasikan dan uji semua perubahan bersama setiap hari.
- **Kendali seragam.** Setiap tim mengikuti proses berat yang sama apa pun risikonya. Sebaliknya, dasarkan kendali pada risiko dan buat jalur berisiko rendah cepat.
- **Mengabaikan operasi.** Perencanaan menyertakan pengembang dan manajer produk tetapi tidak ada staf operasi. Sebaliknya, sertakan operasi dalam perencanaan bersama dan bagikan data layanan.
- **Menilai hibrida terhadap kerangka kerja.** Pengkritik berkata itu bukan kerangka kerjanya, pendukung berkata itu. Sebaliknya, beri pendekatan Anda nama sendiri dan jelaskan.
- **Tidak pernah meninjau ulang struktur.** Batas yang digambar pada 30 orang bertahan pada 300. Sebaliknya, tinjau struktur tim dan peran setidaknya setahun sekali.

## Model kematangan

| Dimensi | Memulai | Mengembangkan | Menstandarkan | Mengelola | Mengorkestrasi |
|---|---|---|---|---|---|
| Keselarasan dan prioritas | Setiap tim menetapkan prioritasnya sendiri | Beberapa tim berbagi backlog atau bertemu untuk menyelaraskan | Produk punya satu backlog berurutan dan perencanaan bersama dengan ritme teratur | Keselarasan diperiksa terhadap hasil dan ketergantungan diukur | Prioritas disesuaikan lintas tim, pelanggan, dan pemasok secara terus-menerus |
| Ketergantungan | Penantian untuk tim lain tidak dikelola | Beberapa tim mendaftar ketergantungannya | Ketergantungan terlihat dan perjanjian antartim ada | Waktu tunggu ketergantungan diukur dan dikurangi | Batas tim dibentuk ulang dari bukti untuk menyingkirkan ketergantungan |
| Integrasi | Integrasi terjadi di akhir | Beberapa tim berintegrasi lebih sering | Pipeline bersama mengintegrasikan dan menguji perubahan semua orang dengan sering | Kegagalan integrasi dan penyebabnya dilacak dan diperbaiki | Lingkungan dan pengujian integrasi dibagikan dan diperbaiki lintas tim |
| Tata kelola dan struktur | Kendali seragam dan lambat | Beberapa jalur berisiko rendah ada | Kendali bervariasi menurut risiko dengan kriteria yang jelas | Hasil dan efektivitas kendali ditinjau | Struktur dan kendali ditinjau dan disesuaikan di seluruh organisasi secara rutin |

## Daftar periksa

- [ ] Kami dapat menyatakan dalam satu kalimat masalah yang harus diselesaikan oleh penskalaan.
- [ ] Kami telah memetakan ketergantungan antartim kami dan tahu penantian tipikal untuk masing-masing.
- [ ] Setiap produk punya satu backlog berurutan dengan satu pemilik yang bertanggung jawab.
- [ ] Tim dan pemangku kepentingan utama merencanakan bersama dengan ritme teratur.
- [ ] Keluaran semua tim dibangun dan diuji bersama setidaknya setiap hari.
- [ ] Tim yang menyediakan platform atau layanan bagi tim lain punya perjanjian layanan tertulis.
- [ ] Staf operasi ikut serta dalam perencanaan lintas tim.
- [ ] Kendali bervariasi menurut risiko, dan jalur berisiko rendah cepat.
- [ ] Kerangka kerja apa pun yang kami adopsi telah diuji coba dalam skala kecil lebih dulu.
- [ ] Kami telah menuliskan bagian mana dari kerangka kerja yang kami ikuti dan mana yang tidak.
- [ ] Struktur tim dan peran ditinjau setidaknya setahun sekali.

## Prompt AI

**Tujuan: memetakan ketergantungan antartim dari deskripsi pekerjaan terbaru.**

```text
Help me understand the dependencies between teams in a recent delivery.

Teams involved: [list the teams and what each does].
Recent delivery: [describe a recent release or project that needed work from several teams, with approximate dates for when each team finished and what it waited for].

Using only what I wrote, produce a table of dependencies (which team waited on which, for what, and for roughly how long). Highlight the three longest waits. For each, suggest one way to reduce the dependency and one question to ask the teams. Do not invent durations. Ask me clarifying questions first if the description is thin, mark assumptions, and list what you are unsure of.
```

**Tujuan: membandingkan opsi penskalaan terhadap masalah yang dinyatakan.**

```text
Our problem: [describe in 3-5 sentences, with a recent example].
Number of teams and people: [numbers].
Our current coordination: [for example weekly meeting of team leads, a program office, none].

From the text I paste below, summarize what each of these approaches proposes: [paste short excerpts or summaries from the owners' public pages for the approaches you are considering, such as SAFe, LeSS, Disciplined Agile, or a simple scrum of scrums]. Use only the pasted text.

Then, for each approach, list which parts of our problem it addresses, what it would require of us, and what questions we should ask its owner. Do not state anything about an approach that is not in the pasted text. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Tujuan: merencanakan sesi perencanaan bersama untuk beberapa tim.**

```text
Plan a half-day joint planning session for [number] teams working on [product or service].

Participants: [roles].
Inputs available: [for example each team's backlog, a list of dependencies, recent incident data].
Constraints: [for example people in different time zones].

Give a timed agenda that covers shared goals, dependencies, risks, and the plan for the next [period]. Include what each team brings, what the facilitator does, and a closing step that records agreed commitments and open questions. Keep it free of any particular tool. Ask clarifying questions first, and list what you are unsure of.
```

**Tujuan: menulis perjanjian antara tim platform dan tim yang memakainya.**

```text
Help me draft a one-page working agreement between a team that provides [platform or service] and the teams that use it.

What the platform team does today: [describe].
What the using teams need: [list, or write "unknown"].
Known constraints: [support hours, security rules, tools].

Draft sections for scope, how to request changes, availability and response expectations (leave numbers as [to be agreed] and do not invent them), how incidents are handled, and how the agreement is reviewed. Mark every item that is an assumption. Ask clarifying questions first, and list what you are unsure of.
```

## Keterampilan AI

- [scaled-agile-framework](../../../../skills/scaled-agile-framework/SKILL.md): gunakan untuk memahami peran, acara, dan tingkat SAFe dan menilai bagian mana yang Anda perlukan.
- [large-scale-scrum](../../../../skills/large-scale-scrum/SKILL.md): gunakan untuk menerapkan Scrum pada beberapa tim yang mengerjakan satu produk.
- [disciplined-agile](../../../../skills/disciplined-agile/SKILL.md): gunakan untuk memilih praktik berdasarkan tujuan proses untuk konteks Anda.
- [scrum-of-scrums](../../../../skills/scrum-of-scrums/SKILL.md): gunakan sebagai cara ringan mengoordinasikan beberapa tim sebelum mengadopsi kerangka kerja.
- [portfolio-management](../../../../skills/portfolio-management/SKILL.md): gunakan untuk memutuskan bagaimana sejumlah produk dan inisiatif dipilih dan didanai.

## Sumber utama

- **Scaled agile framework** (Wikipedia): tinjauan sejarah, konfigurasi, dan kritik SAFe dengan kutipan.
- **Introduction to LeSS** (less.works): deskripsi singkat dari para penciptanya tentang Large-Scale Scrum dan gagasan "more with less"-nya.
- **Disciplined agile delivery** (Wikipedia): ringkasan perangkat, siklus hidup, dan tujuannya.
- **Agile software development** (Wikipedia): bagian tentang pekerjaan skala besar, offshore, dan terdistribusi serta pembahasan pandangan yang bertentangan tentang kerangka kerja skala besar.

## Referensi

1. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
2. Scaled agile framework — Wikipedia — https://en.wikipedia.org/wiki/Scaled_agile_framework
3. Disciplined agile delivery — Wikipedia — https://en.wikipedia.org/wiki/Disciplined_agile_delivery
4. LeSS framework introduction — Craig Larman and Bas Vodde, less.works — https://less.works/less/framework/introduction
5. Scrum (software development) — Wikipedia — https://en.wikipedia.org/wiki/Scrum_(software_development)
6. Project Management Institute — Wikipedia — https://en.wikipedia.org/wiki/Project_Management_Institute
7. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
