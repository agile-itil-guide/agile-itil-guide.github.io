# Manajemen Keuangan TI dan FinOps

**Manajemen keuangan TI menunjukkan berapa biaya layanan dan nilai apa yang dikembalikannya, dan FinOps adalah praktik budaya yang mempertemukan engineer, keuangan, dan tim bisnis agar pengeluaran teknologi, terutama di cloud, dipahami dan dikelola saat terjadi.**

## Mengapa ini penting

Uang menentukan layanan apa yang ada, seberapa baik diawaki, dan berapa lama bertahan. Bertahun-tahun keuangan TI berarti anggaran tahunan, spreadsheet alokasi biaya, dan sesekali perdebatan tentang siapa yang membayar jaringan. Komputasi cloud mengubahnya. Sumber daya dapat dibuat dalam hitungan detik oleh siapa pun dengan izin yang tepat, dan penagihan mengikuti pemakaian. Satu pekerjaan yang salah konfigurasi dapat menambah ribuan pada tagihan bulanan sebelum ada yang menyadari, dan perubahan yang dipikirkan dengan baik dapat menghemat sebanyak itu.

Bagi tim agile, pergeserannya bermata dua. Mereka mendapat kebebasan bereksperimen dan berskala tanpa menunggu perangkat keras. Mereka juga mengambil tanggung jawab yang dulu ada pada keuangan dan pengadaan: mengetahui berapa biaya pilihan mereka. Sementara itu, staf keuangan yang merencanakan dalam siklus tahunan menghadapi pemakaian yang berubah setiap hari. Tak satu pihak pun dapat mengelola biaya dengan baik sendirian.

Wikipedia bahasa Inggris tidak punya artikel berjudul "FinOps" pada alamat yang diperiksa. Situs FinOps Foundation sendiri mendefinisikan FinOps sebagai kerangka operasional dan praktik budaya yang memaksimalkan nilai bisnis teknologi dan menciptakan akuntabilitas finansial lewat kolaborasi antara tim engineering, keuangan, dan bisnis. Artikel Wikipedia tentang komputasi cloud menjelaskan model harga dan pengendalian biaya, dan memuat pemberitahuan pemeliharaan bahwa bagian-bagiannya mungkin belum terverifikasi. Kosakata keuangan ITIL di sini, seperti penganggaran, akuntansi, dan penagihan, diambil dari deskripsi yang banyak diterbitkan yang tidak dapat dipastikan panduan ini terhadap teks pemilik kerangka kerja.

## Konsep inti

### Manajemen keuangan TI

Manajemen keuangan TI (dalam ITIL, "financial management for IT services") secara luas dijelaskan sebagai praktik mengelola uang penyedia layanan TI: merencanakan anggaran, mengakuntansi biaya, dan, bila relevan, menagih layanan. Tujuannya memberi pengambil keputusan informasi untuk menyeimbangkan biaya terhadap nilai. Sumber yang dibaca untuk panduan ini tidak mendefinisikan praktik itu, jadi deskripsi ini adalah penggunaan umum, ditawarkan sebagai demikian.

| Aktivitas | Pertanyaan yang dijawabnya |
|---|---|
| **Penganggaran dan perencanaan** | Berapa banyak yang akan kita keluarkan, dan untuk apa, dalam periode mendatang? |
| **Akuntansi biaya** | Berapa biaya menyediakan setiap layanan? |
| **Penagihan atau alokasi** | Siapa yang membayar, dan bagaimana? |
| **Analisis nilai dan investasi** | Apakah layanan atau perubahan sepadan dengan biayanya? |

### Showback dan chargeback

Dua pengaturan untuk berbagi biaya dipakai luas. Dalam **showback**, konsumen diperlihatkan apa yang mereka pakai dan berapa biayanya, tetapi tidak ditagih. Dalam **chargeback**, mereka ditagih atau biaya dipindahkan ke anggaran mereka. Showback membangun kesadaran dengan sedikit gesekan; chargeback menciptakan akuntabilitas dan dapat menimbulkan perselisihan atas aturan alokasi. Pilih salah satu dengan menanyakan perilaku apa yang Anda inginkan dan apakah datanya cukup baik untuk dibela.

### Cloud dan model bayar-sesuai-pakai

