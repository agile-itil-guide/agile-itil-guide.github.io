# Manajemen Katalog Layanan

**Katalog layanan (ITIL mengejanya "service catalogue") adalah daftar terkurasi tentang apa yang ditawarkan organisasi, dengan pemilik dan deskripsi sederhana untuk setiap layanan, dan nilainya bergantung pada apakah pengguna menganggapnya berguna dan pemilik menjaganya tetap benar.**

## Mengapa ini penting

Tanyakan kepada pengguna apa yang ditawarkan TI dan Anda sering mendapat jawaban yang samar. Tanyakan kepada tim TI dan Anda mendapat daftar sistem. Kedua daftar jarang cocok, dan celahnya menimbulkan kesalahpahaman: pengguna meminta hal yang tidak ada, tim mendukung layanan yang tidak dipakai siapa pun, dan tak ada yang bisa mengatakan siapa bertanggung jawab atas apa. Katalog layanan menutup celah itu dengan menyatakan, di satu tempat dan dalam istilah sederhana, apa yang ditawarkan dan siapa yang berdiri di belakangnya.

Bagi tim agile, katalog juga cara membuat kepemilikan terlihat. Tim yang membangun dan menjalankan layanan seharusnya bisa mengatakan, "inilah yang kami tawarkan, inilah siapa yang ditanya, inilah yang dapat Anda harapkan." Tanpa itu, permintaan tiba di tempat yang salah, insiden memantul antartim, dan staf baru tidak dapat menemukan bantuan.

