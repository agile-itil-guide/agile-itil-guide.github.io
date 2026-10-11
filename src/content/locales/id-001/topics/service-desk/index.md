# Service Desk

**Service desk adalah tempat pengguna dan penyedia layanan bertemu, dan dalam organisasi agile keluaran paling berharganya bukan tiket yang ditutup melainkan apa yang dipelajarinya tentang bagaimana pengguna mengalami layanan.**

## Mengapa ini penting

Bagi sebagian besar pengguna, service desk adalah layanannya. Mereka jarang melihat engineer, arsitektur, atau pipeline; mereka melihat orang yang menjawab ketika ada yang salah. Bagaimana percakapan itu berjalan membentuk kepercayaan mereka pada segala yang ada di belakangnya. Desk yang ramah dan kompeten dapat melunakkan gangguan yang buruk, dan desk yang meremehkan dapat merusak layanan yang baik.

Desk juga sensor terbaik yang dimiliki organisasi. Setiap kontak adalah sepotong kecil bukti tentang apa yang membingungkan pengguna, apa yang rusak, dan apa yang mereka harapkan dilakukan layanan. Tim agile yang sering merilis memerlukan bukti itu dengan cepat. Desk yang terisolasi dari tim pengiriman menghasilkan tiket, dan desk yang terhubung menghasilkan perbaikan.

