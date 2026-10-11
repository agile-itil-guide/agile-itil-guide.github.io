# Kanban

**Kanban mengelola pekerjaan sebagai aliran: ia membuat alur kerja terlihat, membatasi jumlah pekerjaan yang sedang berjalan, dan memakai ukuran aliran untuk memperbaiki diri, yang cocok bagi tim layanan yang pekerjaannya datang terus-menerus dan tidak dapat direncanakan dalam siklus tetap.**

## Mengapa ini penting

Service desk, tim operasi, dan tim platform sama-sama memiliki satu ciri: pekerjaan datang kapan ia datang. Insiden, permintaan, dan perubahan kecil masuk sebagai aliran, dan tim tidak dapat merencanakan sebulan penuh di muka. Kerangka kerja yang dibangun di sekitar siklus tetap, seperti Scrum, hanya cocok untuk pekerjaan ini dengan penyesuaian (lihat Topik 1.4 — Perkiraan Pengiriman dan Metrik Perencanaan). Kanban dirancang untuk aliran, sehingga lebih alami cocoknya.

Kanban juga berbicara dalam bahasa manajemen layanan. Ia bertanya berapa lama pekerjaan memakan waktu, berapa banyak yang menunggu, dan langkah mana yang menjadi hambatan, dan inilah pertanyaan di balik tingkat layanan, manajemen antrean, dan perencanaan kapasitas. Tim yang melacak usia dan cycle time pekerjaannya dapat berbicara tentang tingkat layanan dengan data, bukan kesan.

Kanban mudah dimulai dan ternyata mudah dikerjakan dengan buruk. Papan dengan kolom bukanlah Kanban jika tidak ada yang membatasi pekerjaan yang sedang berjalan dan tidak ada yang memakai ukurannya. Topik ini menjelaskan apa yang diminta Kanban Guide dari tim, dari mana metode ini berasal, dan cara menerapkannya pada pekerjaan layanan.

## Konsep inti

### Apa itu Kanban

