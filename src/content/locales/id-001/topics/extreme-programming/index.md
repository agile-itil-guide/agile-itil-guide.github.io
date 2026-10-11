# Extreme Programming

**Extreme Programming (XP) adalah metode agile yang paling spesifik tentang praktik rekayasa, dan kebiasaannya menguji lebih dulu, berintegrasi secara berkelanjutan, dan berbagi kepemilikan kode adalah yang membuat perubahan yang sering pada layanan aktif menjadi aman.**

## Mengapa ini penting

Perubahan yang sering adalah tujuan pengiriman berkelanjutan dan kekhawatiran manajemen layanan. Cara mendamaikan keduanya bukan dengan lebih banyak rapat persetujuan, melainkan dengan kemampuan yang lebih kuat untuk mengetahui bahwa sebuah perubahan berfungsi sebelum sampai ke pengguna. Extreme Programming adalah metode agile yang paling banyak berbicara tentang cara membangun kemampuan itu: tulis pengujian lebih dulu, integrasikan beberapa kali sehari, jaga desain tetap sederhana, dan bagi tanggung jawab atas kode.

Banyak tim mengambil acara dan papan Scrum dan meninggalkan praktik rekayasanya. Hasilnya tim yang merencanakan dalam sprint tetapi merilis dengan rasa takut. Praktik XP adalah separuh yang hilang. Praktik-praktik itu penting bagi siapa pun yang harus menjalankan hasilnya, karena layanan yang dibangun dengan pengujian otomatis, rilis kecil, dan pengetahuan bersama lebih mudah didukung daripada yang dibangun oleh segelintir orang dalam batch besar yang tidak teruji.

XP juga meminta sesuatu dari organisasi yang mudah terlewat: kecepatan berkelanjutan, tim utuh dengan semua keterampilan yang dibutuhkan, dan pelanggan yang benar-benar tersedia. Itu adalah kondisi lingkungan kerja, bukan hanya kebiasaan programmer. Topik ini menjelaskan metodenya, bukti tentang batasannya, dan bagaimana praktiknya terhubung dengan praktik ITIL seperti pemampuan perubahan, manajemen rilis, dan manajemen pengetahuan.

## Konsep inti

### Dari mana XP berasal