Wikipedia mengatakan komputasi cloud dapat mengurangi pengeluaran modal di muka dengan beralih ke model pengeluaran operasional ketika biaya berskala dengan pemakaian, dan bahwa infrastruktur sebagai layanan ditagih berdasarkan utilitas. Ia menjelaskan perangkat lunak sebagai layanan biasanya sebagai biaya tetap bulanan atau tahunan per pengguna, atau bayar-per-pakai. Daftar kekhawatiran pengendalian biayanya mencakup sumber daya tak terpakai, konfigurasi tidak efisien, dan biaya tersembunyi. Ia mencatat bahwa penyedia menawarkan perkakas biaya dan mengutip FinOps sebagai kerangka untuk menstandarkan operasi keuangan cloud.

Artikel melaporkan temuan survei: survei Gartner terhadap 200 pemimpin TI menemukan 69 persen mengalami pembengkakan anggaran cloud pada 2023, dengan lainnya menghargai perkiraan, pemantauan pengeluaran, dan optimalisasi; dan laporan Flexera 2024 menyebut mengelola pengeluaran cloud sebagai tantangan teratas, melaporkan bahwa pengeluaran cloud publik melebihi anggaran rata-rata 15 persen. Artikel memuat pemberitahuan tentang teks yang belum terverifikasi, jadi periksa angka-angka ini terhadap laporan asli sebelum mengutipnya.

### Apa itu FinOps

Situs FinOps Foundation mendefinisikan FinOps sebagai "an operational framework and cultural practice" yang "maximizes the business value of technology" dan "creates financial accountability through collaboration between engineering, finance, and business teams." Situs mengatakan nama itu menggabungkan "Finance" dan "DevOps," dan bahwa fokusnya meluas melampaui cloud ke perangkat lunak sebagai layanan, lisensi, pusat data, dan lainnya. Poin kunci dari situs:

- **Ini olahraga tim.** Situs menyebut kelompok-kelompok ini: eksekutif, engineer, praktisi FinOps, operasi, serta keuangan dan pengadaan, dan mengatakan FinOps mengubah cara tim yang berbeda bekerja bersama. Satu tim tidak dapat melakukannya sendirian.
- **Ia memakai pendekatan kematangan** yang dijelaskan sebagai "Crawl, Walk, Run."
- **Foundation** dijelaskan sebagai proyek di bawah LF Projects, seri Linux Foundation, dan mendukung spesifikasi teknis sumber terbuka bernama FOCUS (FinOps Open Cost and Usage Specification). Ia juga menawarkan pelatihan dan sertifikasi.

Halaman yang dibaca untuk panduan ini tidak mendaftar prinsip atau fasenya, jadi topik ini tidak menyatakannya. Lihat langsung halaman prinsip dan fase Foundation.

### Data biaya dan pemberian tag

Apa pun nama praktiknya, ia bergantung pada kemampuan mengatribusikan biaya. Ini memerlukan dua hal: tag atau label pada sumber daya yang menyatakan siapa pemiliknya dan layanan apa yang didukungnya (lihat Topik 4.1 — Manajemen Aset TI), dan data penagihan yang dapat dikelompokkan menurut tag itu. FOCUS ada untuk menstandarkan format data biaya dan pemakaian lintas penyedia. Biaya tanpa tag adalah biaya tanpa pemilik.

### Biaya per unit dan nilai

Total tagihan sedikit memberi tahu. Bagi biaya dengan sesuatu yang berarti bagi bisnis: per transaksi, per pengguna, per layanan, per lingkungan. Total biaya naik dengan biaya per unit turun dapat berarti pertumbuhan sehat. Total biaya turun dengan biaya per unit naik mungkin menandakan masalah. Biaya per unit menghubungkan keuangan dengan tingkat layanan dan nilai (lihat Topik 3.7 — Manajemen Tingkat Layanan).

### Biaya, keandalan, dan kecepatan

Uang membeli keandalan dan kecepatan, dan setiap tingkat tambahan punya harga (lihat Topik 3.11 — Ketersediaan, Kapasitas, dan Kinerja). Tim yang memangkas biaya sembarangan dapat mengurangi ketahanan. Tim yang tak pernah melihat biaya dapat membangun berlebihan. Percakapan FinOps adalah tempat membuat pertukaran itu eksplisit, dengan engineer menjelaskan opsi dan keuangan serta bisnis menimbangnya.

### Tata kelola dan risiko

Kendali keuangan mencakup anggaran dan peringatan, persetujuan untuk komitmen besar, batas siapa yang dapat membuat sumber daya mahal, dan tinjauan berkala. Komitmen kepada penyedia, seperti perjanjian pembelian jangka panjang, dapat menurunkan biaya dan menambah risiko jika pemakaian turun. Ini keputusan bagi keuangan, pengadaan, dan engineering bersama-sama (lihat Topik 5.7 — Tata Kelola, Risiko, dan Kepatuhan dan Topik 3.14 — Manajemen Pemasok).