[Kanban Guide](https://kanbanguides.org/english/), yang versi terbarunya bertanggal Mei 2025 dan yang mencantumkan John Coleman dan Daniel Vacanti di antara para penulisnya, mendefinisikan Kanban sebagai strategi untuk mengoptimalkan aliran nilai melalui sebuah proses. Ia menggambarkan aliran sebagai pergerakan nilai potensial melalui sebuah sistem. Tujuannya adalah keseimbangan tiga hal: efektivitas (mengirim apa yang diinginkan pemangku kepentingan, saat mereka menginginkannya), efisiensi (memakai sumber daya dengan baik), dan keterprediksian (memperkirakan pengiriman dengan tingkat ketidakpastian yang dapat diterima). Panduan mengatakan ia berlaku untuk kerja pengetahuan di industri mana pun.

Kata "kanban" adalah bahasa Jepang dan berarti papan tanda atau papan reklame. [Artikel Wikipedia tentang Kanban dalam pengembangan](https://en.wikipedia.org/wiki/Kanban_(development)) mengatakan metode ini berasal dari manufaktur lean dan [Toyota Production System](https://en.wikipedia.org/wiki/Toyota_Production_System), dengan sistem just-in-time yang dimulai di Toyota pada akhir 1940-an. Buku David J. Anderson tahun 2010 menelusuri versi perangkat lunaknya ke proyek 2004 di Microsoft dan proyek 2006–2007 di Corbis.

### Tiga praktik

Kanban Guide menyebut tiga praktik. Tim yang melakukan ketiganya, dan memakai ukuran di bawah, mempraktikkan Kanban dalam pengertian panduan itu.

| Praktik | Apa yang dilakukan tim | Catatan untuk tim layanan |
|---|---|---|
| **Mendefinisikan dan memvisualisasikan alur kerja** | Sepakati Definition of Workflow (DoW): apa itu item pekerjaan, di mana mulai dan selesainya, status di antaranya, bagaimana pekerjaan yang sedang berjalan dibatasi, kebijakan memindahkan pekerjaan, dan ekspektasi tingkat layanan (SLE). Tampilkan pada papan. | DoW untuk service desk dapat mendefinisikan item insiden, permintaan, dan perubahan, dengan status dan kebijakan yang berbeda untuk masing-masing |
| **Mengelola item dalam alur kerja secara aktif** | Kendalikan jumlah item yang sedang berjalan, pantau item yang menua, dan bebaskan item yang macet. | Batas insiden terbuka per engineer memaksa tim menyelesaikan atau menyerahkan pekerjaan sebelum memulai yang lebih banyak |
| **Memperbaiki alur kerja** | Ubah DoW dari waktu ke waktu untuk meningkatkan efektivitas, efisiensi, dan keterprediksian, pada selang waktu tertentu atau bila perlu. | Tinjauan DoW setelah insiden besar dapat mengubah kebijakan, batas, atau status |

Panduan tidak menetapkan tata letak papan atau rapat apa pun. Tim bebas menambah praktik, asalkan praktik inti, ukuran, dan tujuan mengoptimalkan nilai tetap utuh.

### Batas pekerjaan yang sedang berjalan dan tarik

Mengendalikan pekerjaan yang sedang berjalan (WIP) menciptakan apa yang disebut panduan sistem tarik: pekerjaan baru dimulai hanya bila ada kapasitas untuknya. Artikel Wikipedia memberi contoh langkah "deployment" dengan batas lima. Ketika langkah itu penuh, tidak ada yang bisa masuk sampai ada yang selesai, sehingga sumbatan menjadi terlihat dan orang dapat membantu membersihkannya. Tanpa batas, papan hanyalah gambar dari kekacauan.

### Empat ukuran aliran

Panduan mendaftar empat ukuran yang dilacak tim yang memakai Kanban:

- **Pekerjaan yang sedang berjalan:** jumlah item yang sudah dimulai tetapi belum selesai.
- **Throughput:** jumlah item yang selesai dalam periode tertentu.
- **Usia item pekerjaan:** sudah berapa lama item yang belum selesai sedang dikerjakan.
- **Cycle time:** berapa lama item yang selesai memakan waktu dari mulai sampai selesai.

Panduan mengatakan tim boleh mengganti nama ukuran ini dan harus menambah ukuran lain bila berguna, dan bahwa ukuran hanya penting bila memberi tahu ketiga praktik. Ekspektasi tingkat layanan adalah perkiraan berapa lama sebuah item seharusnya memakan waktu, berdasarkan cycle time masa lalu. Ini bukan janji, dan berbeda dari perjanjian tingkat layanan (SLA) yang dinegosiasikan dengan pelanggan. Lihat Topik 3.7 — Manajemen Tingkat Layanan.

### Literatur Kanban yang lebih luas

Penulis lain telah menjelaskan metode ini lebih luas. Artikel Wikipedia mendaftar karya Don Reinertsen tentang aliran, *Personal Kanban* karya Jim Benson dan Tonianne DeMaria Barry, *Kanban From the Inside* karya Mike Burrows, dan *Scrumban* karya Corey Ladas, yang mengusulkan Kanban sebagai cara memperbaiki Scrum. Sebagian sumber ini mendaftar praktik di luar tiga yang ada dalam panduan, seperti membuat kebijakan eksplisit, menerapkan putaran umpan balik, dan memperbaiki secara kolaboratif. Perlakukan ini sebagai tambahan yang berguna, bukan persyaratan panduan.

Artikel Wikipedia memuat tanda yang mencatat bahwa kontributor utama mungkin memiliki hubungan dekat dengan subjeknya, jadi periksa klaimnya terhadap sumber primer.

### Apa yang tidak dikatakan Kanban

Kanban bukan rencana proyek, seperangkat peran, atau proses rilis. Ia tidak memberi tahu cara merancang layanan atau menjalankan insiden. Ia memberi Anda cara untuk melihat dan mengelola aliran, dan bergantung pada Anda untuk membawa isi pekerjaan Anda. Itu juga kekuatannya: Anda dapat mulai dengan proses yang sudah ada dan memperbaikinya dalam langkah kecil (lihat Topik 3.15 — Peningkatan Berkelanjutan).

## Praktik terbaik

1. **Mulai dari yang Anda lakukan sekarang.** Gambar alur kerja yang nyata, dengan status yang benar-benar dilalui pekerjaan, termasuk penantiannya. Jangan menggambar proses yang Anda harapkan. Anda hanya dapat memperbaiki apa yang dapat Anda lihat.
2. **Definisikan apa itu item pekerjaan.** Putuskan apakah insiden, permintaan, dan perubahan adalah satu jenis item atau beberapa, dan beri masing-masing awal dan akhir yang jelas. Definisi campuran membuat ukuran tidak bermakna.
3. **Tetapkan batas WIP dan patuhi.** Mulailah dengan batas yang terasa sedikit ketat, seperti satu atau dua item per orang, dan sesuaikan dari pengalaman. Batas yang rutin dilanggar tidak memberi informasi, jadi bahas setiap pelanggaran.
4. **Buat kebijakan eksplisit.** Tuliskan di papan kapan item boleh pindah ke status berikutnya, siapa yang boleh menariknya, dan apa yang dihitung sebagai terblokir. Kebijakan yang terlihat mengurangi perdebatan dan mempermudah orientasi.
5. **Pantau usia item pekerjaan, bukan hanya cycle time.** Cycle time diketahui hanya setelah item selesai, sedangkan usia menunjukkan masalah selagi masih ada waktu bertindak. Tinjau item tertua setiap hari.
6. **Gunakan ekspektasi tingkat layanan berdasarkan riwayat.** Ambil cycle time item terbaru yang selesai dan nyatakan, misalnya, bahwa kebanyakan item suatu jenis selesai dalam sejumlah hari tertentu. Revisi saat data berubah. Jangan menjanjikan kepada pelanggan angka yang belum Anda ukur.
7. **Perlakukan pekerjaan yang dipercepat sebagai pengecualian eksplisit.** Insiden mendesak akan memotong antrean. Tetapkan kebijakan, seperti jalur dengan batasnya sendiri, agar pengecualian terlihat dan tidak diam-diam merusak aliran (lihat Topik 3.2 — Manajemen Insiden).
8. **Cari hambatan dan bantu.** Ketika suatu status selalu penuh, tanyakan apakah ia butuh kapasitas lebih, kebijakan yang diubah, atau aliran hulu yang berbeda. Memindahkan orang ke hambatan biasanya lebih baik daripada mendorong lebih banyak pekerjaan ke dalamnya.
9. **Adakan tinjauan dengan ritme teratur.** Panduan membolehkan perbaikan pada selang waktu tertentu atau bila perlu. Tinjauan mingguan singkat atas ukuran dan tinjauan bulanan atas DoW cocok bagi banyak tim.
10. **Hubungkan papan dengan organisasi lainnya.** Buat papan terlihat oleh pelanggan dan tim tetangga. Sepakati bagaimana item berpindah antarpapan, seperti dari service desk ke tim pengembangan.
11. **Simpan ukuran untuk belajar.** Gunakan angka untuk mengajukan pertanyaan, bukan memeringkat orang. Ketika data aliran menjadi target, tim memainkannya (lihat Topik 5.6 — Metrik dan Pengukuran).
12. **Gabungkan dengan kerangka kerja lain secara sengaja.** Jika tim memakai acara Scrum untuk perencanaan dan Kanban untuk aliran, katakan untuk apa masing-masing, dan periksa bahwa kombinasinya mengurangi kebingungan (lihat Topik 1.8 — Agile dalam Skala Besar untuk mengoordinasikan beberapa tim).

## Pertanyaan untuk dibahas bersama tim Anda

**Jika kita menggambar alur kerja nyata kita, termasuk penantian, seperti apa jadinya?**

Minta setiap orang menggambar jalur satu item terbaru, lalu gabungkan gambar itu di dinding. Perbedaan antargambar menunjukkan langkah tersembunyi dan serah terima informal. Harapkan kejutan: persetujuan yang tidak disebut siapa pun, item yang menunggu tim lain, dan putaran pengerjaan ulang. Lanjutkan dengan menandai tiga penantian terpanjang.

**Berapa banyak pekerjaan yang sedang berjalan pada masing-masing kita sekarang, dan berapa banyak yang sedang menunggu?**

Hitung item terbuka per orang dan tandai mana yang terblokir atau menganggur. Banyak tim menemukan bahwa sebagian besar item sedang menunggu dan hanya sedikit yang sedang dikerjakan. Tanyakan apa yang dilakukan setiap orang ketika terblokir, dan apakah memulai item baru adalah jawaban yang lazim. Tujuannya membahas mengapa memulai dihargai dan menyelesaikan tidak.

**Apa item tertua di papan kita, dan mengapa masih di sana?**

Pilih tiga item tertua dan telusuri apa yang terjadi. Jawaban yang lazim adalah pemilik yang tidak jelas, ketergantungan pada tim lain, atau item yang tidak ingin dibatalkan siapa pun. Tanyakan apakah item itu harus diselesaikan, dibatalkan, atau dieskalasi. Fasilitator dapat menanyakan kebijakan apa yang akan menangkap item itu lebih cepat.

**Apa yang kita janjikan kepada pelanggan tentang berapa lama sesuatu memakan waktu, dan apa kata angka kita sendiri?**

Bandingkan tingkat layanan yang disepakati dengan cycle time aktual item yang selesai. Jika Anda tidak punya data, kumpulkan dulu selama sebulan. Bahas setiap celah secara terbuka. Tanyakan apakah targetnya harus berubah, atau cara kerjanya. Ingat bahwa ekspektasi tingkat layanan berdasarkan data adalah perkiraan, sedangkan SLA adalah kesepakatan.

**Ketika pekerjaan mendesak datang, apa yang terjadi pada semua yang lain?**

Telusuri insiden mendesak terakhir dan lihat item mana yang macet. Tanyakan apakah tim punya kebijakan untuk pekerjaan mendesak, dan apakah ada yang tahu berapa banyak item mendesak yang ditanganinya per bulan. Tim sering menemukan bahwa pekerjaan mendesak itu rutin, bukan pengecualian, dan kebijakan perlu mencerminkannya. Lanjutkan dengan menyepakati batas untuk item yang dipercepat.

**Ukuran kita yang mana yang cukup kita percaya untuk mendasari keputusan, dan mana yang akan kita abaikan?**

Minta orang memeringkat ukuran yang tersedia berdasarkan seberapa mereka memercayainya dan mengapa. Ketidakpercayaan sering berasal dari definisi item yang tidak konsisten atau celah dalam data. Jangan menjadikannya perdebatan tentang orang; fokus pada kualitas data. Tutup dengan memilih satu ukuran untuk diperbaiki bulan depan.

## Dalam praktik: contoh ITIL agile

Service desk TI sebuah universitas memiliki delapan analis yang menangani insiden dan permintaan dari mahasiswa dan staf. Tim memiliki perkakas tiket dengan antrean, tetapi tanpa batas, dan setiap analis memiliki antara 20 dan 40 tiket terbuka. Pelanggan mengeluh bahwa tiket tampak menghilang, dan manajer desk tidak dapat mengatakan berapa lama permintaan tipikal memakan waktu.

Manajer dan analis membangun papan yang mencerminkan perkakas itu: baru, dipilah, sedang dikerjakan, menunggu pelanggan, menunggu tim lain, dan terselesaikan. Mereka menyepakati batas delapan item aktif per analis dan aturan bahwa tiket yang menunggu pihak lain harus menyebut orang yang bertanggung jawab atas langkah berikutnya. Mereka menyisihkan satu jalur untuk insiden mendesak, dengan batas dua. Selama sebulan, mereka hanya mengumpulkan data cycle time dan usia.

Setelah sebulan, data menunjukkan bahwa sebagian besar permintaan terselesaikan dalam beberapa hari tetapi ekor panjang menunggu berminggu-minggu, kebanyakan "menunggu tim lain." Tim menetapkan ekspektasi tingkat layanan dari data dan memulai tinjauan harian atas item tertua. Beberapa tiket yang lama menunggu ditutup atau dieskalasi pada minggu pertama. Satu masalah tersisa: tim jaringan, yang memiliki banyak tiket yang menunggu, tidak punya papan sendiri dan desk tidak dapat melihat antreannya. Manajer desk mengatur percakapan mingguan dengan kepala tim jaringan, dan kedua tim mulai membahas berbagi tampilan atas item yang berpindah di antara mereka.

## Empat perspektif

### Tim produk dan pengiriman

Tim pengiriman dapat memakai Kanban untuk melihat di mana pekerjaan menunggu antara desain, build, pengujian, dan rilis. Batas pada pekerjaan yang sedang berjalan mengurangi jumlah perubahan setengah jadi, dan data aliran dapat menunjukkan di mana proses rilis perlu perhatian. Perlakukan permintaan dari operasi sebagai item dalam aliran yang sama, dengan kebijakannya sendiri.

### Tim layanan dan operasi

Tim operasi adalah rumah alami bagi Kanban. Visualisasikan insiden, permintaan, dan perubahan dalam status masing-masing, tetapkan batas, dan pantau penuaan. Gunakan data cycle time untuk menetapkan ekspektasi realistis dengan pelanggan, dan gunakan status terblokir dan menunggu untuk memulai percakapan dengan tim lain.

### Kepemimpinan dan tata kelola

Pemimpin mendapat manfaat dari ukuran aliran sebagai gambaran yang lebih jujur daripada laporan status. Minta cycle time, throughput, dan usia menurut jenis pekerjaan, dan tanyakan apa yang diubah tim karenanya. Hindari menargetkan angka individu, yang menghasilkan permainan angka. Dukung batas pada pekerjaan yang sedang berjalan bahkan ketika pemangku kepentingan ingin lebih banyak dimulai.

### Pelanggan dan pengguna

Pelanggan mendapat manfaat dari perkiraan yang lebih jelas dan lebih sedikit permintaan yang hilang. Tanyakan kepada tim ekspektasi tingkat layanan untuk jenis permintaan Anda, dan harapkan itu berdasarkan riwayat. Jika permintaan Anda mendesak, harapkan ditanya mengapa, karena tim harus melindungi aliran orang lain.

## Pola kegagalan umum

- **Papan tanpa batas.** Papan menunjukkan kekacauan tetapi tidak menguranginya. Sebaliknya, tetapkan dan tegakkan batas pekerjaan yang sedang berjalan, dan tinjau setiap pelanggaran.
- **Definisi item yang bercampur.** Insiden, proyek, dan tugas berbagi satu set kolom, dan ukuran tidak bermakna. Sebaliknya, definisikan jenis item dengan status dan kebijakan terpisah.
- **Mengabaikan penuaan.** Item tua tergeletak tanpa diperhatikan sampai pelanggan mengeluh. Sebaliknya, tinjau item tertua setiap hari dan putuskan masing-masing.
- **Mengubah ukuran menjadi target.** Tim memecah atau menutup item untuk memperbaiki angka. Sebaliknya, gunakan ukuran untuk mengajukan pertanyaan dan tinjau bersama tim.
- **Jalur percepatan yang tersembunyi.** Pekerjaan mendesak melewati batas tanpa jejak. Sebaliknya, beri pekerjaan mendesak jalur yang terlihat, batas, dan kebijakan.
- **Menyalin tata letak papan.** Tim mengadopsi kolom tim lain tanpa memahami alirannya sendiri. Sebaliknya, petakan alur kerja nyata lebih dulu.
- **Memperlakukan Kanban sebagai alat pelaporan.** Manajer memakai papan untuk mengawasi orang dan bukan untuk memperbaiki aliran. Sebaliknya, pakai sebagai alat tim untuk memutuskan apa yang dikerjakan berikutnya.
- **Tidak pernah memperbaiki alur kerja.** Papan tetap sama bertahun-tahun. Sebaliknya, adakan tinjauan Definition of Workflow secara berkala dan ubah ketika data menuntutnya.

## Model kematangan

| Dimensi | Memulai | Mengembangkan | Menstandarkan | Mengelola | Mengorkestrasi |
|---|---|---|---|---|---|
| Memvisualisasikan alur kerja | Pekerjaan hidup di kotak masuk dan kepala individu | Beberapa tim punya papan yang menunjukkan statusnya | Tim berbagi Definition of Workflow dengan jenis item dan kebijakan | Papan ditinjau dan dikoreksi terhadap apa yang benar-benar terjadi | Papan lintas tim menunjukkan item dan serah terima lintas tim |
| Membatasi pekerjaan yang sedang berjalan | Tanpa batas; orang memulai lebih banyak daripada menyelesaikan | Beberapa tim menetapkan batas informal | Batas ditetapkan dan pelanggaran dibahas | Batas disesuaikan dari data aliran | Batas dan kapasitas diseimbangkan lintas tim dan pemasok |
| Ukuran aliran | Sedikit ukuran dikumpulkan | Beberapa tim mencatat cycle time atau throughput | Empat ukuran dikumpulkan secara konsisten | Ukuran ditinjau dan dipakai untuk menetapkan ekspektasi tingkat layanan | Data aliran dibagikan lintas tim dan dipakai untuk merencanakan kapasitas bersama |
| Perbaikan | Perubahan mengikuti krisis | Tim sesekali menyesuaikan papan | Tim meninjau alur kerja dengan ritme teratur | Perubahan dikaitkan dengan ukuran dan hasilnya diperiksa | Perbaikan menyebar antartim tanpa arahan pusat |

## Daftar periksa

- [ ] Kami telah menggambar alur kerja nyata kami, termasuk penantian dan serah terima.
- [ ] Item pekerjaan kami didefinisikan, dengan awal dan akhir yang jelas untuk tiap jenis.
- [ ] Batas pekerjaan yang sedang berjalan ada dan setiap pelanggaran dibahas.
- [ ] Kebijakan untuk memindahkan dan memblokir item tertulis di atau dekat papan.
- [ ] Kami melacak cycle time, throughput, pekerjaan yang sedang berjalan, dan usia item pekerjaan.
- [ ] Kami meninjau item tertua setiap hari atau setidaknya setiap minggu.
- [ ] Kami punya ekspektasi tingkat layanan berdasarkan riwayat kami sendiri.
- [ ] Pekerjaan mendesak punya jalur, batas, dan kebijakan yang terlihat sendiri.
- [ ] Definition of Workflow ditinjau dengan ritme teratur.
- [ ] Tim tetangga dan pelanggan dapat melihat item yang menyangkut mereka.

## Prompt AI

**Tujuan: menggambarkan alur kerja nyata Anda dan menemukan di mana pekerjaan menunggu.**

```text
You are helping me map the real workflow of a team that handles [type of work, e.g. "service desk incidents and requests"].

Here are the states a typical item goes through, as best I can describe them: [paste the steps in order, including waits and handovers].
Here is what happened to three recent items, with dates for each state change: [paste three short timelines, using only real data].

Draw the workflow as a simple text diagram. Identify where each item waited longest, using only the dates I provided. Suggest three questions I should ask the team about those waits. Do not invent numbers. If the data are too thin, ask me for more first, mark your assumptions, and list what you are unsure of.
```

**Tujuan: menyusun Definition of Workflow untuk sebuah tim.**

```text
Help me write a first Definition of Workflow for [team name and what it does].

Item types we handle: [list them, e.g. incidents, requests, changes].
States an item can be in: [list, or write "unknown"].
Current policies for starting, finishing, and blocking items: [paste, or write "none written"].
Roughly how many items each person has open at a time: [number, or "unknown"].

Produce a draft with: the item types, start and finish points, states, a proposed WIP limit approach, policies for moving items, a policy for urgent work, and how a service level expectation would be set from our own history. Mark every proposal that is a guess. Do not state any numbers I have not given you. Ask me clarifying questions first, and list what you are unsure of.
```

**Tujuan: menganalisis data aliran dari sistem tiket Anda.**

```text
Below are the start and finish dates of [number] items our team completed recently, and the start dates of [number] items still open: [paste as a table, real data only].

Calculate the cycle time of each completed item and the current age of each open item. Describe the spread: what most items take, what the slowest take, and which open items are older than most finished items. Do not extrapolate beyond the data. Suggest two questions to ask the team about the oldest items. Tell me what extra data would make the analysis more reliable, and list what you are unsure of.
```

**Tujuan: merencanakan tinjauan papan bersama tim.**

```text
Plan a 30-minute weekly flow review for a team of [number] people that uses a Kanban board for [type of work].

Our measures: [list which of work in progress, throughput, cycle time, and work item age you track].
Current frustration: [describe in one or two sentences].

Include a timed agenda, five questions to ask about the measures and the oldest items, and a closing step that records at most two changes with owners. Keep it free of any particular tool. Ask clarifying questions first if information is missing, and list what you are unsure of.
```

## Keterampilan AI

- [kanban](../../../../skills/kanban/SKILL.md): gunakan untuk merancang atau meninjau papan, batas pekerjaan yang sedang berjalan, dan kebijakan bagi tim layanan atau operasi.
- [scrumban](../../../../skills/scrumban/SKILL.md): gunakan ketika tim menginginkan acara perencanaan Scrum bersama manajemen aliran Kanban.
- [value-stream-map](../../../../skills/value-stream-map/SKILL.md): gunakan untuk memetakan bagaimana pekerjaan berpindah antartim dan di mana ia menunggu sebelum Anda merancang papan.
- [kaizen](../../../../skills/kaizen/SKILL.md): gunakan untuk merencanakan perbaikan kecil pada alur kerja setelah tinjauan aliran.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md): gunakan untuk memahami jenis pekerjaan apa yang datang dan dalam volume berapa sebelum menetapkan batas dan kapasitas.

## Sumber utama

- **The Kanban Guide** (John Coleman dan Daniel Vacanti dan lainnya, kanbanguides.org): definisi otoritatif yang ringkas tentang tiga praktik dan empat ukuran.
- **Kanban (development)** (Wikipedia): tinjauan sejarah dan praktik yang lebih luas, dengan kutipan ke buku-buku utama.
- **Kanban: Successful Evolutionary Change for Your Technology Business** (David J. Anderson, 2010): kisah bagaimana Kanban diterapkan pada pekerjaan perangkat lunak.
- **Toyota Production System** (Wikipedia): latar belakang asal-usul kanban dalam manufaktur lean.

## Referensi

1. The Kanban Guide — John Coleman, Daniel Vacanti, and contributors, kanbanguides.org — https://kanbanguides.org/english/
2. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
3. Kanban — Wikipedia — https://en.wikipedia.org/wiki/Kanban
4. Toyota Production System — Wikipedia — https://en.wikipedia.org/wiki/Toyota_Production_System
5. Theory of constraints — Wikipedia — https://en.wikipedia.org/wiki/Theory_of_constraints
6. Scrumban — Wikipedia — https://en.wikipedia.org/wiki/Scrumban
7. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
8. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
