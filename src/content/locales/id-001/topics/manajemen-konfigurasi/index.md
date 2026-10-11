# Manajemen Konfigurasi

**Manajemen konfigurasi menjaga gambaran yang akurat dan dapat dipakai tentang bagian-bagian layanan dan bagaimana mereka berhubungan, dan bentuk modernnya adalah catatan yang dibangun dari kode dan penemuan yang dipercaya karena sistem itu sendiri menjaganya tetap mutakhir.**

## Mengapa ini penting

Ketika sesuatu rusak, pertanyaan pertama selalu sama. Apa komponen ini? Ke mana ia terhubung? Apa yang berubah? Siapa pemiliknya? Jika jawabannya memakan satu jam untuk ditemukan, insiden yang bisa diperbaiki dalam hitungan menit berlarut-larut. Ketika perubahan direncanakan, pertanyaan yang sama menentukan apakah Anda memahami risikonya. Gambaran yang baik tentang layanan dan bagian-bagiannya adalah salah satu hal paling berguna yang dapat dimiliki tim operasi.

Ia juga salah satu yang paling sulit dijaga benar. Dokumen infrastruktur, yang digambar sekali, usang dalam hitungan minggu. Basis data komponen, yang dipelihara dengan tangan, salah dengan cara yang tak dapat dilihat siapa pun. Cara kerja agile dan cloud memperburuk ini dalam satu hal, dengan banyak bagian kecil yang berubah cepat, dan memperbaikinya dalam hal lain, karena konfigurasi dapat ditulis sebagai kode, disimpan dalam kendali versi, dan diterapkan secara otomatis.

Artikel Wikipedia bahasa Inggris tentang manajemen konfigurasi menggambarkannya sebagai proses manajemen untuk membangun dan menjaga konsistensi antara atribut produk dan persyaratan, desain, dan informasi operasionalnya sepanjang hidupnya, dengan akar di Departemen Pertahanan AS pada 1950-an. Artikel tentang basis data manajemen konfigurasi menjelaskan istilah ITIL untuk penyimpanan item konfigurasi dan hubungannya. Artikel tentang infrastruktur sebagai kode menjelaskan pengelolaan sumber daya lewat berkas definisi yang dapat dibaca mesin. Di antara ketiganya mereka memberi pandangan tradisional dan modern, dan topik ini menghubungkannya.

## Konsep inti

### Manajemen konfigurasi secara umum

Menurut Wikipedia, manajemen konfigurasi (CM) dipakai dalam sistem militer, dalam manajemen layanan TI di bawah ITIL, dan dalam teknik sipil. Sejarahnya bermula dengan Departemen Pertahanan AS pada 1950-an sebagai disiplin teknis untuk perangkat keras, dengan standar militer pada akhir 1960-an dan 1970-an menjadikannya disiplin tersendiri. Artikel menyebut beberapa standar, termasuk ANSI/EIA-649, ISO 10007 (edisi 2017), dan IEEE 828-2012. Disiplin inti yang didaftarnya, dari buku pegangan militer dan standar EIA, adalah:

| Disiplin | Apa yang dilakukannya |
|---|---|
| **Perencanaan dan manajemen** | Rencana yang mencakup orang, pelatihan, konvensi penamaan, audit, dan persyaratan vendor |
| **Identifikasi konfigurasi** | Menetapkan dan memelihara baseline yang mendefinisikan arsitektur dan komponen; produk yang dilacak adalah **item konfigurasi (CI)** |
| **Kendali konfigurasi** | Mengevaluasi permintaan perubahan dan menyetujui atau menolaknya |
| **Akuntansi status konfigurasi** | Mencatat dan melaporkan deskripsi CI dan penyimpangan dari baseline |
| **Verifikasi dan audit** | Pemeriksaan independen bahwa sistem cocok dengan dokumentasi dan persyaratannya |

