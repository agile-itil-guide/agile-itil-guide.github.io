# Metrik dan Pengukuran

**Pengukuran yang baik membantu tim melihat apakah pekerjaannya membantu pengguna dan membaik, dan cara teraman memakai ukuran apa pun adalah sebagai pertanyaan untuk dibahas, tidak pernah sebagai target untuk dicapai.**

## Mengapa ini penting

Tim membutuhkan angka untuk mengarahkan. Tanpanya, keputusan bersandar pada ingatan, suara keras, dan siapa yang berbicara terakhir. Dengan angka yang salah, keputusan bisa lebih buruk daripada tanpa angka: tim yang menghitung tiket yang ditutup belajar menutup tiket dengan cepat, entah masalah pengguna terselesaikan atau tidak. Pengukuran itu kuat, dan ia mengubah perilaku dengan cara yang tidak selalu dimaksudkan perancangnya.

Panduan ini telah memakai banyak ukuran: ukuran pengiriman perangkat lunak DORA (lihat Topik 3.4 — Pemampuan Perubahan), empat ukuran aliran Kanban Guide (lihat Topik 1.5 — Kanban), indikator dan sasaran tingkat layanan (lihat Topik 3.7 — Manajemen Tingkat Layanan), dan beban pager (lihat Topik 3.10 — Pemantauan dan Manajemen Peristiwa). Topik ini menyatukannya, menambahkan penetapan tujuan dengan sasaran dan hasil kunci serta ukuran kepuasan pelanggan, dan menempatkannya terhadap peringatan tertua di bidang ini: hukum Goodhart.

