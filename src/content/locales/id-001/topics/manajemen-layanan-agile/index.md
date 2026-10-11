# Manajemen Layanan Agile

**Manajemen layanan agile menerapkan nilai dan metode agile pada desain dan perbaikan manajemen layanan itu sendiri, memperlakukan setiap proses sebagai produk dengan pemilik, backlog, dan pengguna yang dapat mengatakan apakah ia berfungsi.**

## Mengapa ini penting

Sebagian besar panduan ini telah melihat bagaimana tim agile dapat memakai praktik manajemen layanan. Topik ini membalik pertanyaan: bagaimana praktik manajemen layanan dapat dibangun dan diubah dengan cara agile? Banyak organisasi punya proses untuk insiden, perubahan, dan permintaan yang dirancang sekali, diluncurkan dalam sebuah proyek, lalu dibiarkan. Proses itu lambat berubah, tidak disukai orang yang harus mengikutinya, dan tidak sejalan dengan cara organisasi kini membangun perangkat lunak. Itu kebalikan dari apa yang disarankan prinsip Manifesto tentang menyambut perubahan (lihat Topik 1.2 — Prinsip Agile).

Obatnya bukan meninggalkan proses tetapi memperlakukannya sebagai sesuatu yang dirancang bersama penggunanya, dirilis dalam langkah kecil, dan diperbaiki dari bukti. Prinsip panduan ITIL 4 mengatakan hal yang sama: mulai dari tempat Anda berada, maju secara iteratif dengan umpan balik, berkolaborasi dan tingkatkan visibilitas, dan jaga tetap sederhana dan praktis (lihat Topik 2.4 — Prinsip Panduan ITIL). Artikel Wikipedia tentang ITIL mengatakan ITIL 4 diselaraskan dengan cara kerja agile, DevOps, dan lean ketika dirilis pada 2019. Artikel ISO/IEC 20000 mendaftar bagian terbaru standar itu, termasuk panduan tentang agile dan DevOps, meskipun tidak memberi isinya.

Ada sedikit riset formal tentang manajemen layanan agile itu sendiri, dan artikel Wikipedia yang dirujuk untuk panduan ini tidak membahasnya. Topik ini karena itu bersandar pada deskripsi Scrum Guide tentang peran dan artefak, pada prinsip agile dan ITIL, dan pada sisa panduan ini, dan menawarkan pendekatannya sebagai sintesis praktis untuk dicoba, bukan sebagai metode yang mapan.

## Konsep inti

### Proses sebagai produk

**Proses**, dalam pengertian ini, adalah cara kerja berulang apa pun yang diminta organisasi layanan untuk diikuti orang: cara melaporkan insiden, cara meminta akses, cara menyetujui perubahan. Dilihat sebagai produk, proses memiliki:

- **Pengguna:** orang yang mengikutinya dan orang yang dilayaninya.
- **Tujuan:** hasil yang menjadi alasan keberadaannya.
- **Pemilik:** seseorang yang bertanggung jawab atas nilainya, seperti Scrum Guide menjelaskan Product Owner sebagai satu orang yang bertanggung jawab memaksimalkan nilai produk dan mengurutkan backlog-nya (lihat Topik 1.4 — Perkiraan Pengiriman dan Metrik Perencanaan).
- **Backlog:** daftar perbaikan berurutan.
- **Rilis:** perubahan yang dikirim dalam langkah kecil, dengan catatan.
- **Ukuran:** bukti apakah ia berfungsi.

Berpikir seperti ini mengubah pertanyaannya. Bukan "sudahkah kita mengimplementasikan proses perubahan?" melainkan "apakah proses perubahan membantu orang mengerjakan tugasnya, dan apa perbaikan berikutnya?"

### Peran

| Peran | Dalam tim produk | Untuk proses manajemen layanan |
|---|---|---|
| **Product owner** | Mengurutkan backlog dan bertanggung jawab atas nilai | Pemilik proses, yang memutuskan apa yang diperbaiki berikutnya dan mengapa |
| **Pengembang / tim** | Membangun inkremen | Orang yang merancang dan menjalankan proses, idealnya termasuk pengguna dari pengiriman dan operasi |
| **Scrum Master atau coach** | Membantu tim menerapkan kerangka kerja dan menyingkirkan hambatan | Coach yang membantu tim mempraktikkan pengiriman perangkat lunak berkelanjutan dan mengumpulkan umpan balik |
| **Pemangku kepentingan** | Meninjau inkremen dan memberi umpan balik | Tim pengiriman, service desk, auditor, pelanggan |