**Baseline** adalah titik acuan yang disepakati; begitu atribut di-baseline, perubahan melalui kendali formal, dievaluasi, disetujui, lalu di-baseline ulang. Artikel membedakan manajemen konfigurasi dari manajemen aset, yang berfokus pada akuntansi keuangan dan nilai aset TI (lihat Topik 4.1 — Manajemen Aset TI).

### Manajemen konfigurasi perangkat lunak

Artikel menjelaskan manajemen konfigurasi perangkat lunak sebagai mengidentifikasi atribut perangkat lunak pada berbagai titik dan mengendalikan perubahan untuk menjaga integritas dan keterlacakan, dengan empat prosedur yang sama yaitu identifikasi, kendali, akuntansi status, dan audit. Sistem kendali versi, perkakas build, dan catatan rilis adalah contoh modernnya.

### Basis data manajemen konfigurasi

Wikipedia menjelaskan **basis data manajemen konfigurasi (CMDB)** sebagai istilah ITIL untuk basis data yang menyimpan informasi tentang aset perangkat keras dan perangkat lunak organisasi, yaitu CI, dan hubungan di antaranya. Ia "represents the authorized configuration of the significant components of the IT environment." Poin kunci dari artikel:

- **CI punya atribut** seperti pengenal, nama, deskripsi, kepemilikan, dan kepentingan, yang bisa mencapai ratusan.
- **Hubungan** biasanya menghubungkan CI sumber dengan CI target. Hubungan yang lebih canggih menambahkan deskriptor, seperti basis data menjadi komponen aplikasi.
- **Federasi:** implementasi sering memfederasi data dari sumber seperti manajemen aset, agar tiap sumber mempertahankan kendali atas datanya; artikel membandingkannya dengan menyalin data ke CMDB.
- **Pemakaian:** analisis dampak, analisis akar penyebab, manajemen perubahan, manajemen insiden, inventaris, dan build.
- **Jenis CI:** perangkat keras, perangkat lunak, komunikasi dan jaringan, lokasi, dokumentasi, dan orang; organisasi matang menambah jenis bisnis seperti produk dan vendor.
- **Tantangan:** relevansi (mengumpulkan data sepanjang siklus hidup tiap CI), pemeliharaan (menjaga kualitas data tinggi, yang memerlukan beberapa peran spesialis), dan kegunaan (CMDB sering basis data biasa yang kurang visualisasi, jadi lapisan aplikasi tambahan mungkin diperlukan).

Artikel menyebut penemuan CI otomatis dan pelacakan perubahan sebagai faktor keberhasilan kunci. Ia tidak menyatakan tanggal pendirian, versi ITIL tertentu, atau data adopsi, dan ditandai memerlukan lebih banyak kutipan. Ia juga mengatakan ITIL mengganti nama proses menjadi Service Asset and Configuration Management dalam ITIL versi 3 (ini dari artikel manajemen konfigurasi).

### Infrastruktur sebagai kode

Artikel tentang infrastruktur sebagai kode menjelaskan praktik mengelola dan menyediakan sumber daya pusat data lewat berkas definisi yang dapat dibaca mesin, alih-alih lewat penyiapan manual atau perkakas interaktif, dengan definisi disimpan dalam kendali versi. Ia membedakan:

- Pendekatan **deklaratif**, yang menjelaskan keadaan akhir yang diinginkan dan membiarkan sistem mencari langkahnya, dan pendekatan **imperatif**, yang menetapkan perintah berurutan. Artikel mengatakan IaC lebih sering memakai definisi deklaratif.
- Metode **push**, ketika sistem pengendali mengirim instruksi ke server, dan metode **pull**, ketika server mengambil instruksinya sendiri.

Ia menyebut banyak perkakas dari CFEngine (1993) sampai Terraform, Ansible, Puppet, Chef, Pulumi, dan OpenTofu, dan mengaitkan praktik ini dengan DevOps dengan melibatkan pengembang dalam konfigurasi dan membawa operasi lebih awal. Klaim manfaatnya, tentang biaya, kecepatan, dan galat manusia yang berkurang, ditandai memerlukan kutipan. Ia mengutip laporan Unit 42 tahun 2020 yang menemukan sekitar 200.000 potensi kerentanan dalam templat IaC, pengingat bahwa kode juga dapat membawa cacat. Artikel tidak menyebut drift konfigurasi atau idempotensi.

