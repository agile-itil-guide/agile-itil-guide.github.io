# Manajemen Aset Perangkat Lunak

**Manajemen aset perangkat lunak memastikan organisasi membeli perangkat lunak yang dibutuhkannya, memakai apa yang dibelinya, dan mengikuti syarat yang telah diterimanya, dan bagi tim agile itu kini berarti melacak komponen sumber terbuka dan langganan selain produk berlisensi.**

## Mengapa ini penting

Perangkat lunak adalah salah satu biaya terbesar dan paling tak terlihat di TI. Lisensi dibeli untuk orang yang sudah pergi, langganan diperbarui tanpa disadari, dan produk dipasang dengan cara yang tidak diizinkan lisensi. Masing-masing adalah biaya atau risiko. Audit vendor dapat mengubah ketidakcocokan kecil menjadi tagihan besar, dan komponen tanpa tambalan dalam aplikasi yang terlupakan dapat membuka pintu bagi penyerang.

Tim agile mengubah gambarannya. Pengembang menarik pustaka dengan satu perintah, dan aplikasi modern sebagian besar dirakit dari bagian pihak ketiga dan sumber terbuka. Artikel rantai pasok perangkat lunak di Wikipedia melaporkan bahwa perangkat lunak sumber terbuka ditemukan di 96 persen basis kode komersial yang dianalisis satu vendor pada 2024, mengutip Synopsys. Tim juga membeli layanan cloud dan langganan dengan kartu, di luar proses pengadaan. Manajemen aset perangkat lunak (SAM) karena itu telah tumbuh melampaui menghitung instalasi beberapa produk besar menjadi praktik yang mencakup apa yang dipakai, apa yang terutang, dan apa yang dipercaya.