[Artikel Wikipedia tentang katalog layanan](https://en.wikipedia.org/wiki/Service_catalog) menggambarkan katalog layanan sebagai kumpulan terorganisasi dan terkurasi atas layanan bisnis dan teknologi informasi dalam perusahaan, yang berfungsi sebagai alat manajemen pengetahuan yang menunjuk pakar subjek untuk setiap layanan yang terdaftar. Ia mencatat bahwa volume Service Design ITIL mendefinisikan katalog layanan TI sebagai daftar lengkap layanan khusus TI dan satu-satunya bagian portofolio layanan yang diterbitkan kepada pelanggan, tanpa menyebut edisi ITIL. Topik ini membangun di atas deskripsi itu, dan topik lain dalam panduan, serta menjaga katalog tetap praktis dan ringan.

## Konsep inti

### Apa isi katalog

Menurut Wikipedia, setiap entri dalam katalog layanan biasanya mencakup pemilik yang disebut namanya, deskripsi, kategori, jenis permintaan terkait, layanan penopang, hak, biaya, bagaimana layanan diminta dan dipenuhi, dan kontak eskalasi. Kategori umum mencakup TI, operasi, dan pemenuhan. Anda tidak memerlukan semuanya untuk setiap layanan. Katalog yang baik dimulai dengan beberapa yang benar-benar dibutuhkan pengguna dan staf dukungan.

| Kolom | Mengapa membantu | Siapa yang memakai |
|---|---|---|
| **Nama dan deskripsi dalam kata sederhana** | Pengguna mengenali apa yang ditawarkan | Pengguna, service desk |
| **Pemilik** | Seseorang bertanggung jawab atas layanan | Semua orang |
| **Siapa yang dapat memakainya (hak)** | Menghindari permintaan yang sia-sia | Pengguna, service desk |
| **Cara meminta atau mendapat bantuan** | Membawa pengguna ke tempat yang tepat | Pengguna, service desk |
| **Pada apa ia bergantung (layanan penopang)** | Menunjukkan apa lagi yang harus berfungsi | Operasi, tim pengiriman |
| **Biaya, jika dikenakan** | Mendukung keputusan dan anggaran | Pelanggan, keuangan |
| **Tingkat layanan atau ekspektasi** | Menetapkan ekspektasi | Pengguna, pelanggan (lihat Topik 3.7 — Manajemen Tingkat Layanan) |
| **Kontak eskalasi** | Mempercepat bantuan saat ada masalah | Service desk, operasi |

### Katalog dan portofolio

Artikel Wikipedia menempatkan katalog layanan TI sebagai subset katalog perusahaan yang lebih luas. Dalam kosakata ITIL, portofolio layanan adalah kumpulan lengkap layanan, termasuk yang sedang dikembangkan dan yang akan dipensiunkan, dan katalog adalah bagian yang diterbitkan kepada pelanggan. Sumber yang dibaca di sini tidak mendefinisikan portofolio secara rinci: artikel tentang manajemen portofolio layanan mengalihkan ke manajemen portofolio TI, yang hanya mengatakan bahwa ITIL v3 menyerukan praktik manajemen portofolio layanan yang tampak setara fungsional dengan manajemen portofolio TI. Perlakukan gagasan portofolio sebagai: katalog adalah apa yang Anda tawarkan sekarang, dan portofolio juga apa yang sedang Anda bangun dan pensiunkan (lihat Topik 5.7 — Tata Kelola, Risiko, dan Kepatuhan untuk pilihan portofolio).

### Katalog perusahaan dan TI

Katalog layanan perusahaan mencakup layanan dari beberapa fungsi, seperti sumber daya manusia, fasilitas, dan TI. Katalog layanan TI adalah subset. Artikel mengutip manfaat katalog: memusatkan layanan di perusahaan yang tersebar, mengidentifikasi celah dan redundansi layanan, melacak alokasi sumber daya, dan mengukur permintaan, pasokan, waktu persetujuan, waktu pengiriman, dan keuangan layanan. Untuk layanan cloud, ia mengutip penyediaan mandiri dan definisi terstandar yang membantu perencanaan kapasitas dan perkiraan pembelian. Ini klaim dari artikel, berdasarkan sumber yang dikutipnya.

### Tampilan bisnis dan tampilan teknis

Banyak organisasi membedakan apa yang dilihat pelanggan dari apa yang dibutuhkan penyedia secara internal. Sumber yang dibaca di sini tidak membuat pembedaan itu, jadi perlakukan ini sebagai praktik umum. **Tampilan menghadap pelanggan** mendaftar layanan dalam istilah pengguna ("Email dan kalender"). **Tampilan teknis** mendaftar komponen dan tim di belakangnya ("Server surel, filter spam, layanan direktori"). Tampilan pelanggan membantu pengguna memilih. Tampilan teknis membantu operasi memahami ketergantungan (lihat Topik 4.4 — Manajemen Konfigurasi). Jaga keduanya terhubung, tetapi terpisah, agar pengguna tidak dihadapkan pada nama komponen.

### Katalog sebagai alat pengetahuan

Artikel Wikipedia menekankan bahwa katalog menunjuk pakar subjek untuk setiap layanan. Ini menjadikannya peta siapa tahu apa. Katalog yang dijaga mutakhir membantu service desk merutekan kontak, membantu staf baru menemukan bantuan, dan membantu responder insiden menjangkau orang yang tepat (lihat Topik 3.9 — Manajemen Pengetahuan).

### Katalog dan permintaan

Katalog biasanya mencakup permintaan yang dapat dibuat pengguna untuk setiap layanan, seperti "minta akses" atau "laporkan kesalahan." Model permintaan menjelaskan bagaimana masing-masing dipenuhi (lihat Topik 3.6 — Manajemen Permintaan Layanan). Tidak setiap layanan memerlukan permintaan, dan tidak setiap permintaan memerlukan entri katalog, tetapi permintaan yang sering harus mudah ditemukan.

### Menjaganya tetap benar

Katalog cepat usang jika tak ada yang memilikinya. Layanan berubah, tim bereorganisasi, dan deskripsi menyimpang dari kenyataan. Disiplin yang paling berguna adalah siklus tinjauan: setiap pemilik mengonfirmasi entrinya menurut jadwal, dan layanan yang tak terpakai dipensiunkan. Artikel Wikipedia tidak membahas kritik atau batasan, tetapi pengalaman praktis konsisten: katalog yang salah lebih buruk daripada tidak ada katalog, karena ia mengirim orang ke tempat yang salah dengan penuh keyakinan.

### Katalog dan tim agile

Tim agile sering menolak katalog yang berat karena mengharapkan birokrasi. Katalog ringan sesuai dengan cara kerja agile. Ia dapat berupa dokumen atau halaman bersama, dipelihara pemiliknya sendiri, dengan beberapa kolom per layanan. Ujiannya adalah pemakaian: apakah pengguna dan desk benar-benar membukanya?

## Praktik terbaik

1. **Daftar layanan dalam kata-kata pengguna.** Mulailah dengan menanyakan pengguna dan service desk bagaimana mereka akan menyebut tiap hal. Namai layanan menurut apa yang dilakukan pengguna ("Bergabung dalam rapat video") dan bukan menurut teknologi ("Platform konferensi").
2. **Beri setiap layanan pemilik yang disebut namanya.** Satu orang harus bertanggung jawab atas tiap layanan. Di tempat layanan punya beberapa bagian, tunjuk pemilik untuk keseluruhan dan daftar kontributornya.
3. **Mulai kecil.** Mulailah dengan 10 sampai 20 layanan yang paling sering ditanyakan pengguna. Tambahkan lebih banyak saat Anda belajar apa yang berguna. Daftar singkat yang akurat lebih baik daripada daftar panjang yang usang.
4. **Sertakan hanya yang dipakai orang.** Untuk tiap kolom, tanyakan siapa yang memakainya dan untuk apa. Hapus kolom yang tidak dipakai siapa pun. Tambahkan kolom hanya ketika seseorang membutuhkannya.
5. **Hubungkan ke permintaan dan bantuan.** Untuk tiap layanan, tunjukkan cara meminta sesuatu, melaporkan kesalahan, dan menemukan bantuan. Tautkan ke basis pengetahuan (lihat Topik 3.9 — Manajemen Pengetahuan).
6. **Tunjukkan ekspektasi layanan.** Nyatakan apa yang dapat diharapkan pengguna, seperti jam dukungan dan respons tipikal, dalam istilah sederhana. Tautkan ke perjanjian formal di tempat ada.
7. **Catat ketergantungan.** Untuk tiap layanan, catat layanan dan pemasok utama yang menjadi tumpuannya. Ini membantu respons insiden dan perencanaan perubahan.
8. **Pisahkan tampilan pelanggan dari tampilan teknis.** Jaga deskripsi yang menghadap pengguna bebas dari jargon. Tautkan ke catatan teknis di tempat ada.
9. **Tinjau menurut jadwal.** Minta setiap pemilik mengonfirmasi entrinya setidaknya dua kali setahun, dan pensiunkan layanan yang tak dipakai siapa pun. Tunjukkan tanggal tinjauan terakhir pada tiap entri.
10. **Buat mudah ditemukan dan dipakai.** Taruh katalog di tempat pengguna sudah melihat, seperti intranet atau portal. Uji pencarian dengan kueri nyata.
11. **Pakai katalog untuk menemukan celah dan tumpang tindih.** Cari layanan yang tidak dimiliki siapa pun, layanan yang saling menggandakan, dan permintaan tanpa layanan yang cocok. Bawa temuan ke perencanaan (lihat Topik 5.5 — Kepemilikan Produk dan Layanan).
12. **Perlakukan perubahan katalog sebagai perubahan layanan.** Ketika Anda menambah, mengubah, atau memensiunkan layanan, umumkan kepada desk dan pengguna yang terdampak, seperti rilis.

## Pertanyaan untuk dibahas bersama tim Anda

**Jika rekan baru bertanya apa yang kita tawarkan, apa jawaban kita, dan apakah kita semua akan mengatakan hal yang sama?**

Minta tiap orang mendaftar layanan dalam dua menit, lalu bandingkan. Perbedaan menunjukkan betapa kaburnya batas. Fasilitator dapat menanyakan butir mana yang tidak akan dikenali pengguna. Pakai daftar gabungan sebagai draf katalog, dan tandai butir yang ada ketidaksepakatan.

**Layanan mana yang tidak punya pemilik jelas?**

Telusuri daftar dan tandai yang tak seorang pun bisa mengatakan siapa yang bertanggung jawab atas layanan itu. Layanan tanpa pemilik sering menyebabkan penundaan terpanjang dalam insiden dan permintaan. Tanyakan apa yang menghalangi seseorang mengambil kepemilikan: waktu, wewenang, atau batas yang tidak jelas. Sepakati pemilik atau keputusan memensiunkan untuk masing-masing.

**Apa yang diminta pengguna yang tidak kita daftar, dan apa yang kita daftar yang tak diminta siapa pun?**

Bandingkan data permintaan dengan daftar. Permintaan tanpa layanan yang cocok mengungkap celah; layanan terdaftar tanpa permintaan mengungkap kandidat pensiun. Berhati-hatilah: sebagian layanan dipakai secara diam-diam. Tanyakan pengguna sebelum menghapus. Pilih satu celah dan satu kandidat untuk diperiksa.

**Apa yang perlu dilihat pengguna untuk memilih layanan yang tepat tanpa menelepon kita?**

Ambil pilihan umum, seperti perkakas mana untuk berbagi berkas. Tanyakan informasi apa yang akan membantu: deskripsi singkat, untuk siapa, perbandingan. Susun entri satu paragraf dan uji dengan dua pengguna. Tujuannya katalog yang mengurangi panggilan dengan menjadi jelas.

**Bagaimana kita mengetahui ketika layanan telah berubah dan katalog usang?**

Tanyakan kapan tinjauan terakhir berlangsung dan siapa yang melakukannya. Bahas pemicu, seperti reorganisasi atau rilis besar, dan siklus berkala. Tanggal "terakhir ditinjau" yang terlihat pada tiap entri membantu. Sepakati tanggal tinjauan pertama dan siapa yang bertanggung jawab.

**Pada apa kita bergantung yang tidak ada dalam katalog?**

Daftar platform dan pemasok di belakang layanan Anda. Tanyakan mana yang terdaftar dan siapa pemiliknya. Ketergantungan tanpa pemilik adalah risiko. Pilih satu untuk ditambahkan ke tampilan teknis.

## Dalam praktik: contoh ITIL agile

Dewan daerah memiliki 120 staf di departemen TI-nya yang melayani 2.500 karyawan dewan dan beberapa layanan publik. Staf mengeluh bahwa mereka tidak tahu siapa yang ditanya untuk bantuan, dan service desk menghabiskan banyak waktu mengalihkan panggilan. Dewan pernah membangun katalog layanan dengan 300 entri, tetapi jarang dipakai dan sebagian besar usang.

Kepala pengiriman layanan memutuskan memulai lagi, dari yang kecil. Ia meminta service desk 30 alasan paling umum orang menghubungi mereka, dan mengelompokkannya menjadi 15 layanan dalam kata-kata pengguna: "Email dan kalender," "Berkas dan berbagi," "Laptop dan perangkat," "Situs web dewan," "Sistem keuangan," dan seterusnya. Untuk masing-masing, pemilik yang ditunjuk menulis empat hal: deskripsi dua kalimat, untuk siapa, cara mendapat bantuan, dan apa yang diharapkan. Ketergantungan dicatat dalam daftar teknis terpisah untuk operasi. Katalog adalah satu halaman web di intranet dewan, dan tiap entri menunjukkan tanggal terakhir dikonfirmasi pemiliknya.

Setelah tiga bulan, panggilan ke desk tentang siapa yang ditanya turun, dan pemilik memperhatikan celah: tak ada yang memiliki sistem pemesanan ruang rapat, dan dua layanan tumpang tindih. Ini ditugaskan dan digabung. Masalah tersisa. Tiga pemilik belum mengonfirmasi entri mereka, dan sebagian staf masih menelepon desk karena kebiasaan. Kepala pengiriman layanan menetapkan siklus pengingat dan mengatur agar desk mengarahkan penelepon ke katalog sambil menangani permintaan mereka. Ia juga menemukan bahwa sebagian entri ditulis dalam bahasa teknis dan meminta petugas komunikasi meninjaunya.

## Empat perspektif

### Tim produk dan pengiriman

Tim pengiriman sebaiknya ditunjuk sebagai pemilik layanan yang mereka bangun dan jalankan, dan menjaga entri mereka mutakhir. Ketika Anda meluncurkan atau memensiunkan layanan, perbarui katalog dan beri tahu service desk. Pakai katalog untuk menemukan siapa yang diajak bicara tentang ketergantungan.

### Tim layanan dan operasi

Operasi dan service desk adalah pemakai terberat. Beri tahu pemilik apa yang salah atau hilang dalam entri, dan pakai katalog untuk perutean dan eskalasi. Jaga tampilan teknis tertaut dengan tampilan pelanggan, agar responder insiden dapat melihat apa bergantung pada apa.

### Kepemimpinan dan tata kelola

Pemimpin dapat memakai katalog untuk melihat apa yang ditawarkan organisasi, apa yang tumpang tindih, dan apa yang yatim. Minta celah dan duplikat ditangani, dan pemilik ditunjuk. Jangan mewajibkan setiap kolom untuk setiap layanan; minta apa yang mendukung keputusan.

### Pelanggan dan pengguna

Pelanggan dan pengguna mendapat pandangan jelas tentang apa yang dapat mereka minta dan apa yang diharapkan. Pakai katalog untuk menemukan layanan yang tepat, dan beri tahu pemilik ketika entri salah atau tidak jelas. Jika Anda tidak menemukan apa yang Anda butuhkan, katakan, karena itu bukti celah.

## Pola kegagalan umum

- **Terlalu besar, terlalu cepat.** Ratusan entri dibuat dan tidak dipelihara. Sebaliknya, mulai dengan layanan yang paling banyak dipakai dan tumbuh.
- **Ditulis dalam bahasa penyedia.** Pengguna tidak dapat menemukan apa yang mereka butuhkan. Sebaliknya, namai layanan menurut apa yang dilakukan pengguna dan uji bersama pengguna.
- **Tanpa pemilik.** Tak ada yang menjaga entri tetap benar. Sebaliknya, tunjuk pemilik untuk setiap entri dan tampilkan tanggal tinjauan.
- **Katalog yang tak dipakai siapa pun.** Ia berada di situs yang tidak dikunjungi pengguna. Sebaliknya, taruh di tempat orang sudah melihat dan minta desk mengarahkan ke sana.
- **Mencampur tampilan pelanggan dan teknis.** Pengguna menghadapi nama komponen. Sebaliknya, jaga tampilan pelanggan yang jelas dan tautkan tampilan teknis untuk operasi.
- **Tanpa pensiun.** Layanan mati tetap terdaftar. Sebaliknya, tinjau pemakaian dan pensiunkan yang tak dibutuhkan siapa pun.
- **Memperlakukannya sebagai proyek sekali jalan.** Katalog usang setelah peluncuran. Sebaliknya, tetapkan siklus tinjauan dan jadikan bagian dari perubahan.
- **Terlalu banyak kolom wajib.** Pemilik mengisi kolom untuk memenuhi templat. Sebaliknya, wajibkan hanya yang dipakai seseorang.

## Model kematangan

| Dimensi | Memulai | Mengembangkan | Menstandarkan | Mengelola | Mengorkestrasi |
|---|---|---|---|---|---|
| Cakupan dan kejelasan | Layanan diketahui secara informal | Ada daftar beberapa layanan | Katalog layanan utama dalam kata-kata pengguna dengan pemilik | Pemakaian dan celah diukur dan katalog disesuaikan | Katalog mencakup fungsi dan mitra dan dibentuk bersama pengguna |
| Kepemilikan dan kemutakhiran | Tak ada yang memiliki daftar | Beberapa pemilik sesekali mengonfirmasi entri | Setiap entri punya pemilik dan tanggal tinjauan | Tinjauan yang terlambat dilacak dan diselesaikan | Kepemilikan dan tinjauan menjadi rutin di seluruh organisasi |
| Kaitan dengan permintaan dan bantuan | Permintaan lewat email atau telepon | Beberapa entri tertaut ke formulir atau bantuan | Entri tertaut ke permintaan, pengetahuan, dan jalur dukungan | Klik-tembus dan pengalihan diukur | Permintaan, pengetahuan, dan dukungan terintegrasi lintas fungsi |
| Ketergantungan dan keputusan | Ketergantungan adalah pengetahuan lisan | Beberapa ketergantungan didaftar | Ketergantungan dicatat dan dipakai dalam pekerjaan insiden dan perubahan | Data ketergantungan mendukung perencanaan dan tinjauan risiko | Ketergantungan dibagikan dengan pemasok dan dipakai merencanakan bersama |

## Daftar periksa

- [ ] Kami punya daftar layanan dalam kata-kata pengguna, dimulai dari yang paling banyak dipakai.
- [ ] Setiap layanan punya pemilik yang ditunjuk.
- [ ] Setiap entri menyatakan untuk siapa, cara mendapat bantuan, dan apa yang diharapkan.
- [ ] Katalog ada di tempat pengguna dan service desk sudah melihat.
- [ ] Entri menunjukkan tanggal terakhir dikonfirmasi.
- [ ] Pemilik meninjau entri mereka setidaknya dua kali setahun.
- [ ] Ketergantungan utama dicatat dalam tampilan teknis.
- [ ] Layanan yang tak terpakai ditinjau untuk pensiun.
- [ ] Menambah, mengubah, atau memensiunkan layanan diumumkan kepada desk dan pengguna.
- [ ] Kami telah menguji katalog dengan kueri pengguna nyata.

## Prompt AI

**Tujuan: mengubah data kontak menjadi draf daftar layanan dalam kata-kata pengguna.**

```text
Below are the reasons people contacted our service desk in the last [period]: [paste short, anonymized descriptions or category counts].

Group them into 10 to 20 candidate services, each named in plain words that a non-technical user would recognize, such as "Email and calendar." For each, give a two-sentence description based only on the contacts, the contacts that fit under it, and a question to ask its owner. List contacts that do not fit. Do not invent services or systems that do not appear in the data. Ask clarifying questions first if the data is thin, and list what you are unsure of.
```

**Tujuan: menulis entri katalog yang jelas.**

```text
Help me write a service catalog entry for [service].

What it does, in my own words: [describe].
Who may use it: [describe].
How users get help or make requests: [describe].
Support hours and what users can expect: [describe, or write "unknown"].
Main things it depends on: [list].
Owner: [role].

Write a short entry for users (no jargon, under 80 words) and a separate technical note for operations. Mark anything you added as an assumption. Do not invent service levels or contacts. Ask clarifying questions first, and list what you are unsure of.
```

**Tujuan: meninjau katalog untuk celah, tumpang tindih, dan yatim.**

```text
Here is our service catalog (names, owners, descriptions, and last review dates): [paste].
Here is data on what users request or report: [paste counts by topic, or write "none"].

Using only this text, list: services with no owner or an overdue review; pairs of services that seem to overlap; request topics with no matching service; and services with no requests in the data. For each, suggest a question for the owner or the desk rather than a conclusion. Do not guess about services not listed. List what you are unsure of.
```

**Tujuan: merencanakan tinjauan katalog bersama pemilik.**

```text
Plan a 60-minute review of our service catalog with [number] service owners.

State of the catalog: [describe, such as number of entries and how old they are].
Problems we know of: [list].

Give a timed agenda that has each owner confirm or correct their entries, look at overlaps and gaps, decide what to retire, and agree a review date. Include a one-page template for owners to prepare. Keep it free of any particular tool. Ask clarifying questions first if information is missing, mark assumptions, and list what you are unsure of.
```

## Keterampilan AI

- [service-catalog](../../../../skills/service-catalog/SKILL.md): gunakan untuk menyusun entri dan menstrukturkan katalog layanan.
- [stakeholder-analysis](../../../../skills/stakeholder-analysis/SKILL.md): gunakan untuk memahami siapa yang memakai tiap layanan dan apa yang mereka butuhkan.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md): gunakan untuk menemukan permintaan dan layanan mana yang paling banyak dipakai.
- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): gunakan untuk mencatat siapa yang memiliki, mendukung, dan dikonsultasikan tentang tiap layanan.
- [product-roadmap](../../../../skills/product-roadmap/SKILL.md): gunakan untuk merencanakan bagaimana layanan akan ditambah, diubah, atau dipensiunkan dari waktu ke waktu.

## Sumber utama

- **Service catalog** (Wikipedia): deskripsi singkat tentang isi, manfaat, dan definisi ITIL tentang katalog layanan TI.
- **IT portfolio management** (Wikipedia): latar belakang konsep portofolio, termasuk catatan bahwa manajemen portofolio layanan ITIL v3 tampak setara fungsional.
- **ITIL** (Wikipedia): konteks tentang versi ITIL dan asal gagasan katalog dan portofolio.
- **Knowledge management** (Wikipedia): latar belakang tentang bagaimana katalog berfungsi sebagai alat pengetahuan.

## Referensi

1. Service catalog — Wikipedia — https://en.wikipedia.org/wiki/Service_catalog
2. IT portfolio management — Wikipedia — https://en.wikipedia.org/wiki/IT_portfolio_management
3. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
4. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
5. Knowledge management — Wikipedia — https://en.wikipedia.org/wiki/Knowledge_management
6. Enterprise service management — Wikipedia — https://en.wikipedia.org/wiki/Enterprise_service_management
7. Help desk — Wikipedia — https://en.wikipedia.org/wiki/Help_desk
8. Service-level agreement — Wikipedia — https://en.wikipedia.org/wiki/Service-level_agreement