### Konfigurasi yang dideklarasikan dan yang ditemukan

Cara berguna memikirkan manajemen konfigurasi modern adalah bahwa ada dua sumber kebenaran, dan nilainya terletak pada membandingkannya:

| Sumber | Apa katanya | Kekuatan | Kelemahan |
|---|---|---|---|
| **Dideklarasikan** (kode, definisi dalam kendali versi) | Apa yang kita maksudkan dari sistem | Dapat ditinjau, berversi, dapat diulang | Mungkin tidak cocok dengan yang berjalan |
| **Ditemukan** (pemindaian, API cloud, agen) | Apa yang ada sekarang | Mencerminkan kenyataan | Tidak mengatakan apa yang dimaksudkan atau mengapa |

CMDB yang diberi masukan keduanya dapat menunjukkan **drift**, perbedaan antara keadaan yang dimaksudkan dan aktual. Sumber yang dibaca untuk panduan ini tidak memakai kata itu, tetapi ia menamai masalah yang dimaksudkan ditangkap oleh disiplin CM akuntansi status dan audit.

### Manajemen konfigurasi dan perubahan

Kendali konfigurasi dan pemampuan perubahan adalah mitra dekat (lihat Topik 3.4 — Pemampuan Perubahan). Disiplin CM mengatakan perubahan pada butir yang di-baseline dievaluasi dan disetujui. Dalam pengaturan berbasis pipeline, perubahan pada kode yang mendefinisikan infrastruktur ditinjau dan diuji seperti kode lain, dan catatan pipeline menunjukkan siapa mengubah apa dan kapan. CMDB atau padanannya lalu mencerminkan hasilnya.

### Pemakaian dalam manajemen layanan

Hubungan yang dicatat dalam data konfigurasi menjawab pertanyaan di seluruh praktik lain:

- **Insiden:** apa yang bergantung pada komponen yang gagal ini, dan siapa pemiliknya (lihat Topik 3.2 — Manajemen Insiden)?
- **Masalah:** komponen mana yang terlibat dalam insiden berulang (lihat Topik 3.3 — Manajemen Masalah)?
- **Perubahan:** seberapa luas dampak perubahan ini?
- **Kontinuitas:** apa yang harus dipulihkan, dan dalam urutan apa (lihat Topik 3.12 — Manajemen Kontinuitas Layanan)?
- **Keamanan:** apa yang terpapar, dan apa yang telah berubah?

### Batas sumber

Artikel manajemen konfigurasi ditandai mungkin memerlukan penulisan ulang dan sedikit berbicara tentang implementasi praktis. Artikel CMDB tidak punya bagian kritik dan sedikit kutipan. Pengalaman di lapangan adalah bahwa CMDB sering gagal karena mencoba menyimpan terlalu banyak, terlalu akurat, terlalu lama. Perlakukan itu sebagai pengalaman praktis yang ditawarkan panduan ini, bukan temuan dari sumber.

## Praktik terbaik