### Batas sumber

Halaman FinOps Foundation adalah ringkasan oleh organisasi yang mempromosikan praktik itu, dan tidak memberi tanggal pendirian, angka keanggotaan, atau bukti hasil. Artikel komputasi cloud ditandai memuat teks yang belum terverifikasi dan tidak memberi mekanika harga, biaya egress, atau rincian praktik FinOps. Topik ini harus diperlakukan sebagai pengantar; baca materi Foundation dan dokumentasi penyedia Anda untuk rinciannya.

## Praktik terbaik

1. **Buat biaya terlihat oleh orang yang menyebabkannya.** Tunjukkan kepada tiap tim biaya layanan yang mereka miliki, setidaknya setiap bulan, dalam bentuk yang dapat mereka pahami. Orang mengelola apa yang dapat mereka lihat.
2. **Beri tag pada segala yang menghabiskan uang.** Wajibkan tag pemilik, layanan, dan lingkungan pada sumber daya cloud, dan laporkan pengeluaran tanpa tag. Perbaiki itu sebelum menyetel yang lain.
3. **Mulai dengan showback.** Tunjukkan kepada tim biaya mereka sebelum Anda menagih mereka. Beralih ke chargeback hanya ketika data dipercaya dan manfaatnya jelas.
4. **Pakai biaya per unit.** Ungkapkan biaya per transaksi, pengguna, atau layanan, selain total. Tinjau tren bersama permintaan dan kualitas.
5. **Tetapkan anggaran dan peringatan.** Sepakati anggaran menurut layanan atau tim, dan atur peringatan jauh sebelum batas. Tinjau peringatan bersama pemilik, bukan hanya dengan keuangan.
6. **Bawa keuangan dan engineering ke dalam satu percakapan.** Adakan tinjauan berkala ketika engineer menjelaskan apa yang mendorong biaya dan keuangan menjelaskan kendala. Sertakan pemilik bisnis yang dapat menilai nilai.
7. **Cari pemborosan lebih dulu.** Temukan sumber daya yang tak terpakai atau terlalu besar, lingkungan menganggur, dan langganan yang terlupakan. Penghematan ini berisiko kecil (lihat Topik 4.2 — Manajemen Aset Perangkat Lunak untuk langganan).
8. **Timbang penghematan terhadap keandalan.** Sebelum memotong, tanyakan apa yang dilakukan perubahan pada ketersediaan, kinerja, dan pemulihan. Catat pertukarannya.
9. **Rencanakan komitmen dengan cermat.** Komitmen pembelian kepada penyedia dapat menurunkan biaya, tetapi mengunci pengeluaran. Dasarkan pada pemakaian stabil, dan tinjau secara berkala.
10. **Beri tim wewenang dan batas.** Biarkan tim membuat keputusan biaya dalam batas yang disepakati, dan wajibkan persetujuan untuk keputusan di atasnya. Otonomi dengan visibilitas bekerja lebih baik daripada kendali pusat saja.
11. **Sertakan biaya dalam desain dan definisi selesai.** Tanyakan dalam tinjauan desain berapa biaya menjalankan fitur, dan periksa setelah rilis.
12. **Belajar dan bagikan.** Terbitkan catatan singkat tentang apa yang menghemat uang dan apa yang berbalik merugikan. Pakai pendekatan kematangan seperti "crawl, walk, run" untuk menumbuhkan praktik.

## Pertanyaan untuk dibahas bersama tim Anda

**Apakah kita tahu berapa biaya menjalankan layanan utama kita, dan siapa yang memiliki angka itu?**

Minta biaya bulanan layanan terbesar dan bagaimana dihitung. Sering kali tak ada yang bisa menjawab, atau jawabannya datang dari sumber berbeda. Fasilitator dapat menanyakan apa yang diperlukan untuk menghasilkan angka itu secara andal, seperti tag dan laporan. Pilih satu layanan untuk dimulai.

**Berapa porsi pengeluaran cloud kita yang dapat diatribusikan kepada pemilik yang disebut namanya?**

Minta porsi tanpa tag. Porsi besar berarti biaya tidak dapat dikelola. Bahas mengapa sumber daya tanpa tag: tak ada aturan, tak ada perkakas, atau tak ada insentif. Sepakati aturan pemberian tag dan tanggal untuk laporan pertama.

