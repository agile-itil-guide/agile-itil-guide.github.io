# Pemampuan Perubahan

**Pemampuan perubahan ada untuk membiarkan perubahan yang bermanfaat terjadi dengan aman dan cepat, dan bukti dari riset pengiriman perangkat lunak adalah bahwa risiko lebih baik dikendalikan oleh perubahan kecil, tinjauan sejawat, dan pemeriksaan otomatis daripada dengan mengirim setiap perubahan ke komite.**

## Mengapa ini penting

Perubahan adalah tempat pengiriman berkelanjutan dan manajemen layanan paling sering bertabrakan. Tim pengiriman ingin merilis sering, karena perubahan kecil yang sering lebih mudah dipahami dan dibalik. Operasi dan tata kelola ingin menghindari gangguan dan menyimpan catatan, karena perubahan masa lalu telah merusak layanan. Keduanya benar. Perselisihan biasanya tentang cara mengendalikan risiko: dengan persetujuan sebelum perubahan, atau dengan kualitas perubahan dan kecepatan pemulihan.

Praktik ini disebut pemampuan perubahan (change enablement) dalam ITIL 4. Nama baru itu adalah pernyataan tujuan. Sasarannya adalah memampukan perubahan yang bermanfaat terjadi, bukan mencegah perubahan. Versi ITIL lebih tua menyebut praktik ini manajemen perubahan dan memberinya peran kuat dalam persetujuan dan jadwal, yang banyak tim alami sebagai gerbang.

Topik ini memakai bukti terbaik yang tersedia: panduan program riset DORA tentang persetujuan perubahan dan metrik pengiriman perangkat lunaknya, dibaca dari halaman program itu sendiri. Halaman DORA melaporkan bahwa persetujuan eksternal yang berat dikaitkan dengan kinerja pengiriman yang lebih buruk. Halaman itu juga tidak memberi ukuran efek atau rincian statistik, dan merujuk pada laporan 2019 untuk riset yang mendasarinya, jadi perlakukan panduannya sebagai kuat tetapi belum final dan ujilah dalam konteks Anda sendiri. Kosakata ITIL di sini berasal dari deskripsi yang banyak diterbitkan yang tidak dapat diperiksa panduan ini terhadap teks pemilik kerangka kerja (lihat Topik 2.2 — ITIL).

## Konsep inti

### Apa yang dilakukan pemampuan perubahan

**Perubahan** adalah penambahan, modifikasi, atau penghapusan apa pun yang dapat memengaruhi layanan. Pemampuan perubahan adalah praktik memastikan perubahan dinilai, diotorisasi, dan dijadwalkan sehingga risiko dikelola dan perubahan yang bermanfaat berjalan. Praktik ini juga menyimpan catatan apa yang berubah, yang vital untuk respons insiden karena banyak insiden bermula dari perubahan terbaru (lihat Topik 3.2 — Manajemen Insiden).

### Jenis perubahan

ITIL 4 secara luas dijelaskan mengenali tiga jenis perubahan, masing-masing dengan jalur berbeda:

| Jenis | Apa itu | Jalur tipikal |
|---|---|---|
| **Perubahan standar** | Perubahan berisiko rendah dan dipahami baik yang mengikuti prosedur terdokumentasi | Diotorisasi lebih dulu; dicatat, tanpa persetujuan kasus per kasus |
| **Perubahan normal** | Perubahan yang memerlukan penilaian dan otorisasi | Dinilai untuk risiko dan dampak, lalu diotorisasi oleh orang atau kelompok yang sesuai |
| **Perubahan darurat** | Perubahan yang harus dibuat segera, misalnya untuk memulihkan layanan | Otorisasi dipercepat, dengan tinjauan lebih lengkap sesudahnya |

Nama dan definisi persisnya harus diperiksa terhadap publikasi pemilik. Prinsipnya stabil: sesuaikan tingkat kendali dengan risiko.

### Otoritas perubahan