1. **Mulai dari pertanyaan yang perlu Anda jawab.** Daftar pertanyaan yang diajukan responder insiden, peninjau perubahan, dan perencana kontinuitas, seperti "apa yang bergantung pada ini?" dan "siapa pemiliknya?" Catat hanya yang menjawabnya.
2. **Tentukan sekumpulan kecil jenis item konfigurasi.** Mulailah dengan layanan, aplikasi, host atau kontainer, basis data, dan ketergantungan eksternal utama. Tambahkan jenis ketika pertanyaan menuntutnya.
3. **Catat hubungan, bukan hanya butir.** Tangkap butir mana yang bergantung pada mana dan layanan apa yang didukungnya. Hubungan membuat data berguna untuk analisis dampak.
4. **Tunjuk pemilik untuk setiap butir.** Butir tanpa pemilik adalah risiko. Jadikan kepemilikan bagian dari cara butir dibuat.
5. **Simpan konfigurasi yang dimaksudkan dalam kendali versi.** Ungkapkan infrastruktur dan konfigurasi sebagai kode, tinjau seperti kode lain, dan biarkan pipeline menerapkannya. Repositori lalu menjadi catatan maksud dan sejarah.
6. **Pakai penemuan untuk menemukan kenyataan.** Pindai jaringan dan akun cloud untuk melihat apa yang ada, dan bandingkan dengan konfigurasi yang dideklarasikan. Selidiki perbedaan (drift) alih-alih mengabaikannya.
7. **Federasikan alih-alih menyalin bila bisa.** Biarkan tiap sumber data (register aset, akun cloud, perkakas deployment) memiliki faktanya sendiri, dan tautkan dari data konfigurasi, seperti dijelaskan artikel CMDB.
8. **Otomatisasi pembaruan.** Beri masukan data konfigurasi dari pipeline dan dari penemuan agar berubah seiring sistem berubah. Pembaruan manual akan tertinggal.
9. **Baseline yang penting.** Untuk layanan kritis, catat konfigurasi yang disetujui dan terapkan kendali perubahan formal pada penyimpangan darinya. Untuk sisanya, kendali yang lebih ringan cukup.
10. **Audit secara berkala.** Bandingkan data dengan kenyataan untuk sampel butir setiap kuartal, dan perbaiki proses di balik perbedaan apa pun. Inilah disiplin verifikasi dan audit dalam praktik.
11. **Buat data mudah dipakai.** Sediakan visualisasi dan pencarian bagi responder dan perencana, karena data yang tak dapat dibaca cepat tidak akan dipakai.
12. **Jaga keamanan dalam pandangan.** Perlakukan kode konfigurasi sebagai sensitif, pindai templat untuk kelemahan, dan kendalikan siapa yang dapat mengubah baseline. Angka Unit 42 dalam artikel infrastruktur sebagai kode adalah pengingat risikonya.

## Pertanyaan untuk dibahas bersama tim Anda

**Ketika insiden terjadi, berapa lama kita mencari tahu apa yang bergantung pada komponen yang gagal?**

Lihat insiden terakhir dan waktu yang dihabiskan untuk pertanyaan ini. Tanyakan dari mana jawabannya berasal: diagram, orang, pencarian. Fasilitator dapat menanyakan apa yang akan menghemat waktu paling banyak. Sering kali itu daftar ketergantungan dan pemilik untuk layanan terpenting. Sepakati menghasilkan satu untuk satu layanan.

**Di mana infrastruktur kita didefinisikan, dan apakah itu cocok dengan yang berjalan?**

Tanyakan apakah lingkungan utama dibangun dari kode dan seberapa sering seseorang mengubahnya dengan tangan. Cari perbedaan. Jika Anda tidak tahu, rencanakan perbandingan untuk satu lingkungan. Bahas cara mencegah perubahan manual atau mendeteksinya dengan cepat.

**Butir mana dalam catatan konfigurasi kita yang tak punya pemilik atau belum dikonfirmasi belakangan ini?**

Ambil sampel dan hitung. Tanyakan mengapa dalam keadaan itu: tak ada proses untuk pemilik, tak ada pengingat, tak ada konsekuensi. Bahas mekanisme ringan, seperti konfirmasi tahunan atau tag pemilik yang diwajibkan saat pembuatan. Pilih satu.

**Data apa yang kita simpan yang tak dipakai siapa pun?**

Daftar kolom dan jenis catatan dan tanyakan siapa yang memakainya pada kuartal terakhir. Artikel CMDB menyebut pemeliharaan sebagai tantangan inti, dan data yang tak terpakai adalah biaya tanpa manfaat. Singkirkan atau berhenti memelihara apa yang tak dipakai siapa pun.

**Apa yang perlu kita lihat untuk menyetujui perubahan pada layanan kritis dengan yakin?**

