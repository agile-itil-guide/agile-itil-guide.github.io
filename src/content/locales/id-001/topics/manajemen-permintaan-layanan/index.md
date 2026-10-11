# Manajemen Permintaan Layanan

**Manajemen permintaan layanan menangani hal-hal rutin yang diminta pengguna, seperti akses, perangkat, dan informasi, dan tujuan agile-nya adalah membuat setiap permintaan umum cepat, dapat diprediksi, dan sebagian besar otomatis agar orang terampil menghabiskan waktu pada masalah.**

## Mengapa ini penting

Sebagian besar pekerjaan yang sampai ke service desk sama sekali bukan kegagalan. Itu adalah pengguna yang meminta sesuatu yang memang dimaksudkan disediakan layanan: akun baru, akses ke folder, laptop, lisensi, reset kata sandi. Permintaan ini dapat diprediksi dan berulang. Jika ditangani dengan baik, ia cepat dan tak ada yang menyadarinya. Jika ditangani dengan buruk, ia menjadi sumber penantian panjang, pertanyaan berulang, dan frustrasi diam-diam yang merusak reputasi tim lebih daripada satu gangguan mana pun.

Penanganan permintaan juga tempat otomatisasi dan swalayan paling membuahkan hasil. Permintaan yang mengikuti langkah sama setiap kali dapat dirancang sekali, diuji, dan sebagian besar diotomatisasi. [Artikel Wikipedia tentang manajemen layanan TI](https://en.wikipedia.org/wiki/IT_service_management) mendefinisikan permintaan layanan sebagai permintaan rutin untuk suatu layanan dan mendaftar otomatisasi proses TI, yang menggantikan langkah manual rutin dengan langkah otomatis agar staf dapat berfokus pada pekerjaan berprioritas lebih tinggi. Itulah tujuan praktik ini dalam satu kalimat.

Artikel tidak memberi lebih banyak tentang permintaan. Topik ini karena itu menggabungkan definisi tersebut dengan panduan praktis yang diambil dari praktik manajemen layanan yang dipakai luas, ditawarkan sebagai demikian, dan dengan topik lain panduan ini tentang service desk, katalog layanan (ITIL mengejanya "service catalogue"), dan pengetahuan. Di tempat sesuatu adalah praktik umum dan bukan temuan dari sumber, teks mengatakannya.

## Konsep inti

### Apa itu permintaan layanan

**Permintaan layanan** adalah permintaan rutin untuk sesuatu yang biasanya disediakan layanan. Ia berbeda dari **insiden**, yang merupakan gangguan atau potensi gangguan pada layanan, dan dari **perubahan**, yang memodifikasi layanan (lihat Topik 3.2 — Manajemen Insiden dan Topik 3.4 — Pemampuan Perubahan). Garisnya bisa kabur: "Saya butuh akses ke sistem keuangan" adalah permintaan; "Saya punya akses tetapi sistem menunjukkan kesalahan" adalah insiden; "tambahkan kolom baru ke sistem keuangan" kemungkinan perubahan.

Ujian praktis: jika pekerjaan mengikuti prosedur yang dikenal, punya biaya dan risiko yang dikenal, dan jawaban atas "apakah ini diizinkan?" sudah diputuskan sebelumnya, itu permintaan. Apa pun yang memerlukan penilaian baru tentang risiko lebih mungkin perubahan atau proyek.

### Mengapa perbedaan itu penting

Mencampur permintaan dengan insiden mendistorsi keduanya. Hitungan "tiket" mengaburkan dua jenis permintaan yang berbeda. Prioritas berbenturan, karena insiden yang menghentikan pekerjaan seharusnya didahulukan daripada permintaan yang dapat menunggu. Ukuran respons menyesatkan: rata-rata waktu menutup yang panjang dapat menyembunyikan bahwa permintaan menunggu persetujuan sementara insiden diperbaiki dengan cepat. Memisahkan keduanya memungkinkan Anda menetapkan target yang sesuai dan melihat di mana penundaannya (lihat Topik 2.1 — Manajemen Layanan TI).

### Model permintaan

**Model permintaan** adalah pola berulang untuk satu jenis permintaan: informasi apa yang dibutuhkan, siapa yang harus menyetujui, langkah mana yang dikerjakan oleh siapa atau oleh otomatisasi, dan berapa waktu yang diharapkan. Model permintaan adalah gagasan yang dipakai luas dalam manajemen layanan. Ia memberi tim cara merancang permintaan umum sekali dan menjalankannya berkali-kali. Katalog layanan mendaftar permintaan yang tersedia (lihat Topik 3.8 — Manajemen Katalog Layanan).

Model untuk "laptop karyawan baru" dapat menetapkan: informasi yang dibutuhkan dari manajer, persetujuan (tidak ada, jika peran ada dalam daftar standar), langkah (pesan, konfigurasi, kirim), dan waktu yang diharapkan. Model untuk "akses ke sistem terbatas" akan mencakup persetujuan oleh pemilik sistem dan catatan untuk audit.

### Persetujuan

Sebagian permintaan memerlukan persetujuan sebelum berjalan: pengeluaran, akses ke data sensitif, atau pemakaian sumber daya langka. Pertanyaan untuk desain adalah apakah persetujuan menambah kendali yang nyata. Persetujuan yang selalu mengatakan ya adalah penundaan. Di tempat persetujuan diperlukan, buat cepat dan terlihat, beri tahu penyetuju persis apa yang diminta, dan sediakan cadangan jika mereka tidak merespons. Di tempat persetujuan bergantung pada peran, seperti manajer menyetujui permintaan anggota tim, pertimbangkan menyetujui lebih dulu butir standar untuk peran itu.

### Pemenuhan dan otomatisasi

Pemenuhan adalah pekerjaan mengirim permintaan. Artikel ITSM menjelaskan otomatisasi proses TI sebagai mengotomatisasi tugas rutin agar staf dapat berfokus pada pekerjaan berprioritas lebih tinggi. Kandidat otomatisasi adalah permintaan yang sering, mengikuti prosedur stabil, dan berisiko rendah: reset kata sandi, keanggotaan grup, instalasi perangkat lunak standar. Otomatisasi harus dibangun dengan kehati-hatian yang sama seperti perubahan apa pun, dengan pengujian dan cara untuk melihat apa yang dilakukannya.

### Swalayan

Banyak organisasi menawarkan portal tempat pengguna dapat menemukan layanan yang dibutuhkan, melihat informasi apa yang diperlukan, dan mengajukan permintaan tanpa berbicara dengan siapa pun. Swalayan yang baik bergantung pada daftar layanan yang jelas yang ditulis dalam kata-kata pengguna dan formulir yang jelas. Portal yang meniru bagan organisasi dan meminta informasi yang tidak dimiliki pengguna akan mendorong orang kembali ke email dan telepon.

### Manajemen layanan perusahaan

Artikel ITSM mencatat bahwa manajemen layanan perusahaan menerapkan perkakas dan gagasan ITSM pada area bisnis lain seperti sumber daya manusia atau fasilitas. Manajemen permintaan adalah tempat termudah untuk memulai, karena banyak fungsi menerima permintaan rutin: orientasi, perjalanan, perangkat, pindah kantor. Platform permintaan bersama dapat melayani beberapa fungsi, masing-masing dengan model permintaan dan pemiliknya.

### Ukuran

Ukuran umum mencakup berapa lama permintaan dari pengajuan sampai pemenuhan, seberapa sering peminta harus kembali dengan pertanyaan, berapa banyak permintaan yang dipenuhi tanpa upaya manusia, dan kepuasan peminta. Seperti ukuran apa pun, hindari target yang menghargai penutupan permintaan lebih awal. Cari waktu menunggu, karena sebagian besar waktu yang berlalu pada sebuah permintaan biasanya menunggu persetujuan atau informasi, bukan bekerja (lihat Topik 1.7 — Pengembangan Perangkat Lunak Lean dan Topik 5.6 — Metrik dan Pengukuran).

### Keamanan dan kepatuhan

Permintaan sering mengendalikan akses dan pengeluaran, sehingga punya implikasi keamanan dan audit. Catatan harus menunjukkan siapa yang meminta, siapa yang menyetujui, apa yang dilakukan, dan kapan. Cabut akses ketika tidak lagi dibutuhkan, sebagai bagian dari model permintaan karyawan keluar, bukan sebagai renungan belakangan (lihat Topik 3.13 — Manajemen Keamanan Informasi).

## Praktik terbaik

1. **Mulai dengan permintaan yang paling umum.** Daftar sepuluh permintaan teratas menurut volume dari catatan Anda. Rancang ini lebih dulu. Beberapa model yang dirancang baik mencakup banyak permintaan.
2. **Tentukan model permintaan untuk masing-masing.** Tulis informasi yang dibutuhkan, siapa yang menyetujui, langkah, siapa mengerjakan masing-masing, dan waktu yang diharapkan. Jaga tiap model satu halaman.
3. **Pakai kata-kata pengguna.** Namai permintaan seperti pengguna menyebutnya ("Dapatkan laptop baru," bukan "Jenis permintaan penyediaan perangkat keras 2"). Uji nama dengan pengguna.
4. **Tanyakan hanya yang Anda butuhkan.** Setiap kolom pada formulir harus punya tujuan. Ambil apa yang bisa dari sistem yang sudah Anda miliki, seperti departemen pengguna, alih-alih bertanya kepada pengguna.
5. **Setujui lebih dulu yang rutin.** Sepakati dengan penyetuju daftar standar butir dan peran yang tidak memerlukan persetujuan kasus per kasus. Tinjau daftar secara berkala.
6. **Buat persetujuan nyata mudah dan cepat.** Tunjukkan kepada penyetuju apa yang diminta dan mengapa, izinkan persetujuan dari ponsel atau email, dan atur pengingat otomatis dan delegasi untuk ketidakhadiran.
7. **Otomatisasi yang stabil dan sering.** Pilih permintaan yang mengikuti langkah sama setiap kali dan berisiko rendah. Uji otomatisasi dan catat apa yang dilakukannya.
8. **Pertahankan jalur manusia.** Izinkan pengguna meminta bantuan ketika formulir tidak cocok dengan kebutuhan mereka. Perlakukan kasus itu sebagai umpan balik atas model.
9. **Pisahkan permintaan dari insiden dan perubahan.** Beri masing-masing kategori, antrean, dan ukuran sendiri. Ajari desk mengklasifikasi ulang ketika permintaan ternyata kesalahan atau perubahan.
10. **Amati penantian.** Ukur waktu yang dihabiskan menunggu persetujuan atau informasi, bukan hanya total waktu. Pilih penantian terpanjang untuk dikurangi lebih dulu.
11. **Tutup putaran dengan peminta.** Konfirmasi penyelesaian, tanyakan apakah berhasil, dan tawarkan cara mengatakan jika tidak. Permintaan yang ditandai selesai tetapi tidak terkirim lebih buruk daripada yang masih terbuka.
12. **Tinjau katalog permintaan secara berkala.** Pensiunkan permintaan yang tak dibuat siapa pun, gabungkan yang hampir kembar, dan tambahkan yang baru dari bukti (lihat Topik 3.8 — Manajemen Katalog Layanan).

## Pertanyaan untuk dibahas bersama tim Anda

**Permintaan mana yang paling sering kita tangani, dan berapa lama masing-masing dari awal sampai akhir?**

Tarik sepuluh teratas dari kuartal terakhir dan telusuri waktu yang berlalu untuk masing-masing. Tandai di mana tiap permintaan menunggu. Kejutannya biasanya sebagian besar waktu adalah menunggu, bukan bekerja. Tanyakan siapa menunggu siapa. Fasilitator dapat menanyakan permintaan mana yang paling mudah diperbaiki lebih dulu.

**Persetujuan mana dalam permintaan kita yang tak pernah mengatakan tidak?**

Tinjau sampel persetujuan dan hitung penolakan. Persetujuan yang tak pernah menolak mungkin penundaan tanpa manfaat. Tanyakan untuk apa persetujuan itu, dan siapa yang diuntungkan. Sebagian persetujuan ada untuk audit atau akuntabilitas, yang merupakan tujuan sah yang mungkin dapat dipenuhi dengan cara lebih ringan, seperti memberi tahu penyetuju setelah kejadian. Pilih satu untuk disederhanakan.

**Apa yang harus dikatakan pengguna kepada kita yang sudah kita ketahui?**

Lihat formulir permintaan dan tandai kolom yang jawabannya ada di sistem lain. Setiap kolom semacam itu adalah upaya bagi pengguna dan sumber kesalahan. Tanyakan apa yang diperlukan untuk mengisinya lebih dulu. Pilih satu kolom untuk dihapus atau diisi lebih dulu.

**Permintaan kita yang mana yang dapat dikerjakan tanpa disentuh seseorang?**

Daftar permintaan yang mengikuti prosedur tetap. Untuk masing-masing, tanyakan apa yang menghalangi otomatisasi: perkakas, akses, takut salah. Bahas pengaman yang akan membuat otomatisasi dapat diterima, seperti batas dan log. Pilih satu untuk diotomatisasi sebagai eksperimen.

**Bagaimana pengguna mengetahui apa yang bisa mereka minta?**

Tanyakan kepada beberapa pengguna bagaimana mereka akan meminta sesuatu yang tidak biasa. Jika jawabannya "tanya seseorang yang saya kenal," daftar layanan tidak berfungsi. Bahas bagaimana daftar disajikan dan apakah nama-namanya masuk akal bagi pengguna. Uji draf dengan dua atau tiga pengguna.

**Ketika permintaan ternyata hal lain, apa yang terjadi?**

Kumpulkan contoh permintaan yang sebenarnya insiden atau perubahan. Tanyakan berapa lama salah klasifikasi itu merugikan. Bahas bagaimana desk mengenali dan mengklasifikasi ulang, dan apakah formulir permintaan membantu pengguna memilih dengan benar. Sepakati langkah klasifikasi ulang yang sederhana.

## Dalam praktik: contoh ITIL agile

Sebuah kantor statistik nasional memiliki 3.000 staf dan departemen TI beranggotakan 80 orang. Staf baru rutin menunggu sepuluh hari untuk laptop dan akun yang berfungsi, dan manajer mengeluh bahwa karyawan baru duduk menganggur. Service desk menangani permintaan orientasi sebagai tiket individu, dengan masing-masing dari lima tim mengerjakan satu langkah dan meneruskan tiket.

Seorang pemimpin perbaikan memetakan satu permintaan orientasi. Ia menemukan bahwa pekerjaan sebenarnya memakan sekitar tiga jam dan sisanya menunggu: menunggu manajer memberi rincian, persetujuan anggaran untuk laptop standar, dan masing-masing tim menyadari tiket. Tim merancang model permintaan untuk karyawan baru. Manajer mengisi satu formulir singkat tiga minggu sebelum tanggal mulai, dengan sebagian besar kolom diisi dari sistem sumber daya manusia. Laptop dan akun standar untuk peran itu disetujui lebih dulu. Skrip membuat akun dan grup; perangkat keras dipesan otomatis dari daftar stok; desk mendapat satu daftar tugas. Manajer karyawan baru menerima pembaruan dan konfirmasi.

Setelah dua bulan, median waktu dari permintaan sampai laptop siap turun menjadi tiga hari bila formulir diajukan tepat waktu. Beberapa kesulitan tersisa. Sekitar sepertiga manajer masih mengajukan formulir terlambat, sehingga karyawan baru masih menunggu, dan skrip gagal ketika catatan sumber daya manusia tidak memiliki kode departemen, menghasilkan pekerjaan perbaikan manual. Tim menambahkan pengingat ke daftar periksa orientasi sumber daya manusia, menyiapkan peringatan untuk skrip yang gagal, dan mulai berbicara dengan sumber daya manusia tentang memperbaiki datanya. Mereka juga mempertahankan jalur manusia untuk peran yang tidak cocok dengan daftar standar.

## Empat perspektif

### Tim produk dan pengiriman

Tim pengiriman sering menerima permintaan yang sebenarnya perubahan: kolom baru, laporan baru. Bantu desk mengenalinya dan merutekannya ke backlog Anda. Di tempat permintaan untuk layanan Anda sering, seperti akses, bangun jalur swalayan dengan batas dan pencatatan yang jelas.

### Tim layanan dan operasi

Operasi dan desk memiliki sebagian besar model permintaan. Rancang yang umum lebih dulu, singkirkan penantian, dan otomatisasi di tempat aman. Lindungi waktu untuk membangun dan meninjau model, karena pekerjaan permintaan mudah mendesak pekerjaan perbaikan. Bagikan data tentang penantian dengan penyetuju dan manajer.

### Kepemimpinan dan tata kelola

Pemimpin dan penyetuju membentuk banyak penantian. Tanyakan persetujuan mana yang menambah kendali dan mana yang menambah penundaan, dan terima persetujuan awal di tempat risiko rendah. Dukung platform permintaan bersama lintas fungsi, dan minta ukuran waktu menunggu alih-alih hitungan tiket.

### Pelanggan dan pengguna

Pengguna diuntungkan oleh nama yang jelas, formulir pendek, dan perkiraan yang jujur. Berikan informasi lengkap saat Anda meminta, dan katakan ketika mendesak dan mengapa. Beri tahu tim ketika permintaan tidak mengirim apa yang Anda butuhkan, karena itu memperbaiki model untuk orang berikutnya.

## Pola kegagalan umum

- **Memperlakukan permintaan sebagai insiden atau sebaliknya.** Prioritas dan laporan terdistorsi. Sebaliknya, pisahkan dan ajari klasifikasi ulang.
- **Formulir yang meminta terlalu banyak.** Pengguna meninggalkan portal. Sebaliknya, tanyakan hanya yang Anda butuhkan dan isi sisanya lebih dulu.
- **Persetujuan sebagai ritual.** Setiap permintaan menunggu tanda tangan yang tak pernah menolak. Sebaliknya, setujui lebih dulu butir rutin dan jaga persetujuan nyata tetap cepat.
- **Otomatisasi tanpa pengaman.** Skrip membuat perubahan yang salah dalam skala besar. Sebaliknya, uji, batasi, dan catat otomatisasi, dan pantau kegagalan.
- **Nama internal.** Pengguna tidak dapat menemukan apa yang mereka butuhkan. Sebaliknya, namai permintaan dalam kata-kata pengguna dan ujilah.
- **Tanpa jalur manusia.** Kebutuhan tidak biasa jatuh. Sebaliknya, tawarkan bantuan dan perlakukan permintaan aneh sebagai umpan balik.
- **Hanya menghitung kecepatan.** Permintaan ditutup lebih awal. Sebaliknya, konfirmasi dengan peminta dan amati permintaan berulang.
- **Tidak pernah memensiunkan permintaan.** Daftar menjadi usang. Sebaliknya, tinjau pemakaian secara berkala dan singkirkan apa yang tak diminta siapa pun.

## Model kematangan

| Dimensi | Memulai | Mengembangkan | Menstandarkan | Mengelola | Mengorkestrasi |
|---|---|---|---|---|---|
| Model permintaan | Setiap permintaan ditangani ad hoc | Model ada untuk beberapa permintaan yang sering | Model ada untuk permintaan teratas dengan pemilik dan waktu yang diharapkan | Kinerja model diukur dan disetel | Model dibagikan lintas fungsi dan pemasok |
| Persetujuan | Persetujuan informal atau karena kebiasaan | Beberapa butir rutin disetujui lebih dulu | Daftar persetujuan awal dan jalur persetujuan cepat adalah standar | Hasil dan penantian persetujuan ditinjau | Aturan persetujuan diselaraskan lintas fungsi berdasarkan data risiko |
| Otomatisasi dan swalayan | Permintaan ditangani manual lewat email | Beberapa permintaan tersedia di portal atau diotomatisasi | Permintaan sering berisiko rendah diotomatisasi dan swalayan adalah standar | Keberhasilan otomatisasi dan upaya pengguna diukur | Otomatisasi dan swalayan mencakup TI, SDM, dan fasilitas |
| Pembelajaran dan perbaikan | Permintaan tidak dianalisis | Beberapa hitungan dikumpulkan | Penantian dan permintaan berulang ditinjau secara berkala | Perbaikan direncanakan dari data dan dampaknya diperiksa | Gagasan perbaikan datang dari pengguna dan tim di seluruh organisasi |

## Daftar periksa

- [ ] Kami tahu sepuluh permintaan paling umum kami dan berapa lama masing-masing.
- [ ] Masing-masing punya model permintaan: informasi yang dibutuhkan, penyetuju, langkah, pemilik, waktu yang diharapkan.
- [ ] Permintaan dinamai dalam kata-kata pengguna.
- [ ] Formulir hanya meminta informasi yang perlu dan mengisi lebih dulu apa yang kami ketahui.
- [ ] Butir rutin disetujui lebih dulu, dan persetujuan nyata punya jalur cepat dan delegasi.
- [ ] Permintaan sering berisiko rendah diotomatisasi dengan pengujian dan log.
- [ ] Permintaan, insiden, dan perubahan dipisahkan dengan langkah klasifikasi ulang.
- [ ] Kami mengukur waktu menunggu selain total waktu.
- [ ] Peminta diminta mengonfirmasi penyelesaian.
- [ ] Daftar permintaan ditinjau setidaknya dua kali setahun.

## Prompt AI

**Tujuan: menemukan permintaan paling umum dan penantian terpanjang.**

```text
Here is data on service requests from the last [period]: [paste a table with request type, date submitted, date approved if any, date fulfilled, and any notes; remove personal data].

Using only my data, list the ten most common request types with counts, the typical elapsed time for each (give the middle value and the range), and how much of that time was waiting for approval, if the data shows it. Highlight the three requests with the longest waits. Suggest questions to ask the owners. Do not invent numbers or causes. If the data is too thin, tell me what to collect. List what you are unsure of.
```

**Tujuan: menulis model permintaan untuk satu permintaan.**

```text
Help me write a request model for [request, e.g. "access to a shared team folder"].

How it is handled today, step by step, with who does each: [paste].
Information the requester must provide today: [list].
Approvals today and who gives them: [list].
Rules we must follow, with source text if available: [paste, or write "none known"].

Produce a one-page model: purpose, who may request, information needed (mark what could be prefilled from existing systems), approval (and a suggestion for pre-approval where low risk), steps with who or what does each, expected time marked as [to be agreed], and how completion is confirmed. Mark assumptions. Do not invent rules. Ask clarifying questions first, and list what you are unsure of.
```

**Tujuan: menulis ulang formulir permintaan agar lebih pendek dan jelas.**

```text
Here is a request form we use: [paste the fields and instructions].
Here is what we already know about the requester from other systems: [list, such as name, department, manager].

For each field, say whether it is needed, could be prefilled, or could be removed, and give a reason from the text. Rewrite the form with clear labels in plain language. Do not remove any field that I have marked as required by a rule: [list, or write "none known"]. Ask clarifying questions first, and list what you are unsure of.
```

**Tujuan: memutuskan apa yang diotomatisasi lebih dulu.**

```text
Here is a list of our requests with volume per month, steps, and how risky each step is (my judgment): [paste].
Tools we can automate with: [list, or write "unknown"].
Safeguards we can put in place: [list, such as logs, limits, approvals for exceptions].

Rank the requests as automation candidates, using only my data, and explain each ranking in one sentence. For the top two, list what could go wrong and a safeguard for each. Do not invent volumes. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## Keterampilan AI

- [service-catalog](../../../../skills/service-catalog/SKILL.md): gunakan untuk mendaftar permintaan yang dapat dibuat pengguna, dalam kata-kata mereka, dengan pemilik.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md): gunakan untuk menemukan permintaan paling umum dan volumenya.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md): gunakan untuk menganalisis langkah dan penantian dalam sebuah permintaan.
- [user-story](../../../../skills/user-story/SKILL.md): gunakan untuk menggambarkan permintaan dari sudut pandang pengguna dengan kriteria penerimaan.
- [runbook](../../../../skills/runbook/SKILL.md): gunakan untuk mendokumentasikan langkah untuk permintaan yang tetap manual.

## Sumber utama

- **IT service management** (Wikipedia): mendefinisikan permintaan layanan, manajemen layanan perusahaan, dan otomatisasi proses TI.
- **Help desk** (Wikipedia): latar belakang manajemen antrean dan perutean untuk permintaan yang sampai ke desk.
- **Business process automation** (Wikipedia): latar belakang umum tentang mengotomatisasi pekerjaan rutin.
- **ITIL** (Wikipedia): konteks manajemen permintaan layanan dalam ITIL.

## Referensi

1. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
2. Help desk — Wikipedia — https://en.wikipedia.org/wiki/Help_desk
3. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
4. Enterprise service management — Wikipedia — https://en.wikipedia.org/wiki/Enterprise_service_management
5. Business process automation — Wikipedia — https://en.wikipedia.org/wiki/Business_process_automation
6. Self-service software — Wikipedia — https://en.wikipedia.org/wiki/Self-service_software
7. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
8. Access control — Wikipedia — https://en.wikipedia.org/wiki/Access_control
