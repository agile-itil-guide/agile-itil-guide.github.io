# Perkiraan Pengiriman dan Metrik Perencanaan

**Perkiraan pengiriman dan metrik perencanaan memungkinkan tim menyatakan, dengan rentang yang jujur, kapan pekerjaan kemungkinan selesai dan seberapa banyak yang dapat diambil, dengan mengamati aliran berkelanjutan pekerjaan yang selesai dan kapasitas tim, dan keduanya berfungsi bagi tim layanan ketika pekerjaan terencana dan pekerjaan yang digerakkan interupsi dihitung bersama.**

## Mengapa ini penting

Tim agile bertujuan pada pengiriman perangkat lunak berkelanjutan, dan setiap orang yang bergantung pada pengiriman itu mengajukan pertanyaan yang sama: kapan ini selesai, berapa banyak yang dapat diambil tim, dan apa yang terjadi ketika sesuatu yang mendesak datang? Tim yang tidak dapat menjawab pertanyaan ini dengan bukti akan jatuh kembali pada janji yang tidak dapat ditepati, dan orang yang bergantung padanya belajar tidak memercayai setiap tanggal.

Tim yang menjalankan layanan merasakannya lebih tajam daripada kebanyakan. Pekerjaan perbaikan terencana, permintaan layanan, dan insiden berbagi orang yang sama. Rencana yang mengabaikan bagian yang tidak terencana akan gagal pada minggu pertama insiden tiba. Perkiraan yang berasal dari riwayat tim sendiri, dan menyatakan rentangnya, bertahan lebih baik dalam berhadapan dengan kenyataan daripada tanggal yang berasal dari harapan.

Topik ini menjelaskan cara memperkirakan dari aliran pekerjaan yang selesai, cara merencanakan di sekitar kapasitas tim, dan metrik perencanaan mana yang membantu atau menyesatkan. Scrum, sprint, dan velocity adalah satu cara merencanakan; bagian singkat menjelang akhir membahasnya untuk tim yang memakainya. Ukuran di sini dibangun di atas ukuran aliran di Topik 1.5 — Kanban dan panduan pengukuran yang lebih luas di Topik 5.6 — Metrik dan Pengukuran.

## Konsep inti

### Perkirakan dari aliran, bukan dari janji

Perkiraan adalah pernyataan tentang masa depan berdasarkan bukti dari masa lalu, dan membawa ketidakpastian. Kanban Guide mendefinisikan ekspektasi tingkat layanan sebagai perkiraan berapa lama sebuah item pekerjaan seharusnya mengalir melalui alur kerja, berdasarkan cycle time masa lalu, dan mengatakan bahwa ini bukan kesepakatan. Definisi itu model yang baik untuk semua perkiraan pengiriman: pakai riwayat nyata, katakan apa yang dicakupnya, dan hindari menjanjikan lebih dari yang telah Anda ukur (lihat Topik 1.5 — Kanban).

Dua jenis perkiraan yang umum:

- **Berapa lama satu item akan memakan waktu?** Lihat berapa lama item serupa yang selesai memakan waktu, dan nyatakan rentang atau pernyataan seperti "kebanyakan item jenis ini selesai dalam sejumlah hari tertentu."
- **Berapa banyak yang akan selesai pada suatu tanggal, atau kapan sekumpulan item akan selesai?** Lihat berapa banyak item yang biasanya diselesaikan tim dalam satu periode, dan terapkan rentang itu pada pekerjaan yang tersisa.

### Ukuran aliran di balik sebuah perkiraan

Kanban Guide mendefinisikan empat ukuran, dan itulah bahan baku perkiraan pengiriman:

| Ukuran | Apa yang dikatakannya | Bagaimana mendukung perkiraan |
|---|---|---|
| **Cycle time** | Berapa lama item yang selesai memakan waktu dari mulai sampai selesai | Sebaran cycle time terbaru memberi rentang berapa lama item baru akan memakan waktu |
| **Throughput** | Berapa banyak item yang selesai dalam satu periode | Rentang throughput terbaru memberi rentang berapa banyak yang akan selesai dalam periode mendatang |
| **Pekerjaan yang sedang berjalan (WIP)** | Berapa banyak item yang dimulai tetapi belum selesai | WIP yang terlalu banyak memperpanjang cycle time dan membuat setiap perkiraan kurang andal |
| **Usia item pekerjaan** | Sudah berapa lama item yang belum selesai sedang dikerjakan | Menunjukkan item yang sudah lebih tua daripada kebanyakan yang selesai, selagi masih ada waktu bertindak |