[Artikel Wikipedia tentang manajemen aset perangkat lunak](https://en.wikipedia.org/wiki/Software_asset_management) menggambarkan SAM sebagai praktik bisnis untuk mengelola dan mengoptimalkan pembelian, deployment, pemeliharaan, pemanfaatan, dan pembuangan perangkat lunak, dengan tujuan mengurangi biaya TI, membatasi risiko bisnis dan hukum, dan meningkatkan produktivitas pengguna akhir. Artikel tidak mencakup layanan cloud, SBOM, atau model kematangan, jadi topik ini menambahkan artikel tentang rantai pasok perangkat lunak dan perangkat lunak sumber terbuka. Topik ini menjelaskan praktik dan tidak memberi nasihat hukum; syarat lisensi berbeda, dan sumber yang tepat adalah teks lisensi atau kontrak.

## Konsep inti

### Apa itu SAM

Menurut Wikipedia, SAM adalah bagian dari manajemen aset TI (lihat Topik 4.1 — Manajemen Aset TI). Artikel mengutip ITIL sebagai menjelaskannya mencakup pengelolaan, pengendalian, dan perlindungan aset perangkat lunak yang efektif. Tujuan strategisnya, seperti didaftar artikel, mencakup mengurangi biaya perangkat lunak dan dukungan lewat kontrak volume dan mengalokasikan ulang lisensi yang tak terpakai, menegakkan kebijakan keamanan dan standar desktop, server, dan seluler, meningkatkan produktivitas dengan men-deploy teknologi lebih cepat dan andal, membatasi beban manajemen lewat otomatisasi, dan menetapkan kebijakan untuk akuisisi, deployment, pemakaian, dan pensiun.

### Kepatuhan lisensi

Artikel menggambarkan SAM sebagai menyeimbangkan jumlah lisensi yang dibeli dengan jumlah yang benar-benar dikonsumsi, dan memastikan pemakaian sesuai syarat lisensi tiap vendor. Ia mencatat bahwa instalasi adalah ukuran konsumsi yang paling umum, tetapi sebagian perangkat lunak dilisensikan menurut pengguna, modal, prosesor, atau inti CPU. Organisasi dapat mengurangi kewajiban saat audit oleh vendor atau pihak ketiga seperti Business Software Alliance, kata artikel, lewat inventaris perangkat lunak yang berkelanjutan, kebijakan pembelian, dan perkakas. Artikel tidak menjelaskan prosedur audit. Intinya adalah mengetahui **hak** Anda (apa yang boleh Anda pakai), **konsumsi** Anda (apa yang Anda pakai), dan celah di antara keduanya.

### Tiga pertanyaan

Praktik SAM menjawab tiga pertanyaan untuk setiap produk penting:

| Pertanyaan | Apa yang dibutuhkan |
|---|---|
| Apa hak kita? | Kontrak, syarat lisensi, faktur, dan bukti pembelian |
| Apa yang kita pakai? | Inventaris dan data pemakaian dari penemuan dan pengukuran |
| Apa celahnya, dan apa yang kita lakukan? | Perbandingan, keputusan membeli, mengalokasikan ulang, atau menyingkirkan |

Celah bisa berjalan ke dua arah: kekurangan lisensi, yang merupakan risiko kepatuhan, dan kelebihan lisensi, yang merupakan pemborosan.

### Standar: ISO/IEC 19770

Artikel mendaftar bagian keluarga ISO/IEC 19770: 19770-1:2017 (persyaratan sistem manajemen aset TI, kerangka proses yang dapat diimplementasikan dalam tingkatan bertahap), 19770-2:2015 (tag identifikasi perangkat lunak), 19770-3:2016 (skema manajemen hak untuk rincian lisensi, kontrak, dan faktur), 19770-4:2017 (data pengukuran pemanfaatan sumber daya), dan 19770-5:2015 (tinjauan dan kosakata). Artikel mengatakan standar identifikasi perangkat lunak didukung IBM, Microsoft, dan Adobe. Periksa standar untuk edisi terkini dan isi yang persis.

### Teknologi SAM dan batasannya

Artikel mendaftar perkakas untuk inventaris perangkat lunak, manajemen lisensi, pengukuran, kendali aplikasi, deployment, manajemen tambalan, manajemen permintaan, dan pengkatalogan produk. Ia juga memberi contoh skala: aturan pengukuran dalam System Center Configuration Manager Microsoft bekerja baik untuk kawasan kecil tetapi menghasilkan volume data yang tak terkelola pada skala perusahaan. Perkakas membantu, tetapi memerlukan pertanyaan yang jelas dan pemilik.

### Perangkat lunak sumber terbuka

Wikipedia mendefinisikan perangkat lunak sumber terbuka sebagai perangkat lunak yang kode sumbernya tersedia untuk umum, dan yang boleh dipakai, dipelajari, dimodifikasi, dan didistribusikan pengguna, biasanya di bawah lisensi terbuka. Open Source Initiative memelihara definisi paling umum, dengan sepuluh kriteria dan daftar lisensi yang disetujui, meskipun artikel mengatakan OSI tidak punya otoritas hukum atas istilah itu. Artikel menjelaskan dua keluarga lisensi:

| Keluarga | Apa yang diminta dari penerima | Contoh yang disebut |
|---|---|---|
| **Permisif** | Menjaga pemberitahuan hak cipta dan menyertakan lisensi; tidak wajib merilis kode Anda sendiri di bawah lisensi yang sama | BSD, MIT, Apache |
| **Copyleft** | Memakai lisensi yang sama untuk setidaknya sebagian dari apa yang Anda distribusikan (copyleft kuat berlaku untuk semua karya turunan; copyleft lemah hanya dalam kondisi tertentu) | GNU GPL (kuat); MPL, EPL (lemah) |

Kedua keluarga, kata artikel, mensyaratkan menjaga pemberitahuan hak cipta dan menyediakan salinan lisensi bersama kode. Ia mengutip *Jacobson v Katzer* (2008), ketika pengadilan menegakkan syarat lisensi terbuka, termasuk atribusi, di bawah hukum hak cipta. Ia mencatat bahwa organisasi mendirikan kantor program sumber terbuka untuk mengelola strategi mereka. Syarat sumber terbuka adalah kewajiban nyata. Mana yang berlaku bergantung pada bagaimana Anda memakai dan mendistribusikan perangkat lunak; tanyakan fungsi hukum Anda dan baca lisensinya.

### Rantai pasok perangkat lunak dan SBOM

Artikel tentang rantai pasok perangkat lunak menggambarkannya sebagai komponen, pustaka, perkakas, dan proses yang dipakai untuk mengembangkan, membangun, dan menerbitkan artefak perangkat lunak. Ia menyebut risiko: penyerang dapat mengkompromikan komponen hulu untuk menjangkau semua pengguna hilir, dan mengutip contoh termasuk Log4Shell pada 2021, serangan SolarWinds pada 2020, dan pintu belakang XZ Utils pada 2024. Ia menjelaskan **software bill of materials (SBOM)** sebagai inventaris komponen dalam artefak perangkat lunak, termasuk bagian sumber terbuka dan hak milik, padanan perangkat lunak dari bill of materials manufaktur. SBOM mendukung analisis kerentanan dan lisensi.

Artikel melaporkan batasan: spreadsheet tidak dapat diperkaya secara otomatis dengan data kerentanan dan harus disimpan dalam repositori yang dapat dikueri; SBOM yang digerakkan kebijakan jarang, dengan satu studi menemukan sekitar 0,56 persen repositori GitHub populer memuatnya; kurang dari separuh proyek yang diuji menyertakan SBOM dalam rilis dan banyak yang tidak lengkap; dan studi atas enam perkakas SBOM Java menemukan ketidakakuratan yang sering. Ia mencatat bahwa visibilitas saja tidak dapat menjamin integritas. Ia juga melaporkan bahwa Executive Order 14028 AS, ditandatangani 12 Mei 2021, menginstruksikan NIST dan NTIA mengeluarkan panduan tentang keamanan rantai pasok perangkat lunak termasuk SBOM, dan bahwa elemen minimum NTIA terbagi menjadi bidang data, dukungan otomatisasi, dan praktik serta proses. Artikel tidak menyebut format SBOM atau menjelaskan Cyber Resilience Act Uni Eropa. Aturan tentang SBOM berbeda menurut negara dan sektor; tanyakan fungsi kepatuhan Anda apa yang berlaku bagi Anda.

### SaaS dan langganan cloud

Artikel SAM tidak membahas perangkat lunak sebagai layanan (SaaS) atau cloud. Pengalaman praktis menunjukkan bahwa perangkat lunak langganan menciptakan masalah baru: pembelian di luar pengadaan, kursi yang tak dicabut siapa pun, perkakas yang tumpang tindih, dan data yang ditempatkan pada pemasok tanpa tinjauan (lihat Topik 3.14 — Manajemen Pemasok dan Topik 4.5 — Manajemen Keuangan TI dan FinOps). SAM untuk langganan berfokus pada menemukan apa yang dibeli, siapa pemiliknya, siapa yang memakainya, dan kapan diperbarui.

### Batas sumber

Artikel SAM tidak mencakup prosedur audit, katalog jenis lisensi, atau model kematangan, dan referensi utamanya mencakup butir usang dari 2006 sampai 2009. Artikel rantai pasok perangkat lunak melaporkan angka dari survei dan studi yang kualitasnya tak merata. Pakai sumber untuk membingkai pertanyaan, dan pakai teks lisensi dan kontrak untuk jawaban.

## Praktik terbaik

1. **Mulai dengan produk yang paling penting.** Pilih beberapa produk terbesar atau paling berisiko menurut biaya atau paparan hukum dan luruskan hak, inventaris, dan pemakaian untuk produk itu lebih dulu.
2. **Simpan bukti hak.** Simpan kontrak, faktur, dan syarat lisensi di tempat yang dapat ditemukan, dan tautkan ke catatan produk. Anda tidak dapat membela posisi dalam audit tanpa bukti.
3. **Ketahui metrik lisensi.** Untuk tiap produk, catat bagaimana dihitung: per pengguna, perangkat, prosesor, inti, atau lainnya. Menghitung instalasi ketika lisensi per inti menghasilkan jawaban yang salah.
4. **Bandingkan hak dengan pemakaian secara berkala.** Setidaknya setiap kuartal untuk produk utama, bandingkan apa yang boleh Anda pakai dengan apa yang Anda pakai. Bertindaklah atas celah dengan membeli, mengalokasikan ulang, atau menyingkirkan.
5. **Ambil kembali lisensi yang tak terpakai.** Pakai data pemakaian untuk menemukan lisensi yang tak dipakai siapa pun selama periode tertentu, dan alokasikan ulang atau batalkan setelah memeriksa dengan pemilik.
6. **Kendalikan bagaimana perangkat lunak masuk.** Permudah meminta perangkat lunak yang disetujui dan persulit membeli di luar proses. Sertakan langganan dan pembelian dengan kartu dalam tinjauan pengeluaran.
7. **Perlakukan komponen sumber terbuka sebagai aset.** Simpan inventaris komponen sumber terbuka dalam produk Anda, dengan lisensi dan versi. Periksa lisensi terhadap cara Anda memakai dan mendistribusikan perangkat lunak, dengan nasihat hukum.
8. **Hasilkan SBOM dalam build.** Hasilkan software bill of materials secara otomatis untuk setiap build, simpan di tempat yang dapat dikueri, dan pakai untuk menanggapi kerentanan dan menjawab pertanyaan pelanggan. Periksa SBOM terhadap build, karena perkakas bisa tidak akurat.
9. **Lacak langganan.** Untuk masing-masing, catat pemilik, tujuan, biaya, jumlah kursi, pengguna, tanggal pembaruan, dan data yang disimpan. Tinjau sebelum pembaruan.
10. **Kaitkan perangkat lunak dengan layanan.** Catat layanan mana yang memakai perangkat lunak dan versi apa, agar kerentanan atau perubahan lisensi dapat ditelusuri ke layanan yang terdampak (lihat Topik 4.4 — Manajemen Konfigurasi).
11. **Siapkan audit dengan tenang.** Jaga catatan mutakhir, tunjuk kontak, dan ketahui hak dan kewajiban Anda dari kontrak. Jangan menunggu pemberitahuan untuk mulai mengorganisasi.
12. **Pensiunkan perangkat lunak dengan benar.** Singkirkan dari sistem, akhiri lisensi dan langganan, dan perbarui catatan. Perangkat lunak yang tak terpakai adalah biaya dan permukaan serangan.

## Pertanyaan untuk dibahas bersama tim Anda

**Untuk tiga produk perangkat lunak termahal kita, apakah kita tahu apa yang boleh kita pakai dan apa yang kita pakai?**

Minta jumlah lisensi yang dipegang dan jumlah yang dipakai untuk masing-masing. Bandingkan. Hasil yang lazim mengejutkan: lebih banyak kursi daripada pengguna, atau pengguna melebihi kursi. Fasilitator dapat menanyakan di mana bukti hak disimpan. Rencanakan merekonsiliasi celah terbesar.

**Perangkat lunak apa yang telah dibeli atau dipasang orang tanpa memberi tahu siapa pun?**

Jujurlah dan tanpa menghakimi. Tanyakan tentang perkakas yang dibeli dengan kartu, perkakas gratis yang dipakai di tempat kerja, dan ekstensi peramban. Alasan lazim adalah kecepatan dan proses yang tidak jelas. Bahas apa yang akan membuat jalur yang disetujui cukup cepat. Sepakati langkah pendaftaran.

**Komponen sumber terbuka mana yang menjadi tumpuan produk kita, dan apa lisensinya?**

Tanyakan apakah ada yang bisa menghasilkan daftar. Jika tidak, bahas cara menghasilkannya dari build. Lalu tanyakan bagaimana lisensi diperiksa. Ingat bahwa kewajiban berbeda antara lisensi permisif dan copyleft. Rencanakan dengan hukum untuk meninjau kasus berisiko tinggi.

**Jika kerentanan serius muncul di pustaka umum besok, berapa lama untuk mengetahui apakah kita memakainya?**

Telusuri langkahnya: siapa yang diberi tahu, bagaimana Anda mencari, bagaimana Anda tahu versi di tiap layanan. Jawabannya menunjukkan seberapa jauh SBOM dan inventaris akan membantu. Sepakati perbaikan pertama, seperti menghasilkan bill of materials dalam pipeline.

**Langganan apa yang diperbarui kuartal depan, dan siapa yang memutuskan apakah dipertahankan?**

Daftar pembaruan. Untuk masing-masing, tanyakan siapa pemiliknya, berapa kursi yang aktif, dan apa yang terjadi jika dibatalkan. Sering kali tak ada yang memiliki keputusan itu. Tunjuk pemilik dan tambahkan tanggal tinjauan sebelum setiap pembaruan.

**Bagaimana kita menanggapi pemberitahuan audit vendor?**

Tanyakan siapa yang akan menanganinya dan bukti apa yang mereka punya. Bahas apakah catatan lengkap. Tujuannya rencana yang tenang, bukan ketakutan akan audit. Sepakati kontak dan daftar periksa.

## Dalam praktik: contoh ITIL agile

Jasa pos nasional menjalankan sekitar 60 aplikasi internal dan platform pelacakan paket yang menghadap pelanggan yang dibangun tim lima belas orang. Seorang vendor memberi tahu departemen TI tentang audit lisensi atas produk basis data. Petugas ITAM menemukan bahwa catatan lisensi tersebar di tiga spreadsheet dan tak ada yang dapat mengatakan berapa inti prosesor yang kini dijalankan basis data, karena mesin virtual telah dipindahkan antarhost berkali-kali.

Petugas ITAM, seorang administrator basis data, dan kepala pengadaan mengumpulkan bukti. Mereka mengumpulkan kontrak, metrik lisensi (menurut inti prosesor), faktur, dan data penemuan tentang di mana basis data berjalan. Mereka menemukan bahwa produk berjalan pada lebih banyak inti daripada yang dibeli di satu lingkungan, dan lebih sedikit di lingkungan lain, tempat lisensi tak terpakai. Setelah berbicara dengan vendor, mereka mengalokasikan ulang lisensi yang tak terpakai, membeli sejumlah kecil tambahan, dan memindahkan satu lingkungan non-esensial ke alternatif gratis. Biayanya jauh di bawah apa yang akan menjadi temuan audit, tetapi tidak remeh.

Pada saat yang sama, tim platform diminta pelanggan besar untuk daftar komponen perangkat lunak dalam platform pelacakan paket. Tim menyadari mereka tidak dapat menghasilkannya. Mereka menambahkan langkah build yang menghasilkan bill of materials untuk setiap rilis dan menyimpannya dalam repositori. Keluaran pertama mencakup pustaka dengan lisensi yang belum ditinjau tim hukum, dan mereka memutuskan menggantinya. Masalah tersisa. Perkakas SBOM tim melewatkan komponen dalam satu bahasa, dan kelompok riset terpisah terus membeli langganan dengan kartu departemen. Petugas ITAM bertanya kepada vendor perkakas tentang celahnya, dan membujuk departemen mendaftarkan langganannya.

## Empat perspektif

### Tim produk dan pengiriman

Tim pengiriman membawa sebagian besar perangkat lunak ke organisasi. Catat komponen dan langganan yang Anda tambahkan, hasilkan bill of materials dalam build Anda, dan tanyakan sebelum memakai pustaka dengan lisensi yang tidak dikenal. Bagikan temuan kepada hukum dan keamanan.

### Tim layanan dan operasi

Tim operasi menjalankan inventaris, penambalan, dan pengukuran. Jaga inventaris perangkat lunak tertaut ke layanan, tambal dengan cepat ketika kerentanan muncul, dan ambil kembali lisensi tak terpakai. Bantu pengadaan memahami bagaimana produk benar-benar dipakai.

### Kepemimpinan dan tata kelola

Pemimpin memiliki risiko ketidakpatuhan dan pengeluaran. Minta hak dan konsumsi untuk produk terbesar, pandangan atas langganan, dan rencana untuk risiko sumber terbuka dan rantai pasok. Dukung jalur pembelian yang cukup cepat sehingga orang memakainya.

### Pelanggan dan pengguna

Pelanggan dan pengguna diuntungkan ketika perangkat lunak tersedia dan aman. Minta apa yang Anda butuhkan lewat jalur yang tepat, kembalikan apa yang tak lagi Anda pakai, dan beri tahu tim tentang perkakas yang Anda anggap berguna. Pelanggan produk Anda mungkin meminta bill of materials; harapkan ditanya.

## Pola kegagalan umum

- **Hanya menghitung instalasi.** Metrik lisensi per inti atau pengguna. Sebaliknya, catat metrik dan hitung hal yang benar.
- **Bukti hak hilang.** Kontrak dan faktur tak dapat ditemukan. Sebaliknya, simpan bersama catatan produk.
- **Shelfware.** Lisensi dibeli dan tak dipakai. Sebaliknya, bandingkan hak dengan pemakaian dan ambil kembali.
- **Pembelian bayangan.** Langganan yang dibeli dengan kartu lolos dari proses. Sebaliknya, buat jalur yang disetujui cepat dan tinjau pengeluaran untuk pengecualian.
- **Komponen sumber terbuka tak dikenal.** Tak ada yang bisa mendaftarnya. Sebaliknya, hasilkan bill of materials secara otomatis dalam build.
- **Mengabaikan syarat lisensi sumber terbuka.** Kewajiban copyleft terlewat. Sebaliknya, periksa lisensi terhadap pemakaian dan distribusi dengan nasihat hukum.
- **Memercayai perkakas secara buta.** Perkakas melewatkan komponen atau mendaftar yang salah. Sebaliknya, validasi keluaran pada sampel dan tanyakan vendor tentang celah.
- **Panik audit.** Catatan disusun setelah pemberitahuan. Sebaliknya, jaga catatan mutakhir dan tunjuk kontak audit.

## Model kematangan

| Dimensi | Memulai | Mengembangkan | Menstandarkan | Mengelola | Mengorkestrasi |
|---|---|---|---|---|---|
| Hak dan pemakaian | Catatan tersebar; pemakaian tak diketahui | Produk utama punya catatan hak | Hak dan pemakaian dicatat untuk produk utama dan dibandingkan secara berkala | Celah dan lisensi tak terpakai diukur dan ditindaklanjuti | Hak dan pemakaian dibagikan dengan keuangan, pengadaan, dan pemasok |
| Akuisisi dan langganan | Perangkat lunak dibeli siapa pun | Jalur yang disetujui ada untuk beberapa pembelian | Pembelian dan langganan mengikuti satu jalur dengan pemilik dan tanggal pembaruan | Pengeluaran dan pemakaian kursi ditinjau sebelum pembaruan | Pembelian, pemakaian, dan kontrak dikoordinasikan di seluruh organisasi |
| Sumber terbuka dan rantai pasok | Komponen tak diketahui | Beberapa tim mendaftar pustaka | Bill of materials dihasilkan dalam build dan lisensi ditinjau | Temuan kerentanan dan lisensi dilacak sampai ditutup | Bill of materials dibagikan dengan pelanggan dan pemasok sebagaimana diwajibkan |
| Audit dan kepatuhan | Pemberitahuan audit menimbulkan kepanikan | Kontak ada | Catatan dijaga mutakhir dan rutinitas audit ada | Risiko kepatuhan diukur dan ditinjau | Praktik kepatuhan diselaraskan lintas vendor dan yurisdiksi |

## Daftar periksa

- [ ] Untuk produk perangkat lunak terbesar kami, kami tahu hak, metrik lisensi, dan pemakaian.
- [ ] Kontrak, faktur, dan syarat lisensi disimpan bersama catatan produk.
- [ ] Hak dan pemakaian dibandingkan setidaknya setiap kuartal untuk produk utama.
- [ ] Lisensi tak terpakai diambil kembali setelah memeriksa dengan pemilik.
- [ ] Pembelian dan langganan mengikuti satu jalur, dengan pemilik dan tanggal pembaruan dicatat.
- [ ] Kami menghasilkan bill of materials dalam build untuk produk yang kami kirim atau jalankan.
- [ ] Lisensi sumber terbuka dalam komponen kami ditinjau terhadap pemakaian kami, dengan nasihat hukum.
- [ ] Kami dapat menemukan layanan mana yang memakai komponen atau produk tertentu.
- [ ] Seseorang yang ditunjuk menangani pemberitahuan audit vendor.
- [ ] Perangkat lunak yang dipensiunkan disingkirkan dari sistem dan catatan.

## Prompt AI

**Tujuan: membandingkan hak dan konsumsi untuk satu produk.**

```text
Help me compare entitlement and usage for [product].

License metric (how the vendor counts, with the exact wording from the contract): [paste].
Entitlement (what we purchased, with dates): [paste].
Usage data (installations, users, cores, or whatever the metric requires): [paste real data].

Using only this information, compute the difference between entitlement and usage, in the vendor's unit, and say whether it indicates a shortfall or a surplus. List what is unclear in the contract wording as questions for the vendor or legal. Do not interpret legal terms beyond the text. Ask clarifying questions first, and list what you are unsure of.
```

**Tujuan: meninjau daftar komponen sumber terbuka untuk pertanyaan lisensi.**

```text
Here is a list of open-source components in our product with name, version, and license as reported by our tooling: [paste].
How we use and distribute the product: [for example internal use only, hosted service, shipped to customers].

Group the licenses into permissive and copyleft families based on the license names. For each group, list the types of question we should put to our legal team given how we use and distribute the product. Flag components with missing or unknown licenses. Do not give legal advice or say what the licenses require; list questions only. List what you are unsure of.
```

**Tujuan: menyiapkan pencarian respons kerentanan memakai bill of materials.**

```text
Help me plan how we would answer: "Do we use [component name and version range] and where?"

What we have today: [for example bills of materials in a repository, a spreadsheet, nothing].
Systems and services in scope: [list].

Describe the steps to find out, who does each, what data they need, what could go wrong, and how long each step might take (leave durations as [to be measured]). Propose one improvement that would shorten the answer. Do not invent our tools. Ask clarifying questions first, and list what you are unsure of.
```

**Tujuan: menyusun tinjauan langganan untuk kuartal berikutnya.**

```text
Here is a list of our subscriptions with owner, monthly cost, paid seats, active users in the last 90 days, renewal date, and data held: [paste real data].

Using only this data, list renewals in the next 90 days, compute unused seats and their cost for each, and highlight subscriptions with no owner. For each, suggest a question for the owner before renewal. Do not recommend canceling anything; flag candidates for review. List what you are unsure of.
```

## Keterampilan AI

- [vendor-management](../../../../skills/vendor-management/SKILL.md): gunakan untuk mengelola kontrak, pembaruan, dan hubungan dengan vendor perangkat lunak.
- [legal-compliance-audit](../../../../skills/legal-compliance-audit/SKILL.md): gunakan untuk menyiapkan audit vendor atau kepatuhan.
- [budget-forecasting](../../../../skills/budget-forecasting/SKILL.md): gunakan untuk memperkirakan biaya perangkat lunak dan langganan.
- [risk-register](../../../../skills/risk-register/SKILL.md): gunakan untuk mencatat risiko lisensi, kerentanan, dan rantai pasok.
- [security-testing](../../../../skills/security-testing/SKILL.md): gunakan untuk memeriksa ketergantungan dan build terhadap kelemahan yang diketahui.

## Sumber utama

- **Software asset management** (Wikipedia): definisi, tujuan, teknologi, dan bagian ISO/IEC 19770.
- **Software supply chain** (Wikipedia): risiko, software bill of materials, angka adopsi, dan latar belakang regulasi.
- **Open-source software** (Wikipedia): definisi, keluarga lisensi, dan catatan tentang risiko dan kewajiban.
- **ISO/IEC 19770** (International Organization for Standardization): keluarga standar itu sendiri; baca bagian terkini untuk persyaratan yang persis.

## Referensi

1. Software asset management — Wikipedia — https://en.wikipedia.org/wiki/Software_asset_management
2. Software supply chain — Wikipedia — https://en.wikipedia.org/wiki/Software_supply_chain
3. Open-source software — Wikipedia — https://en.wikipedia.org/wiki/Open-source_software
4. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
5. Software license — Wikipedia — https://en.wikipedia.org/wiki/Software_license
6. Copyleft — Wikipedia — https://en.wikipedia.org/wiki/Copyleft
7. Permissive software license — Wikipedia — https://en.wikipedia.org/wiki/Permissive_software_license
8. Software as a service — Wikipedia — https://en.wikipedia.org/wiki/Software_as_a_service
9. Open Source Initiative — Wikipedia — https://en.wikipedia.org/wiki/Open_Source_Initiative