Setiap jenis perubahan memerlukan seseorang yang berwenang menyetujuinya. Dalam praktik lama ini sering berupa change advisory board (CAB). Halaman DORA tidak menghapus CAB; ia menyarankan peran "strategis", mengoordinasikan lintas tim, mendukung perbaikan proses, dan membuat keputusan pertukaran bisnis seperti waktu ke pasar terhadap risiko. Untuk perubahan rutin, katanya, persetujuan paling baik diimplementasikan lewat tinjauan sejawat selama pengembangan, didukung otomatisasi.

### Apa yang dilaporkan DORA tentang persetujuan

Halaman DORA tentang menyederhanakan persetujuan perubahan mengatakan:

- Persetujuan eksternal yang berat, seperti CAB atau tanda tangan manajer senior, dikaitkan dengan kinerja pengiriman perangkat lunak yang lebih buruk.
- Halaman melaporkan tidak ada bukti bahwa tinjauan eksternal yang lebih formal menurunkan laju kegagalan perubahan.
- Halaman berargumen bahwa persetujuan berat memperlambat pengiriman, mengarah pada rilis lebih besar dan lebih jarang dengan risiko lebih tinggi, dan mengatakan datanya mendukung hipotesis ini.

Halaman menyebut jebakan: mengandalkan CAB pusat untuk menangkap kesalahan, menerapkan proses persetujuan yang sama pada semua perubahan tanpa memandang risiko, tidak memperbaiki proses terhadap metrik, dan menambah proses serta persetujuan sebagai tanggapan atas ketidakstabilan produksi, yang katanya cenderung memperburuk keadaan. "No evidence was found" berarti bukti manfaat tidak ditemukan; itu tidak membuktikan bahwa tinjauan eksternal tidak berpengaruh. Halaman tidak memberi kriteria untuk apa yang dihitung sebagai perubahan berisiko tinggi, tidak ada panduan untuk regulasi tertentu, dan tidak ada rencana transisi untuk industri teregulasi.

### Alternatifnya: kendali dalam pipeline

DORA menyarankan memenuhi pemisahan tugas lewat tinjauan sejawat yang dicatat di platform pengembangan, dan memakai pengujian berkelanjutan, integrasi berkelanjutan, dan pemantauan untuk mendeteksi, mencegah, dan mengoreksi perubahan buruk lebih awal. Ia juga menyarankan memperlakukan platform sebagai produk yang memberi pengembang umpan balik cepat tentang keamanan, kinerja, stabilitas, dan cacat, menandai perubahan berisiko tinggi untuk pengawasan ekstra, dan membuat proses perubahan normal cukup cepat untuk menangani keadaan darurat. Kendali ada pada bukti yang dihasilkan pipeline: siapa yang meninjau, pengujian apa yang lulus, apa yang di-deploy, dan bagaimana dapat dibatalkan.

### Mengukur perubahan

Halaman DORA tentang metrik kinerja pengiriman perangkat lunak mendaftar lima ukuran:

| Ukuran | Apa itu | Kelompok |
|---|---|---|
| Lead time perubahan | Waktu dari perubahan di-commit ke kendali versi sampai deployment di produksi | Throughput |
| Frekuensi deployment | Seberapa sering deployment terjadi | Throughput |
| Waktu pemulihan deployment gagal | Berapa lama waktu untuk pulih dari deployment yang gagal dan memerlukan intervensi segera | Throughput |
| Laju kegagalan perubahan | Porsi deployment yang memerlukan intervensi segera, seperti rollback atau hotfix | Ketidakstabilan |
| Laju pengerjaan ulang deployment | Porsi deployment yang tak terencana dan merupakan hasil insiden produksi | Ketidakstabilan |

Halaman mengatakan kecepatan dan stabilitas bukan pertukaran: ukurannya berkorelasi untuk sebagian besar tim, dan performa teratas baik pada kelima ukuran. Halaman memperingatkan agar tidak menetapkan ukuran sebagai tujuan (hukum Goodhart), mengandalkan satu metrik, membandingkan aplikasi yang sangat berbeda, dan bersaing dengan tim lain. Ia menyarankan tim memperbaiki terhadap kinerja masa lalu mereka sendiri. Halaman tidak memberi ambang tolok ukur atau rumus, jadi definisikan tiap ukuran untuk konteks Anda sendiri sebelum memakainya (lihat Topik 5.6 — Metrik dan Pengukuran).