Tanyakan kepada para peninjau. Jawaban lazim: apa yang disentuh perubahan, apa yang bergantung padanya, apa yang dilakukannya terakhir kali. Tanyakan mana yang dapat diberikan data konfigurasi. Pilih satu bagian yang hilang untuk ditambahkan.

**Siapa yang boleh mengubah baseline layanan kritis kita, dan bagaimana kita tahu ketika mereka melakukannya?**

Minta daftarnya dan bukti perubahan. Bahas apakah perubahan di luar pipeline terdeteksi. Sepakati bagaimana drift akan ditemukan dan siapa yang bertindak.

## Dalam praktik: contoh ITIL agile

Badan pajak nasional menjalankan 120 aplikasi dan campuran server lokal dan layanan cloud. Tim enam engineer operasi memelihara CMDB yang dimuat dari spreadsheet tiga tahun lalu. Selama insiden besar pada portal pengajuan, para engineer menemukan bahwa CMDB mendaftar server basis data yang dipensiunkan setahun sebelumnya dan menghilangkan load balancer yang sebenarnya gagal. Insiden memakan tiga jam lebih lama untuk diselesaikan karena selama itu pula waktu yang dibutuhkan untuk mencari tahu pada apa portal bergantung.

Kepala operasi dan seorang engineer meninjau pertanyaan apa yang diajukan responder. Mereka mempersempit cakupan CMDB menjadi layanan, aplikasi, komponen infrastruktur utama di baliknya, dan ketergantungan eksternal utama, dan membuang jenis bernilai rendah. Infrastruktur untuk portal pengajuan dipindahkan ke kode dalam kendali versi, dan pipeline menulis catatan setiap komponen yang di-deploy ke CMDB. Pemindaian penemuan jaringan dan akun cloud berjalan setiap malam, dan laporan mendaftar perbedaan antara data yang dideklarasikan dan yang ditemukan. Setiap butir punya kolom pemilik, yang juga diperiksa laporan. Tampilan ketergantungan sederhana untuk portal pengajuan dibangun dari data.

Satu kuartal kemudian, tampilan ketergantungan portal cukup akurat sehingga tim insiden berikutnya memakainya dalam sepuluh menit pertama. Laporan perbedaan malam menemukan 14 server tak terkelola, sebagian besar dipensiunkan atau diklaim pemilik. Masalah tersisa. Layanan di luar portal pengajuan masih mengandalkan data lama, dan satu tim terus membuat perubahan manual pada server basis data yang kemudian ditimpa pipeline, menyebabkan gangguan singkat. Kepala operasi memperluas pendekatan ke tiga layanan berikutnya, menambahkan aturan bahwa perubahan produksi melalui pipeline, dan meminta laporan penemuan menandai perubahan manual.

## Empat perspektif

### Tim produk dan pengiriman

Tim pengiriman mendefinisikan konfigurasi lewat kode. Taruh infrastruktur dan pengaturan dalam kendali versi, tinjau, dan biarkan pipeline menerapkannya. Beri tag pada sumber daya dengan pemilik dan layanan, dan jelaskan ketergantungan dalam repositori atau catatan layanan.

### Tim layanan dan operasi

Tim operasi memakai dan memelihara data konfigurasi. Jaga cakupan kecil, bandingkan konfigurasi yang dideklarasikan dan yang ditemukan, dan kejar drift. Alirkan apa yang Anda pelajari dari insiden kembali ke jenis dan hubungan yang Anda catat.

### Kepemimpinan dan tata kelola

Pemimpin memutuskan seberapa banyak upaya yang layak bagi data konfigurasi. Tanyakan keputusan apa yang didukungnya, seperti analisis dampak dan perencanaan kontinuitas, dan nilai dari pemakaian. Hindari mendanai basis data raksasa demi dirinya sendiri. Dukung kendali pipeline yang menjaga catatan tetap benar.

### Pelanggan dan pengguna

Pelanggan dan pengguna diuntungkan ketika insiden diselesaikan lebih cepat dan perubahan lebih jarang merusak, yang dibantu data konfigurasi yang baik. Mereka jarang melihat datanya. Tanyakan kepada penyedia bagaimana mereka tahu apa yang dipengaruhi perubahan dan bagaimana mereka menemukan penyebab gangguan.

