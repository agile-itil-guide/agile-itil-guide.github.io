# Manajemen Layanan TI

**Manajemen layanan TI (ITSM) adalah disiplin merancang, mengirim, mengoperasikan, dan memperbaiki layanan TI di sekitar apa yang dibutuhkan pelanggan, dan tim agile yang menjalankan layanan sudah melakukannya, entah mereka memakai nama itu atau tidak.**

## Mengapa ini penting

Ketika sebuah tim mengirim perangkat lunak lalu menjalankannya, ia menjadi penyedia layanan. Pengguna bergantung padanya, mengharapkannya tersedia, dan menginginkan bantuan ketika ia gagal. ITSM adalah kumpulan praktik yang tumbuh di sekitar hubungan itu. Tim yang mengabaikannya sering menemukannya kembali dengan cara sulit: dipanggil di tengah malam, kehilangan jejak apa yang berubah, atau berdebat dengan pelanggan tentang apa yang dijanjikan.

ITSM punya reputasi proses yang berat, dan sebagian reputasi itu layak didapat. Tim agile, sebaliknya, punya reputasi bergerak cepat dan menyerahkan hasilnya untuk ditangani operasi. Kedua reputasi itu menggambarkan kegagalan, bukan maksud masing-masing bidang. ITSM bertanya apa yang dibutuhkan pelanggan dari layanan dan bagaimana penyedia akan mengirim dan memperbaikinya. Itu pertanyaan yang juga dipedulikan tim agile.