### Catatan dan tampilan konfigurasi

Catatan perubahan harus mengatakan apa yang berubah, mengapa, siapa yang menyetujui, dan kapan dibuat, dan idealnya terhubung ke layanan yang terdampak. Perkakas kendali versi, build, dan deployment dapat menghasilkan banyak dari ini secara otomatis. Menghubungkan perubahan dengan konfigurasi layanan mendukung analisis dampak dan respons insiden (lihat Topik 4.4 — Manajemen Konfigurasi).

### Perubahan dan rilis

Pemampuan perubahan memutuskan apakah perubahan boleh dilanjutkan. Manajemen rilis dan deployment membawanya ke produksi (lihat Topik 3.5 — Manajemen Rilis dan Deployment). Dalam pengiriman berkelanjutan keduanya menyatu dalam praktik, dengan persetujuan tertanam dalam pipeline.

## Praktik terbaik

1. **Klasifikasikan perubahan menurut risiko.** Tentukan daftar singkat jenis perubahan, dengan kriteria dan contoh. Sesuaikan jalur dengan risiko, agar perubahan rutin cepat dan perubahan berisiko mendapat perhatian.
2. **Otorisasi lebih dulu perubahan berisiko rendah.** Untuk perubahan yang dipahami baik, diuji, dan dapat dibalik, sepakati prosedur standar dan biarkan berjalan tanpa persetujuan kasus per kasus. Catat secara otomatis.
3. **Jadikan tinjauan sejawat sebagai persetujuan default.** Wajibkan orang kedua meninjau perubahan sebelum penggabungan, dan catat tinjauan di platform pengembangan. Ini memenuhi pemisahan tugas untuk sebagian besar perubahan, seperti dijelaskan halaman DORA.
4. **Otomatisasi pemeriksaan.** Jalankan pengujian, pemindaian keamanan, dan pemeriksaan kebijakan pada setiap perubahan, dan jadikan hasilnya bagian dari catatan. Persetujuan berdasarkan bukti lebih kuat daripada yang berdasarkan formulir.
5. **Jaga perubahan tetap kecil.** Perubahan kecil lebih mudah ditinjau, diuji, dan dibalik. Jika perubahan terasa berisiko, tanyakan apakah dapat dipecah.
6. **Buat rollback mudah dan terlatih.** Untuk tiap jenis perubahan, ketahui cara membatalkannya, dan berlatihlah. Kemampuan pulih cepat mengurangi kebutuhan memprediksi setiap kegagalan.
7. **Tandai perubahan berisiko tinggi.** Tentukan sinyal, seperti perubahan pada logika pembayaran atau infrastruktur bersama, yang memicu tinjauan ekstra. Terapkan jalur lebih berat hanya pada itu.
8. **Beri otoritas perubahan peran strategis.** Pakai dewan pusat mana pun untuk mengoordinasikan lintas tim, menyelesaikan konflik, dan membuat pertukaran bisnis. Jangan pakai sebagai pos pemeriksaan untuk setiap perubahan.
9. **Tangani keadaan darurat dengan jalur normal.** Buat proses reguler cukup cepat dan andal sehingga perubahan darurat mengikutinya, dengan tinjauan sesudahnya. Jalur darurat yang sering dipakai menandakan jalur normal terlalu lambat.
10. **Jangan menambah persetujuan setelah insiden secara default.** Halaman DORA mengatakan menambah proses sebagai tanggapan atas ketidakstabilan cenderung memperburuk. Tanyakan dulu apakah perbaikan yang lebih baik adalah pengujian, perubahan lebih kecil, atau pemulihan lebih cepat.
11. **Ukur prosesnya.** Lacak lead time, waktu menunggu persetujuan, porsi perubahan yang lewat tanpa persetujuan manual, dan laju kegagalan perubahan. Pakai ukuran untuk memperbaiki, bukan memeringkat tim.
12. **Jelaskan prosesnya.** Halaman DORA mencatat bahwa mengomunikasikan proses yang ada dengan jelas dan membantu tim menavigasinya terkait dengan kinerja lebih baik bahkan sebelum Anda mengubahnya. Terbitkan panduan satu halaman dengan contoh.