## Pola kegagalan umum

- **Mencoba mencatat segalanya.** Datanya terlalu besar untuk dijaga benar. Sebaliknya, mulai dari pertanyaan dan layanan kritis.
- **Pemeliharaan manual.** Catatan tertinggal. Sebaliknya, beri masukan data dari pipeline dan dari penemuan.
- **Tanpa hubungan.** Butir didaftar tetapi tidak terhubung. Sebaliknya, tangkap ketergantungan dan layanan yang didukung tiap butir.
- **Tanpa pemilik.** Tak ada yang mengonfirmasi atau memperbaiki catatan. Sebaliknya, wajibkan pemilik dan periksa secara berkala.
- **Perubahan manual di luar pipeline.** Kenyataan dan maksud menyimpang. Sebaliknya, arahkan perubahan lewat pipeline dan deteksi drift.
- **Data tak terbaca.** Responder tidak dapat memakai basis data. Sebaliknya, sediakan pencarian dan visualisasi.
- **Menyalin alih-alih memfederasi.** Data duplikat menjadi usang. Sebaliknya, tautkan ke sumber yang memiliki faktanya.
- **Kode konfigurasi dianggap tak berbahaya.** Templat membawa kerentanan. Sebaliknya, pindai dan tinjau.

## Model kematangan

| Dimensi | Memulai | Mengembangkan | Menstandarkan | Mengelola | Mengorkestrasi |
|---|---|---|---|---|---|
| Cakupan dan hubungan | Komponen diketahui secara informal | Beberapa layanan punya daftar komponen | Layanan utama punya butir, pemilik, dan ketergantungan yang dicatat | Cakupan dan akurasi diukur dan celah ditutup | Data konfigurasi mencakup tim, cloud, dan pemasok |
| Konfigurasi yang dideklarasikan | Sistem dikonfigurasi dengan tangan | Beberapa lingkungan memakai kode | Infrastruktur dan konfigurasi untuk layanan utama adalah kode dalam kendali versi | Riwayat perubahan dan drift dilacak | Kode konfigurasi dibagikan dan dipakai ulang lintas tim |
| Penemuan dan verifikasi | Kenyataan diasumsikan | Pemindaian sesekali dijalankan | Penemuan rutin dibandingkan dengan data yang dideklarasikan | Perbedaan dan penyebabnya diukur dan dikurangi | Penemuan dan verifikasi diotomatisasi di seluruh organisasi |
| Pemakaian data | Data jarang dirujuk | Dipakai dalam beberapa insiden | Dipakai rutin untuk insiden, perubahan, dan perencanaan kontinuitas | Pemakaian dan manfaat diukur dan data diperbaiki | Data mendukung keputusan di seluruh organisasi dan dengan mitra |

## Daftar periksa

- [ ] Kami telah mendaftar pertanyaan yang membutuhkan data konfigurasi dari responder dan peninjau kami.
- [ ] Kami mencatat sekumpulan kecil jenis butir dengan pemilik dan hubungan.
- [ ] Infrastruktur dan konfigurasi untuk layanan utama ada dalam kendali versi.
- [ ] Perubahan produksi pada layanan itu melalui pipeline.
- [ ] Hasil penemuan dibandingkan dengan konfigurasi yang dideklarasikan menurut jadwal.
- [ ] Perbedaan (drift) diselidiki dan diperbaiki.
- [ ] Catatan diberi masukan otomatis dari pipeline dan penemuan bila memungkinkan.
- [ ] Sampel catatan diaudit terhadap kenyataan setiap kuartal.
- [ ] Data dapat dicari dan divisualisasikan dengan mudah oleh responder.
- [ ] Kode konfigurasi ditinjau dan dipindai untuk kelemahan.

## Prompt AI

**Tujuan: memutuskan apa yang dicatat dengan mendaftar pertanyaan yang perlu dijawab.**