Pemetaan ini milik panduan ini, bukan standar. Pemilik proses di banyak organisasi tidak punya wewenang atau waktu, jadi langkah pertama sering kali memberi mereka keduanya.

### Backlog proses

Gagasan perbaikan untuk proses datang dari banyak tempat: tinjauan insiden, retrospektif, temuan audit, keluhan pengguna, dan metrik (lihat Topik 3.15 — Peningkatan Berkelanjutan). Backlog proses mengumpulkannya dalam satu daftar berurutan. Butirnya kecil dan dijelaskan dari sudut pandang pengguna: "Sebagai pengembang, saya ingin perubahan berisiko rendah disetujui otomatis agar saya dapat merilis saat siap." Product owner mengurutkan daftar menurut nilai dan upaya, dan tim mengambil butir ke dalam siklus pendek.

### Pengiriman perangkat lunak berkelanjutan untuk perubahan proses

Alih-alih merancang proses penuh dan meluncurkannya, rancang versi terkecil yang mungkin berfungsi, coba dengan beberapa pengguna, dan belajar:

| Langkah | Apa yang terjadi |
|---|---|
| **Temukan masalahnya** | Amati bagaimana orang benar-benar bekerja dan di mana mereka kesulitan |
| **Rancang perubahan kecil** | Formulir baru, jalur persetujuan lebih pendek, daftar periksa |
| **Coba** | Dengan satu tim, atau satu jenis pekerjaan, selama periode singkat |
| **Periksa** | Bandingkan dengan yang diharapkan, memakai data dan percakapan |
| **Adopsi, sesuaikan, atau buang** | Sebarkan yang berhasil; perbaiki atau tinggalkan yang tidak |

Ini siklus plan–do–check–act yang diterapkan pada proses itu sendiri (lihat Topik 3.15 — Peningkatan Berkelanjutan).

### Rancang bersama pengguna

Perancang proses yang tidak memakai proses itu membuat kesalahan yang dapat dihindari. Libatkan orang yang mengikutinya: undang engineer merancang proses perubahan, analis desk merancang formulir insiden, dan pelanggan merancang katalog permintaan. Amati pekerjaan nyata. Uji dengan kasus nyata. Ini "kolaborasi dengan pelanggan lebih dari negosiasi kontrak" yang diterapkan di dalam organisasi (lihat Topik 1.1 — Manifesto Agile).

### Proses minimum yang layak

**Proses minimum yang layak** adalah kumpulan terkecil langkah, catatan, dan peran yang mencapai tujuan. Menambahinya memerlukan alasan. Prinsip panduan "jaga tetap sederhana dan praktis" mendukung ini. Ujian yang berguna untuk setiap langkah adalah menanyakan apa yang akan terjadi jika dihapus, dan siapa yang akan menyadarinya. Kendali yang diwajibkan hukum atau kontrak dipertahankan, dengan sumber disebut; yang lain dipertanyakan.

### Rilis proses dan komunikasi

Ketika proses berubah, orang perlu tahu. Perlakukan perubahan seperti rilis: catatan singkat yang menjelaskan apa yang berubah, mengapa, dan apa yang dilakukan secara berbeda, dengan kontak untuk pertanyaan. Rilis dalam langkah kecil, dengan irama yang dapat diikuti orang, dan hindari mengejutkan tim dengan perubahan besar. Simpan riwayat perubahan yang terlihat.

### Standar, audit, dan ketangkasan

Banyak organisasi harus memenuhi standar atau auditor. ISO/IEC 20000 adalah standar untuk sistem manajemen layanan, dan Wikipedia mendaftar bagian terbarunya dengan panduan tentang agile dan DevOps (lihat Topik 2.7 — Kerangka Kerja dan Standar ITSM). Proses yang dibangun dalam langkah kecil dapat memenuhi audit jika catatan menunjukkan bagaimana ia bekerja dan bagaimana ia berubah: backlog, catatan rilis, dan ukuran adalah bukti itu sendiri. Bahas dengan auditor sejak awal apa yang mereka butuhkan, dan tunjukkan cara kerja Anda.

### Manajemen layanan agile dan DevOps