## Pertanyaan untuk dibahas bersama tim Anda

**Berapa proporsi perubahan kita yang berisiko rendah dan dipahami baik, dan bagaimana disetujui hari ini?**

Ambil perubahan sebulan dan pilah. Sebagian besar tim menemukan bahwa mayoritas besar bersifat rutin. Tanyakan berapa lama perubahan rutin menunggu persetujuan dan apa yang ditambahkan penyetuju. Fasilitator dapat menanyakan apakah ada yang ingat perubahan rutin yang persetujuannya mencegahnya gagal. Gunakan jawabannya untuk mengidentifikasi kandidat pertama untuk otorisasi lebih dulu.

**Apa yang sebenarnya ditangkap langkah persetujuan kita?**

Daftar sepuluh perubahan terakhir yang ditolak atau ditunda pada persetujuan dan mengapa. Bandingkan dengan masalah yang sampai ke produksi meskipun disetujui. Jika persetujuan sedikit menangkap, tanyakan apa yang akan menangkap isu yang sama lebih awal, seperti pengujian atau tinjauan sejawat. Ingat bahwa halaman DORA melaporkan tidak ada bukti bahwa tinjauan eksternal yang lebih formal menurunkan laju kegagalan perubahan. Sepakati satu perubahan untuk dicoba.

**Bagaimana kita membatalkan perubahan yang buruk, dan seberapa cepat?**

Pilih perubahan terbaru dan jelaskan rollback-nya. Jika tidak jelas, belum diuji, atau manual, itulah risikonya. Tanyakan berapa lama dan siapa yang akan melakukannya. Sepakati melatih satu rollback bulan ini. Tim yang dapat pulih dalam hitungan menit dapat menerima lebih banyak perubahan.

**Perubahan kita yang mana yang memerlukan pengawasan ekstra, dan bagaimana kita mengenalinya?**

Kumpulkan contoh perubahan yang menyebabkan insiden serius. Cari ciri yang sama: infrastruktur bersama, kendali keamanan, migrasi data. Susun tiga sinyal yang akan menandai perubahan sebagai berisiko tinggi. Tanyakan siapa yang harus meninjau perubahan yang ditandai dan seberapa cepat.

**Kapan kita menambah kendali setelah insiden, dan apakah itu membantu?**

Minta contoh. Daftar apa yang ditambahkan, masalah yang ditangani, dan apakah masalah berulang. Halaman DORA menyebut menambah persetujuan sebagai tanggapan atas ketidakstabilan sebagai jebakan. Bahas apakah tanggapan lain, seperti pengujian lebih baik atau perubahan lebih kecil, akan berhasil. Catat satu pelajaran.

**Bukti apa yang akan diterima auditor dari pipeline kita sebagai ganti tanda tangan?**

Minta auditor atau rekan kepatuhan bergabung. Daftar bukti yang sudah dihasilkan pipeline: tinjauan, hasil pengujian, catatan deployment. Tanyakan apa yang kurang. Banyak auditor menerima tinjauan sejawat yang tercatat dan bukti otomatis bila andal. Sepakati deskripsi singkat kendali dan masa uji coba.

## Dalam praktik: contoh ITIL agile

Departemen TI sebuah rumah sakit daerah mendukung sistem penjadwalan klinis yang diperbarui tim internal tujuh orang. Setiap perubahan, dari perbaikan salah ketik sampai migrasi basis data, masuk ke change advisory board mingguan. Perbaikan kecil menunggu hingga delapan hari. Dokter mengeluh, dan pengembang mulai menggabungkan perbaikan ke dalam rilis lebih besar untuk menghindari antrean, yang membuat setiap rilis lebih berisiko.