```text
Help me decide what configuration data to record for [service].

The questions responders and change reviewers ask, in our words: [list].
What we record today: [describe, or write "nothing"].
Where data lives (tools, repositories, cloud accounts): [list].

For each question, say what item types and relationships would be needed to answer it, where the data could come from automatically, and what would still need a person. Propose a minimal set of item types and fields. Mark guesses. Do not invent tools we do not have. Ask clarifying questions first, and list what you are unsure of.
```

**Tujuan: merangkum drift antara konfigurasi yang dideklarasikan dan yang ditemukan.**

```text
Here is a list of items found by discovery and a list of items declared in our configuration code or records.

Discovered: [paste names or IDs, with type and key attributes].
Declared: [paste names or IDs, with type and key attributes].

Using only these lists, identify items found but not declared, items declared but not found, and items where attributes differ. Group them and suggest a question to ask about each group (for example whether it is retired, owned by someone else, or created by hand). Do not guess the cause. List what you are unsure of.
```

**Tujuan: membangun tampilan ketergantungan untuk satu layanan.**

```text
Help me describe the dependencies of [service] so that responders can use them in an incident.

What the service does: [describe].
Components I know (applications, databases, network, cloud services, external suppliers): [list with how they connect].
Owners I know: [list].

Produce a simple text diagram and a table with: component, what depends on it, owner (or "unknown"), and what to check first if it fails (only from my text; otherwise "ask owner"). Highlight single points of failure that appear in my description. Do not invent components. Ask clarifying questions first, and list what you are unsure of.
```

**Tujuan: merencanakan audit triwulanan atas catatan konfigurasi.**

```text
Plan a one-hour quarterly audit of our configuration records for [scope].

How records are created and updated today: [describe].
Sample size we can handle: [number].

Give a method: how to choose a sample, how to check each item against reality, what to record, how to calculate the share that is accurate (from the audit results only), and how to turn errors into process fixes. Keep it tool-free. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## Keterampilan AI

- [configuration-management](../../../../skills/configuration-management/SKILL.md): gunakan untuk merencanakan apa yang dicatat, bagaimana menjaganya benar, dan bagaimana memakainya.
- [change-request](../../../../skills/change-request/SKILL.md): gunakan untuk menulis catatan perubahan yang merujuk butir yang terdampak.
- [runbook](../../../../skills/runbook/SKILL.md): gunakan untuk mengubah pengetahuan konfigurasi menjadi langkah yang dapat diikuti responder.
- [enterprise-architecture](../../../../skills/enterprise-architecture/SKILL.md): gunakan untuk menempatkan layanan, aplikasi, dan infrastruktur dalam gambaran arsitektur.
- [evolutionary-architecture](../../../../skills/evolutionary-architecture/SKILL.md): gunakan untuk menjaga konfigurasi dan desain berubah dengan aman dari waktu ke waktu.

## Sumber utama

- **Configuration management** (Wikipedia): sejarah, disiplin inti, baseline, dan standar manajemen konfigurasi.
- **Configuration management database** (Wikipedia): definisi, isi, pemakaian, dan tantangan CMDB.
- **Infrastructure as code** (Wikipedia): mengelola sumber daya lewat definisi yang dapat dibaca mesin, dengan daftar perkakas dan catatan tentang manfaat dan risiko.
- **ITIL** (Wikipedia): kerangka kerja tempat CMDB dan manajemen konfigurasi muncul.

## Referensi

1. Configuration management — Wikipedia — https://en.wikipedia.org/wiki/Configuration_management
2. Configuration management database — Wikipedia — https://en.wikipedia.org/wiki/Configuration_management_database
3. Infrastructure as code — Wikipedia — https://en.wikipedia.org/wiki/Infrastructure_as_code
4. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
5. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
6. Software configuration management — Wikipedia — https://en.wikipedia.org/wiki/Software_configuration_management
7. Version control — Wikipedia — https://en.wikipedia.org/wiki/Version_control
8. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
9. Change management — Wikipedia — https://en.wikipedia.org/wiki/Change_management
