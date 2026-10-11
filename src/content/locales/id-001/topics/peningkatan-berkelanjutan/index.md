# Peningkatan Berkelanjutan

**Peningkatan berkelanjutan adalah kebiasaan membuat layanan dan cara kerja sedikit lebih baik berulang kali, dan ia baru menjadi nyata ketika pekerjaan perbaikan terlihat, dimiliki, dijadwalkan, dan diperiksa, seperti pekerjaan lainnya.**

## Mengapa ini penting

Setiap praktik dalam panduan ini berakhir di tempat yang sama: belajar dari apa yang terjadi dan ubah sesuatu. Insiden mengarah ke masalah, masalah mengarah ke perbaikan, retrospektif mengarah ke eksperimen, dan tinjauan tingkat layanan mengarah ke target baru. Peningkatan berkelanjutan adalah praktik yang menghubungkannya dan menjaganya bergerak. Tanpanya, setiap praktik menghasilkan wawasan yang tidak ditindaklanjuti siapa pun.

Di banyak organisasi, perbaikan adalah hal pertama yang terhimpit. Tekanan pengiriman memenuhi setiap hari, dan gagasan perbaikan menumpuk dalam dokumen yang tak dibuka siapa pun. Tim agile punya awalan, karena retrospektif sudah tertanam, tetapi retrospektif yang tidak menghasilkan perubahan itu umum. Ujian praktik peningkatan berkelanjutan sederhana: dapatkah Anda menyebut tiga hal yang lebih baik kuartal ini karenanya?