Praktik dari DevOps, seperti otomatisasi dan pipeline, adalah perkakas untuk mengimplementasikan proses (lihat Topik 5.2 — DevOps). Di tempat langkah proses dapat diotomatisasi, seperti mencatat perubahan dari pipeline, lakukanlah, dan perlakukan otomatisasi sebagai bagian dari proses. Manajemen layanan agile dan DevOps berbagi minat pada siklus pendek dan umpan balik cepat.

### Batasan

Pendekatan ini mengasumsikan orang punya waktu dan mandat untuk memperbaiki proses, yang tidak selalu benar. Ia dapat gagal ketika kepemilikan proses hanya nominal, ketika pemangku kepentingan menuntut desain selesai sebelum mau mencoba apa pun, atau ketika setiap perubahan memerlukan persetujuan panjang. Ia juga berisiko pergolakan terus-menerus jika perubahan terlalu sering untuk diserap orang. Seimbangkan pengiriman perubahan berkelanjutan dengan stabilitas: ubah dengan irama yang dapat diprediksi.

## Praktik terbaik

1. **Tunjuk pemilik untuk setiap proses.** Pilih seseorang dengan wewenang mengubahnya dan waktu untuk melakukannya. Jelaskan perannya: ia bertanggung jawab atas seberapa baik proses melayani tujuannya.
2. **Tulis tujuan satu kalimat.** Nyatakan untuk apa proses itu dan siapa yang dilayaninya. Jika Anda tidak bisa, proses itu mungkin kandidat untuk dihapus.
3. **Simpan backlog proses.** Kumpulkan gagasan dari tinjauan, audit, umpan balik, dan data dalam satu daftar berurutan. Tunjukkan kepada orang yang mengikuti proses.
4. **Libatkan pengguna dalam desain.** Sertakan engineer, analis desk, dan pelanggan dalam lokakarya dan uji coba. Amati pekerjaan nyata sebelum mengubahnya.
5. **Mulai dengan proses minimum yang layak.** Rancang versi terkecil yang memenuhi tujuan dan kebutuhan hukum. Tambahkan langkah hanya ketika masalah membenarkannya.
6. **Coba sebelum meluncurkan.** Uji coba dengan satu tim atau satu jenis pekerjaan untuk periode singkat yang ditentukan. Sepakati apa yang akan Anda lihat sebelum mulai.
7. **Rilis perubahan dalam langkah kecil dengan irama.** Terbitkan catatan singkat untuk tiap rilis proses, dengan kontak. Hindari perubahan besar yang mengejutkan.
8. **Ukur prosesnya.** Pilih beberapa ukuran apakah ia berfungsi, seperti waktu yang dipakai, pengerjaan ulang, dan kepuasan pengguna (lihat Topik 5.6 — Metrik dan Pengukuran). Tinjau bersama pengguna.
9. **Otomatisasi di tempat membantu.** Tangkap catatan dari perkakas, bukan formulir; jadikan jalur mudah sebagai jalur yang benar. Periksa bahwa otomatisasi tidak menyembunyikan penilaian yang seharusnya dibuat orang.
10. **Simpan bukti untuk auditor.** Simpan backlog, keputusan, catatan rilis, dan ukuran di tempat auditor dapat melihat. Undang mereka ke tinjauan tentang bagaimana proses berubah.
11. **Pensiunkan proses.** Singkirkan langkah, formulir, dan catatan yang tak lagi melayani tujuannya. Perlakukan penghapusan sebagai perbaikan.
12. **Tinjau kepemilikan proses setiap tahun.** Periksa bahwa setiap proses masih punya pemilik aktif, backlog mutakhir, dan pengguna yang dapat menjangkaunya.

## Pertanyaan untuk dibahas bersama tim Anda

**Siapa yang memiliki setiap proses kita, dan wewenang apa yang mereka punya untuk mengubahnya?**

Daftar proses utama dan sebut pemilik untuk masing-masing. Tanyakan apa yang dapat diubah pemilik tanpa bertanya kepada siapa pun. Sering kali jawabannya "sangat sedikit." Fasilitator dapat menanyakan apa yang diperlukan agar pemilik bisa membuat perubahan kecil dengan cepat. Sepakati satu proses untuk dimulai.

**Untuk apa proses perubahan kita? Dapatkah kita mengatakannya dalam satu kalimat?**