Topik ini memberi kosakata yang dipakai di seluruh panduan: apa itu layanan, siapa pelanggan dan penggunanya, apa yang dicakup ITSM, dan dari mana kerangka kerja utamanya berasal. Topik ini memakai [artikel Wikipedia tentang manajemen layanan TI](https://en.wikipedia.org/wiki/IT_service_management) sebagai petanya. Artikel itu singkat dan lebih banyak mendaftar kerangka kerja daripada menjelaskannya, jadi topik ini menambahkan penafsiran praktis dan menandai di mana ia melakukannya.

## Konsep inti

### Apa itu ITSM

Artikel Wikipedia mendefinisikan ITSM sebagai kumpulan aktivitas yang dilakukan organisasi untuk merancang, membangun, mengirim, mengoperasikan, dan mengendalikan layanan TI yang ditawarkan kepada pelanggan. Artikel membandingkan ITSM dengan pendekatan berorientasi teknologi seperti manajemen jaringan dan manajemen sistem. ITSM, katanya, mengambil pendekatan proses, berfokus pada kebutuhan pelanggan alih-alih sistem, dan menekankan peningkatan berkelanjutan.

Artikel mengutip survei CIO WaterCooler tahun 2017 yang melaporkan bahwa bisnis memakai ITSM terutama untuk mendukung pengalaman pelanggan (35%) dan kualitas layanan (48%). Ini satu survei, dan sampelnya tidak dijelaskan dalam artikel, jadi perlakukan angkanya sebagai ilustrasi bagaimana praktisi menggambarkan tujuan mereka dan bukan sebagai ukuran seberapa umum tiap tujuan.

### Layanan, pelanggan, dan pengguna

**Layanan** adalah cara mengirimkan nilai kepada pihak lain tanpa mereka harus menanggung biaya dan risikonya. Pembayaran daring sebuah bank, pemesanan janji temu sebuah rumah sakit, dan penyimpanan berkas bersama sebuah perusahaan semuanya adalah layanan. Artikel membedakan **pengguna**, yang memakai layanan, dari **pelanggan**, yang membayar atau memesannya. Dalam TI internal sebuah perusahaan, pelanggan bisa kepala unit bisnis dan penggunanya stafnya. Dalam layanan publik, pelanggan bisa kementerian dan penggunanya warga. Kedua kelompok punya kebutuhan berbeda, dan penyedia yang hanya mendengarkan pelanggan mungkin melewatkan apa yang dialami pengguna.

### Aktivitas ITSM yang khas

Artikel menyebut beberapa gagasan inti, dan praktik ITSM standar menambahkan yang lain. Bersama-sama mereka memberi bentuk yang dikenali:

| Aktivitas | Untuk apa | Di mana panduan ini membahasnya |
|---|---|---|
| **Service desk** | Titik kontak tunggal antara penyedia dan pengguna; menangani insiden dan permintaan layanan | Topik 3.1 — Service Desk |
| **Penanganan insiden** | Memulihkan layanan ketika sesuatu mengganggu atau mengancamnya | Topik 3.2 — Manajemen Insiden |
| **Permintaan layanan** | Menyediakan hal rutin yang diminta pengguna, seperti akses atau perangkat | Topik 3.6 — Manajemen Permintaan Layanan |
| **Masalah dan perubahan** | Menemukan dan memperbaiki penyebab mendasar, dan mengendalikan modifikasi layanan | Topik 3.3 — Manajemen Masalah dan Topik 3.4 — Pemampuan Perubahan |
| **Tingkat layanan dan katalog** | Menyepakati apa yang ditawarkan dan seberapa baik | Topik 3.7 — Manajemen Tingkat Layanan dan Topik 3.8 — Manajemen Katalog Layanan |
| **Peningkatan berkelanjutan** | Membuat layanan lebih baik dari waktu ke waktu | Topik 3.15 — Peningkatan Berkelanjutan |

Artikel mendefinisikan **insiden** sebagai gangguan atau potensi gangguan pada ketersediaan atau kualitas layanan, dan **permintaan layanan** sebagai permintaan rutin untuk suatu layanan. Artikel menyebut **perjanjian tingkat layanan (SLA)** hanya sepintas, jadi panduan menjelaskannya di Topik 3.7 — Manajemen Tingkat Layanan.

### Manajemen layanan perusahaan dan otomatisasi

Artikel mencatat dua perluasan. **Enterprise service management (ESM)** menerapkan perkakas dan gagasan ITSM pada bagian lain bisnis, seperti sumber daya manusia atau fasilitas, yang juga menerima permintaan dan mengirim layanan. **Otomatisasi proses TI** mengganti langkah manual rutin dengan langkah otomatis agar staf dapat berfokus pada pekerjaan berprioritas lebih tinggi. Keduanya penting bagi tim agile: ESM menunjukkan bahwa disiplin ini tidak terikat pada TI, dan otomatisasi adalah cara tim kecil mengimbangi volume.

### Kerangka kerja dan standar

Artikel mendaftar banyak kerangka kerja dan standar. Daftar di bawah mengulang deskripsi satu barisnya dan diperluas di Topik 2.7 — Kerangka Kerja dan Standar ITSM.

| Nama | Kata artikel |
|---|---|
| [ITIL](https://en.wikipedia.org/wiki/ITIL) | Praktik terperinci untuk ITSM dan manajemen aset TI, menyelaraskan TI dengan tujuan bisnis |
| [ISO/IEC 20000](https://en.wikipedia.org/wiki/ISO/IEC_20000) | Standar internasional untuk sistem manajemen layanan, yang terhadapnya organisasi dapat disertifikasi |
| [COBIT](https://en.wikipedia.org/wiki/COBIT) | Kerangka tata kelola TI dengan tujuan kendali, metrik, dan model kematangan |
| [FitSM](https://en.wikipedia.org/wiki/FitSM) | Standar ringan, sebagian besar selaras dengan ISO/IEC 20000 |
| [CMMI](https://en.wikipedia.org/wiki/CMMI) | Model untuk membangun, mengelola, dan memperbaiki layanan |
| [TOGAF](https://en.wikipedia.org/wiki/TOGAF) | Kerangka yang menghubungkan tujuan bisnis dengan sasaran arsitektur |
| [Microsoft Operations Framework](https://en.wikipedia.org/wiki/Microsoft_Operations_Framework) | Panduan manajemen layanan berbasis teknologi Microsoft |
| [Application Services Library](https://en.wikipedia.org/wiki/Application_Services_Library) | Kerangka untuk manajemen aplikasi profesional |
| [Business Information Services Library](https://en.wikipedia.org/wiki/Business_Information_Services_Library) | Kerangka praktik terbaik untuk manajemen informasi |
| Business Process Framework (eTOM) | Kerangka proses untuk penyedia telekomunikasi |

Artikel menambahkan bahwa kerangka kerja ITSM telah memanfaatkan ISO 9000, ISO/IEC 27000, dan CMMI, dan bahwa ITIL versi 2 dan BS 15000, pendahulu ISO/IEC 20000, saling diselaraskan. Artikel juga menjelaskan USM, sistem manajemen berbasis prinsip yang diadopsi pemerintah Belanda.

### Apa yang tidak dicakup artikel

Artikel tidak punya bagian sejarah, tidak ada kritik, dan tidak menyebut agile atau DevOps. Kebisuan itu penting. ITSM telah dikritik karena beban prosesnya dan perubahan yang lambat, dan tim agile telah dikritik karena mengabaikan operasi, tetapi Anda tidak akan menemukan kritik mana pun di sana. Panduan ini mengisi celah itu di Bagian 5, dimulai dengan Topik 5.1 — Manajemen Layanan Agile. Di tempat topik ini menyebut masalah, ia bersandar pada sumber lain panduan dan pengalaman praktis, dan mengatakannya.

### ITSM dan ITAM

Artikel ITIL menjelaskan ITIL mencakup ITSM dan manajemen aset TI (ITAM). ITAM adalah disiplin mengetahui aset TI apa yang dimiliki organisasi, berapa biayanya, dan bagaimana dipakai. Layanan bergantung pada aset, dan kedua disiplin berbagi informasi, itulah sebabnya Bagian 4 mengikuti ITSM dengan dekat (lihat Topik 4.1 — Manajemen Aset TI).

## Praktik terbaik

1. **Definisikan layanan Anda dari sisi pelanggan.** Daftar apa yang sebenarnya dipakai pelanggan dan pengguna, dalam kata-kata mereka, seperti "masuk," "memesan janji temu," dan "mengirim faktur." Kelompokkan teknologi di balik masing-masing. Ini awal katalog layanan (ITIL mengejanya "service catalogue"; lihat Topik 3.8 — Manajemen Katalog Layanan).
2. **Sebutkan siapa pelanggan dan penggunanya.** Untuk tiap layanan, tuliskan siapa yang membayar atau memesannya dan siapa yang memakainya. Jika berbeda orang, pastikan kedua kelompok punya suara.
3. **Beri setiap layanan seorang pemilik.** Tunjuk satu orang yang bertanggung jawab atas bagaimana layanan berkinerja dan membaik dari waktu ke waktu. Tanpa pemilik, masalah layanan bukan tugas siapa pun.
4. **Mulai dengan aktivitas yang paling menyakitkan.** Jika gangguan adalah rasa sakitnya, perkuat penanganan insiden lebih dulu. Jika tak ada yang tahu apa yang berubah, mulai dari catatan perubahan. Jangan meluncurkan setiap praktik ITSM sekaligus.
5. **Gunakan satu pintu depan.** Beri pengguna satu tempat untuk meminta bantuan dan membuat permintaan, dan buat mudah. Service desk yang sulit dijangkau akan dilewati, dan Anda kehilangan informasi yang menjadi tumpuan ITSM.
6. **Pisahkan insiden dari permintaan dari masalah.** Insiden adalah gangguan, permintaan adalah permintaan rutin, dan masalah adalah penyebab mendasar. Antrean campuran menyembunyikan pola dan memutarbalikkan ukuran.
7. **Catat yang penting dan tidak lebih.** Simpan catatan insiden, perubahan, dan aset yang akan Anda pakai untuk membuat keputusan. Hapus kolom yang tak dibaca siapa pun. Catatan adalah biaya, dan Anda harus bisa mengatakan untuk apa tiap catatan.
8. **Pilih kerangka kerja berdasarkan masalah, bukan mode.** Pakai ITIL, ISO/IEC 20000, COBIT, atau model lebih ringan sebagai sumber gagasan untuk masalah yang Anda miliki. Adopsi bagian yang membantu dan katakan mana yang Anda tinggalkan.
9. **Otomatisasi yang rutin.** Cari langkah berulang, seperti reset kata sandi dan pemberian akses, dan otomatisasi dengan hati-hati. Tinjau tindakan otomatis secara berkala agar tidak menyimpang dari kebutuhan pengguna.
10. **Ukur apa yang dirasakan pelanggan.** Lacak ketersediaan, waktu pemulihan layanan, dan kepuasan pengguna sebelum menghitung aktivitas internal. Gunakan survei dari artikel Wikipedia sebagai pengingat bahwa praktisi sudah menyebut pengalaman pelanggan dan kualitas sebagai tujuan utama.
11. **Lihat melampaui TI.** Jika bagian lain organisasi menangani permintaan dengan buruk, pertimbangkan perkakas dan praktik bersama lewat manajemen layanan perusahaan. Jangan memaksakan kosakata TI kepada mereka.
12. **Perbaiki secara berkelanjutan.** Sisihkan waktu rutin untuk meninjau apa yang berfungsi, memakai data insiden dan permintaan, dan membuat perubahan kecil (lihat Topik 3.15 — Peningkatan Berkelanjutan).

## Pertanyaan untuk dibahas bersama tim Anda

**Layanan apa yang kita sediakan, dalam kata-kata yang akan dipakai pengguna kita?**

Minta tiap orang menulis tiga hal yang paling sering diandalkan pengguna dari kita. Bandingkan daftar. Perbedaan biasanya menunjukkan bahwa tim memegang gambaran layanan yang berbeda, atau bahwa ia menggambarkan layanan menurut teknologi alih-alih pemakaian. Fasilitator dapat menanyakan layanan mana yang tidak punya pemilik jelas. Lanjutkan dengan menyepakati daftar layanan pertama.

**Siapa pelanggan dan siapa pengguna layanan utama kita, dan apakah mereka menginginkan hal yang sama?**

Sebutkan orang yang memesan atau membayar dan orang yang memakai. Tanyakan apa yang diinginkan masing-masing dari layanan. Dalam TI internal, pelanggan mungkin peduli biaya dan risiko, dan pengguna kecepatan dan kemudahan. Tanyakan di mana mereka bertentangan dan bagaimana tim mengetahuinya. Pilih satu konflik untuk dibicarakan dengan orang sungguhan.

**Ke mana pengguna pergi ketika membutuhkan bantuan, dan berapa banyak jalurnya?**

Hitung caranya: portal, nomor telepon, email, obrolan, meja rekan. Tanyakan jalur mana yang disukai pengguna dan mengapa. Banyak jalur informal berarti sebagian permintaan tak terlihat. Diskusi harus berakhir dengan keputusan jalur mana yang dipertahankan, mana yang digabung, dan bagaimana menangkap apa yang datang lewat jalur informal.

**Seberapa baik kita membedakan insiden dari permintaan dari masalah, dan apa yang terjadi ketika kita mencampurnya?**

Ambil sepuluh tiket terbaru dan pilah. Ketidaksepakatan menunjukkan definisi berbeda di dalam tim. Tanyakan apa yang dilakukan kategori campuran terhadap laporan dan prioritas. Misalnya, banyak permintaan dalam antrean insiden dapat membuat penanganan insiden tampak lambat. Sepakati definisi sederhana dan contoh.

**Praktik ITSM mana yang belum kita miliki atau hanya kita lakukan di atas kertas?**

Daftar praktik dalam tabel di atas dan nilai masing-masing sebagai berfungsi, sebagian berfungsi, atau hanya di atas kertas. Minta contoh terbaru untuk tiap yang dinilai berfungsi. Fasilitator sebaiknya menahan dorongan untuk mengisi setiap celah, dan menanyakan celah mana yang paling merugikan pelanggan.

**Apa yang kita inginkan dari kerangka kerja, dan apa yang kita takutkan akan dilakukannya pada kita?**

Kumpulkan harapan dan ketakutan tentang mengadopsi ITIL atau ISO/IEC 20000. Harapan sering berupa konsistensi dan kredibilitas. Ketakutan sering berupa kerja administrasi dan kelambatan. Tanyakan bagaimana memperoleh yang pertama tanpa yang kedua. Misalnya, adopsi kosakata dan beberapa praktik, dan hindari formulir. Catat kondisi yang dibutuhkan tim.

## Dalam praktik: contoh ITIL agile

Sebuah toko ritel daring berukuran menengah telah tumbuh dari situs web pendiri menjadi bisnis dengan tim dua belas engineer, basis pelanggan yang membesar, dan kelompok kecil staf dukungan. Pelanggan mengirim email masalah ke kotak masuk bersama dan menelepon nomor ponsel pribadi ketika checkout gagal. Engineer memperbaiki apa yang mereka dengar dan jarang menuliskan apa pun. Setelah gangguan pembayaran yang berlangsung tiga jam, pendiri bertanya mengapa tak ada yang tahu sampai pelanggan menelepon.

Kepala rekayasa mengusulkan ITSM paling ringan. Tim mendaftar layanannya dalam istilah pelanggan: jelajah dan cari, checkout dan pembayaran, pelacakan pesanan, dan akun pelanggan. Masing-masing mendapat pemilik. Alamat dukungan bersama menjadi satu pintu depan, mengalir ke perkakas tiket sederhana dengan jenis terpisah untuk insiden dan permintaan. Setiap insiden yang berlangsung lebih dari 30 menit mendapat tinjauan singkat, ditulis dalam dokumen bersama. Perubahan pada checkout dan pembayaran diumumkan di kanal tim sebelum terjadi.

Setelah tiga bulan, tim tahu berapa banyak insiden yang ditanganinya dan menemukan bahwa sebagian besar berasal dari dua penyebab. Ia memperbaiki keduanya, dan gangguan checkout tidak terulang. Beberapa kesulitan tersisa. Pelanggan masih menelepon pendiri ketika kesal, sehingga sebagian permintaan melewati perkakas tiket. Engineer juga menggerutu bahwa menulis tinjauan memakan waktu, dan dua tinjauan terlewat pada bulan yang sibuk. Kepala rekayasa memutuskan menjaga tinjauan tetap singkat, meminta pendiri meneruskan panggilan ke alamat dukungan, dan meninjau kembali apakah proses ala ITIL yang lebih lengkap diperlukan setelah satu kuartal data lagi.

## Empat perspektif

### Tim produk dan pengiriman

Tim pengiriman yang juga menjalankan apa yang mereka bangun sudah melakukan ITSM. Namai layanan Anda, catat insiden dan perubahan dengan cara ringan, dan bagikan data kepada siapa pun yang mendukung layanan Anda. Perlakukan service desk sebagai sumber bukti tentang apa yang menyulitkan pengguna.

### Tim layanan dan operasi

Staf operasi dan service desk memikul sebagian besar praktik ITSM. Gagasan agile dapat membantu dengan membuat pekerjaan Anda terlihat, memperpendek putaran umpan balik dengan pengguna, dan menggeser perbaikan dari proyek tahunan ke perubahan kecil yang rutin. Jelaskan tujuan di balik setiap aturan ITSM agar rekan dapat menyesuaikannya dengan masuk akal.

### Kepemimpinan dan tata kelola

Pemimpin memutuskan seberapa banyak struktur yang diminta dan seberapa banyak bukti yang diminta. Minta hasil yang dirasakan pelanggan, dan beberapa ukuran yang dapat dihasilkan tim dari perkakas mereka. Berhati-hatilah membeli kerangka kerja sebagai sinyal; artikel Wikipedia mendaftar banyak, dan tak ada yang menggantikan pengetahuan tentang layanan Anda sendiri.

### Pelanggan dan pengguna

Pelanggan dan pengguna adalah alasan ITSM ada. Harapkan jalur yang jelas untuk meminta bantuan, informasi jujur tentang apa yang diharapkan, dan seseorang yang memiliki setiap layanan. Sebagai imbalannya, berikan informasi yang tepat waktu dan spesifik ketika ada yang salah, agar penyedia dapat belajar darinya.

## Pola kegagalan umum

- **Proses demi proses.** Formulir dan persetujuan berlipat dan tak ada yang ingat alasannya. Sebaliknya, kaitkan setiap praktik dengan tujuan dan hapus yang tak lagi melayaninya.
- **Tanpa satu pintu depan.** Pengguna mendekati siapa pun yang mereka kenal, dan permintaan tak terlihat. Sebaliknya, tawarkan satu jalur mudah dan tangkap permintaan informal ke dalamnya.
- **Mencampur insiden, permintaan, dan masalah.** Laporan menyesatkan dan penyebab tetap tersembunyi. Sebaliknya, pakai definisi sederhana dan pilah tiket secara konsisten.
- **Layanan digambarkan menurut teknologi.** Pengguna tidak dapat menemukan apa yang mereka butuhkan dan pemilik tidak jelas. Sebaliknya, gambarkan layanan dalam istilah pelanggan dan tunjuk pemilik untuk masing-masing.
- **Mengadopsi kerangka kerja secara borongan.** Tim menyalin kerangka besar dan mengubur diri dalam proses. Sebaliknya, mulailah dari masalah dan ambil hanya bagian yang membantu.
- **Mengabaikan pengguna.** Penyedia hanya berbicara dengan pelanggan yang membayar. Sebaliknya, dengarkan pelanggan dan pengguna dan carilah konflik.
- **Mengukur aktivitas.** Hitungan tiket dan panggilan menggantikan bukti kualitas layanan. Sebaliknya, ukur ketersediaan, waktu pemulihan layanan, dan kepuasan pengguna.
- **Memperlakukan ITSM terpisah dari pengiriman.** Tim pengiriman mengirim dan membiarkan operasi menanggung. Sebaliknya, hubungkan mereka lewat layanan bersama, data bersama, dan tinjauan bersama (lihat Topik 5.1 — Manajemen Layanan Agile).

## Model kematangan

| Dimensi | Memulai | Mengembangkan | Menstandarkan | Mengelola | Mengorkestrasi |
|---|---|---|---|---|---|
| Definisi layanan | Layanan digambarkan menurut teknologi atau tidak sama sekali | Beberapa layanan didaftar dengan pemilik | Semua layanan digambarkan dalam istilah pelanggan dengan pemilik yang ditunjuk | Deskripsi layanan diperiksa terhadap pemakaian dan umpan balik | Definisi layanan dibagikan dengan pelanggan dan pemasok dan disesuaikan bersama |
| Dukungan dan permintaan | Bantuan diminta lewat jalur informal | Beberapa tim punya perkakas tiket atau kotak masuk bersama | Satu pintu depan dengan jenis yang jelas untuk insiden dan permintaan | Permintaan dan waktu penyelesaian dilacak dan ditinjau | Dukungan dikoordinasikan lintas tim dan pemasok dengan data bersama |
| Catatan dan ukuran | Sedikit catatan disimpan | Beberapa tim mencatat insiden dan perubahan | Catatan konsisten dan masing-masing punya tujuan yang dinyatakan | Ukuran yang menghadap pelanggan ditinjau secara berkala | Ukuran dibagikan lintas layanan dan dipakai menetapkan prioritas bersama |
| Perbaikan | Perbaikan mengikuti krisis | Beberapa tim meninjau insiden | Tinjauan berkala atas data insiden dan permintaan mengarah pada perubahan terencana | Pekerjaan perbaikan diberi sumber daya dan hasilnya diperiksa | Perbaikan adalah rutinitas lintas tim dan dengan pelanggan |

## Daftar periksa

- [ ] Kami punya daftar layanan kami dalam bahasa pelanggan.
- [ ] Setiap layanan punya pemilik yang ditunjuk.
- [ ] Kami tahu siapa pelanggan dan siapa pengguna untuk setiap layanan.
- [ ] Pengguna punya satu pintu depan yang jelas untuk bantuan dan permintaan.
- [ ] Insiden, permintaan, dan masalah dicatat sebagai hal yang berbeda.
- [ ] Setiap jenis catatan punya tujuan yang dinyatakan, dan kolom yang tak terpakai dihapus.
- [ ] Kami mengukur setidaknya satu hal yang dirasakan pelanggan, seperti ketersediaan atau waktu pemulihan layanan.
- [ ] Kami meninjau data insiden dan permintaan secara berkala dan bertindak atasnya.
- [ ] Kami dapat mengatakan gagasan kerangka kerja mana yang kami pakai dan mana yang kami tinggalkan.
- [ ] Tugas rutin yang dapat diotomatisasi dengan aman telah diidentifikasi.

## Prompt AI

**Tujuan: menyusun daftar layanan Anda dalam bahasa pelanggan.**

```text
Help me describe the services my team provides in the words our users would use.

Who we are and what we run: [describe the team and its main systems in a few sentences].
Who uses what: [list user groups and what each group does with our systems].
What we currently call our services: [paste a list, or write "none"].

Produce a draft list of 5 to 10 services, each with a one-sentence description from the user's point of view, the customer or user groups, and a suggested owner role. Mark each item that is a guess. Do not invent systems I did not mention. Ask clarifying questions first if information is missing, and list what you are unsure of.
```

**Tujuan: memilah tiket terbaru menjadi insiden, permintaan, dan masalah.**

```text
Here are [number] recent tickets or messages to our team: [paste short, anonymized descriptions, one per line].

Definitions to use: an incident is an unplanned disruption or potential disruption to a service; a service request is a routine request for something the service normally provides; a problem is the underlying cause of one or more incidents.

Classify each item as incident, request, or possible problem, with one sentence of reasoning that uses only what I wrote. List items you could not classify and the question I should ask to decide. At the end, tell me the share in each category from my list only. Do not invent details, and list what you are unsure of.
```

**Tujuan: memilih sekumpulan kecil praktik ITSM pertama untuk situasi Anda.**

```text
Help me choose a first set of IT service management practices for a team in this situation.

Team size and type: [describe].
Our biggest pains (with a recent example for each): [list].
Existing tools and records: [list, or write "none"].
Rules we must follow (audit, security, contracts), with source text if you have it: [paste, or write "none known"].

From these practices: service desk, incident management, problem management, change enablement, service request management, service level management, service catalog management, knowledge management, continual improvement, propose the two or three to start with and say why, using only the information above. Say what you would leave for later. Mark assumptions, ask clarifying questions first, and list what you are unsure of.
```

**Tujuan: menyiapkan percakapan antara tim pengiriman dan service desk.**

```text
Plan a 45-minute conversation between a delivery team and the service desk about how new changes are handed over.

Delivery team: [describe]. Service desk: [describe].
Recent example of a handover that went badly: [describe factually].
What the service desk says it needs: [list, or write "unknown"].

Produce an agenda, five questions for each side, and a closing step that records one agreed change with an owner. Keep it free of any particular tool. Ask clarifying questions first if information is missing, mark assumptions, and list what you are unsure of.
```

## Keterampilan AI

- [service-catalog](../../../../skills/service-catalog/SKILL.md): gunakan untuk menyusun atau meninjau daftar layanan dalam bahasa pelanggan, dengan pemilik dan deskripsi.
- [service-level-agreement](../../../../skills/service-level-agreement/SKILL.md): gunakan ketika Anda siap menyepakati dengan pelanggan tingkat layanan yang diharapkan.
- [incident-response-plan](../../../../skills/incident-response-plan/SKILL.md): gunakan untuk menyiapkan bagaimana tim Anda menangani insiden sebelum terjadi.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md): gunakan untuk memahami jenis permintaan dan insiden apa yang datang dan dalam volume berapa.
- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): gunakan untuk memperjelas siapa yang memiliki setiap layanan dan siapa yang dikonsultasikan atau diberi tahu.

## Sumber utama

- **IT service management** (Wikipedia): definisi singkat dengan daftar kerangka kerja dan standar terkait, berguna sebagai peta.
- **ITIL** (Wikipedia): sejarah dan versi kerangka kerja ITSM paling terkenal, termasuk perubahan kepemilikannya.
- **ISO/IEC 20000** (Wikipedia): latar belakang standar internasional untuk sistem manajemen layanan.
- **Enterprise service management** (Wikipedia): pengantar menerapkan gagasan ITSM di luar TI.

## Referensi

1. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
2. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
3. ISO/IEC 20000 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_20000
4. COBIT — Wikipedia — https://en.wikipedia.org/wiki/COBIT
5. FitSM — Wikipedia — https://en.wikipedia.org/wiki/FitSM
6. CMMI — Wikipedia — https://en.wikipedia.org/wiki/CMMI
7. TOGAF — Wikipedia — https://en.wikipedia.org/wiki/TOGAF
8. Microsoft Operations Framework — Wikipedia — https://en.wikipedia.org/wiki/Microsoft_Operations_Framework
9. Application Services Library — Wikipedia — https://en.wikipedia.org/wiki/Application_Services_Library
10. Business Information Services Library — Wikipedia — https://en.wikipedia.org/wiki/Business_Information_Services_Library
11. Enterprise service management — Wikipedia — https://en.wikipedia.org/wiki/Enterprise_service_management
12. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