[Artikel Wikipedia tentang manajemen layanan TI](https://en.wikipedia.org/wiki/IT_service_management) menggambarkan service desk sebagai titik kontak tunggal antara penyedia dan pengguna atau pelanggan, menangani insiden dan permintaan layanan. [Artikel Wikipedia tentang help desk](https://en.wikipedia.org/wiki/Help_desk) singkat: ia mencakup definisi, manajemen antrean, dan perutean panggilan, dan tidak mengatakan apa-apa tentang sejarah, tingkat dukungan, metrik, atau perbedaan antara help desk dan service desk. Topik ini karena itu bersandar pada kedua artikel tersebut untuk definisi, dan sisanya adalah panduan praktis yang ditawarkan sebagai demikian, bukan sebagai temuan mapan.

## Konsep inti

### Apa itu service desk

**Help desk**, menurut Wikipedia, adalah departemen atau orang yang memberi bantuan dan informasi, biasanya untuk masalah elektronik atau komputer. **Service desk**, dalam penggunaan ITSM, lebih luas: titik kontak tunggal bagi pengguna dan pelanggan, menangani insiden (gangguan atau potensi gangguan pada layanan) dan permintaan layanan (permintaan rutin untuk sesuatu yang biasanya disediakan layanan). Artikel help desk mendaftar "service desk" hanya sebagai topik terkait, jadi batas persis antara kedua istilah tidak diberikan di sana. Banyak organisasi memakai kedua kata itu bergantian; yang penting adalah apa yang diharapkan dari desk Anda.

### Pengguna dan pelanggan

Artikel ITSM membedakan pengguna, yang memakai layanan, dari pelanggan, yang membayar atau memesannya. Desk terutama mendengar dari pengguna. Ia juga sebaiknya tahu siapa pelanggannya, karena merekalah yang menentukan prioritas dan pendanaan. Desk yang baik dapat berbicara kepada keduanya.

### Antrean dan perutean

Wikipedia mengatakan help desk besar memiliki orang atau tim yang mengelola permintaan masuk, sering disebut manajer antrean atau supervisor antrean, yang menugaskan setiap masalah ke tim khusus menurut jenisnya. Sebagian desk memakai sistem telepon dengan distribusi panggilan otomatis yang merutekan panggilan tentang topik tertentu ke analis dengan pengalaman yang tepat. Perutean adalah alat utama desk untuk mencocokkan masalah dengan orang yang dapat menyelesaikannya.

### Tingkat dukungan

Banyak desk mengatur dukungan dalam tingkat, sering disebut tier. Sumber yang dibaca untuk panduan ini tidak menjelaskan tier, jadi yang berikut adalah praktik umum yang dijelaskan secara umum, bukan klaim dari sumber:

| Tingkat | Peran tipikal |
|---|---|
| Lini pertama | Menerima kontak, mencatatnya, menyelesaikan masalah umum memakai pengetahuan terdokumentasi, dan merutekan sisanya |
| Lini kedua | Menangani masalah lebih sulit yang membutuhkan keterampilan teknis lebih dalam |
| Lini ketiga | Spesialis, sering engineer yang membangun layanan, yang memperbaiki kesalahan mendasar |

Model ini punya kelemahan yang dikenal: ia dapat menjadikan tiap tingkat tempat pekerjaan menunggu. Tim agile sering mencoba memperpendek jalur agar analis desk dapat menjangkau engineer secara langsung (lihat Topik 3.2 — Manajemen Insiden).

### Kanal

Kontak tiba lewat telepon, email, obrolan, portal web, atau secara langsung. Tiap kanal cocok untuk pengguna dan masalah berbeda. Portal dapat membuat permintaan terstruktur dan cepat. Saluran telepon cocok untuk gangguan mendesak. Menawarkan beberapa kanal itu baik, asalkan semuanya mengalir ke catatan yang sama, agar permintaan terlihat di satu tempat (lihat Topik 2.1 — Manajemen Layanan TI tentang satu pintu depan).

### Swalayan dan pengetahuan

Banyak desk menawarkan swalayan: portal tempat pengguna dapat menemukan jawaban dan membuat permintaan rutin tanpa berbicara dengan siapa pun. Sumber yang dibaca tidak menjelaskan swalayan, tetapi ia terhubung dengan dua praktik dalam panduan ini: basis pengetahuan yang baik (lihat Topik 3.9 — Manajemen Pengetahuan) dan daftar layanan yang jelas (lihat Topik 3.8 — Manajemen Katalog Layanan).

### Desk sebagai sumber bukti

Apa yang dicatat desk dapat berharga bagi seluruh organisasi: pertanyaan paling umum, kesalahan paling umum, berapa lama hal-hal memakan waktu, dan apa kata pengguna. Bukti ini membantu tim pengiriman memutuskan apa yang diperbaiki, membantu manajemen masalah menemukan penyebab (lihat Topik 3.3 — Manajemen Masalah), dan membantu manajemen tingkat layanan menyepakati target yang realistis (lihat Topik 3.7 — Manajemen Tingkat Layanan). Desk yang mencatat hanya cukup untuk menutup tiket menyia-nyiakan ini.

### Ukuran

Desk sering dinilai dengan hitungan: kontak yang ditangani, waktu menjawab, waktu menutup. Hitungan mudah dikumpulkan dan mudah disalahgunakan. Waktu menutup dapat dimainkan dengan menutup tiket lebih awal, dan hitungan kontak dapat menghargai penanganan masalah berulang alih-alih menghilangkannya. Ukuran yang lebih baik mencakup kepuasan pengguna, seberapa sering kontak diselesaikan pada sentuhan pertama, dan apakah kontak berulang tentang masalah yang sama menurun dari waktu ke waktu. Perlakukan ukuran apa pun sebagai pemantik pertanyaan dan sepakati apa yang akan Anda lakukan dengannya (lihat Topik 5.6 — Metrik dan Pengukuran).

### Kritik dan batasan

Artikel Wikipedia yang dibaca untuk panduan ini tidak menyebut kritik terhadap help desk atau service desk. Praktisi umumnya mengajukan beberapa kekhawatiran yang sudah dikenal: bahwa desk diperlakukan sebagai biaya yang diminimalkan, bahwa skrip menggantikan penilaian, bahwa orang yang menjawab tidak punya kuasa memperbaiki apa pun, dan bahwa pergantian staf tinggi. Ini banyak dibahas tetapi disajikan di sini sebagai kekhawatiran umum, bukan sebagai temuan dari sumber.

## Praktik terbaik

1. **Beri desk tujuan yang jelas.** Tuliskan untuk apa desk: siapa yang dilayani, apa yang ditangani, dan apa yang diteruskan. Desk tanpa tujuan yang dinyatakan menyimpang menangani apa pun yang tiba.
2. **Tawarkan beberapa kanal baik yang mengalir ke satu catatan.** Pilih kanal yang disukai pengguna Anda, dan pastikan masing-masing membuat catatan di tempat yang sama. Kanal tersembunyi, seperti pesan pribadi kepada engineer, menyembunyikan permintaan.
3. **Pisahkan insiden dari permintaan dari pertanyaan.** Pakai kategori sederhana dan contoh, agar analis mengklasifikasi secara konsisten. Pemisahan ini penting untuk prioritas dan pelaporan (lihat Topik 3.6 — Manajemen Permintaan Layanan).
4. **Taruh pengetahuan di depan analis.** Sediakan panduan singkat yang dapat dicari untuk masalah paling umum, dan perbarui ketika jawabannya berubah. Tanyakan kepada analis artikel mana yang mereka pakai dan mana yang keliru.
5. **Biarkan desk memperbaiki yang bisa.** Bila aman, beri analis wewenang dan perkakas untuk menyelesaikan masalah umum, seperti reset kata sandi dan pemberian akses. Setiap eskalasi yang tidak perlu memakan waktu pengguna.
6. **Buat jalur langsung ke engineer.** Permudah analis bertanya kepada tim pengiriman tentang kesalahan baru, dan tim memberi tahu desk tentang rilis. Kanal bersama dan kontak yang ditunjuk cukup untuk memulai.
7. **Beri tahu desk tentang perubahan sebelum pengguna merasakannya.** Bagikan catatan rilis dan masalah yang diketahui kepada desk lebih dulu (lihat Topik 3.5 — Manajemen Rilis dan Deployment). Kejutan membuat desk tampak kurang informasi.
8. **Catat cukup untuk belajar, dan tidak lebih.** Tangkap kategori, layanan yang terdampak, apa yang terjadi, dan bagaimana diperbaiki. Tinjau kolom secara berkala dan hapus yang tidak dipakai siapa pun.
9. **Tinjau kontak menurut tema.** Sekali sebulan, kelompokkan kontak terbaru menurut penyebab dan lihat beberapa teratas. Bagikan tema kepada tim pengiriman dan manajemen masalah.
10. **Tanyakan kepada pengguna bagaimana jalannya.** Pakai pertanyaan singkat setelah kontak, seperti apakah masalah terselesaikan. Baca komentarnya. Padukan dengan bukti lain, karena skor kepuasan saja mudah disalahbaca.
11. **Perhatikan orang-orangnya.** Sediakan pelatihan, variasi, dan jalur ke peran lain. Desk hanya sebaik orang yang mengawakinya, dan pergantian staf yang tinggi adalah biaya yang tidak muncul dalam hitungan tiket.
12. **Perlakukan desk sebagai bagian dari pengiriman.** Sertakan perwakilan desk dalam sprint review dan perencanaan, dan perlakukan umpan balik desk sebagai masukan backlog (lihat Topik 5.1 — Manajemen Layanan Agile).

## Pertanyaan untuk dibahas bersama tim Anda

**Apa yang dialami pengguna ketika menghubungi kita, dari saat pertama sampai jawaban?**

Telusuri kontak tipikal sebagai pengguna. Catat bagaimana mereka menemukan desk, apa yang ditanyakan kepada mereka, berapa lama mereka menunggu, dan apa yang mereka dengar. Tanyakan beberapa pengguna bila mungkin. Tujuannya melihat layanan dari luar. Fasilitator dapat menanyakan di mana pengguna paling mungkin merasa diabaikan. Lanjutkan dengan memilih satu langkah untuk diperbaiki.

**Apa yang paling sering kita dengar, dan apa yang telah dilakukan tentangnya?**

Daftar lima alasan kontak paling umum dari bulan terakhir. Di sebelah masing-masing, tulis apa yang telah dilakukan, jika ada, untuk menguranginya. Celah menunjukkan di mana bukti desk tidak sampai kepada siapa pun yang dapat bertindak. Tanyakan siapa yang harus menerima daftar itu dan seberapa sering. Sepakati mengirim yang pertama bulan ini.

**Di mana analis tidak dapat menyelesaikan sesuatu yang bisa mereka selesaikan dengan perkakas, akses, atau pengetahuan yang tepat?**

Minta analis memberi contoh eskalasi yang terasa tidak perlu. Jawaban lazim mencakup akses yang tidak mereka miliki, pengetahuan yang usang, dan takut membuat kesalahan. Perlakukan jawabannya sebagai daftar perbaikan. Tanyakan mana yang bisa dilakukan dengan aman sekarang, dan pengaman apa yang akan membantu untuk sisanya.

**Bagaimana kita mengetahui perubahan yang memengaruhi pengguna, dan seberapa cepat?**

Lihat beberapa rilis atau gangguan terakhir dan tanyakan kapan desk mengetahui masing-masing. Informasi terlambat itu umum. Tanyakan kanal apa yang akan berfungsi: umpan bersama, pengarahan singkat, kontak yang ditunjuk. Tim pengiriman harus ada di ruangan. Sepakati aturan sederhana, seperti tidak ada rilis tanpa catatan ke desk.

**Ukuran kita yang mana yang membantu kita memperbaiki, dan mana yang hanya kita laporkan?**

Daftar ukuran yang dihasilkan desk dan tanyakan siapa yang memakai masing-masing. Ukuran yang tidak dipakai siapa pun adalah kandidat untuk dihapus. Tanyakan ukuran mana yang ditakuti orang, dan mengapa. Jika analis memainkan suatu ukuran, ia perlu diubah. Pilih satu ukuran untuk diganti atau ditambahkan yang akan menunjukkan apakah pengguna lebih baik keadaannya.

**Bagaimana kita mempertahankan orang yang bekerja di sini, dan apa kata mereka tentang kebutuhan mereka?**

Tanyakan kepada analis apa yang akan membuat pekerjaan lebih baik dan apa yang akan membuat mereka pergi. Jawaban lazim adalah variasi, pelatihan, pengakuan, dan cara untuk berkembang. Jangan menjanjikan apa yang tidak dapat Anda penuhi; berkomitmenlah pada satu perubahan yang terlihat. Fasilitator sebaiknya memperlakukan pergantian staf sebagai risiko layanan dan bukan hanya soal kepegawaian.

## Dalam praktik: contoh ITIL agile

Service desk TI internal sebuah otoritas pajak nasional mendukung sekitar 9.000 staf dengan tim 25 analis. Kontak tiba lewat telepon, email, dan portal. Staf mengeluh harus menjelaskan masalah mereka beberapa kali, dan tim pengiriman mengeluh mereka mendengar tentang kesalahan hanya ketika seorang manajer yang marah menelepon.

Manajer desk bertemu kepala tiga tim pengiriman dan mengusulkan tiga perubahan. Pertama, kanal obrolan bersama menghubungkan analis dan tim pengiriman, dengan aturan bahwa respons pertama diharapkan dalam satu jam kerja. Kedua, setiap rilis mendapat catatan singkat ke desk sebelum deployment, ditulis tim pengiriman memakai templat satu halaman. Ketiga, desk menghasilkan daftar bulanan sepuluh alasan kontak paling umum dan membagikannya kepada semua tim pengiriman, yang berkomitmen melihat tiga teratas.

Setelah tiga bulan, desk dan tim pengiriman melaporkan bahwa beberapa kesalahan berulang telah diperbaiki, dan analis mengatakan mereka merasa lebih terinformasi. Beberapa kesulitan tersisa. Kanal bersama menjadi bising dan sebagian analis mengabaikannya, catatan rilis terlambat pada hari sibuk, dan satu tim pengiriman sama sekali tidak menanggapi daftar bulanan. Manajer desk meminta tim pengiriman menunjuk seseorang untuk memantau kanal, memindahkan catatan rilis yang terlambat ke daftar periksa rilis, dan mengangkat kebisuan tim yang tidak responsif kepada kepala TI, yang meminta kepala tim menghadiri tinjauan bulanan berikutnya.

## Empat perspektif

### Tim produk dan pengiriman

Tim pengiriman sebaiknya memperlakukan service desk sebagai rekan dan sebagai pelanggan. Beri tahu desk apa yang berubah dan apa yang diharapkan. Baca tema bulanannya dan masukkan yang teratas ke backlog. Undang analis ke tinjauan, agar orang yang mendengar pengguna setiap hari memberi masukan pada langkah berikutnya.

### Tim layanan dan operasi

Tim operasi mengawaki desk atau bekerja erat dengannya. Beri analis pengetahuan dan wewenang untuk menyelesaikan masalah umum, dan buat eskalasi cepat dan santun. Pakai bukti desk dalam manajemen masalah dan perencanaan kapasitas, dan lindungi orang-orangnya dari diperlakukan sebagai pabrik tiket.

### Kepemimpinan dan tata kelola

Pemimpin memutuskan apakah desk adalah biaya yang diminimalkan atau sumber wawasan. Minta tema dan hasil, bukan hanya volume. Lindungi pelatihan dan jalur karier. Berhati-hatilah dengan target yang menghargai penutupan cepat atau pengalihan kontak, yang menurunkan kualitas sambil memperbaiki angka.

### Pelanggan dan pengguna

Pelanggan dan pengguna diuntungkan oleh desk yang mudah dijangkau, memahami masalah, dan mengabari mereka. Jelaskan masalah dengan jelas, katakan apa yang sedang Anda lakukan, dan beri tahu desk hasil apa yang Anda butuhkan. Beri umpan balik setelah kontak, karena itu salah satu dari sedikit sinyal yang sampai ke tim.

## Pola kegagalan umum

- **Memperlakukan desk hanya sebagai pusat biaya.** Desk diawaki minimal dan dinilai menurut volume. Sebaliknya, ukur hasil dan investasikan pada keterampilan dan perkakas desk.
- **Kanal tersembunyi.** Pengguna melewati desk dengan mengirim pesan ke engineer. Sebaliknya, permudah kanal resmi dan rutekan permintaan informal ke dalam catatan.
- **Eskalasi secara default.** Analis meneruskan semuanya untuk menghindari kesalahan. Sebaliknya, latih, bekali, dan percayai analis menyelesaikan yang bisa mereka selesaikan.
- **Pengetahuan usang.** Artikel menjelaskan sistem yang telah berubah. Sebaliknya, tunjuk pemilik dan tanggal tinjauan, dan tanyakan kepada analis artikel mana yang mengecewakan mereka.
- **Desk mengetahui paling akhir.** Rilis dan gangguan mengejutkannya. Sebaliknya, jadikan pengarahan kepada desk bagian daftar periksa rilis.
- **Ukuran yang mengundang permainan.** Waktu menutup mendorong penutupan dini. Sebaliknya, padukan ukuran kecepatan dengan ukuran kualitas dan waspadai pola.
- **Tanpa umpan balik ke pengiriman.** Bukti desk tidak ke mana-mana. Sebaliknya, bagikan tema bulanan dan harapkan tanggapan.
- **Mengabaikan orang-orangnya.** Pergantian staf tinggi dan moral rendah diterima. Sebaliknya, beri pelatihan, variasi, dan jalur ke peran lain.

## Model kematangan

| Dimensi | Memulai | Mengembangkan | Menstandarkan | Mengelola | Mengorkestrasi |
|---|---|---|---|---|---|
| Penanganan kontak | Kontak tiba lewat banyak jalur informal | Desk ada dengan beberapa kanal bersama | Satu pintu depan dengan kategori dan perutean yang disepakati | Penanganan dan hasil diukur dan ditinjau | Penanganan kontak dikoordinasikan lintas tim dan pemasok |
| Pengetahuan dan perkakas | Jawaban hidup di kepala individu | Ada sebagian panduan | Pengetahuan yang dipelihara dan perkakas umum mendukung penyelesaian lini pertama | Pemakaian dan akurasi pengetahuan dilacak | Pengetahuan dan perkakas dibagikan dengan pengguna, tim pengiriman, dan pemasok |
| Kaitan dengan pengiriman | Desk mengetahui perubahan dari pengguna | Beberapa tim pengiriman memberi pengarahan kepada desk | Rilis menyertakan catatan ke desk dan kontak yang ditunjuk | Aliran informasi diukur dan celah ditutup | Desk dan tim pengiriman merencanakan dan meninjau bersama |
| Belajar dari kontak | Kontak ditutup dan dilupakan | Beberapa tema diperhatikan | Tema bulanan dibagikan dan dilacak | Tema mengarah pada perbaikan terencana yang dampaknya diperiksa | Tema memberi masukan pada perencanaan lintas layanan dan dengan pelanggan |

## Daftar periksa

- [ ] Desk punya tujuan tertulis yang menyatakan siapa yang dilayani dan apa yang ditangani.
- [ ] Semua kanal membuat catatan di satu tempat.
- [ ] Insiden, permintaan, dan pertanyaan diklasifikasi secara konsisten.
- [ ] Analis punya panduan yang dapat dicari untuk masalah paling umum, dengan pemilik dan tanggal tinjauan.
- [ ] Analis dapat menyelesaikan masalah umum tanpa eskalasi.
- [ ] Ada jalur langsung antara analis dan tim pengiriman.
- [ ] Desk diberi tahu tentang rilis dan masalah yang diketahui sebelum pengguna merasakannya.
- [ ] Tema bulanan dibagikan kepada tim pengiriman dan manajemen masalah.
- [ ] Pengguna ditanya secara singkat bagaimana jalannya kontak.
- [ ] Pelatihan dan jalur karier tersedia bagi staf desk.

## Prompt AI

**Tujuan: menemukan tema dalam kontak sebulan.**

```text
Below is a list of contacts to our service desk from the last [period]: [paste short, anonymized descriptions, one per line; remove names and personal data first].

Group them into themes based only on what is written. For each theme, give a name, the number of contacts in my list, one example, and one question that delivery teams or problem management could ask. Highlight the top three themes by count from my list. Mark contacts you could not classify. Do not invent categories beyond the text or estimate counts for contacts I did not provide. List what you are unsure of.
```

**Tujuan: menulis catatan rilis satu halaman untuk service desk.**

```text
Help me write a one-page release note for a service desk about this change.

What changed (plain words): [describe].
Who is affected and when: [describe].
What users might ask or report: [list, or write "unknown"].
Known issues and workarounds: [list, or write "none known"].
How to roll back or who to call: [describe].

Write the note in short sections: what changed, what users will notice, what to tell users, what to do if it goes wrong, and who to contact. Use only my information. Mark assumptions as such, ask clarifying questions first if information is missing, and list what you are unsure of.
```

**Tujuan: memperbaiki artikel pengetahuan yang dipakai analis.**

```text
Here is a knowledge article that service desk analysts use: [paste it].
Here is what analysts say is wrong or missing: [paste their comments, or write "none yet"].

Rewrite it so that a first-line analyst can follow it in under two minutes: a one-line symptom, steps to check, the fix, when to escalate and to whom, and the date and owner of the article. Do not add technical facts that are not in the article or the comments. Mark any step you are unsure of with [CHECK], and list what you are unsure of.
```

**Tujuan: merencanakan percakapan antara service desk dan tim pengiriman.**

```text
Plan a 45-minute conversation between a service desk of [number] analysts and a delivery team of [number] people.

Recent frictions: [describe in a few sentences].
What each side says it needs: [describe, or write "unknown"].

Give a timed agenda, five questions for each side, and a closing step that records one agreed change with an owner and a date. Keep it free of any particular tool. Ask clarifying questions first if information is missing, mark assumptions, and list what you are unsure of.
```

## Keterampilan AI

- [service-catalog](../../../../skills/service-catalog/SKILL.md): gunakan untuk memberi desk daftar jelas layanan yang didukungnya dan permintaan yang ditanganinya.
- [runbook](../../../../skills/runbook/SKILL.md): gunakan untuk mengubah perbaikan umum menjadi prosedur singkat yang dapat diikuti analis lini pertama.
- [getting-feedback](../../../../skills/getting-feedback/SKILL.md): gunakan untuk merancang cara desk meminta umpan balik dari pengguna.
- [survey-design](../../../../skills/survey-design/SKILL.md): gunakan untuk merancang survei kepuasan singkat yang menghasilkan jawaban yang dapat dipakai.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md): gunakan untuk memahami volume dan jenis kontak dan merencanakan penempatan staf.

## Sumber utama

- **IT service management** (Wikipedia): definisi service desk sebagai titik kontak tunggal, dengan insiden dan permintaan layanan.
- **Help desk** (Wikipedia): tinjauan singkat tentang definisi help desk, manajemen antrean, dan perutean panggilan.
- **Technical support** (Wikipedia): latar belakang bidang dukungan yang lebih luas tempat help desk berada.
- **ITIL** (Wikipedia): konteks tentang posisi praktik service desk dalam ITIL.

## Referensi

1. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
2. Help desk — Wikipedia — https://en.wikipedia.org/wiki/Help_desk
3. Technical support — Wikipedia — https://en.wikipedia.org/wiki/Technical_support
4. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
5. Customer service — Wikipedia — https://en.wikipedia.org/wiki/Customer_service
6. Issue tracking system — Wikipedia — https://en.wikipedia.org/wiki/Issue_tracking_system
7. Knowledge base — Wikipedia — https://en.wikipedia.org/wiki/Knowledge_base
8. Call centre — Wikipedia — https://en.wikipedia.org/wiki/Call_centre