Kent Beck mengembangkan XP saat mengerjakan Chrysler Comprehensive Compensation System (C3), proyek penggajian. Menurut [artikel Wikipedia tentang Extreme programming](https://en.wikipedia.org/wiki/Extreme_programming), Beck menjadi pemimpin proyek pada Maret 1996 dan menyempurnakan metode itu di sana, dengan Ward Cunningham sebagai pengaruh besar dan Ron Jeffries bergabung untuk melatih tim. Bukunya *Extreme Programming Explained* terbit pada Oktober 1999. Chrysler membatalkan proyek C3 pada Februari 2000 setelah Daimler-Benz mengakuisisi perusahaan itu.

Artikel itu menunjukkan bahwa banyak praktik XP bukan hal baru. Ia menyebut pengembangan dengan pengujian lebih dulu dalam Project Mercury NASA pada awal 1960-an. Langkah XP adalah membawa praktik yang baik ke tingkat "ekstrem": jika pengujian itu baik, uji sepanjang waktu; jika tinjauan itu baik, tinjau terus-menerus dengan bekerja berpasangan. Beck dan Cunningham termasuk 17 orang yang menulis Manifesto Agile (lihat Topik 1.1 — Manifesto Agile).

### Lima nilai

XP menyatakan lima nilai:

| Nilai | Artinya | Dalam pekerjaan layanan |
|---|---|---|
| **Komunikasi** | Membangun pemahaman bersama di antara pengembang, pengguna, dan pelanggan, terutama dengan berbicara dan menjaga desain tetap sederhana | Pengembang dan staf operasi berbicara tentang bagaimana rilis akan berperilaku sebelum dikirim |
| **Kesederhanaan** | Lakukan hal paling sederhana yang berfungsi, dan jangan membangun untuk kebutuhan masa depan yang spekulatif | Lebih sedikit bagian bergerak untuk dipantau, diamankan, dan dijelaskan |
| **Umpan balik** | Belajar cepat dari pengujian, dari pelanggan, dan dari estimasi tim sendiri | Hasil pengujian yang cepat dan pemantauan produksi memperpendek waktu belajar |
| **Keberanian** | Melakukan refactoring, membuang kode usang, dan bertahan menghadapi masalah sulit | Mempensiunkan komponen lama yang tidak berani disentuh siapa pun |
| **Rasa hormat** | Menghormati rekan setim dan pekerjaan sendiri | Tinjauan tanpa menyalahkan setelah kegagalan, dan beban on-call yang adil |

Artikel mencatat bahwa rasa hormat ditambahkan dalam edisi kedua *Extreme Programming Explained*, setelah empat nilai yang asli.

### Praktik-praktiknya

Artikel tentang praktik XP mengelompokkan dua belas praktik menjadi empat set. Praktik-praktik itu paling baik dipahami sebagai sistem yang saling menopang.

| Kelompok | Praktik | Tujuan |
|---|---|---|
| **Umpan balik skala halus** | Pair programming, planning game, test-driven development, whole team | Mendapat umpan balik dalam hitungan menit atau hari, bukan bulan |
| **Proses berkelanjutan** | Integrasi berkelanjutan, perbaikan desain (refactoring), rilis kecil | Menjaga perangkat lunak selalu dalam kondisi dapat dirilis |
| **Pemahaman bersama** | Standar kode, kepemilikan kode kolektif, desain sederhana, metafora sistem | Memungkinkan siapa pun di tim mengubah bagian mana pun dengan aman |
| **Kesejahteraan programmer** | Kecepatan berkelanjutan | Menjaga orang tetap segar dan efektif selama bertahun-tahun |

Deskripsi singkat tentang yang utama:

- **Pair programming:** dua orang mengerjakan satu tugas pada satu workstation, satu menulis dan satu meninjau, dan mereka sering bertukar pasangan.
- **Test-driven development (TDD):** programmer menulis pengujian yang gagal lebih dulu, lalu menulis kode secukupnya agar lulus.
- **Integrasi berkelanjutan (CI):** pengembang menggabungkan pekerjaan mereka ke repositori bersama setiap beberapa jam, sehingga masalah integrasi muncul lebih awal.
- **Rilis kecil:** mengirim perangkat lunak yang berfungsi dalam langkah kecil yang sering agar pelanggan dapat melihat kemajuan dan menanggapi.
- **Kepemilikan kode kolektif:** siapa pun di tim boleh mengubah bagian mana pun dari kode.
- **Kecepatan berkelanjutan:** hindari lembur rutin, dan jangan pernah mengizinkan lembur dalam dua minggu berturut-turut.

### Kontroversi dan batasan

Artikel mencatat beberapa kritik. Matt Stephens dan Doug Rosenberg, dalam buku tahun 2003, berpendapat bahwa praktik XP saling bergantung, sehingga mengadopsi sebagian saja merusak prosesnya. Para pengkritik juga mempertanyakan pair programming sebagai cara kerja normal, tiadanya desain besar di muka, pelanggan di lokasi sebagai titik kegagalan tunggal, dan permintaan perubahan informal yang menyebabkan pengerjaan ulang dan pembengkakan cakupan. P. McBreen, serta Boehm dan Turner, juga menulis penilaian kritis. Artikel menambahkan bahwa praktisi agile menganggap banyak kritik ini sebagai kesalahpahaman.

Soal skala, artikel mengatakan bahwa Industrial XP, yang diperkenalkan pada 2004, memperluas XP ke tim yang lebih besar dan terdistribusi dengan 23 praktik. Artikel juga melaporkan klaim, yang ditandai memerlukan kutipan, bahwa ThoughtWorks cukup berhasil pada proyek XP terdistribusi dengan hingga enam puluh orang. Baca klaim itu dengan hati-hati, dan lihat Topik 1.8 — Agile dalam Skala Besar untuk pembahasan yang lebih luas.

Artikel tidak membahas deployment atau pemantauan produksi di luar integrasi berkelanjutan dan rilis kecil. XP sedikit bicara tentang menjalankan perangkat lunak. Anda membawanya dari manajemen layanan, dan Anda memakai XP untuk membuat serah terima kurang berisiko.

### XP dan pandangan ITIL tentang perubahan

Praktik pemampuan perubahan ITIL (lihat Topik 3.4 — Pemampuan Perubahan) berkepentingan memastikan bahwa perubahan dinilai, diotorisasi, dan dijadwalkan sehingga risiko terkendali. XP mengendalikan risiko di tempat yang berbeda: dalam kode, lewat pengujian, langkah kecil, dan pengetahuan bersama. Perubahan yang kecil, diuji otomatis, terintegrasi, dan mudah dibalik adalah perubahan berisiko lebih rendah menurut penilaian yang wajar. Kedua pandangan itu menyatu ketika bukti dari praktik XP dipakai dalam keputusan perubahan.

## Praktik terbaik

1. **Adopsi praktik sebagai satu set.** Poin para pengkritik bahwa praktik XP saling menopang adalah peringatan yang berguna. Pengujian tanpa integrasi, atau integrasi tanpa langkah kecil, memberi kurang dari jumlahnya. Perkenalkan bersama bila bisa, dan pelajari mana yang menjadi sandaran lainnya.
2. **Tulis pengujian lebih dulu untuk perubahan yang penting.** Untuk perilaku baru atau perbaikan bug, tulis pengujian yang gagal dan menunjukkan masalahnya, lalu perbaiki. Pengujian itu tetap sebagai penjaga agar masalah tidak kembali, yang sangat berguna untuk kesalahan yang menyebabkan insiden.
3. **Integrasikan beberapa kali sehari.** Jaga cabang berumur pendek dan bangun serta uji secara otomatis pada setiap penggabungan. Build yang rusak adalah prioritas pertama tim.
4. **Rilis dalam langkah kecil.** Setiap rilis kecil membawa risiko lebih rendah dan lebih mudah dipahami dan dibalik. Bidik selang terkecil yang dapat didukung pipeline Anda dengan aman, dan persingkat seiring tumbuhnya keyakinan.
5. **Lakukan refactoring terus-menerus.** Perbaiki desain sedikit setiap hari alih-alih menyimpannya untuk penulisan ulang. Rangkaian pengujianlah yang membuat ini aman.
6. **Jaga desain sesederhana mungkin.** Bangun apa yang dibutuhkan sekarang, dan buang yang tidak dipakai. Sistem yang lebih kecil lebih sedikit yang harus dipantau, ditambal, dan dijelaskan.
7. **Bagi kepemilikan kode.** Biarkan anggota tim mana pun mengubah bagian mana pun, didukung pengujian dan standar bersama. Ini mengurangi ketergantungan pada beberapa pakar, yang juga merupakan risiko ketersediaan bagi layanan.
8. **Berpasangan pada pekerjaan berisiko atau asing.** Gunakan pairing untuk perubahan rumit, untuk orientasi, dan untuk shadowing on-call. Perlakukan sebagai alat untuk menyebarkan pengetahuan dan menangkap kesalahan, dan jangan menjadikannya aturan untuk setiap tugas.
9. **Jaga kecepatan berkelanjutan.** Rencanakan pekerjaan sehingga lembur jarang dan tidak berulang minggu demi minggu. Engineer on-call yang lelah adalah risiko layanan (lihat Topik 1.2 — Prinsip Agile tentang kecepatan).
10. **Jadikan pelanggan bagian dari tim.** Temukan pengguna nyata atau perwakilan pengguna yang dapat menjawab pertanyaan selama pekerjaan. Ingat kritik bahwa satu orang adalah titik kegagalan tunggal, jadi libatkan lebih dari satu suara.
11. **Tulis kriteria penerimaan sebagai pengujian bila mungkin.** Ubah ekspektasi pelanggan menjadi pemeriksaan otomatis yang berjalan pada setiap build. Dengan begitu ia mendokumentasikan perilaku dan sekaligus menjaganya.
12. **Sertakan pemeriksaan operasional dalam pengujian.** Tambahkan pemeriksaan untuk pemantauan, pencatatan log, dan perilaku pemulihan ke pipeline, agar kesiapan operasional diverifikasi pada setiap perubahan (lihat Topik 3.5 — Manajemen Rilis dan Deployment).

## Pertanyaan untuk dibahas bersama tim Anda

**Bagaimana kita tahu bahwa sebuah perubahan berfungsi sebelum sampai ke pengguna, dan berapa lama waktu untuk mengetahuinya?**

Telusuri pemeriksaan yang dilalui perubahan antara laptop pengembang dan produksi. Hitung berapa banyak yang otomatis dan berapa lama masing-masing. Jawaban lazim mencakup pengujian manual, tinjauan, dan harapan. Tanyakan pemeriksaan mana yang paling banyak menangkap masalah dan mana yang tidak pernah menangkap apa pun. Lanjutkan dengan memilih satu pemeriksaan manual untuk diotomatisasi.

**Siapa yang dapat mengubah bagian mana dari sistem kita, dan apa yang terjadi ketika mereka tidak ada?**

Daftar komponen dan orang yang memahami masing-masing. Komponen dengan satu orang di belakangnya adalah risiko bagi layanan. Kepemilikan kolektif adalah jawaban XP, dan ia memerlukan pengujian dan standar bersama agar aman. Tanyakan apa yang dapat diajarkan satu orang kepada orang lain dalam sebulan. Fasilitator dapat menanyakan apakah liburan atau sakit pernah menunda perbaikan.

**Di mana pairing akan paling membantu kita, dan di mana ia hanya akan memperlambat?**

Pair programming kontroversial, jadi undang pendapat yang jujur. Tanyakan kepada orang tentang pairing terbaik dan terburuk yang pernah mereka lakukan. Pairing sering membantu pada sistem asing, perubahan rumit, dan orientasi. Ia kurang membantu pada pekerjaan rutin yang dapat dikerjakan satu orang dengan baik. Sepakati satu situasi untuk mencoba pairing selama sebulan, dan bagaimana Anda akan menilainya.

**Apa yang terjadi pada kualitas kita ketika di bawah tekanan, dan apa yang kita buang lebih dulu?**

Tanyakan masa genting terbaru dan apa yang dilewatkan: pengujian, tinjauan, dokumentasi. Tanyakan apa yang terjadi sesudahnya. Sering kali pekerjaan yang dilewatkan kembali sebagai insiden. Intinya memperhatikan polanya dan memutuskan sebelumnya praktik mana yang dilindungi. Hindari menyalahkan, dan kaitkan jawabannya dengan kecepatan berkelanjutan.

**Seberapa sering kita menggabungkan pekerjaan, dan apa yang membuat kita menunggu?**

Tanyakan berapa lama cabang tipikal hidup dan apa yang menahannya. Cabang panjang biasanya mencerminkan perubahan besar, tinjauan lambat, atau build yang tidak andal. Masing-masing perbaikannya berbeda. Tanyakan apa yang dapat dilakukan tim agar penggabungan dalam beberapa jam menjadi hal normal. Pilih satu penghambat untuk disingkirkan.

**Apakah kita punya pelanggan atau pengguna yang tersedia bagi tim, atau kita menebak apa yang mereka inginkan?**

Tanyakan siapa yang menjawab pertanyaan tentang kebutuhan pengguna, dan berapa lama mereka menjawab. Jika jawabannya rantai panjang, tanyakan pertanyaan mana yang paling mahal jika salah. Ingat kritik terhadap XP sendiri: satu perwakilan pelanggan dapat menjadi hambatan. Bahas cara menjangkau beberapa pengguna secara singkat dan sering.

## Dalam praktik: contoh ITIL agile

Tim digital sebuah badan transportasi publik beranggotakan sembilan orang membangun dan menjalankan aplikasi perencanaan perjalanan dan umpan data kedatangan langsung yang dipakai pengembang lain di kota. Tim merilis setiap bulan setelah siklus pengujian manual empat hari. Ketika rilis bermasalah, rollback memakan setengah hari, sehingga tim enggan merilis lebih sering. Kepala operasi, yang juga pengembang paling berpengalaman, menjawab sebagian besar panggilan di luar jam kerja karena tak ada orang lain yang tahu cara kerja umpan itu.

Tim memutuskan mengadopsi beberapa praktik XP bersamaan. Ia menyiapkan integrasi berkelanjutan yang membangun dan menjalankan pengujian unit pada setiap penggabungan. Untuk setiap bug yang ditemukan di produksi, ia menulis pengujian yang gagal sebelum memperbaikinya. Dua pengembang berpasangan dengan kepala operasi pada pekerjaan umpan selama satu jam sehari. Tim juga menambahkan langkah deployment yang dapat beralih kembali ke versi sebelumnya dalam hitungan menit.

Setelah empat bulan, tim merilis setiap minggu. Rangkaian pengujian menangkap dua regresi sebelum rilis yang hanya akan ditemukan siklus manual pada hari terakhir. Tiga pengembang kini dapat menangani sebagian besar panggilan umpan. Tidak semuanya berhasil: rangkaian pengujian memakan 25 menit untuk berjalan, sehingga pengembang menggabungkan lebih jarang dari yang dimaksudkan, dan perubahan keliru pada umpan kedatangan lolos karena pengujiannya memakai data contoh yang tidak cocok dengan kasus tepi yang nyata. Tim memindahkan pengujian lambat ke tahap kedua agar hasil pertama datang dalam lima menit, dan menambahkan pemeriksaan pemantauan pada keluaran umpan. Mereka juga sepakat bahwa pairing tetap menjadi alat untuk masalah sulit dan orientasi, bukan aturan untuk setiap tugas.

## Empat perspektif

### Tim produk dan pengiriman

Tim pengiriman memiliki praktik XP. Mulailah dengan yang memberi umpan balik tercepat: pengujian otomatis dan integrasi berkelanjutan. Perlakukan rangkaian pengujian Anda sebagai produk yang juga dipakai operasi. Ia menjelaskan apa yang seharusnya dilakukan layanan dan memberi tahu dengan cepat ketika berhenti melakukannya.

### Tim layanan dan operasi

Staf operasi dapat memakai gagasan XP untuk pekerjaan mereka sendiri: perubahan infrastruktur dan konfigurasi yang diuji sebelum dijalankan, perubahan kecil yang diintegrasikan sering, dan pengetahuan yang dibagi lintas tim lewat pairing dan kepemilikan kolektif. Minta tim pengiriman untuk pengujian yang mencakup kegagalan yang Anda lihat di produksi, dan tawarkan riwayat insiden untuk memandu apa yang diuji.

### Kepemimpinan dan tata kelola

Pemimpin memungkinkan XP dengan melindungi kecepatan, membiayai infrastruktur build dan pengujian, dan menerima bahwa kualitas dibangun ke dalam pekerjaan dan tidak diperiksa belakangan. Minta bukti keselamatan yang berasal dari pipeline, seperti hasil pengujian dan riwayat rilis, dan jangan menuntut bukti manual rangkap.

### Pelanggan dan pengguna

Pelanggan memiliki peran paling langsung dalam XP: mereka adalah bagian dari putaran umpan balik tim. Harapkan diminta mencoba rilis kecil, menjawab pertanyaan dengan cepat, dan mengatakan apa yang paling penting minggu ini. Sebagai imbalannya, Anda akan melihat lebih sedikit kejutan dan perbaikan lebih cepat atas masalah yang Anda laporkan.

## Pola kegagalan umum

- **Hanya mengadopsi ritual.** Tim mengambil stand-up dan papan lalu melewatkan pengujian dan integrasi. Sebaliknya, mulailah dari pengujian otomatis dan integrasi berkelanjutan, karena memberi hasil terbesar.
- **Memperlakukan pairing sebagai aturan.** Pairing paksa pada semua pekerjaan membuat orang frustrasi dan memperlambat tugas rutin. Sebaliknya, pakai pairing untuk masalah sulit, orientasi, dan alih pengetahuan, dan tinjau bagaimana jalannya.
- **Rangkaian pengujian yang tidak dipercaya siapa pun.** Pengujian yang lambat atau tidak andal diabaikan. Sebaliknya, jaga rangkaian tetap cepat dan perbaiki atau hapus pengujian yang goyah dengan segera.
- **Kepemilikan kolektif tanpa standar.** Siapa pun dapat mengubah apa pun, dan kode membusuk. Sebaliknya, padukan dengan standar kode bersama, tinjauan, dan pemeriksaan otomatis.
- **Satu perwakilan pelanggan.** Satu orang menjadi hambatan atau sumber bias. Sebaliknya, sebarkan kontak ke beberapa pengguna dan periksa keputusan dengan pemakaian nyata.
- **Melewatkan desain sepenuhnya.** Tim melakukan refactoring berulang tanpa arah. Sebaliknya, simpan gambaran ringan arsitektur dan tinjau secara berkala.
- **Lembur sebagai hal normal.** Jam kerja panjang mengikis kualitas dan menyebabkan insiden. Sebaliknya, rencanakan dengan kecepatan berkelanjutan dan perlakukan lembur berulang sebagai tanda untuk mengurangi cakupan.
- **Mengabaikan operasi.** XP sedikit bicara tentang menjalankan perangkat lunak, dan tim mengira itu sudah tercakup. Sebaliknya, tambahkan pemeriksaan operasional ke pengujian dan undang staf operasi ke perencanaan.

## Model kematangan

| Dimensi | Memulai | Mengembangkan | Menstandarkan | Mengelola | Mengorkestrasi |
|---|---|---|---|---|---|
| Pengujian | Pengujian manual dan terlambat | Beberapa tim memiliki pengujian unit otomatis | Tim menulis pengujian bersama kode dan menjalankannya pada setiap perubahan | Hasil pengujian dan cacat yang lolos dilacak dan ditinjau | Strategi pengujian dikoordinasikan lintas layanan dan dibagikan dengan operasi |
| Integrasi dan rilis | Integrasi jarang dan rilis besar | Beberapa tim memakai integrasi berkelanjutan | Pipeline bersama membangun, menguji, dan men-deploy setiap perubahan | Frekuensi rilis dan laju kegagalan diukur dan diperbaiki | Pipeline dikoordinasikan lintas tim dan pemasok |
| Kepemilikan dan pengetahuan bersama | Pengetahuan ada pada beberapa individu | Beberapa tim berpasangan atau merotasi pekerjaan | Kepemilikan kolektif dengan standar menjadi norma | Celah pengetahuan dilacak dan dikurangi | Pengetahuan mengalir bebas antartim dan ke runbook |
| Kecepatan dan kesejahteraan | Lembur adalah rutinitas | Beberapa tim memantau beban kerjanya | Kecepatan berkelanjutan adalah kebijakan yang dinyatakan | Beban on-call dan lembur diukur dan ditinjau | Beban kerja diseimbangkan lintas tim berdasarkan data bersama |

## Daftar periksa

- [ ] Tim telah menyepakati praktik XP mana yang dipakainya dan telah mencobanya bersamaan.
- [ ] Pengujian otomatis berjalan pada setiap perubahan, dan build yang gagal diperbaiki lebih dulu.
- [ ] Setiap bug produksi mendapat pengujian yang akan menangkapnya.
- [ ] Pekerjaan digabungkan ke cabang bersama beberapa kali sehari.
- [ ] Rilis kecil, dan rollback dapat dilakukan dengan cepat.
- [ ] Lebih dari satu orang dapat mengubah dan mendukung setiap bagian sistem.
- [ ] Pairing dipakai untuk masalah sulit dan orientasi, dan dampaknya ditinjau.
- [ ] Lembur jarang dan tidak berulang minggu demi minggu.
- [ ] Seorang pengguna atau perwakilan pengguna tersedia menjawab pertanyaan selama pekerjaan.
- [ ] Pengujian mencakup pemeriksaan untuk pemantauan dan perilaku pemulihan.

## Prompt AI

**Tujuan: mengubah insiden produksi menjadi pengujian dan daftar pelajaran.**

```text
Help me learn from a production incident using Extreme Programming habits.

Incident description (factual, blameless, in order): [paste what happened, how it was detected, and how it was fixed].
The part of the system involved: [describe the component and what it does].
Our current tests for that part: [describe what is tested today, or write "unknown"].

Propose: (1) a test, described in plain words, that would have caught this before release; (2) two other tests worth adding nearby; (3) one change to our release process to make a similar fault less likely. Do not invent details about our system. Ask clarifying questions first if the description is too thin, mark assumptions, and list what you are unsure of.
```

**Tujuan: menilai seberapa aman tim Anda dapat merilis perubahan kecil.**

```text
I want to understand how safe it is for our team to release small changes often.

Our path from change to production, step by step: [paste the steps, who does each, and roughly how long each takes].
Our automated checks: [list tests, builds, and scans, or write "none"].
How we roll back: [describe].
The last two releases that went wrong: [paste short factual descriptions].

Identify the steps that rely on manual work or one person's knowledge. For each, suggest one small automation or sharing step. Do not claim any standard requires something unless I pasted its text. Separate what the text shows from what you assume, and list what you are unsure of.
```

**Tujuan: merancang eksperimen sebulan dengan pairing.**

```text
Help me design a one-month experiment with pair programming for a team of [number] people working on [type of system].

Our reasons for trying it: [for example "reduce single points of failure on the feed service"].
Constraints: [for example remote working, on-call duties, mixed experience levels].

Propose which kinds of work to pair on and which to leave alone, how to rotate partners, what to observe (use observations such as questions answered and defects found, and do not invent numbers), and how the team will decide at the end whether to continue. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Tujuan: memeriksa Definition of Done untuk kesiapan operasional.**

```text
Here is our current Definition of Done: [paste it].
Things the operations or support team has asked for: [paste, or write "unknown"].

Compare the two. List items operations would need that are missing, and for each one say whether it could be checked automatically in a build pipeline, and how. Do not state that any standard requires an item unless I have pasted its text. Mark assumptions and list what you are unsure of.
```

## Keterampilan AI

- [extreme-programming](../../../../skills/extreme-programming/SKILL.md): gunakan untuk meninjau atau memperkenalkan praktik XP seperti pairing, test-driven development, dan integrasi berkelanjutan.
- [user-story](../../../../skills/user-story/SKILL.md): gunakan untuk mengubah kebutuhan pelanggan menjadi story dengan kriteria penerimaan yang dapat menjadi pengujian otomatis.
- [agile-delivery](../../../../skills/agile-delivery/SKILL.md): gunakan untuk merencanakan rilis kecil yang sering dan pemeriksaan yang membuatnya aman.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): gunakan untuk meninjau seberapa baik praktik berjalan dan memilih satu perubahan.
- [runbook](../../../../skills/runbook/SKILL.md): gunakan untuk mengubah pengetahuan yang dipegang satu orang menjadi prosedur bersama yang teruji.

## Sumber utama

- **Extreme programming** dan **Extreme programming practices** (Wikipedia): tinjauan sejarah, nilai, praktik, dan kritik, dengan kutipan.
- **Extreme Programming Explained** (Kent Beck): pernyataan asli metode ini; edisi keduanya menambahkan nilai rasa hormat.
- **Manifesto for Agile Software Development** (agilemanifesto.org): XP adalah salah satu metode yang penulisnya menulis Manifesto.
- **Extreme Programming Refactored: The Case Against XP** (Matt Stephens dan Doug Rosenberg, 2003): kritik paling terkenal, berguna untuk menguji asumsi Anda sendiri.

## Referensi

1. Extreme programming — Wikipedia — https://en.wikipedia.org/wiki/Extreme_programming
2. Extreme programming practices — Wikipedia — https://en.wikipedia.org/wiki/Extreme_programming_practices
3. Pair programming — Wikipedia — https://en.wikipedia.org/wiki/Pair_programming
4. Test-driven development — Wikipedia — https://en.wikipedia.org/wiki/Test-driven_development
5. Continuous integration — Wikipedia — https://en.wikipedia.org/wiki/Continuous_integration
6. Code refactoring — Wikipedia — https://en.wikipedia.org/wiki/Code_refactoring
7. Kent Beck — Wikipedia — https://en.wikipedia.org/wiki/Kent_Beck
8. Ward Cunningham — Wikipedia — https://en.wikipedia.org/wiki/Ward_Cunningham
9. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