[Artikel Wikipedia tentang proses peningkatan berkelanjutan](https://en.wikipedia.org/wiki/Continual_improvement_process) menggambarkannya sebagai upaya berkelanjutan untuk memperbaiki produk, layanan, atau proses, baik inkremental maupun terobosan, dengan umpan balik, efisiensi, dan evolusi lewat langkah kecil sebagai ciri kunci. [Artikel tentang PDCA](https://en.wikipedia.org/wiki/PDCA) menjelaskan siklus plan–do–check–act di balik banyak metode perbaikan. Keduanya umum. ITIL memperlakukan peningkatan berkelanjutan sebagai komponen sistem nilai layanan (lihat Topik 2.3 — Sistem Nilai Layanan ITIL) dan sebagai praktik, tetapi teks pemilik kerangka kerja tidak tersedia untuk panduan ini, jadi topik ini tidak menjelaskan model perbaikan ITIL secara rinci.

## Konsep inti

### Apa itu

Menurut Wikipedia, proses peningkatan berkelanjutan (CIP), juga disebut continuous improvement, adalah upaya berkelanjutan untuk memperbaiki produk, layanan, atau proses. Artikel menggambarkannya sebagai meta-proses untuk sistem manajemen seperti kualitas, proyek, dan manajemen program, dengan tiga ciri kunci: umpan balik, efisiensi, dan evolusi lewat langkah kecil yang inkremental. Ia menisbatkan W. Edwards Deming sebagai perintis, yang melihat CIP sebagai bagian dari sistem yang mengevaluasi proses dan umpan balik pelanggan terhadap tujuan organisasi.

### Continual atau continuous

Artikel mencatat satu poin terminologi: pada akhir 1990-an pengembang ISO 9001:2000 mengubah "continuous" menjadi "continual," konon karena komite lebih menyukai perbaikan bertahap dan mengira "continuous" dapat menyiratkan perubahan menit demi menit. ITIL memakai "continual." Dalam praktik kedua istilah dipakai bergantian. Yang penting adalah perbaikan yang teratur dan berulang.

### Kaizen

**Kaizen** adalah istilah Jepang yang kira-kira berarti "perubahan untuk kebaikan." Menurut artikel, buku Masaaki Imai tahun 1986 *Kaizen: The Key to Japan's Competitive Success* mempopulerkannya, dan cirinya mencakup banyak perubahan kecil, gagasan dari pekerja yang ada, biaya rendah, dan kepemilikan karyawan. Ini cocok dengan tim agile, tempat orang yang mengerjakan paling tepat melihat apa yang diperbaiki (lihat Topik 1.7 — Pengembangan Perangkat Lunak Lean).

### Siklus PDCA

PDCA (plan, do, check, act) adalah, dalam kata Wikipedia, metode iteratif untuk mengendalikan dan terus memperbaiki proses dan produk. Ia juga disebut siklus Shewhart, menurut Walter Shewhart di Bell Telephone Laboratories pada 1920-an; W. Edwards Deming memodifikasinya pada 1940-an dan menerapkannya pada manajemen di Jepang pada 1950-an. Langkahnya:

| Langkah | Apa yang Anda lakukan |
|---|---|
| **Plan** | Tetapkan sasaran dan proses yang diperlukan untuk menghasilkan hasil yang Anda inginkan |
| **Do** | Jalankan rencana, sebaiknya dalam skala kecil |
| **Check** | Bandingkan data yang Anda kumpulkan dengan hasil yang diharapkan dan cari tren |
| **Act** | Selidiki akar penyebab masalah, sesuaikan proses, dan mulai siklus berikutnya |

Artikel mengaitkan PDCA dengan metode ilmiah dan pola hipotesis, eksperimen, evaluasinya. Varian, PDSA, mengganti "check" dengan "study," yang disukai Deming. Artikel mengatakan iterasi adalah pusat: setiap siklus menyempurnakan pengetahuan. Tim yang menyebut perubahan sebagai "eksperimen" dengan ekspektasi yang dinyatakan dan pemeriksaan memakai pola ini.

### Dari mana perbaikan datang

Gagasan perbaikan datang dari banyak tempat dalam organisasi layanan:

| Sumber | Contoh | Di mana dibahas |
|---|---|---|
| Insiden dan postmortem | Kesalahan menunjukkan peringatan yang hilang | Topik 3.2 — Manajemen Insiden |
| Penyelidikan masalah | Gangguan berulang menunjukkan cacat desain | Topik 3.3 — Manajemen Masalah |
| Tema service desk | Pertanyaan yang sama muncul setiap minggu | Topik 3.1 — Service Desk |
| Retrospektif | Tim menemukan serah terimanya lambat | Topik 1.4 — Perkiraan Pengiriman dan Metrik Perencanaan |
| Data aliran | Antrean tumbuh pada satu langkah | Topik 1.5 — Kanban |
| Umpan balik pelanggan | Pengguna menganggap formulir membingungkan | Topik 3.6 — Manajemen Permintaan Layanan |
| Tinjauan tingkat layanan | Target terlewat berulang kali | Topik 3.7 — Manajemen Tingkat Layanan |
| Audit dan tinjauan risiko | Kendali ditemukan lemah | Topik 5.7 — Tata Kelola, Risiko, dan Kepatuhan |

Praktik peningkatan berkelanjutan mengumpulkan ini menjadi satu daftar yang terlihat, memilih apa yang dikerjakan, dan memeriksa hasilnya.

### Perbaikan sebagai pekerjaan

Disiplin utamanya adalah memperlakukan perbaikan sebagai pekerjaan: butir dalam backlog dengan pemilik, manfaat yang diharapkan, dan tanggal. Tanpanya, perbaikan bergantung pada antusiasme dan waktu luang. Ini juga berarti membuat pertukaran dengan pekerjaan pengiriman secara terbuka, agar kapasitas dilindungi dengan sengaja. Pengaturan umum adalah mencadangkan porsi setiap siklus untuk perbaikan, atau menjalankan siklus perbaikan singkat berdampingan dengan pengiriman.

### Mengukur perbaikan

Untuk mengetahui bahwa sesuatu membaik, Anda memerlukan sebelum dan sesudah. Pilih ukuran yang terkait dengan perubahan, seperti waktu pemulihan layanan, insiden berulang, atau waktu menunggu, dan lihat sebelum dan sesudah. Hindari ukuran yang mudah digerakkan tanpa memperbaiki apa pun. Pakai beberapa dan bahas apa arti angkanya (lihat Topik 5.6 — Metrik dan Pengukuran). Artikel yang dirujuk tidak memberi bukti tentang efektivitas program perbaikan, jadi hasil tim sendiri adalah buktinya.

### Metode

Banyak metode mendukung perbaikan: analisis akar penyebab, Six Sigma dan DMAIC untuk pengurangan cacat berbasis data, pemetaan aliran nilai, dan acara kaizen. Artikel Wikipedia tentang peningkatan berkelanjutan tidak menyebut Six Sigma, DMAIC, atau model perbaikan ITIL, jadi panduan ini tidak menisbatkannya padanya. Pilih metode sesuai ukuran masalah: tindakan retrospektif untuk gesekan kecil, proyek berbasis data untuk cacat yang menetap.

### Batasan

Artikel tidak mencatat kritik terhadap peningkatan berkelanjutan, dan sebagian sumbernya lemah atau usang. Risiko praktis sudah dikenal: kelelahan perbaikan ketika terlalu banyak perubahan tiba, sandiwara perbaikan ketika daftar tumbuh dan tak ada yang berubah, dan optimalisasi lokal ketika satu tim memperbaiki bagiannya dan memperburuk keseluruhan. Jagalah dengan daftar yang singkat dan terlihat dan pemeriksaan hasil secara berkala.

## Praktik terbaik

1. **Simpan satu daftar perbaikan yang terlihat.** Kumpulkan gagasan dari insiden, retrospektif, umpan balik, dan tinjauan di satu tempat. Beri tiap butir pemilik, masalah yang ditanganinya, dan manfaat yang diharapkan.
2. **Perlakukan butir perbaikan sebagai pekerjaan.** Taruh di backlog berdampingan dengan butir pengiriman, dan putuskan dalam perencanaan berapa banyak kapasitas yang mereka dapatkan. Lindungi porsi itu ketika tekanan naik.
3. **Pilih sedikit dan selesaikan.** Kerjakan satu sampai tiga butir paling berharga sekaligus. Daftar panjang butir yang dimulai adalah tanda sandiwara perbaikan.
4. **Pakai siklus.** Untuk tiap perubahan, nyatakan rencana dan hasil yang diharapkan, buat perubahan dalam skala kecil, periksa data, dan putuskan apakah diadopsi, disesuaikan, atau dibuang. Tuliskan keputusannya.
5. **Tentukan keberhasilan sebelum Anda mulai.** Pilih ukuran dan apa yang Anda harapkan lihat, sebelum perubahan. Ini mencegah menjelaskan hasil apa pun sebagai keberhasilan sesudahnya.
6. **Mulai kecil dan lokal.** Biarkan tim memperbaiki pekerjaan mereka sendiri tanpa menunggu izin, dalam batas yang jelas. Cadangkan program lebih besar untuk masalah yang melintasi tim.
7. **Bagikan apa yang Anda pelajari.** Terbitkan catatan singkat tentang apa yang berubah dan apa yang terjadi, termasuk kegagalan. Tim lain dapat memakai ulang atau menghindarinya.
8. **Lihat seluruh sistem.** Sebelum mengadopsi perbaikan, tanyakan siapa yang terpengaruh. Keuntungan lokal yang menambah pekerjaan bagi tim lain bukan perbaikan secara keseluruhan (lihat Topik 2.4 — Prinsip Panduan ITIL tentang berpikir holistik).
9. **Tinjau daftar secara berkala.** Sekali sebulan, lihat daftar bersama tim dan pemilik layanan: apa yang selesai, apa yang macet, apa yang harus dibuang. Singkirkan butir yang kehilangan maknanya.
10. **Rayakan hasil, bukan aktivitas.** Akui perbaikan yang membuat keadaan lebih baik bagi pengguna atau staf, dengan bukti. Jangan menghargai jumlah gagasan atau rapat.
11. **Cocokkan metode dengan masalah.** Pakai eksperimen cepat untuk masalah kecil, metode berbasis data untuk cacat yang menetap, dan datangkan bantuan spesialis untuk yang kompleks.
12. **Libatkan pengguna dan pemasok.** Tanyakan kepada mereka apa yang diperbaiki, dan undang meninjau hasil di tempat mereka terpengaruh (lihat Topik 3.14 — Manajemen Pemasok).

## Pertanyaan untuk dibahas bersama tim Anda

**Apa yang membaik pada kuartal terakhir karena sesuatu yang kita putuskan untuk diubah?**

Minta contoh spesifik dengan bukti. Jika orang kesulitan, itulah temuannya. Jika ada contoh, tanyakan apa yang membuatnya berhasil: pemilik, waktu, ukuran yang jelas. Bandingkan dengan perbaikan yang macet. Fasilitator dapat menanyakan pola mana yang lebih umum di tim Anda.

**Ke mana gagasan perbaikan kita pergi?**

Telusuri beberapa gagasan terbaru: dari tinjauan insiden, retrospektif, komentar pelanggan. Cari tahu di mana masing-masing berakhir. Sering kali tersebar di dokumen dan tiket. Bahas satu daftar, siapa yang memeliharanya, dan bagaimana ditinjau. Buat versi pertama dalam sesi.

**Berapa banyak kapasitas kita yang tersita perbaikan, dan siapa yang memutuskan?**

Lihat beberapa siklus terakhir dan perkirakan porsinya. Sering kali jauh lebih kecil daripada yang diyakini orang, dan tak ada yang memilihnya. Tanyakan apa menurut tim dan manajer seharusnya. Sepakati porsi awal dan cara melindunginya.

**Perubahan kita yang mana yang kita periksa sesudahnya?**

Tanyakan tiga perubahan terakhir dan bukti apa yang menunjukkan mereka berhasil. Banyak yang tak pernah diperiksa. Bahas kebiasaan sederhana: sebelum perubahan, nyatakan apa yang Anda harapkan lihat dan kapan Anda akan melihat. Pilih satu perubahan saat ini untuk menerapkannya.

**Perbaikan apa yang membantu kita dan merugikan orang lain?**

Kumpulkan contoh perbaikan lokal yang memindahkan masalah ke tempat lain. Ini sering datang dari perubahan pada serah terima atau persetujuan. Bahas cara bertanya kepada yang terpengaruh lebih awal. Tujuannya pertanyaan sederhana untuk diajukan sebelum perubahan.

**Apa butir tertua dalam daftar perbaikan kita, dan mengapa masih di sana?**

Pilih butir tertua dan telusuri sejarahnya. Alasannya mencakup tanpa pemilik, tanpa waktu, ketidaksepakatan, atau didahului peristiwa. Putuskan untuk mengerjakannya, menjadwalkannya, atau membuangnya secara terbuka. Membuang butir dengan sengaja adalah tanda daftar yang sehat.

## Dalam praktik: contoh ITIL agile

Perusahaan air daerah memiliki platform penagihan pelanggan dan pembacaan meteran yang dijalankan tim sebelas orang. Retrospektif diadakan setiap dua minggu dan menghasilkan daftar tindakan, tetapi sedikit yang selesai. Insiden ditinjau, dan tindakan dari tinjauan itu diarsipkan dalam sistem terpisah. Regulator perusahaan telah meminta bukti bagaimana perusahaan belajar dari kegagalan layanan.

Pemilik layanan dan kepala tim memutuskan membuat perbaikan terlihat. Mereka membuat satu daftar perbaikan yang mengumpulkan tindakan dari retrospektif, tinjauan insiden, dan umpan balik pelanggan. Setiap butir punya pemilik, pernyataan masalah, manfaat yang diharapkan, dan ukuran. Mereka mencadangkan 15 persen setiap siklus dua minggu untuk butir perbaikan, dan membatasi jumlah yang sedang dikerjakan menjadi tiga. Untuk masing-masing, mereka mengikuti plan, do, check, dan act: mereka menulis apa yang diharapkan, mencoba perubahan pada subset, melihat angka setelah periode tertentu, dan mencatat keputusan. Tinjauan bulanan dengan pemilik layanan dan perwakilan layanan pelanggan melihat apa yang telah dikerjakan dan apa yang telah dipelajari.

Setelah enam bulan, tim telah menyelesaikan sembilan butir, termasuk perbaikan atas kegagalan impor data meteran yang berulang yang menurunkan insiden berulang pada penyebab itu hampir nol, dan penjelasan tagihan yang lebih jelas yang mengurangi panggilan tentang topik itu. Tim juga punya bukti untuk regulator dalam bentuk daftar dan pemeriksaan. Beberapa kesulitan tersisa. Dua butir diselesaikan tanpa diperiksa karena siklus bergerak maju, dan satu perbaikan pada proses impor memperlambat pekerjaan tim pelaporan hilir, yang baru terungkap sebulan kemudian. Tim menambahkan pertanyaan "siapa lagi yang terpengaruh" pada templat daftar dan pengingat kalender untuk tiap pemeriksaan.

## Empat perspektif

### Tim produk dan pengiriman

Tim pengiriman memiliki sebagian besar daftar perbaikan. Bawa gagasan dari retrospektif dan insiden ke satu tempat, selesaikan apa yang Anda mulai, dan periksa hasilnya. Bersedialah membelanjakan kapasitas untuk perbaikan alih-alih hanya untuk fitur baru.

### Tim layanan dan operasi

Tim operasi melihat gesekan lebih dulu. Alirkan tema insiden, kontak desk, dan data aliran ke dalam daftar, dan ikut serta dalam memeriksa hasil. Perjuangkan perbaikan yang mengurangi toil dan insiden berulang.

### Kepemimpinan dan tata kelola

Pemimpin melindungi kapasitas untuk perbaikan dan menanyakan hasilnya. Tanyakan apa yang telah membaik dan bagaimana diperiksa, bukan berapa banyak gagasan yang ada. Singkirkan hambatan yang disebut tim dan tunjukkan bahwa Anda telah melakukannya. Dukung perbaikan yang melintasi batas tim.

### Pelanggan dan pengguna

Pelanggan dan pengguna memasok sebagian gagasan terbaik. Beri tahu tim apa yang membuat Anda frustrasi dan minta mendengar apa yang berubah sebagai hasilnya. Ikut tinjauan di tempat layanan Anda menjadi perhatian. Umpan balik Anda tentang apakah perubahan membantu adalah pemeriksaan paling langsung yang ada.

## Pola kegagalan umum

- **Gagasan tanpa pemilik.** Daftar tumbuh dan tak ada yang dikerjakan. Sebaliknya, wajibkan pemilik dan manfaat yang diharapkan untuk tiap butir.
- **Perbaikan sebagai waktu luang.** Pengiriman mendesaknya. Sebaliknya, cadangkan kapasitas dan lindungi.
- **Terlalu banyak sekaligus.** Semuanya dimulai dan sedikit yang selesai. Sebaliknya, batasi pekerjaan yang sedang berjalan untuk butir perbaikan.
- **Tanpa pemeriksaan.** Perubahan diadopsi karena direncanakan. Sebaliknya, nyatakan hasil yang diharapkan sebelumnya dan lihat datanya.
- **Optimalisasi lokal.** Satu tim membaik dan yang lain menderita. Sebaliknya, tanyakan siapa lagi yang terpengaruh sebelum dan sesudah.
- **Sandiwara perbaikan.** Lokakarya dan poster menggantikan hasil. Sebaliknya, hitung perbaikan yang selesai dan terverifikasi.
- **Ukuran yang dapat dimainkan.** Angka bergerak dan tak ada yang membaik. Sebaliknya, pakai beberapa ukuran dan lihat pekerjaan yang mendasarinya.
- **Lupa berbagi.** Pelajaran tinggal pada tim. Sebaliknya, terbitkan catatan singkat dan undang orang lain memakai ulang.

## Model kematangan

| Dimensi | Memulai | Mengembangkan | Menstandarkan | Mengelola | Mengorkestrasi |
|---|---|---|---|---|---|
| Mengumpulkan dan memprioritaskan | Gagasan tersebar dan tidak diprioritaskan | Beberapa tim menyimpan daftar | Satu daftar terlihat per tim dengan pemilik dan manfaat yang diharapkan | Prioritas memakai data dampak dan upaya | Daftar perbaikan diselaraskan lintas tim dan dengan pelanggan |
| Kapasitas dan aliran | Perbaikan dikerjakan di waktu luang | Sebagian kapasitas dicadangkan | Porsi kapasitas yang dilindungi dan batas pekerjaan yang sedang berjalan | Kapasitas dan throughput perbaikan ditinjau | Kapasitas dibagikan lintas tim untuk perbaikan lintas bidang |
| Memeriksa hasil | Hasil tidak diperiksa | Beberapa perubahan ditinjau | Setiap perubahan punya ekspektasi yang dinyatakan dan pemeriksaan | Hasil diukur dan dikaitkan dengan keputusan | Bukti dibagikan lintas tim dan dipakai memandu organisasi |
| Pembelajaran dan penyebaran | Pelajaran tinggal lokal | Beberapa catatan dibagikan | Pelajaran diterbitkan dan ditinjau | Pemakaian ulang perbaikan dilacak | Perbaikan menyebar lintas tim dan pemasok secara rutin |

## Daftar periksa

- [ ] Kami punya satu daftar perbaikan yang terlihat dengan pemilik dan manfaat yang diharapkan.
- [ ] Gagasan dari retrospektif, tinjauan insiden, tema desk, dan umpan balik semuanya mengalir ke dalamnya.
- [ ] Porsi yang dilindungi dari setiap siklus dialokasikan untuk butir perbaikan.
- [ ] Kami membatasi jumlah butir perbaikan yang sedang berjalan.
- [ ] Setiap perubahan menyatakan hasil yang diharapkan dan waktu untuk memeriksanya.
- [ ] Kami memeriksa hasil dan mencatat keputusan untuk mengadopsi, menyesuaikan, atau membuang.
- [ ] Kami menanyakan siapa lagi yang terpengaruh sebelum membuat perubahan.
- [ ] Daftar ditinjau setidaknya setiap bulan.
- [ ] Kami membagikan catatan singkat tentang apa yang berubah dan apa yang kami pelajari.
- [ ] Kami dapat menyebut tiga hal yang lebih baik kuartal ini karena pekerjaan perbaikan.

## Prompt AI

**Tujuan: menggabungkan gagasan perbaikan menjadi satu daftar berprioritas.**

```text
Here are improvement ideas from several sources over the last [period]: [paste items from retrospectives, incident reviews, desk themes, and feedback, one per line, with their source].

Merge duplicates, group related items, and produce a list with: a one-line problem statement for each, the source, what benefit it might bring (use only what the text implies, otherwise write "unknown"), and a question about effort. Do not rank by guesswork; instead propose a way to rank (for example by repeat count and user impact) and apply it only to data I gave. List what you are unsure of.
```

**Tujuan: mengubah gagasan perbaikan menjadi eksperimen kecil.**

```text
Help me turn this improvement idea into a small experiment using plan, do, check, act.

The idea: [describe].
The problem it addresses, with evidence: [paste facts].
Who is affected: [list teams and users].
Measures we already have: [list].

Write: a hypothesis in one sentence, the smallest change that could test it, how long to run it, what we will measure before and after (leave targets as [to be agreed]), who else to ask before we start, and what decision rule we will use at the end. Do not invent baseline data. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Tujuan: meninjau keadaan daftar perbaikan.**

```text
Here is our improvement list with status, owner, age, and expected benefit: [paste].

Using only this text, identify: items with no owner; items older than [period] with no progress; items whose expected benefit is unclear; and items that look related and could be combined. For each, suggest a question to ask at the monthly review. Do not decide for us what to drop. List what you are unsure of.
```

**Tujuan: memeriksa apakah perbaikan berhasil.**

```text
We made this change: [describe] on [date].

Measure before the change, with dates and values: [paste real data].
Measure after, with dates and values: [paste real data].
What else changed in the same period: [list, or write "unknown"].

Describe in plain words what the data shows, without claiming the change caused it if other changes could explain it. Suggest additional checks, and say whether the data is enough to decide to adopt, adjust, or drop. Do not invent numbers or statistics. List what you are unsure of.
```

## Keterampilan AI

- [kaizen](../../../../skills/kaizen/SKILL.md): gunakan untuk merencanakan dan meninjau perbaikan kecil yang berkelanjutan.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): gunakan untuk menjalankan retrospektif yang menghasilkan tindakan yang dimiliki.
- [dmaic](../../../../skills/dmaic/SKILL.md): gunakan untuk perbaikan berbasis data atas cacat yang menetap, lewat define, measure, analyze, improve, dan control.
- [six-sigma](../../../../skills/six-sigma/SKILL.md): gunakan ketika variasi dan cacat adalah masalah utama dan Anda memerlukan pendekatan statistik.
- [futurespective](../../../../skills/futurespective/SKILL.md): gunakan untuk melihat ke depan bersama dan menyepakati perbaikan untuk periode berikutnya.

## Sumber utama

- **Continual improvement process** (Wikipedia): definisi, kaizen, PDCA, dan terminologi continual versus continuous.
- **PDCA** (Wikipedia): siklus plan–do–check–act, asal-usulnya, dan varian seperti PDSA.
- **Kaizen** (Wikipedia): latar belakang perbaikan kecil yang berkelanjutan dan asal-usulnya dalam industri Jepang.
- **Lean software development** (Wikipedia): gagasan lean di balik perbaikan berkelanjutan dalam pekerjaan perangkat lunak.

## Referensi

1. Continual improvement process — Wikipedia — https://en.wikipedia.org/wiki/Continual_improvement_process
2. PDCA — Wikipedia — https://en.wikipedia.org/wiki/PDCA
3. Kaizen — Wikipedia — https://en.wikipedia.org/wiki/Kaizen
4. W. Edwards Deming — Wikipedia — https://en.wikipedia.org/wiki/W._Edwards_Deming
5. Walter A. Shewhart — Wikipedia — https://en.wikipedia.org/wiki/Walter_A._Shewhart
6. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
7. Six Sigma — Wikipedia — https://en.wikipedia.org/wiki/Six_Sigma
8. Root cause analysis — Wikipedia — https://en.wikipedia.org/wiki/Root_cause_analysis
9. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