Kepala TI dan ketua dewan meninjau perubahan setahun. Sebagian besar kecil, dua menyebabkan insiden, dan tak satu pun dari keduanya tertangkap oleh dewan. Mereka merancang pendekatan tiga jalur. Perubahan standar, seperti perubahan teks dan konfigurasi dalam batas yang disepakati, dengan pengujian otomatis lulus dan rollback teruji, diotorisasi lebih dulu dan dicatat otomatis. Perubahan normal memerlukan tinjauan sejawat yang dicatat di platform pengembangan dan pemeriksaan terhadap daftar singkat sinyal risiko tinggi seperti perubahan pada penanganan data pasien. Perubahan yang ditandai berisiko tinggi masuk ke dewan, yang bertemu dua kali seminggu. Perubahan darurat mengikuti jalur normal dengan tinjauan pascaimplementasi.

Setelah empat bulan, perubahan standar live dalam sehari, dan dewan melihat sekitar seperlima volume yang dulu. Laju kegagalan perubahan tidak naik. Masalah tersisa. Dua pengembang menerapkan sinyal risiko tinggi secara tidak konsisten dan satu perubahan yang ditandai sampai ke dewan terlambat, dan audit internal meminta bukti bahwa tinjauan sejawat bukan stempel karet. Tim menulis contoh sinyal, menambahkan tinjauan pengambilan sampel atas tinjauan sejawat oleh engineer senior, dan menyepakati dengan audit untuk meninjau bukti pada rapat triwulanan berikutnya.

## Empat perspektif

### Tim produk dan pengiriman

Tim pengiriman memikul sebagian besar kendali: tinjauan, pengujian, perubahan kecil, dan rollback. Bangun ini ke dalam pipeline dan buat bukti terlihat. Jaga perubahan tetap kecil dan beri tahu operasi apa yang akan datang. Gunakan proses perubahan sebagai tempat berbagi informasi risiko, bukan hanya untuk mendapat izin.

### Tim layanan dan operasi

Tim operasi tahu perubahan mana yang telah merugikan layanan. Bagikan pengetahuan itu sebagai sinyal untuk tinjauan ekstra, dan bantu membangun pemeriksaan yang menangkapnya lebih awal. Dukung jalur lebih ringan untuk perubahan berisiko rendah, dan simpan catatan yang membuat respons insiden lebih cepat.

### Kepemimpinan dan tata kelola

Pemimpin memutuskan seberapa banyak persetujuan yang disyaratkan organisasi. Panduan DORA menyarankan meminta bukti kendali dan bukan tanda tangan pada setiap perubahan. Dukung pengukuran lead time dan laju kegagalan perubahan, dan hindari menambah proses setelah insiden tanpa memeriksa penyebab. Sepakati dengan audit bukti apa yang dapat diterima.

### Pelanggan dan pengguna

Pelanggan dan pengguna diuntungkan oleh perbaikan kecil yang sering dan lebih sedikit gangguan besar. Harapkan diberi tahu tentang perubahan yang memengaruhi Anda, dalam bahasa sederhana dan sebelumnya. Jika Anda punya kebutuhan khusus, seperti periode pembekuan, beri tahu penyedia sejak dini agar dapat direncanakan.

## Pola kegagalan umum

- **Satu jalur untuk setiap perubahan.** Perubahan rutin mengantre di belakang yang berisiko. Sebaliknya, klasifikasikan menurut risiko dan beri tiap kelas jalurnya sendiri.
- **Persetujuan sebagai satu-satunya kendali.** Tanda tangan menggantikan kualitas. Sebaliknya, bangun pengujian, tinjauan, dan rollback ke dalam pipeline.
- **Dewan yang meninjau apa yang tak dapat dinilainya.** Anggota menyetujui perubahan yang tidak mereka pahami. Sebaliknya, kirim perubahan kepada orang yang punya pengetahuan, dan pakai dewan untuk koordinasi.
- **Menggabung untuk menghindari antrean.** Tim menggabungkan perubahan, membuat setiap rilis lebih berisiko. Sebaliknya, buat antrean cukup pendek sehingga perubahan kecil menjadi jalur yang mudah.
- **Menambah kendali setelah setiap insiden.** Proses tumbuh dan kecepatan turun. Sebaliknya, cari penyebab dan perbaiki dengan pengujian, perubahan lebih kecil, atau pemulihan lebih cepat.
- **Tinjauan sejawat stempel karet.** Tinjauan formal tetapi dangkal. Sebaliknya, ambil sampel tinjauan, bagikan contoh yang baik, dan jaga perubahan cukup kecil untuk ditinjau.
- **Tanpa rollback.** Perubahan tidak dapat dibatalkan. Sebaliknya, wajibkan dan latih rollback untuk setiap jenis perubahan.
- **Memainkan metrik.** Tim memecah perubahan atau menyembunyikan kegagalan agar tampak baik. Sebaliknya, pakai beberapa ukuran, tinjau bersama, dan fokus pada perbaikan dari waktu ke waktu.