Minta tiap orang menulis tujuan. Bandingkan. Perbedaan menunjukkan kebingungan tentang mengapa proses itu ada. Pakai pernyataan bersama untuk menilai tiap langkah. Singkirkan atau pertanyakan langkah yang tidak melayaninya.

**Kapan terakhir kali kita mengubah proses karena pengguna meminta, dan bagaimana kita mengetahuinya?**

Minta contoh. Jika tidak ada, tanyakan ke mana keluhan pergi. Bahas bagaimana umpan balik dapat sampai ke pemilik: kanal, tinjauan berkala, survei singkat. Pilih satu jalur untuk dicoba.

**Seperti apa uji coba sebulan atas proses yang lebih sederhana?**

Pilih proses dengan gesekan yang diketahui. Jelaskan versi yang lebih ringan, siapa yang akan mencoba, apa yang akan Anda ukur, dan apa yang membuat Anda berhenti. Ini mengubah perdebatan menjadi eksperimen. Sepakati rincian dan tanggalnya.

**Bukti apa yang akan diterima auditor kita dari proses pengiriman perangkat lunak berkelanjutan?**

Tanyakan kepada auditor atau rekan kepatuhan. Daftar apa yang dihasilkan proses: backlog, catatan rilis, ukuran, catatan. Bahas celah. Tim sering terkejut betapa bersedianya auditor menerima bukti perubahan terkendali yang jelas.

**Bagaimana orang mengetahui bahwa proses telah berubah?**

Telusuri perubahan terakhir. Banyak orang mengetahuinya dari rekan atau dengan menabraknya. Bahas catatan rilis dan log perubahan yang terlihat. Sepakati cara sederhana mengumumkan perubahan dan di mana ia berada.

## Dalam praktik: contoh ITIL agile

Badan keselamatan jalan nasional punya departemen TI beranggotakan 90 orang yang mendukung aplikasi yang dipakai polisi dan pengadilan. Proses insiden departemen ditulis delapan tahun lalu: formulir 14 kolom, tiga persetujuan untuk menutup insiden berprioritas tinggi, dan laporan bulanan yang tak dibaca siapa pun. Tim pengiriman melewati formulir selama gangguan dan mengisinya sesudahnya, sehingga catatannya buruk. Temuan audit mengatakan catatan insiden tidak lengkap.

Kepala manajemen layanan menunjuk dirinya sebagai pemilik proses insiden dan membentuk tim kerja kecil: dua analis dari service desk, seorang engineer dari masing-masing dua tim pengiriman, dan petugas mutu dari unit tata kelola badan. Ia menulis tujuan proses: memulihkan layanan dengan cepat dan belajar dari apa yang terjadi. Tim mengamati tiga insiden nyata. Mereka menemukan bahwa formulir diisi setelah kejadian, kebanyakan dengan beberapa nilai yang sama, dan bahwa persetujuan menambah penundaan tanpa pernah mengubah hasil. Mereka membangun backlog dan memulai dengan perubahan terkecil. Uji coba dengan dua tim mengurangi formulir menjadi enam kolom yang diisi otomatis dari perkakas pemantauan bila memungkinkan, membuang dua dari tiga persetujuan, dan menambahkan tinjauan tanpa menyalahkan singkat untuk setiap insiden berprioritas tinggi.

Setelah enam minggu, tim uji coba mencatat insiden selama gangguan dan bukan sesudahnya, dan petugas mutu menemukan catatan lebih lengkap daripada sebelumnya. Tim menerbitkan catatan rilis satu halaman, memperluas perubahan ke semua tim, dan menunjukkan kepada auditor backlog, hasil uji coba, dan ukuran. Beberapa kesulitan tersisa. Satu tim pengiriman tidak pernah bergabung dalam uji coba dan masih memakai formulir lama, kontrak pemasok mensyaratkan kolom yang dihilangkan formulir baru, dan petugas mutu khawatir bahwa membuang persetujuan akan dipertanyakan pada audit berikutnya. Kepala manajemen layanan menambahkan kolom untuk kasus pemasok, meminta tim yang tersisa bergabung pada putaran berikutnya, dan menyepakati dengan auditor untuk meninjau catatan insiden pada rapat triwulanan berikutnya.

## Empat perspektif

### Tim produk dan pengiriman