Panduan mencatat bahwa tim boleh mengganti nama ukuran ini dan harus menambah yang lain bila berguna, dan bahwa ukuran hanya penting bila memberi tahu cara kerja tim. Gunakan persentil dan rentang, bukan hanya rata-rata, karena ekor panjang tersembunyi dalam rata-rata (lihat Topik 5.6 — Metrik dan Pengukuran).

### Metode perkiraan sederhana

Tim dapat memperkirakan tanpa perkakas khusus:

1. Kumpulkan throughput untuk tiap delapan sampai dua belas minggu terakhir, atau periode serupa, dari item nyata yang selesai.
2. Ambil yang terendah, yang tipikal, dan yang tertinggi dari angka-angka ini.
3. Bagi jumlah item yang tersisa dengan masing-masing angka untuk mendapat rentang periode penyelesaian.
4. Nyatakan rentang, data asalnya, dan apa yang akan mengubahnya, seperti pekerjaan baru, perubahan tim, atau ketergantungan.

Ini aturan praktis, bukan standar. Ia mengasumsikan bahwa pekerjaan masa depan menyerupai pekerjaan masa lalu dan item berukuran kurang lebih serupa. Ketika itu tidak benar, katakan, dan perlakukan rentangnya lebih lebar. Bandingkan setiap perkiraan dengan apa yang terjadi dan sesuaikan metodenya, seperti dianjurkan Topik 3.11 — Ketersediaan, Kapasitas, dan Kinerja untuk perkiraan permintaan.

### Kapasitas tim

Kapasitas adalah seberapa banyak pekerjaan yang dapat diserap tim dalam satu periode. Bagi tim pengiriman, itu bukan jumlah orang dikali hari dalam periode. Cuti, tugas dukungan, rapat, dan pekerjaan tak terencana semuanya mengurangi apa yang tersedia untuk item terencana. Pernyataan kapasitas yang berguna mendaftar orang dan hari yang tersedia, lalu mengurangi porsi yang dicadangkan untuk pekerjaan tak terencana, berdasarkan apa yang ditunjukkan beberapa periode terakhir.

Keterampilan capacity-planning dan Topik 3.11 — Ketersediaan, Kapasitas, dan Kinerja menjelaskan kapasitas untuk layanan dan infrastruktur. Logika yang sama berlaku bagi tim: rencanakan dengan rentang, periksa terhadap apa yang terjadi, dan tinjau ulang rencana ketika fakta berubah.

### Pekerjaan terencana dan tak terencana bersama

Tim layanan menerima insiden, permintaan mendesak, dan perubahan yang tidak dijadwalkan siapa pun. Jika ini tidak dihitung, perkiraan untuk pekerjaan terencana akan terlalu optimis. Beri pekerjaan tak terencana jenis itemnya sendiri, hitung berapa banyak yang datang dan berapa lama memakan waktu, dan simpan datanya di samping pekerjaan terencana. Ini juga memberi Product Owner atau pemilik layanan bukti tentang insiden berulang mana yang menghabiskan kapasitas, yang mendukung keputusan memperbaiki penyebabnya (lihat Topik 3.3 — Manajemen Masalah).

### Aliran pengiriman berkelanjutan dan irama rilis

Tim yang mengirim secara berkelanjutan merilis perubahan kecil ketika siap, alih-alih menunggu akhir periode perencanaan. Ini memperpendek waktu antara selesai dan terkirim, dan membuat perkiraan lebih mudah diperiksa: setiap item yang selesai adalah satu titik data. Perubahan tetap mengikuti pendekatan pemampuan perubahan organisasi, dan perubahan standar yang telah diotorisasi lebih dulu membantu di sini (lihat Topik 3.4 — Pemampuan Perubahan dan Topik 3.5 — Manajemen Rilis dan Deployment).