## Model kematangan

| Dimensi | Memulai | Mengembangkan | Menstandarkan | Mengelola | Mengorkestrasi |
|---|---|---|---|---|---|
| Klasifikasi dan jalur | Semua perubahan mengikuti satu jalur atau tidak ada | Beberapa tim punya jalur cepat untuk perubahan sederhana | Jenis perubahan dengan kriteria dan jalur berbeda adalah standar | Porsi perubahan menurut jalur dan waktu tunggu diukur dan disetel | Jalur disesuaikan lintas tim berdasarkan bukti bersama |
| Persetujuan dan bukti | Persetujuan lewat tanda tangan atau tidak dicatat | Beberapa perubahan ditinjau sejawat | Tinjauan sejawat dan pemeriksaan otomatis dicatat untuk sebagian besar perubahan | Kualitas tinjauan dan bukti disampel dan diperbaiki | Bukti mengalir otomatis ke audit dan mitra |
| Pemulihan | Rollback ad hoc | Beberapa perubahan punya langkah rollback | Rollback ditetapkan dan dilatih untuk tiap jenis perubahan | Waktu pemulihan diukur dan dikurangi | Praktik pemulihan dibagikan dan diuji lintas tim dan pemasok |
| Pengukuran dan perbaikan | Sedikit ukuran | Beberapa tim melacak lead time | Lead time, frekuensi, laju kegagalan, dan waktu pemulihan dilacak per layanan | Ukuran mendorong perbaikan terencana dan tidak dipakai sebagai target | Tim belajar dari ukuran satu sama lain dan memperbaiki di seluruh organisasi |

## Daftar periksa

- [ ] Kami telah menetapkan jenis perubahan dengan kriteria dan contoh.
- [ ] Perubahan berisiko rendah yang dipahami baik diotorisasi lebih dulu dan dicatat otomatis.
- [ ] Tinjauan sejawat dicatat di platform pengembangan untuk perubahan normal.
- [ ] Pengujian dan pemeriksaan otomatis berjalan pada setiap perubahan.
- [ ] Setiap jenis perubahan punya rollback yang telah dilatih.
- [ ] Kami punya sinyal yang menandai perubahan berisiko tinggi untuk pengawasan ekstra.
- [ ] Dewan pusat mana pun punya peran jelas dalam koordinasi dan pertukaran.
- [ ] Kami melacak lead time perubahan, frekuensi deployment, waktu pemulihan deployment gagal, dan laju kegagalan perubahan untuk tiap layanan.
- [ ] Auditor kami telah mengatakan bukti apa yang mereka terima sebagai ganti tanda tangan.
- [ ] Kami punya panduan satu halaman untuk proses perubahan dengan contoh.

## Prompt AI

**Tujuan: mengklasifikasikan perubahan bulan lalu menurut risiko dan jalur persetujuan.**

```text
Below is a list of the changes we made last month: [paste one line per change with a short description, who reviewed it, how long it waited for approval, and whether it caused an incident; remove personal data].

Help me sort them into three groups: routine and low risk, needs normal assessment, and needs extra scrutiny. For each group, say what features of the changes in my list led you to the grouping, using only the text. Calculate the share in each group and the average wait for approval from my numbers only. Suggest which routine changes might be pre-authorized and what safeguards I would want first. Do not guess at risks beyond what I wrote. List what you are unsure of.
```