**Kapan terakhir kali kita menemukan kejutan biaya, dan bagaimana kita mengetahuinya?**

Kumpulkan contoh: lingkungan yang terlupakan, pekerjaan yang lepas kendali, langganan yang diperbarui. Tanyakan berapa lama berjalan sebelum ditemukan. Bahas peringatan dan tinjauan yang akan menangkapnya. Pilih satu peringatan untuk ditambahkan.

**Apa yang akan kita potong jika anggaran turun sepuluh persen, dan apa yang akan hilang?**

Minta tim mengusulkan opsi dan menyebut konsekuensinya, termasuk bagi keandalan. Pertanyaan ini membuat pertukaran eksplisit. Jangan perlakukan jawabannya sebagai rencana; pakai untuk memulai percakapan dengan keuangan dan bisnis tentang nilai.

**Keputusan pengeluaran apa yang dibuat engineer hari ini, dan apa yang seharusnya mereka buat?**

Daftar keputusan biaya yang diambil tim: ukuran, lingkungan, perkakas, pembelian. Tanyakan informasi apa yang mereka pakai. Bahas batas apa yang masuk akal. Sepakati satu keputusan untuk diserahkan dengan batas.

**Bagaimana keuangan dan engineering berbicara satu sama lain, dan kapan?**

Tanyakan kedua kelompok. Jawaban lazim: pada waktu anggaran, atau ketika ada yang salah. Bahas tinjauan bersama berkala. Halaman FinOps Foundation menyebut kolaborasi antara engineer, keuangan, dan tim bisnis sebagai inti praktik. Sepakati siapa yang akan mengorganisasi yang pertama.

## Dalam praktik: contoh ITIL agile

Layanan perpustakaan nasional memindahkan katalog digital, pencarian, dan arsip publiknya ke penyedia cloud selama tiga tahun. Direktur TI ditanya departemen keuangan mengapa tagihan cloud bulanan melonjak tiga kali lipat sejak pemindahan dan mengapa sulit dijelaskan. Tim sepuluh orang menjalankan platform, dan masing-masing dari lima tim proyek punya akun cloud sendiri.

Direktur TI dan seorang analis keuangan mulai dengan meminta data biaya yang dikelompokkan menurut layanan. Sebagian besar sumber daya tanpa tag, jadi hanya sepertiga biaya yang dapat diatribusikan. Mereka menyepakati aturan pemberian tag dengan kelima tim dan menjalankan laporan mingguan yang mendaftar pengeluaran tanpa tag per akun. Dalam enam minggu porsi tanpa tag turun di bawah sepersepuluh. Analis lalu menyiapkan laporan showback bulanan untuk tiap tim, menunjukkan biaya menurut layanan dan biaya per seribu pencarian untuk layanan pencarian. Pada tinjauan pertama, engineer menemukan lingkungan pengembangan yang berjalan pada ukuran produksi selama setahun, dan pekerjaan pemrosesan data yang memindai arsip lebih sering daripada yang perlu. Keduanya dikoreksi. Rapat bulanan dengan kepala koleksi perpustakaan memungkinkan engineer menjelaskan apa yang mendorong biaya, seperti volume besar citra yang dipindai, dan memungkinkan kepala memutuskan koleksi mana yang didigitalkan lebih dulu.

Setelah dua kuartal, biaya per unit turun dan tagihan dapat diprediksi. Tidak semuanya mulus. Perubahan pemotongan biaya pada indeks pencarian mengurangi kecepatan pada waktu puncak, dan pengguna mengeluh sampai tim memulihkan kapasitas. Departemen keuangan juga ingin membeli komitmen satu tahun dengan penyedia, sementara engineer tidak yakin pemakaian akan tetap stabil, karena migrasi direncanakan. Mereka menyepakati berkomitmen hanya untuk bagian pemakaian yang stabil, dan meninjau komitmen ketika rencana migrasi jelas.

## Empat perspektif

### Tim produk dan pengiriman

Tim pengiriman membuat sebagian besar keputusan biaya lewat desain dan konfigurasi. Beri tag pada apa yang Anda buat, pantau biaya Anda, dan tanyakan berapa biaya menjalankan fitur. Jelaskan pendorong biaya kepada keuangan dan bisnis dalam istilah sederhana.

### Tim layanan dan operasi

Tim operasi melihat pemanfaatan dan pemborosan. Bagikan data tentang sumber daya menganggur dan terlalu besar, bantu menyetel peringatan yang masuk akal, dan pastikan penghematan biaya tidak merusak ketahanan. Jaga kaitan antara biaya, kapasitas, dan tingkat layanan tetap terlihat.