### Jika Anda memakai Scrum, sprint, dan velocity

Sebagian tim merencanakan dalam siklus berdurasi tetap. Scrum Guide 2020, oleh Ken Schwaber dan Jeff Sutherland, mendefinisikan Scrum sebagai kerangka kerja ringan untuk solusi adaptif atas masalah yang kompleks. Acara-acaranya berlangsung dalam Sprint, batas waktu satu bulan atau kurang. Bagian ini mencakup minimum yang dibutuhkan tim jika memakainya; baca panduan itu sendiri sebelum mengubah cara kerja tim.

- **Sprint dan Sprint Goal:** Sprint adalah batas waktunya, dan Sprint Goal adalah tujuan tunggal untuknya. Tujuan yang dapat dipahami orang di luar tim memandu pilihan lebih baik daripada daftar tiket.
- **Product Backlog, Product Owner, dan Scrum Master:** Product Backlog adalah daftar berurutan tentang apa yang dibutuhkan produk. Product Owner adalah satu orang yang bertanggung jawab atas urutannya, dan Scrum Master bertanggung jawab menegakkan Scrum dan membantu tim menerapkannya.
- **Increment dan Definition of Done:** Increment adalah langkah yang dapat dipakai dan terverifikasi menuju Product Goal, dan Definition of Done adalah standar kualitas yang harus dipenuhi pekerjaan agar dihitung. Tim layanan dapat memasukkan pemantauan, runbook, dan rollback yang teruji ke dalamnya.
- **Acara:** Sprint Planning, Daily Scrum, Sprint Review, dan Sprint Retrospective. Retrospektif adalah tempat tim memeriksa cara kerjanya dan merencanakan perbaikan (lihat Topik 6.1 — Percakapan Tim).
- **Velocity:** angka berbasis estimasi yang dipakai sebagian tim untuk merencanakan seberapa banyak pekerjaan yang diambil. Pakai hanya untuk perencanaan tim sendiri. Jika menjadi target, tim menggelembungkan estimasi, jadi pilih ukuran aliran, yang menghitung item selesai, dan ukuran hasil.