Tim pengiriman adalah pengguna banyak proses manajemen layanan. Ikut dalam desain proses yang memengaruhi Anda, tawarkan data tentang cara kerjanya dalam praktik, dan coba uji coba. Di tempat langkah proses dapat diotomatisasi dalam pipeline Anda, tawarkan membangunnya.

### Tim layanan dan operasi

Tim operasi sering memiliki prosesnya. Perlakukan masing-masing sebagai produk: tulis tujuan, simpan backlog, tanyakan kepada pengguna, dan rilis perubahan kecil. Sediakan waktu untuk perbaikan proses dan bela, karena pekerjaan pengiriman mudah mendesaknya.

### Kepemimpinan dan tata kelola

Pemimpin memberi pemilik proses wewenang dan waktu, dan menetapkan harapan bahwa proses berubah dari bukti. Minta tujuan dan ukuran tiap proses, dan backlog-nya. Dukung uji coba dan bersedialah menerima bukti dalam bentuk baru.

### Pelanggan dan pengguna

Pelanggan dan pengguna layanan juga mengikuti proses, seperti permintaan dan persetujuan. Beri tahu pemilik apa yang membingungkan atau lambat. Tawarkan ikut uji coba. Harapkan perubahan diumumkan dan dijelaskan.

## Pola kegagalan umum

- **Proses tanpa pemilik.** Tak ada yang dapat mengubahnya. Sebaliknya, tunjuk pemilik dengan wewenang dan waktu.
- **Perancangan ulang big-bang.** Seluruh proses baru diluncurkan sekaligus dan ditolak. Sebaliknya, ubah dalam langkah kecil dan uji coba.
- **Desain oleh komite jauh dari pengguna.** Proses cocok bagi perancangnya. Sebaliknya, sertakan orang yang mengikutinya dan amati pekerjaan nyata.
- **Pergolakan konstan.** Perubahan tiba terlalu sering untuk diserap. Sebaliknya, rilis dengan irama yang dapat diprediksi.
- **Melupakan persyaratan hukum.** Kendali yang dibutuhkan dibuang. Sebaliknya, periksa untuk apa tiap langkah diwajibkan dan sebut sumbernya.
- **Perubahan tidak diumumkan.** Orang menemukannya secara kebetulan. Sebaliknya, terbitkan catatan rilis singkat.
- **Bukti tidak disimpan.** Audit tidak dapat melihat bagaimana proses berubah. Sebaliknya, simpan backlog, keputusan, dan ukuran.
- **Tanpa penghapusan.** Langkah menumpuk. Sebaliknya, perlakukan penghapusan sebagai perbaikan.

## Model kematangan

| Dimensi | Memulai | Mengembangkan | Menstandarkan | Mengelola | Mengorkestrasi |
|---|---|---|---|---|---|
| Kepemilikan dan tujuan | Proses tak punya pemilik atau tujuan yang jelas | Beberapa proses punya pemilik | Setiap proses punya pemilik dengan wewenang, dan tujuan tertulis | Pemilik ditinjau efektivitasnya dan didukung | Pemilik bekerja bersama lintas tim untuk menyelaraskan proses ujung ke ujung |
| Backlog dan perubahan | Perubahan adalah proyek, jarang dan besar | Beberapa pemilik menyimpan daftar gagasan | Setiap proses punya backlog berurutan dan merilis perubahan dalam langkah kecil | Aliran backlog dan dampak rilis diukur | Perubahan proses dikoordinasikan lintas proses dan dengan pemasok |
| Melibatkan pengguna | Perancang jarang berkonsultasi dengan pengguna | Beberapa uji coba dijalankan bersama pengguna | Pengguna ikut serta dalam desain dan uji coba sebagai standar | Umpan balik dan kepuasan pengguna diukur dan ditindaklanjuti | Pelanggan dan pemasok ikut serta dalam desain proses |
| Bukti dan audit | Catatan buruk dan perubahan tidak dicatat | Beberapa perubahan proses dicatat | Backlog, catatan rilis, dan ukuran berfungsi sebagai bukti audit | Auditor meninjau catatan perubahan secara berkala | Bukti dibagikan dengan auditor dan mitra secara terus-menerus |

## Daftar periksa