**Tujuan: menulis prosedur perubahan standar.**

```text
Help me write a procedure for a standard (pre-authorized) change: [name the change, for example "update a configuration value within agreed limits"].

How it is done today, step by step: [paste].
Checks that exist: [tests, scans, reviews].
How to undo it: [describe, or write "unknown"].
Who owns the procedure: [role].

Write a one-page procedure with: when it applies, the criteria that make a change standard, the steps, the checks that must pass, how it is recorded, how to undo it, and when to treat it as a normal change instead. Mark every statement you added as an assumption. Do not claim any rule requires something unless I pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Tujuan: bersiap membahas dengan auditor bukti yang dihasilkan pipeline kita.**

```text
An auditor asks how we authorize changes. Our pipeline does the following: [describe code review, tests, scans, deployment record, who can approve, and where records are kept].

The auditor's concern in their words: [paste, or write "unknown"].
Rules we know apply, with source text if you have it: [paste, or write "none known"].

Make a table of what evidence each step produces, where it is stored, who can alter it, and what gaps the auditor may notice. Suggest three lightweight ways to strengthen the weakest points. Do not state that any standard requires something unless I pasted its text. Mark assumptions, and list what you are unsure of.
```

**Tujuan: merancang uji coba persetujuan yang lebih ringan.**

```text
Design a three-month trial of lighter approval for [service].

Current process: [describe].
Change volume and types last quarter: [paste counts from your records].
Measures we already have: [list, for example lead time and change fail rate].
Concerns from audit or operations: [list].

Propose: which change types to include, safeguards, what to measure and how often (without inventing targets), what would make us stop or pause the trial, and how to report results. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## Keterampilan AI

- [change-request](../../../../skills/change-request/SKILL.md): gunakan untuk menyusun catatan perubahan yang membawa apa yang dibutuhkan operasi dan auditor.
- [enterprise-change-management](../../../../skills/enterprise-change-management/SKILL.md): gunakan ketika perubahan bersifat organisasional dan memerlukan perencanaan untuk orang selain sistem.
- [release-notes](../../../../skills/release-notes/SKILL.md): gunakan untuk memberi tahu pengguna dan service desk apa yang dilakukan perubahan.
- [two-way-door-decisions](../../../../skills/two-way-door-decisions/SKILL.md): gunakan untuk membedakan keputusan yang dapat dibalik yang bisa dibuat cepat dari yang tak dapat dibalik yang memerlukan kehati-hatian lebih.
- [risk-register](../../../../skills/risk-register/SKILL.md): gunakan untuk mencatat dan meninjau risiko yang dibawa perubahan dan bagaimana dikendalikan.

## Sumber utama

- **Streamlining change approval** (DORA, dora.dev): panduan program riset tentang tinjauan sejawat, otomatisasi, dan peran dewan perubahan.
- **DORA's software delivery performance metrics** (dora.dev): definisi dan peringatan untuk lead time perubahan, frekuensi deployment, waktu pemulihan, laju kegagalan perubahan, dan laju pengerjaan ulang.
- **ITIL** (Wikipedia): latar belakang versi ITIL dan peralihan ke ITIL 4.
- **Continuous delivery** (Wikipedia): latar belakang praktik yang membuat perubahan kecil yang sering menjadi aman.

## Referensi

1. Streamlining change approval — DORA, dora.dev — https://dora.dev/capabilities/streamlining-change-approval/
2. DORA's software delivery performance metrics — DORA, dora.dev — https://dora.dev/guides/dora-metrics-four-keys/
3. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
4. Continuous delivery — Wikipedia — https://en.wikipedia.org/wiki/Continuous_delivery
5. Change management — Wikipedia — https://en.wikipedia.org/wiki/Change_management
6. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
7. Separation of duties — Wikipedia — https://en.wikipedia.org/wiki/Separation_of_duties
8. Version control — Wikipedia — https://en.wikipedia.org/wiki/Version_control
9. Goodhart's law — Wikipedia — https://en.wikipedia.org/wiki/Goodhart%27s_law