Panduan mengatakan Scrum adalah kerangka kerja, bukan metode lengkap. Ia tidak mencakup respons insiden, tingkat layanan, atau proses perubahan, dan memakai hanya sebagiannya tidak menjadikan hasilnya Scrum. Jika Anda mengadaptasinya, sebut variasinya dengan jujur. Campuran acara Scrum dan aliran Kanban kadang disebut [Scrumban](https://en.wikipedia.org/wiki/Scrumban).

## Praktik terbaik

1. **Perkirakan dari riwayat Anda sendiri.** Gunakan cycle time dan throughput item terbaru yang selesai, dan nyatakan periode yang dicakup data. Jangan meminjam angka dari tim lain.
2. **Beri rentang, bukan satu tanggal.** Tunjukkan kasus rendah, tipikal, dan tinggi, dan katakan apa yang akan menggeser hasilnya. Tanggal tanpa rentang menjanjikan kepastian yang tidak Anda miliki.
3. **Hitung pekerjaan tak terencana.** Catat insiden, permintaan mendesak, dan interupsi sebagai item pekerjaan dengan jenisnya sendiri. Ukur berapa banyak yang datang dan berapa lama memakan waktu.
4. **Tetapkan kapasitas dari data.** Daftar orang dan hari yang tersedia, kurangi cuti dan tugas dukungan, dan cadangkan porsi untuk pekerjaan tak terencana berdasarkan periode terbaru. Tinjau porsi itu secara berkala.
5. **Batasi pekerjaan yang sedang berjalan.** Terlalu banyak pekerjaan yang dimulai memperpanjang cycle time dan melemahkan setiap perkiraan. Tetapkan batas dan tinjau ketika data berubah (lihat Topik 1.5 — Kanban).
6. **Pantau usia item pekerjaan setiap hari.** Usia menunjukkan masalah pada item yang belum selesai selagi masih ada waktu bertindak. Tinjau item tertua lebih dulu.
7. **Gunakan persentil dan distribusi.** Katakan bahwa kebanyakan item suatu jenis selesai dalam sejumlah hari, dan tunjukkan ekor yang lambat. Rata-rata menyembunyikannya.
8. **Bandingkan perkiraan dengan kenyataan.** Setelah tiap periode, catat apa yang diperkirakan dan apa yang terjadi. Sesuaikan metodenya, bukan hanya angkanya.
9. **Pakai estimasi untuk perencanaan, bukan untuk menghakimi.** Jika tim mengestimasi item, pakai angkanya untuk perencanaan sendiri, dan jangan memeringkat orang atau tim berdasarkan angka itu (lihat Topik 5.6 — Metrik dan Pengukuran).
10. **Buat perkiraan terlihat oleh orang yang bergantung padanya.** Bagikan rentang dan asumsinya kepada pelanggan dan pemangku kepentingan, dan perbarui ketika fakta berubah.
11. **Bawa pekerjaan perbaikan ke aliran yang sama.** Tempatkan perbaikan masalah, pekerjaan pemantauan, dan otomatisasi di samping fitur, agar pertukarannya terlihat (lihat Topik 3.15 — Peningkatan Berkelanjutan).
12. **Jika memakai sprint dan velocity, jaga agar kecil dan jujur.** Sepakati bagian Scrum mana yang Anda ikuti, sebut variasinya, dan uji pendekatan berbasis aliran jika interupsi mendominasi.

## Pertanyaan untuk dibahas bersama tim Anda

**Bagaimana kita menjawab "kapan ini selesai?" hari ini, dan atas dasar apa jawabannya?**

Minta tiga jawaban terakhir yang diberikan tim dan atas dasar apa masing-masing. Bandingkan dengan apa yang terjadi. Tim sering menemukan bahwa tanggal berasal dari harapan atau dari pendapat orang paling senior. Lanjutkan dengan menanyakan riwayat apa yang bisa dipakai tim sebagai gantinya.

**Berapa porsi waktu kita yang tersita pekerjaan yang tak direncanakan siapa pun, dan apakah kita tahu dari data?**

Hitung item terencana, permintaan mendesak, dan insiden selama beberapa minggu terakhir. Fasilitator dapat menanyakan apakah porsinya stabil atau berubah menurut musim, dan siapa yang memutuskan kapan interupsi mengalahkan pekerjaan terencana. Sepakati cara mencatatnya mulai sekarang.

**Seperti apa cycle time kita, dan apa yang akan kita katakan jika pelanggan bertanya berapa lama permintaan tipikal memakan waktu?**

Plot atau daftar cycle time item terakhir yang selesai. Tanyakan berapa lama kebanyakan item, berapa lama yang paling lambat, dan apa yang menjelaskan yang lambat. Bahas apakah ekspektasi tingkat layanan berdasarkan riwayat ini akan adil, dan siapa yang perlu mendengarnya.

**Item kita saat ini yang mana yang sudah lebih tua daripada kebanyakan item yang selesai?**

Lihat item terbuka tertua. Tanyakan mengapa masing-masing macet, siapa yang dapat membukanya, dan apa yang akan dilakukan tim hari ini. Tutup dengan memutuskan seberapa sering tim meninjau usia.

**Kapan perkiraan kita terakhir kali ternyata salah, dan apa yang kita ubah sesudahnya?**

Minta contoh terbaru, perkiraannya, dan hasilnya. Cari apa yang terlewat dari perkiraan: pekerjaan tak terencana, ketergantungan, atau item yang lebih besar dari dugaan. Sepakati satu perubahan pada metode dan bagaimana tim akan memeriksanya.

**Jika kita memakai sprint atau velocity, apa yang dilakukannya untuk kita, dan apa yang akan hilang jika kita membuangnya?**

Tanyakan dengan jujur masalah apa yang diselesaikan masing-masing. Cari bukti, seperti fokus yang lebih baik atau tujuan yang lebih jelas, dan bahaya, seperti estimasi yang digelembungkan atau interupsi yang diabaikan. Fasilitator sebaiknya mewaspadai perubahan apa pun yang menghapus putaran umpan balik, yang merupakan bagian berguna. Sepakati satu eksperimen dan cara membandingkan hasilnya.

## Dalam praktik: contoh ITIL agile

Departemen TI sebuah rumah sakit daerah memiliki tim tujuh orang yang memelihara aplikasi penjadwalan pasien. Manajer klinik meminta tanggal, dan tim terus memberikannya. Sebagian besar tanggal itu terlewat, karena insiden dari bangsal, permintaan dari klinik, dan penambalan keamanan terus berdatangan, dan tim menghabiskan sebagian besar harinya untuk itu.

Kepala tim mulai mencatat setiap item, terencana atau tidak, dengan tanggal mulai dan selesainya. Setelah delapan minggu, data menunjukkan bahwa sekitar separuh waktu tim tersita pekerjaan tak terencana dan sebagian besar item terencana selesai dalam kurang dari dua minggu, dengan ekor panjang berisi item yang menunggu tim lain. Tim menyepakati tiga perubahan. Ia akan menyatakan setiap perkiraan sebagai rentang, memakai throughput dan cycle time terbaru. Ia akan mencadangkan separuh kapasitasnya untuk pekerjaan tak terencana dan merencanakan hanya terhadap sisanya. Ia akan meninjau item terbuka tertua setiap pagi.

Selama dua bulan berikutnya perkiraan sebagian besar tepat, dan para manajer klinik, yang kini melihat rentang dan asumsinya, merencanakan di sekitarnya. Pemilik layanan, seorang manajer operasional klinik, dapat melihat insiden berulang mana yang menghabiskan kapasitas, dan menaikkan prioritas perbaikan atas kegagalan sinkronisasi janji temu yang berulang; kegagalan itu berhenti. Kesulitan masih ada. Insiden besar masih mendorong sebagian pekerjaan keluar, dan para manajer yang menyukai jawaban cepat dari pengaturan lama merasa rentang itu kurang memuaskan. Tim sepakat memberi tahu mereka apa yang berubah dalam perkiraan setiap kali bergeser, dan membandingkan pendekatannya dengan metode siklus tetap untuk pekerjaan perbaikan pada tinjauan berikutnya.

## Empat perspektif

### Tim produk dan pengiriman

Tim pengiriman paling diuntungkan dari memperkirakan dengan data aliran mereka sendiri. Catat pekerjaan saat dimulai dan selesai, batasi pekerjaan yang sedang berjalan, dan rilis perubahan kecil secara berkelanjutan. Bagikan rentang kepada orang yang menunggu, dan gunakan Definition of Done, jika ada, untuk memasukkan pekerjaan operasional yang membuat rilis dapat didukung.

### Tim layanan dan operasi

Tim operasi memiliki pekerjaan tak terencana yang membuat perkiraan gagal. Catat insiden, permintaan, dan perubahan sebagai item pekerjaan, dan bagikan pola berulang agar memengaruhi urutan pekerjaan. Gunakan data cycle time untuk menetapkan ekspektasi realistis dengan pelanggan, dan eksplisitlah tentang seberapa banyak kapasitas untuk perbaikan terencana.

### Kepemimpinan dan tata kelola

Pemimpin mendapat gambaran lebih jujur dari rentang perkiraan dan ukuran aliran daripada dari laporan status. Minta rentang beserta asumsinya, akurasi perkiraan dari waktu ke waktu, dan apa yang diubah tim karena data. Hindari menargetkan angka individu, yang menghasilkan permainan angka, dan terimalah bahwa perkiraan akan bergeser ketika fakta bergeser.

### Pelanggan dan pengguna

Pelanggan dan pengguna mendapat manfaat dari ekspektasi yang lebih jelas dan lebih sedikit tanggal yang terlewat. Tanyakan kepada tim berapa lama yang diharapkan untuk jenis permintaan Anda dan harapkan itu bertumpu pada riwayat. Jika permintaan Anda mendesak, harapkan ditanya mengapa, karena mendahulukannya memengaruhi pekerjaan orang lain.

## Pola kegagalan umum

- **Menjanjikan tanggal dari harapan.** Tanggal berasal dari opini dan terlewat. Sebaliknya, perkirakan dari item terbaru yang selesai dan tunjukkan rentangnya.
- **Mengabaikan pekerjaan tak terencana.** Interupsi merusak rencana setiap periode. Sebaliknya, hitung sebagai item pekerjaan dan cadangkan kapasitas berdasarkan data.
- **Perkiraan satu angka.** Satu tanggal menyembunyikan ketidakpastian. Sebaliknya, beri kasus rendah, tipikal, dan tinggi dengan asumsi.
- **Hanya memakai rata-rata.** Ekor panjang item lambat tersembunyi. Sebaliknya, gunakan persentil dan distribusi.
- **Memulai terlalu banyak.** Pekerjaan berjalan yang tinggi memperpanjang setiap cycle time. Sebaliknya, batasi dan selesaikan sebelum memulai.
- **Memakai velocity atau throughput sebagai target kinerja.** Tim menggelembungkan estimasi atau memecah item agar tampak bagus. Sebaliknya, pakai angkanya untuk perencanaan, dan nilai hasilnya (lihat Topik 5.6 — Metrik dan Pengukuran).
- **Tidak pernah memeriksa perkiraan.** Metode tidak pernah membaik. Sebaliknya, bandingkan setiap perkiraan dengan apa yang terjadi.
- **Menerapkan siklus tetap pada pekerjaan yang tidak cocok.** Antrean permintaan tak terduga yang dipaksa ke periode tetap menimbulkan frustrasi. Sebaliknya, uji pendekatan berbasis aliran dan bandingkan hasilnya.

## Model kematangan

| Dimensi | Memulai | Mengembangkan | Menstandarkan | Mengelola | Mengorkestrasi |
|---|---|---|---|---|---|
| Perkiraan | Tanggal berasal dari opini | Beberapa tim memakai data masa lalu | Tim memperkirakan sebagai rentang dari data aliran mereka sendiri | Akurasi perkiraan dilacak dan metode diperbaiki | Perkiraan dikoordinasikan lintas tim dan pemasok |
| Ukuran aliran | Sedikit ukuran dikumpulkan | Beberapa tim mencatat cycle time atau throughput | Empat ukuran aliran dikumpulkan secara konsisten | Ukuran ditinjau dan dipakai untuk menetapkan ekspektasi | Data aliran dibagikan lintas tim dan dipakai untuk merencanakan bersama |
| Kapasitas dan pekerjaan tak terencana | Interupsi tidak dihitung | Beberapa tim melacak pekerjaan tak terencana | Kapasitas untuk pekerjaan tak terencana ditetapkan dari data | Porsi dan penyebab pekerjaan tak terencana ditinjau dan dikurangi | Tim operasi dan pengiriman merencanakan kapasitas bersama |
| Penggunaan estimasi dan siklus tetap | Estimasi dipakai untuk menghakimi orang | Beberapa tim memakai estimasi untuk perencanaan sendiri | Tim menyepakati praktik mana yang dipakai dan menamai variasinya | Dampak praktik ditinjau terhadap aliran dan hasil | Praktik disesuaikan lintas tim dari pembelajaran bersama |

## Daftar periksa

- [ ] Perkiraan berasal dari riwayat tim sendiri tentang item yang selesai.
- [ ] Setiap perkiraan berupa rentang dengan asumsi yang dinyatakan.
- [ ] Insiden, permintaan, dan pekerjaan perbaikan semuanya dicatat sebagai item pekerjaan.
- [ ] Kapasitas untuk pekerjaan tak terencana ditetapkan dari data dan ditinjau.
- [ ] Cycle time, throughput, pekerjaan yang sedang berjalan, dan usia item pekerjaan dilacak.
- [ ] Pekerjaan yang sedang berjalan punya batas yang ditinjau tim.
- [ ] Item terbuka tertua ditinjau secara berkala.
- [ ] Perkiraan dibandingkan dengan kenyataan setelah tiap periode.
- [ ] Estimasi dan velocity, jika dipakai, bukan target.
- [ ] Setiap penggunaan Scrum, sprint, atau variasi dituliskan dan dinamai dengan jujur.

## Prompt AI

**Tujuan: menyusun rentang perkiraan dari data throughput Anda sendiri.**

```text
Help me forecast delivery for a team of [number and type of people].

Throughput (items finished) for each of the last [number] weeks: [paste the real figures as a list].
Items remaining: [number], and a note on how similar in size they are: [paste].
Known changes that may affect the next weeks (leave, new work, dependencies): [paste, or write "none known"].

Calculate the lowest, typical, and highest weekly throughput from the figures, and divide the remaining items by each to give a range of weeks. State the assumptions. Do not extrapolate beyond the data or invent numbers. If the data are too thin, say so and ask what to add. List what you are unsure of.
```

**Tujuan: menganalisis cycle time dan mengusulkan ekspektasi tingkat layanan.**

```text
Below are the start and finish dates of the last [number] finished work items of type [type]: [paste as a table; use only real data].

Calculate the cycle time of each item. Describe the spread: what most items take, what the slowest take, and what might explain the slow ones. Suggest a service level expectation in the form "most items of this type finish within N days", and say how confident the data allow us to be. Do not state it as a promise. If the data are too few, say so and ask what to collect. List what you are unsure of.
```

**Tujuan: mengukur seberapa banyak kapasitas yang tersita pekerjaan tak terencana.**

```text
Below is a list of the work items our team completed over the last [number] weeks, each marked as planned or unplanned, with the time it took: [paste as a table; use only real data].

Calculate the share of time on planned and unplanned work for each week, using only the numbers I gave. Describe the pattern, suggest what share of capacity to hold back for unplanned work, and name two assumptions behind the suggestion. Ask clarifying questions first if the data are thin, and list what you are unsure of.
```

**Tujuan: meninjau item terbuka tertua dan merencanakan pelepasan hambatan.**

```text
Our open work items, with start dates and current state: [paste as a table; use only real data].
Cycle times of our last [number] finished items: [paste].

Calculate the current age of each open item and flag those older than most finished items. For each flagged item, suggest two questions to ask about what blocks it. Do not guess the cause. List what you are unsure of.
```

## Keterampilan AI

- [kanban](../../../../skills/kanban/SKILL.md): gunakan untuk menyiapkan ukuran aliran, batas pekerjaan yang sedang berjalan, dan ekspektasi tingkat layanan.
- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): gunakan untuk memeriksa apakah kapasitas yang tersedia memenuhi permintaan yang diproyeksikan, dan apa yang dilakukan tentang celahnya.
- [demand-forecasting](../../../../skills/demand-forecasting/SKILL.md): gunakan untuk memperkirakan beban mendatang sebagai rentang dari data masa lalu dan rencana bisnis.
- [software-engineering-metrics](../../../../skills/software-engineering-metrics/SKILL.md): gunakan untuk memilih metrik, menamai vektor permainan angkanya dan pagar pengamannya, dan mengisi piagam metrik.
- [scrum](../../../../skills/scrum/SKILL.md): gunakan jika tim merencanakan dalam sprint, untuk menyiapkan atau meninjau peran, acara, dan artefaknya.

## Sumber utama

- **The Kanban Guide** (kanbanguides.org): mendefinisikan ukuran aliran dan ekspektasi tingkat layanan sebagai perkiraan berdasarkan cycle time masa lalu.
- **The Scrum Guide** (Ken Schwaber dan Jeff Sutherland, scrumguides.org): definisi Scrum yang otoritatif dan singkat, untuk tim yang memakai sprint.
- **Kanban (development)** (Wikipedia): tinjauan ukuran aliran dan sistem tarik Kanban.
- **Scrum (software development)** (Wikipedia): tinjauan sejarah, peran, acara, dan kritik Scrum.

## Referensi

1. The Kanban Guide — John Coleman, Daniel Vacanti, and contributors, kanbanguides.org — https://kanbanguides.org/english/
2. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
3. The Scrum Guide (November 2020) — Ken Schwaber and Jeff Sutherland, scrumguides.org — https://scrumguides.org/scrum-guide.html
4. Scrum (software development) — Wikipedia — https://en.wikipedia.org/wiki/Scrum_(software_development)
5. Scrumban — Wikipedia — https://en.wikipedia.org/wiki/Scrumban
6. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
7. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