### Kepemimpinan dan tata kelola

Pemimpin dan keuangan menetapkan anggaran, aturan, dan akuntabilitas. Minta biaya per unit dan tren, dukung model showback atau chargeback yang dipercaya orang, dan buat keputusan tentang komitmen bersama engineer. Hindari pemotongan yang merugikan keandalan tanpa membahas pertukarannya.

### Pelanggan dan pengguna

Pelanggan dan pengguna membayar layanan secara langsung atau tidak langsung. Tanyakan kepada penyedia apa yang mendorong harga layanan yang Anda pakai, dan beri tahu mereka nilai apa yang paling penting. Jika Anda ditagih balik, harapkan penjelasan jelas dan cara mempertanyakan angkanya.

## Pola kegagalan umum

- **Biaya tanpa tag.** Tak ada yang memiliki tagihan. Sebaliknya, wajibkan tag dan laporkan celahnya.
- **Keuangan dan engineering di ruang terpisah.** Masing-masing bertindak atas informasi parsial. Sebaliknya, adakan tinjauan bersama berkala dengan pemilik bisnis.
- **Chargeback sebelum data dipercaya.** Perselisihan memakan waktu. Sebaliknya, mulai dengan showback dan perbaiki datanya.
- **Total tanpa biaya per unit.** Pertumbuhan tampak seperti pemborosan atau sebaliknya. Sebaliknya, lacak biaya per transaksi, pengguna, atau layanan.
- **Memotong biaya dengan mengorbankan ketahanan.** Penghematan menyebabkan gangguan. Sebaliknya, nyatakan pertukaran dan libatkan pemilik layanan.
- **Komitmen berlebihan.** Pembelian jangka panjang mengunci pengeluaran yang tak didukung pemakaian. Sebaliknya, berkomitmenlah hanya untuk pemakaian stabil dan tinjau.
- **Hanya kendali pusat.** Tim menunggu persetujuan dan menghindari proses. Sebaliknya, beri tim wewenang dalam batas, dengan visibilitas.
- **Mengutip angka survei sebagai fakta.** Angka dari survei vendor menggerakkan keputusan. Sebaliknya, periksa sumber asli dan pakai data Anda sendiri.

## Model kematangan

| Dimensi | Memulai | Mengembangkan | Menstandarkan | Mengelola | Mengorkestrasi |
|---|---|---|---|---|---|
| Visibilitas dan atribusi | Biaya terlihat hanya sebagai total tagihan | Beberapa tim melihat biayanya | Sebagian besar pengeluaran diberi tag dan diatribusikan ke layanan dan pemilik | Biaya per unit dan tren ditinjau terhadap permintaan dan kualitas | Data biaya dibagikan lintas tim, pemasok, dan keuangan dengan format umum |
| Tata kelola dan anggaran | Anggaran tahunan dan tetap | Beberapa anggaran dan peringatan ada | Anggaran, peringatan, dan batas persetujuan adalah standar | Varians diselidiki dan aturan disetel | Aturan anggaran diselaraskan di seluruh organisasi dan mitra |
| Kolaborasi | Keuangan dan engineering bertemu pada waktu anggaran | Beberapa percakapan bersama | Tinjauan bersama berkala dengan pemilik bisnis | Keputusan dan hasil dilacak dan diperbaiki | Keuangan, engineering, bisnis, dan pemasok berbagi tujuan dan data |
| Optimalisasi | Penghematan datang dari krisis | Sebagian pemborosan ditemukan | Pemborosan, ukuran, dan komitmen ditinjau secara berkala | Penghematan diukur terhadap risiko bagi keandalan | Optimalisasi rutin, dibagikan, dan diseimbangkan dengan tujuan layanan |

## Daftar periksa

- [ ] Kami dapat menyatakan biaya bulanan tiap layanan utama dan siapa pemiliknya.
- [ ] Sumber daya cloud memuat tag pemilik, layanan, dan lingkungan, dan pengeluaran tanpa tag dilaporkan mingguan atau bulanan.
- [ ] Tim menerima laporan biaya berkala untuk layanan yang mereka miliki (showback).
- [ ] Kami melacak setidaknya satu biaya per unit untuk tiap layanan utama.
- [ ] Anggaran dan peringatan ada dengan pemilik, dan peringatan menyala jauh sebelum batas.
- [ ] Keuangan, engineering, dan pemilik bisnis bertemu secara berkala tentang biaya dan nilai.
- [ ] Kami meninjau sumber daya dan langganan yang tak terpakai dan terlalu besar setidaknya setiap kuartal.
- [ ] Pemotongan biaya ditinjau untuk dampaknya pada keandalan dan kinerja.
- [ ] Komitmen pembelian didasarkan pada pemakaian stabil dan ditinjau.
- [ ] Kami telah memeriksa angka dari survei vendor terhadap sumber asli sebelum memakainya.