- [ ] Setiap proses utama punya pemilik yang ditunjuk dengan wewenang dan waktu.
- [ ] Setiap proses punya tujuan satu kalimat dan sekumpulan pengguna yang ditentukan.
- [ ] Setiap proses punya backlog perbaikan yang terlihat dan berurutan.
- [ ] Pengguna dari pengiriman dan operasi ikut serta dalam desain dan uji coba.
- [ ] Perubahan diuji coba sebelum diluncurkan, dengan pemeriksaan yang ditentukan.
- [ ] Perubahan proses dirilis dengan irama disertai catatan singkat.
- [ ] Beberapa ukuran menunjukkan apakah tiap proses berfungsi.
- [ ] Kendali hukum dan kontraktual diidentifikasi dengan sumbernya.
- [ ] Auditor telah melihat backlog, catatan rilis, dan ukuran.
- [ ] Langkah yang tak lagi melayani tujuan disingkirkan.

## Prompt AI

**Tujuan: menyusun pernyataan tujuan dan daftar pengguna untuk sebuah proses.**

```text
Help me write a purpose statement for this process: [name and brief description].

Who follows it: [roles].
Who it serves: [roles].
What goes wrong today: [examples].
Rules or contracts that require parts of it, with source text: [paste, or write "none known"].

Write three alternative one-sentence purpose statements, each focused on an outcome and not on the steps. Then list questions for the users to test which is closest. Do not invent rules. Ask clarifying questions first, and list what you are unsure of.
```

**Tujuan: mengubah umpan balik dan tinjauan insiden menjadi backlog proses.**

```text
Here are comments, complaints, audit findings, and review actions about [process]: [paste one per line, with source].

Group related items. For each group, write a backlog item in the form "As a [role], I want [change] so that [outcome]," using only what the text says. Add a note on who is affected and a question about evidence. Leave priority blank. List items that look like requirements from law or contract, quoting the text, and items that conflict. List what you are unsure of.
```

**Tujuan: merancang uji coba sebulan atas proses yang lebih ringan.**

```text
Design a one-month trial of a lighter version of [process].

Current steps and where people struggle: [describe].
Proposed change: [describe].
Teams that could take part: [list].
Controls that must stay, with source: [list, or write "none known"].

Give: the trial scope, what we expect to see, what to measure before and during (leave targets as [to be agreed]), how to gather user feedback, conditions to stop, and what evidence to keep for auditors. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Tujuan: menulis catatan rilis untuk perubahan proses.**

```text
Write a short release note for a change to [process].

What changed: [describe].
Why: [describe].
Who is affected and from what date: [describe].
What people should do differently: [describe].
Where to ask questions: [contact].

Write under 150 words in plain language, with a heading, a short list of changes, and what to do. Use only my information. Ask clarifying questions first if anything is missing, and list what you are unsure of.
```

## Keterampilan AI

- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): gunakan untuk memperjelas siapa yang memiliki tiap proses dan siapa yang dikonsultasikan.
- [user-story](../../../../skills/user-story/SKILL.md): gunakan untuk menulis butir backlog proses dari sudut pandang pengguna.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md): gunakan untuk mempelajari bagaimana proses sebenarnya berjalan dan di mana ia kesulitan.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): gunakan untuk meninjau bagaimana proses berfungsi bersama penggunanya.
- [kaizen](../../../../skills/kaizen/SKILL.md): gunakan untuk merencanakan perbaikan kecil yang berkelanjutan pada proses.

## Sumber utama

- **The Scrum Guide** (Ken Schwaber dan Jeff Sutherland, scrumguides.org): sumber peran dan artefak yang dipakai di sini sebagai analogi untuk kepemilikan proses dan backlog.
- **Principles behind the Agile Manifesto** (agilemanifesto.org): sisi agile dari pendekatan desain.
- **ITIL** (Wikipedia): sejarah penyelarasan ITIL 4 dengan cara kerja agile, DevOps, dan lean.
- **ISO/IEC 20000** (Wikipedia): daftar bagian, termasuk panduan terbaru tentang agile dan DevOps.

## Referensi

1. The Scrum Guide (November 2020) — Ken Schwaber and Jeff Sutherland, scrumguides.org — https://scrumguides.org/scrum-guide.html
2. Principles behind the Agile Manifesto — Beck et al., agilemanifesto.org — https://agilemanifesto.org/principles.html
3. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
4. ISO/IEC 20000 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_20000
5. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
6. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
7. PDCA — Wikipedia — https://en.wikipedia.org/wiki/PDCA
8. Business process management — Wikipedia — https://en.wikipedia.org/wiki/Business_process_management
9. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