[Artikel Wikipedia tentang hukum Goodhart](https://en.wikipedia.org/wiki/Goodhart%27s_law) memberi pepatah dalam bentuk lazimnya, "When a measure becomes a target, it ceases to be a good measure," dan menisbatkannya kepada ekonom Inggris Charles Goodhart, yang menulis dalam artikel 1975 tentang kebijakan moneter Inggris bahwa keteraturan statistik yang diamati cenderung runtuh begitu tekanan diberikan padanya untuk tujuan kendali. Redaksi lazim itu lebih kemudian, dan artikel menisbatkannya kepada Keith Hoskin (1996) dan makalah Marilyn Strathern 1997. Gagasan itu punya sejarah panjang di berbagai bidang, dan itu tempat mulai yang tepat untuk topik ini.

## Konsep inti

### Ukuran, target, dan hukum Goodhart

**Ukuran** menggambarkan sesuatu. **Target** adalah angka yang diharapkan dicapai seseorang. Peralihan dari yang pertama ke yang kedua adalah tempat masalah dimulai. Begitu orang diberi hadiah atau hukuman karena sebuah angka, mereka menemukan cara menggerakkan angka itu yang tidak sama dengan memperbaiki hal yang digambarkannya. Artikel memberi contoh dari kebijakan moneter, sistem sekolah, dan layanan kesehatan. Dalam organisasi layanan, contoh mudahnya: waktu menutup tiket turun karena tiket ditutup lebih awal, hitungan deployment naik karena perubahan dipecah, dan ketersediaan tampak naik karena gangguan diklasifikasi ulang.

Obatnya bukan menghindari pengukuran tetapi mengukur dengan hati-hati:

- Pakai beberapa ukuran yang saling menarik, seperti kecepatan dan kualitas.
- Bahas angka dengan orang yang pekerjaannya digambarkan.
- Jangan kaitkan hadiah atau disiplin individu dengan satu angka.
- Ganti ukuran ketika tidak lagi informatif.

### Jenis ukuran

| Jenis | Pertanyaan yang dijawabnya | Contoh |
|---|---|---|
| **Hasil** | Apakah pengguna dan bisnis lebih baik keadaannya? | Kepuasan pengguna, keberhasilan tugas, pendapatan, insiden yang merugikan pengguna |
| **Aliran** | Seberapa baik pekerjaan bergerak? | Cycle time, throughput, usia item pekerjaan, pekerjaan yang sedang berjalan |
| **Kinerja pengiriman** | Seberapa baik perubahan mencapai produksi? | Lead time perubahan, frekuensi deployment, laju kegagalan perubahan, waktu pemulihan |
| **Tingkat layanan** | Apakah layanan memenuhi kebutuhan pengguna? | Ketersediaan, latensi, laju kesalahan terhadap sasaran |
| **Kesehatan dan keberlanjutan** | Bisakah ini berlanjut? | Beban pager, toil, lembur, sentimen staf |
| **Biaya** | Berapa biaya per unit nilai? | Biaya per transaksi atau per pengguna |

Kumpulan yang seimbang mengambil dari beberapa baris, agar memperbaiki satu tidak dibeli dengan mengorbankan yang lain.

### Ukuran DORA

Ukuran kinerja pengiriman perangkat lunak DORA adalah lead time perubahan, frekuensi deployment, waktu pemulihan deployment gagal, laju kegagalan perubahan, dan laju pengerjaan ulang deployment. Panduan DORA tentang metrik mengatakan kecepatan dan stabilitas bukan pertukaran, karena ukurannya berkorelasi untuk sebagian besar tim. Ia memperingatkan agar tidak menetapkannya sebagai tujuan, mengandalkan satu, membandingkan aplikasi yang sangat berbeda, dan bersaing dengan tim lain, dan menyarankan memperbaiki terhadap kinerja masa lalu Anda sendiri. Artikel Wikipedia tentang DevOps menambahkan bahwa sebagian pakar mengkritik metodologi dan metrik riset DORA, jadi perlakukan sebagai pertanyaan berguna dengan batas (lihat Topik 5.2 — DevOps).

### Ukuran aliran

Kanban Guide mendefinisikan empat ukuran: pekerjaan yang sedang berjalan, throughput, usia item pekerjaan, dan cycle time. Ia mencatat bahwa tim boleh mengganti namanya dan harus menambah yang lain seperlunya, dan mengatakan ukuran hanya penting bila memberi tahu praktik mendefinisikan alur kerja, mengelola butir di dalamnya, dan memperbaikinya. Usia item pekerjaan sangat berguna karena menunjukkan masalah selagi masih ada waktu bertindak (lihat Topik 5.4 — Manajemen Aliran Nilai).

### Ukuran tingkat layanan

Indikator dan sasaran tingkat layanan (lihat Topik 3.7 — Manajemen Tingkat Layanan) memberi pandangan paling langsung tentang apa yang dialami pengguna. Buku SRE membela beberapa indikator yang dipilih dari apa yang dipedulikan pengguna, untuk persentil dan bukan hanya rata-rata, dan untuk sasaran yang bukan kesempurnaan. Anggaran kesalahan mengubah celah menjadi aturan keputusan bersama (lihat Topik 5.3 — Site Reliability Engineering).

### Sasaran dan hasil kunci

**Sasaran dan hasil kunci (OKR)** adalah kerangka penetapan tujuan. Artikel Wikipedia menjelaskan OKR sebagai sasaran, tujuan yang signifikan, konkret, dan terdefinisi jelas, dipasangkan dengan tiga sampai lima hasil kunci, yaitu kriteria keberhasilan yang terukur. Ia menisbatkan Andrew Grove sebagai pemopuler pendekatan di Intel pada 1970-an dan mendokumentasikannya dalam *High Output Management* (1983), dan John Doerr membawanya ke Google pada 1999. Artikel mengatakan OKR diberi skor dari 0,0 sampai 1,0, bahwa hasil kunci aspirasional menargetkan sekitar 0,7, dan bahwa Doerr menganjurkan tingkat keberhasilan target sekitar 70 persen, sehingga hasil kunci yang selalu tercapai harus dievaluasi ulang. Ia menyarankan menghindari sasaran seperti biasa dan mengutamakan indikator pendahulu daripada indikator tertinggal.

Artikel juga mencatat kritik: sebagian besar organisasi telah berhenti menetapkan OKR kontributor individu, yang cenderung menyerupai daftar tugas dan kabur menjadi tinjauan kinerja, dan OKR multitingkat dapat menciptakan pendekatan air terjun. Ia tidak memberi bukti independen tentang efektivitas dan memuat penanda pemeliharaan tentang bersandar pada sumber yang dekat dengan subjek. Bagi tim layanan, OKR dapat menghubungkan hasil (misalnya, "pengguna menyelesaikan pendaftaran tanpa bantuan") dengan hasil kunci terukur, asalkan tidak diubah menjadi target individu.

### Kepuasan pelanggan

Mengukur apa yang dipikirkan pengguna sulit dilakukan dengan baik. Instrumen umum adalah **net promoter score (NPS)**. Menurut Wikipedia, ia didasarkan pada satu pertanyaan tentang seberapa besar kemungkinan responden merekomendasikan perusahaan, produk, atau layanan, dengan promotor memberi skor 9 atau 10, pasif 7 atau 8, dan kritikus 6 atau lebih rendah; skornya adalah persentase promotor dikurangi persentase kritikus. Fred Reichheld dari Bain & Company mempopulerkannya dalam artikel *Harvard Business Review* 2003. Artikel mencatat batasan: cendekiawan mempertanyakan apakah ia andal memprediksi pertumbuhan perusahaan, satu butir memerlukan jumlah tanggapan besar, ia sedikit mengatakan tentang masalah spesifik, survei berlebihan menimbulkan keluhan, dan mengaitkannya dengan gaji dapat memutarbalikkan perilaku, sehingga Reichheld menganjurkan memisahkan keduanya. Instrumen lain ada, seperti skor kepuasan pelanggan dan skor upaya pelanggan, tetapi artikel tidak membahasnya.

Apa pun instrumennya, ajukan pertanyaan singkat, selalu izinkan jawaban teks bebas, baca komentarnya, dan tindak lanjuti apa yang Anda pelajari.

### Mengukur orang dan keberlanjutan

Ukuran beban dan kesehatan staf, seperti beban pager, toil, lembur, dan sentimen, adalah ukuran keberlanjutan layanan (lihat Topik 5.3 — Site Reliability Engineering). Perlakukan sebagai informasi tentang sistem dan bukan sebagai ukuran kinerja individu.

### Mengukur AI dan otomatisasi

Ketika langkah otomatis atau berbantuan AI diperkenalkan, tambahkan ukuran kualitasnya: seberapa sering manusia menimpanya, seberapa sering salah, dan berapa biayanya (lihat Topik 6.2 — AI dalam Manajemen Layanan TI).

### Batasan

Ukuran bersifat parsial. Mereka menghilangkan apa yang sulit dihitung, seperti kepercayaan, kerajinan, dan penilaian. Mereka dapat menyesatkan ketika data tidak lengkap atau definisi berbeda antartim. Artikel yang dibaca di sini menawarkan sedikit bukti empiris apakah program pengukuran memperbaiki hasil. Perlakukan program apa pun sebagai eksperimen, dan tinjau.

## Praktik terbaik

1. **Mulai dengan pertanyaan.** Tanyakan keputusan apa yang akan diinformasikan sebuah ukuran, dan siapa yang akan bertindak atasnya. Jika tak ada, jangan kumpulkan.
2. **Pilih kumpulan kecil yang seimbang.** Pilih beberapa ukuran lintas hasil, aliran, pengiriman, tingkat layanan, dan kesehatan. Pastikan sebagian saling menarik.
3. **Definisikan tiap ukuran dengan tepat.** Tulis apa yang dihitung, dari mana, dan apa yang dikecualikan. Dua tim yang memakai kata sama untuk hal berbeda menghasilkan angka yang tidak dapat dibandingkan.
4. **Ukur per layanan atau tim, dan bandingkan dengan masa lalunya sendiri.** Hindari memeringkat tim. DORA menyarankan memperbaiki terhadap kinerja masa lalu Anda sendiri dan berhati-hati membandingkan aplikasi berbeda.
5. **Jangan jadikan satu angka sebagai target.** Pakai ukuran sebagai pemantik diskusi, dan tetapkan tujuan sebagai hasil. Ketika ukuran adalah target, waspadai permainan angka (lihat hukum Goodhart).
6. **Padukan angka dengan cerita.** Untuk tren apa pun, lihat beberapa kasus nyata. Angka memberi tahu di mana melihat; kasus memberi tahu mengapa.
7. **Lihat distribusi.** Pakai persentil dan rentang, bukan hanya rata-rata, untuk ukuran waktu dan ukuran.
8. **Utamakan indikator pendahulu bila bisa.** Ukuran seperti usia item pekerjaan menunjukkan masalah sebelum mendarat, tidak seperti ukuran hasil masa lalu.
9. **Tetapkan tujuan dengan sasaran dan hasil kunci secara hati-hati.** Jika Anda memakai OKR, jaga di tingkat tim dan organisasi, hindari sasaran seperti biasa, dan perlakukan hasil yang selalu tercapai sebagai tanda untuk membidik lebih tinggi.
10. **Tanyakan kepada pengguna, singkat dan sering.** Pakai pertanyaan singkat dengan teks bebas, baca komentarnya, dan tanggapi. Jangan kaitkan skor survei dengan gaji individu.
11. **Waspadai biaya mengukur.** Utamakan data yang dihasilkan perkakas sebagai hasil sampingan pekerjaan. Hentikan pelaporan manual yang tak dipakai siapa pun.
12. **Tinjau ukuran itu sendiri.** Sekali atau dua kali setahun, tanyakan ukuran mana yang mengarah pada keputusan dan mana yang tidak, dan pensiunkan yang terakhir.

## Pertanyaan untuk dibahas bersama tim Anda

**Ukuran kita yang mana yang telah mengarah pada keputusan dalam enam bulan terakhir?**

Daftar ukuran dan minta keputusan yang terkait dengan masing-masing. Ukuran tanpa kaitan adalah kandidat untuk dihapus. Fasilitator dapat menanyakan ukuran mana yang paling kurang dipercaya orang dan mengapa. Singkirkan atau perbaiki satu.

**Apa yang terjadi pada perilaku kita ketika angka menjadi target?**

Minta contoh terbaru ketika sebuah angka menjadi target. Selidiki apa yang dilakukan orang untuk mencapainya. Pepatah Goodhart adalah bingkainya. Tanyakan seperti apa ukuran yang lebih baik atau pasangan ukuran. Sepakati satu perubahan.

**Apakah kita mengukur kecepatan dan kualitas bersama?**

Daftar ukuran kecepatan dan ukuran kualitas. Jika daftarnya timpang, bahas dampaknya. Misalnya, mengukur waktu penutupan tiket tanpa kontak berulang mengundang penutupan dini. Pilih satu pasangan.

**Apa yang dikatakan pengguna kepada kita tentang bagaimana keadaannya, dan bagaimana kita bertanya?**

Lihat pertanyaan yang Anda ajukan kepada pengguna dan seberapa sering. Bacakan beberapa jawaban teks bebas dengan lantang. Tanyakan apa yang berubah karenanya. Sepakati pertanyaan singkat untuk dicoba.

**Ukuran kita yang mana yang dapat dipakai untuk menilai individu, dan apa yang harus kita lakukan tentang itu?**

Identifikasi ukuran yang mungkin ditakuti orang. Bahas risikonya dan sepakati aturan eksplisit tentang untuk apa angka tidak akan dipakai. Tuliskan.

**Jika kita hanya boleh menyimpan lima ukuran, mana yang kita simpan?**

Minta tiap orang memilih lima dan bandingkan. Tumpang tindihnya menunjukkan inti; perbedaannya menunjukkan kebutuhan berbeda. Hasilnya kumpulan awal. Periksa bahwa ia mencakup hasil, aliran, tingkat layanan, dan kesehatan.

## Dalam praktik: contoh ITIL agile

Grup TI sebuah kereta api nasional menjalankan sistem di balik informasi penumpangnya. Grup melaporkan dasbor 40 ukuran kepada tim eksekutif setiap bulan. Dasbor dibaca sedikit orang, dan dua ukuran mendominasi diskusi: jumlah insiden yang ditutup dalam waktu target dan jumlah rilis per kuartal. Tim insiden belajar menutup insiden dengan cepat dan membuka kembali yang baru untuk kesalahan yang sama, dan beberapa tim pengiriman memecah pekerjaan menjadi rilis sepele untuk memenuhi hitungan.

Kepala grup TI meminta tim kecil membangun ulang ukuran. Mereka mulai dengan menanyakan keputusan apa yang harus diinformasikan dasbor. Untuk tiap layanan mereka memilih segelintir ukuran: indikator dan sasaran tingkat layanan yang menghadap pengguna, lead time perubahan dan laju kegagalan perubahan, usia item pekerjaan untuk butir masalah terbuka, beban pager per engineer, dan survei kepuasan satu pertanyaan bulanan terhadap staf stasiun dengan kotak teks bebas. Hitungan lama dipensiunkan. Tim eksekutif menyepakati bahwa tak ada ukuran yang akan dipakai untuk memeringkat tim atau menetapkan bonus individu, dan kepala TI menuliskannya sebagai aturan pada dasbor. Tim diminta menetapkan tujuan perbaikan untuk layanan yang mereka miliki sebagai sasaran dengan hasil kunci, hanya di tingkat tim.

Setelah setahun, dasbor punya dua belas ukuran, dan tinjauan bulanan menjadi percakapan tentang masalah terbuka tertua dan komentar teks bebas. Insiden berulang turun, dan rilis lebih bermakna. Beberapa kesulitan tersisa. Survei kepuasan mendapat sedikit tanggapan dari staf malam, lead time satu tim tampak buruk karena ia satu-satunya yang menghitung waktu dari gagasan dan bukan dari commit, dan seorang manajer mulai mengutip skor survei dalam tinjauan kinerja. Kepala TI meminta tim menyelaraskan definisi, mengingatkan manajer tentang aturan, dan mengatur survei singkat pada serah terima shift malam.

## Empat perspektif

### Tim produk dan pengiriman

Tim pengiriman sebaiknya memilih ukuran yang membantu mereka mengarahkan, mengambil angka dari perkakas mereka, dan membahasnya dalam retrospektif. Waspadai ukuran yang menghargai pemecahan pekerjaan atau menyembunyikan kegagalan. Bagikan apa yang Anda pelajari dengan tim lain.

### Tim layanan dan operasi

Tim operasi memikul banyak ukuran tingkat layanan dan kesehatan. Jaga definisi jelas dan data andal, sertakan beban pager dan toil, dan sajikan angka dengan kasus dan komentar. Menolaklah ketika sebuah ukuran dipakai sebagai target.

### Kepemimpinan dan tata kelola

Pemimpin membentuk budaya pengukuran. Katakan untuk apa angka akan dan tidak akan dipakai, minta tren dan cerita dan bukan tabel liga, dan tahan godaan menambah ukuran untuk setiap kekhawatiran baru. Tinjau seluruh kumpulan dari waktu ke waktu.

### Pelanggan dan pengguna

Pelanggan dan pengguna adalah sumber ukuran sekaligus subjeknya. Jawab survei singkat bila bisa, dan katakan apa yang penting. Tanyakan kepada penyedia apa yang mereka ukur tentang pengalaman Anda dan apa yang telah mereka lakukan dengan hasilnya.

## Pola kegagalan umum

- **Ukuran sebagai target.** Permainan angka menyusul. Sebaliknya, pakai ukuran untuk diskusi dan tetapkan tujuan sebagai hasil.
- **Satu angka.** Satu ukuran memutarbalikkan perilaku. Sebaliknya, pakai kumpulan seimbang yang saling menarik.
- **Definisi tidak konsisten.** Tim menghitung secara berbeda. Sebaliknya, definisikan tiap ukuran dan sumbernya.
- **Tabel liga.** Tim bersaing dan menyembunyikan masalah. Sebaliknya, bandingkan tiap tim dengan riwayatnya sendiri.
- **Hanya rata-rata.** Ekor panjang tersembunyi. Sebaliknya, lihat distribusi dan persentil.
- **Mengukur yang mudah.** Angka yang nyaman menggantikan yang penting. Sebaliknya, mulai dari keputusan dan hasil pengguna.
- **OKR individu sebagai daftar tugas.** Tujuan menjadi tinjauan kinerja. Sebaliknya, jaga OKR di tingkat tim dan organisasi.
- **Kelelahan survei dan kaitan gaji.** Pengguna berhenti menjawab, atau skor dimanipulasi. Sebaliknya, jaga survei singkat dan dipisahkan dari gaji.

## Model kematangan

| Dimensi | Memulai | Mengembangkan | Menstandarkan | Mengelola | Mengorkestrasi |
|---|---|---|---|---|---|
| Pilihan dan definisi | Ukuran ad hoc | Beberapa tim mendefinisikan beberapa ukuran | Kumpulan seimbang dengan definisi jelas dipakai per layanan | Kumpulan ditinjau untuk kegunaan dan celah | Ukuran diselaraskan lintas tim, pemasok, dan pelanggan |
| Pemakaian dalam keputusan | Angka dilaporkan tetapi jarang dipakai | Beberapa tim membahasnya dalam tinjauan | Ukuran memberi masukan pada keputusan dan perbaikan berkala | Keputusan yang dikaitkan dengan ukuran dilacak dan dipelajari | Ukuran memandu keputusan di seluruh organisasi |
| Menjaga dari permainan angka | Target ditetapkan pada satu angka | Ada sedikit kesadaran tentang distorsi | Aturan tentang bagaimana ukuran boleh dipakai dituliskan dan diikuti | Tanda permainan dipantau dan ukuran disesuaikan | Budaya pengukuran dibagikan di seluruh organisasi |
| Ukuran pengguna dan kesehatan | Sedikit data pengguna atau staf | Ada beberapa survei atau data beban | Survei pengguna singkat dan ukuran keberlanjutan adalah rutin | Hasil mengarah pada tindakan terencana dan diperiksa | Suara pengguna dan staf membentuk prioritas lintas layanan |

## Daftar periksa

- [ ] Setiap ukuran yang kami laporkan punya keputusan yang dinyatakan yang diinformasikannya.
- [ ] Kami memakai kumpulan kecil seimbang yang mencakup ukuran hasil, aliran, tingkat layanan, pengiriman, dan kesehatan.
- [ ] Setiap ukuran punya definisi tertulis dan sumber.
- [ ] Tim dibandingkan dengan riwayatnya sendiri, tidak diperingkat.
- [ ] Kami telah menuliskan untuk apa ukuran tidak akan dipakai.
- [ ] Ukuran waktu menunjukkan distribusi atau persentil.
- [ ] Pengguna ditanya pertanyaan singkat secara berkala dengan ruang untuk komentar, dan jawaban dibaca.
- [ ] Jika kami memakai OKR, di tingkat tim atau organisasi dan bukan target individu.
- [ ] Data diambil dari perkakas sebagai hasil sampingan pekerjaan bila memungkinkan.
- [ ] Kami meninjau ukuran itu sendiri setidaknya setahun sekali.

## Prompt AI

**Tujuan: memilih kumpulan ukuran seimbang untuk sebuah layanan.**

```text
Help me choose a small balanced set of measures for [service].

What the service does and who uses it: [describe].
Decisions the team and its owner need to make in the next quarter: [list].
Data we already have: [list tools and records].
Measures we currently report: [list].

Propose five to eight measures across outcome, flow, delivery performance, service level, and health (for example work item age, change lead time, an availability indicator, pager load, and a short satisfaction question). For each, say what decision it informs, what data it needs, and one way it could be gamed. Do not set targets. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Tujuan: menemukan bagaimana sebuah ukuran dapat dimainkan.**

```text
Here is a measure we use and how it is used: [describe the measure, its definition, and who sees it or is rewarded for it].

List ways people might change their behavior to improve the number without improving the underlying work, using only the description. Suggest a paired measure that would reveal each distortion and a question to ask the team. Do not accuse anyone. List what you are unsure of.
```

**Tujuan: menulis OKR untuk tim layanan tanpa mengubahnya menjadi tugas.**

```text
Help me draft OKRs for [team] for the next quarter.

Context: [describe the service and the main problem users face].
Outcomes we want for users: [list].
Measures we already collect: [list].
Risks we have seen with goals in the past: [for example, gaming or task lists].

Draft two or three objectives, each with three to five key results that are measurable outcomes (not tasks), using only measures we can collect, and leave target values as [to be agreed with the team]. For each key result, name the data source and a possible distortion. Do not set individual OKRs. Ask clarifying questions first, and list what you are unsure of.
```

**Tujuan: menganalisis komentar survei teks bebas.**

```text
Here are free-text comments from our latest user survey: [paste anonymized comments].

Group the comments into themes based only on what they say. For each theme, give a name, the number of comments from my list, two short example quotes, and a question for the team. Highlight themes that appear in both positive and negative comments. Do not infer demographics or sentiment beyond the text. If the sample is small, say so. List what you are unsure of.
```

## Keterampilan AI

- [software-engineering-metrics](../../../../skills/software-engineering-metrics/SKILL.md): gunakan untuk memilih dan menafsirkan ukuran kinerja pengiriman dan layanan.
- [key-risk-indicators](../../../../skills/key-risk-indicators/SKILL.md): gunakan untuk memilih ukuran peringatan dini bagi risiko terhadap layanan.
- [survey-design](../../../../skills/survey-design/SKILL.md): gunakan untuk merancang survei pengguna dan staf yang singkat yang menghasilkan jawaban yang dapat dipakai.
- [getting-feedback](../../../../skills/getting-feedback/SKILL.md): gunakan untuk mengumpulkan dan menanggapi umpan balik dari pengguna dan rekan.
- [feature-prioritization](../../../../skills/feature-prioritization/SKILL.md): gunakan untuk mengaitkan ukuran hasil dengan apa yang dikerjakan tim berikutnya.

## Sumber utama

- **DORA's software delivery performance metrics** (dora.dev): definisi lima ukuran dan peringatan tentang pemakaiannya.
- **Goodhart's law** (Wikipedia): asal-usul dan redaksi pepatah bahwa ukuran yang dipakai sebagai target berhenti menjadi ukuran yang baik.
- **Objectives and key results** (Wikipedia): kerangka, asal-usul, penilaian, dan kritiknya.
- **Net promoter score** (Wikipedia): definisi, pemakaian, dan kritik satu ukuran kepuasan.

## Referensi

1. DORA's software delivery performance metrics — DORA, dora.dev — https://dora.dev/guides/dora-metrics-four-keys/
2. Goodhart's law — Wikipedia — https://en.wikipedia.org/wiki/Goodhart%27s_law
3. Objectives and key results — Wikipedia — https://en.wikipedia.org/wiki/Objectives_and_key_results
4. Net promoter score — Wikipedia — https://en.wikipedia.org/wiki/Net_promoter_score
5. The Kanban Guide — John Coleman, Daniel Vacanti, and contributors, kanbanguides.org — https://kanbanguides.org/english/
6. Service Level Objectives — Google SRE book, sre.google — https://sre.google/sre-book/service-level-objectives/
7. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
8. Performance indicator — Wikipedia — https://en.wikipedia.org/wiki/Performance_indicator
9. Customer satisfaction — Wikipedia — https://en.wikipedia.org/wiki/Customer_satisfaction