## Prompt AI

**Tujuan: menganalisis laporan biaya untuk pengeluaran tanpa pemilik dan tidak biasa.**

```text
Here is a cost report for the last [period], grouped by account, service, and tag: [paste real data; remove sensitive details].

Using only this data, calculate: total cost, the share with no owner tag, the five largest cost items and their share of total, and any item whose cost changed by more than [threshold you choose, e.g. 25%] from the previous period if I included it. For each unusual item, suggest a question for its owner. Do not guess at causes or invent numbers. List what you are unsure of.
```

**Tujuan: menentukan biaya per unit untuk sebuah layanan.**

```text
Help me define a unit cost for [service].

What the service does: [describe].
What the business cares about (transactions, users, searches, documents): [describe].
Cost data we have: [describe sources and how they are grouped].
Demand data we have: [describe].

Propose two or three candidate unit costs, how to calculate each from the data I listed, what could distort them, and what decisions each would help. Do not invent figures. Ask clarifying questions first, and list what you are unsure of.
```

**Tujuan: bersiap untuk tinjauan bersama antara engineering dan keuangan.**

```text
Plan a 45-minute monthly review between engineering, finance, and a business owner about the cost of [service or portfolio].

Inputs: [cost report, unit cost, budget status, forecast; describe what you have].
Concerns on each side: engineering [list]; finance [list]; business [list].

Provide a timed agenda, five questions for each group, a one-page summary template with only the figures I supply, and a closing step that records decisions and owners. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Tujuan: menimbang usulan penghematan biaya terhadap keandalan.**

```text
We are considering this cost-saving change: [describe].
Expected saving, with source: [paste, or write "not estimated"].
What the service promises to users (service levels): [paste].
Current performance against those promises: [paste].
Known dependencies: [list].

List the ways the change could affect availability, performance, recovery, and security, as questions for the service owner. Suggest a small trial, what to monitor, and what would make us reverse it. Do not invent estimates. Ask clarifying questions first, and list what you are unsure of.
```

## Keterampilan AI

- [budget-forecasting](../../../../skills/budget-forecasting/SKILL.md): gunakan untuk memperkirakan pengeluaran TI dan cloud serta menjelaskan varians.
- [demand-forecasting](../../../../skills/demand-forecasting/SKILL.md): gunakan untuk memperkirakan beban mendatang agar perkiraan biaya mencerminkan permintaan.
- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): gunakan untuk mengaitkan kebutuhan sumber daya dengan biaya dan tingkat layanan.
- [vendor-management](../../../../skills/vendor-management/SKILL.md): gunakan untuk mengelola kontrak dan komitmen penyedia.
- [portfolio-management](../../../../skills/portfolio-management/SKILL.md): gunakan untuk memilih dan mendanai layanan dan inisiatif menurut nilai dan biaya.

## Sumber utama

- **What is FinOps?** (FinOps Foundation, finops.org): definisi Foundation sendiri dan deskripsi kolaborasi antara tim engineering, keuangan, dan bisnis.
- **Cloud computing** (Wikipedia): latar belakang model harga, pengendalian biaya, dan tanggung jawab bersama, dengan pemberitahuan tentang teks yang belum terverifikasi.
- **Total cost of ownership** (Wikipedia): latar belakang menghitung semua biaya aset atau layanan sepanjang hidupnya.
- **Software as a service** (Wikipedia): latar belakang harga langganan.

## Referensi

1. What is FinOps? — FinOps Foundation, finops.org — https://www.finops.org/introduction/what-is-finops/
2. Cloud computing — Wikipedia — https://en.wikipedia.org/wiki/Cloud_computing
3. Total cost of ownership — Wikipedia — https://en.wikipedia.org/wiki/Total_cost_of_ownership
4. Software as a service — Wikipedia — https://en.wikipedia.org/wiki/Software_as_a_service
5. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
6. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
7. Operating expense — Wikipedia — https://en.wikipedia.org/wiki/Operating_expense
8. Capital expenditure — Wikipedia — https://en.wikipedia.org/wiki/Capital_expenditure
9. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
