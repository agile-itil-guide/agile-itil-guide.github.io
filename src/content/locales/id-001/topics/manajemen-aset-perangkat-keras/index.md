# Manajemen Aset Perangkat Keras

**Manajemen aset perangkat keras mengikuti peralatan fisik dari pembelian sampai pembuangan, dan risiko diamnya adalah perangkat yang tak diketahui siapa pun, perangkat yang disimpan terlalu lama, dan perangkat yang pergi dengan data masih di dalamnya.**

## Mengapa ini penting

Perangkat keras masih penting di dunia yang mengutamakan cloud. Orang bekerja di laptop, ponsel, dan tablet. Jaringan berjalan di atas switch dan access point. Banyak organisasi menyimpan server, penyimpanan, dan peralatan khusus di lokasi. Ketika laptop hilang, server habis garansi, atau sekumpulan perangkat perlu diganti, pertanyaannya sama: apa yang kita punya, di mana, siapa yang memegangnya, berapa nilainya, dan apa yang disimpannya?

Manajemen perangkat keras yang buruk tampak dalam cara yang akrab. Staf menunggu peralatan karena tak ada yang tahu apa yang ada di gudang. Perangkat lama tetap dipakai karena tak ada yang punya data untuk membenarkan penggantian, lalu rusak pada saat yang canggung. Perangkat dibuang dengan data masih di dalamnya. Klaim garansi terlewat. Bagi tim agile, dampaknya adalah orientasi yang melambat, rilis yang gagal pada perangkat uji yang tak dipelihara, dan paparan keamanan yang tak dapat dilihat pipeline mana pun.

[Bagian Wikipedia tentang manajemen aset TI](https://en.wikipedia.org/wiki/IT_asset_management), yang berada dalam artikelnya tentang manajemen pusat data, menjelaskan manajemen aset perangkat keras sebagai mencakup komponen komputer dan jaringan fisik dari akuisisi sampai pembuangan, dengan praktik permintaan dan persetujuan, pengadaan, manajemen siklus hidup, penempatan ulang, dan pembuangan, dan mengatakan menangkap informasi keuangan sepanjang siklus hidup adalah komponen kunci. Ia singkat. Topik ini menambahkan artikel tentang limbah elektronik dan penghapusan data untuk pembuangan, dan panduan praktis yang diambil dari praktik umum, mengatakannya ketika melakukannya.

## Konsep inti

### Cakupan

Aset perangkat keras mencakup perangkat pengguna akhir (laptop, desktop, ponsel, tablet), server dan penyimpanan, peralatan jaringan, periferal, dan teknologi khusus atau operasional. Juga mencakup aksesori yang membuatnya dapat dipakai. Untuk masing-masing, organisasi ingin mengetahui dasarnya: apa itu, siapa yang bertanggung jawab, di mana, berapa biayanya, dan dalam keadaan apa.

### Siklus hidup perangkat keras

Bagian Wikipedia mendaftar permintaan dan persetujuan, pengadaan, manajemen siklus hidup, penempatan ulang, dan pembuangan. Perluasan praktis, yang dipakai luas dan ditawarkan di sini sebagai demikian:

| Tahap | Pertanyaan untuk dijawab | Catatan tipikal |
|---|---|---|
| **Permintaan dan persetujuan** | Apa yang dibutuhkan dan siapa yang menyetujui? | Permintaan, persetujuan, kode anggaran |
| **Pengadaan** | Apa yang kita beli, dari siapa, dengan syarat apa? | Pesanan, faktur, garansi, pemasok |
| **Terima dan siapkan** | Apakah tiba? Apakah dikonfigurasi dan diberi tag? | Nomor seri, tag aset, konfigurasi |
| **Tetapkan dan operasikan** | Siapa yang memegangnya? Untuk apa dipakai? | Pemilik atau pengguna, lokasi, layanan yang didukung |
| **Pelihara** | Bagaimana kondisi, garansi, dan status tambalannya? | Perbaikan, akhir garansi, status firmware |
| **Tempatkan ulang** | Bisakah orang lain memakainya? | Penghapusan, catatan penugasan ulang |
| **Pensiunkan dan buang** | Apakah data dihapus? Ke mana perginya? | Bukti penghapusan, catatan pembuangan |

### Informasi keuangan

Bagian Wikipedia menekankan menangkap informasi keuangan tentang siklus hidup perangkat keras. Fakta yang berguna mencakup biaya pembelian, penyusutan, biaya garansi dan dukungan, dan biaya menjaganya tetap berjalan. Ini memberi masukan pada keputusan penggantian dan anggaran (lihat Topik 4.5 — Manajemen Keuangan TI dan FinOps). Perangkat yang lebih mahal didukung daripada diganti adalah kandidat untuk dipensiunkan.

### Penggantian dan penyegaran

Organisasi umumnya mengganti peralatan dalam siklus, seperti setiap beberapa tahun untuk laptop. Sumber yang dibaca untuk panduan ini tidak menyatakan periode yang dianjurkan, dan selang yang tepat bergantung pada peralatan, pekerjaan, dan biaya kegagalan. Pendekatan berbasis data melihat laju kegagalan, biaya dukungan, dukungan keamanan, dan kinerja, dan mengganti ketika bukti mengatakannya. Siklus tetap lebih mudah direncanakan, dan yang berbasis bukti dapat menghemat uang atau menghindari kegagalan.

### Keamanan data di akhir masa pakai

Pembuangan adalah tempat manajemen perangkat keras bertemu keamanan informasi (lihat Topik 3.13 — Manajemen Keamanan Informasi). Artikel Wikipedia tentang penghapusan data menjelaskan penghapusan data sebagai metode perangkat lunak yang menimpa setiap sektor drive agar data yang tersimpan tidak dapat dipulihkan; penghapusan berkas biasa hanya menghapus penunjuk, dan perkakas umum sering dapat memulihkan datanya. Poin kunci dari artikel:

- **Penimpaan** membiarkan drive tetap dapat dipakai. **Degaussing** dan **penghancuran fisik** membuat media tak dapat dipakai dan menambah limbah elektronik.
- **Solid-state drive dan media flash** dapat mempertahankan data sisa yang terlewat penghapusan. Artikel mengutip studi 2011 yang menemukan bahwa perintah sanitize bawaan bekerja bila diimplementasikan dengan benar, sementara teknik perangkat lunak bekerja sebagian besar, tetapi tidak semua, waktu.
- **Enkripsi** menawarkan jalur lain: menghancurkan kunci drive yang mengenkripsi sendiri membuat datanya tidak dapat diakses.
- **Verifikasi dan sertifikat:** perangkat lunak yang baik harus memverifikasi bahwa penimpaan menjangkau seluruh perangkat, termasuk area tersembunyi, dan menerbitkan sertifikat validasi dan log sektor yang tidak dapat ditimpa.
- **Standar:** artikel mendaftar banyak, termasuk NIST Special Publication 800-88 (2006, direvisi 2014), yang dikutipnya mengatakan bahwa satu kali penimpaan dengan pola tetap seperti nol biner biasanya menghambat pemulihan. Artikel menyatakan bahwa satu kali umumnya cukup untuk hard drive modern.

Artikel ditandai memerlukan kutipan dan sebagian klaim diberi penanda. Periksa standar yang diwajibkan sektor atau negara Anda dan keadaan terkini untuk peralatan Anda; jangan mengandalkan ringkasan Wikipedia untuk keputusan kepatuhan.

### Limbah elektronik

Artikel Wikipedia tentang limbah elektronik mendefinisikannya sebagai perangkat listrik atau elektronik yang dibuang, termasuk butir yang ditujukan untuk dipakai ulang, dijual kembali, diselamatkan, didaur ulang, atau dibuang. Ia melaporkan sekitar 62 juta ton dihasilkan secara global pada 2022, naik 82 persen dari 2010, dengan hanya 22,3 persen yang dikumpulkan dan didaur ulang secara formal menurut studi 2024; ia juga mengutip angka lain yang bertentangan, dan memuat penanda pemeliharaan untuk klaim yang belum diverifikasi, jadi periksa angka terhadap sumber primer sebelum mengutipnya. Ia menjelaskan bahaya dari bahan seperti timbal, kadmium, merkuri, dan penghambat api, dan dari pemrosesan informal, dengan contoh dari Guiyu di Tiongkok dan Agbogbloshie di Ghana. Ia mencatat bahwa Konvensi Basel, diadopsi pada Maret 1989, mengatur perpindahan lintas batas limbah berbahaya, dan bahwa pendaur ulang bersertifikat di bawah skema seperti R2 dan E-Stewards harus menghancurkan semua data yang tersimpan pada elektronik. Pemakaian ulang memperpanjang usia perangkat dan menunda daur ulang.

Bagi organisasi, pelajarannya praktis: pilih mitra pembuangan yang bersertifikat dan dapat menunjukkan ke mana perangkat pergi, utamakan pemakaian ulang bila aman, dan simpan catatan. Hukum tentang limbah elektronik berbeda menurut negara dan wilayah; tanyakan fungsi kepatuhan Anda mana yang berlaku.

### Perangkat keras dan manajemen layanan

Catatan perangkat keras terkait dengan layanan: switch ini membawa layanan itu, server ini menjadi host aplikasi itu. Kaitan itu mengubah register aset menjadi alat untuk respons insiden, perencanaan perubahan, dan penilaian risiko (lihat Topik 4.4 — Manajemen Konfigurasi). Tanpanya, perangkat yang gagal hanyalah tiket; dengannya, ia adalah pernyataan dampak.

### Agile dan perangkat keras

Tim agile memperlakukan perangkat keras sebagai kendala untuk dirancang di sekitarnya, bukan peristiwa utama. Cloud dan virtualisasi mengurangi kawasan fisik, tetapi tidak sampai nol. Perangkat uji untuk aplikasi seluler, agen build, peralatan lab, dan perangkat edge semuanya perlu dilacak. Perlakukan sebagai aset dengan pemilik dan siklus hidup, dan jangan tinggalkan di lemari.

## Praktik terbaik

1. **Beri tag dan catat setiap perangkat yang penting.** Tetapkan tag aset unik atau catatan seri saat penerimaan, dan catat jenis, pemilik, lokasi, dan status. Jadikan ini langkah pertama setelah pengiriman.
2. **Kaitkan perangkat dengan orang dan layanan.** Catat siapa yang memegang tiap perangkat dan layanan apa yang didukungnya, dan perbarui saat perpindahan dan perubahan. Pakai proses karyawan keluar untuk mengambil kembali peralatan dan mencabut akses.
3. **Simpan data keuangan bersama aset.** Catat biaya, garansi, syarat dukungan, dan penyusutan. Pakai untuk membandingkan perbaikan, dukungan, dan penggantian.
4. **Pakai penemuan untuk menemukan yang tak dikenal.** Bandingkan register dengan penemuan jaringan dan titik akhir, dan selidiki perangkat tak dikenal dengan segera (lihat Topik 4.1 — Manajemen Aset TI).
5. **Pantau kondisi dan status dukungan.** Lacak tanggal akhir garansi, status dukungan firmware dan keamanan, dan riwayat kegagalan. Rencanakan penggantian sebelum perangkat gagal atau kehilangan dukungan.
6. **Ganti berdasarkan bukti.** Lihat data kegagalan dan dukungan, kinerja, dan dukungan keamanan untuk memutuskan penggantian, bukan hanya usia. Tinjau kebijakan setahun sekali.
7. **Siapkan perangkat secara konsisten.** Pakai build standar dan pendaftaran otomatis agar perangkat baru tiba siap, dengan kendali keamanan terpasang.
8. **Tempatkan ulang bila aman.** Hapus dan tugaskan ulang perangkat yang masih memenuhi kebutuhan, dengan catatan penghapusan. Hindari timbunan peralatan tak terpakai.
9. **Hapus data dengan benar dan simpan bukti.** Pakai metode yang sesuai jenis perangkat dan sensitivitas data, verifikasi, dan simpan sertifikat atau log. Untuk penyimpanan flash, pakai perintah sanitize yang didukung perangkat atau penghancuran kunci sebagaimana mestinya (lihat catatan penghapusan data di atas).
10. **Pilih mitra pembuangan dengan cermat.** Utamakan pendaur ulang bersertifikat, tanyakan ke mana perangkat dan bahan pergi, dan simpan catatan. Sertakan syarat penghancuran data dalam kontrak.
11. **Rencanakan perangkat hilang dan dicuri.** Punya cara cepat untuk melapor, kunci atau penghapusan jarak jauh bila tersedia, dan aturan kapan memperlakukan kehilangan sebagai insiden keamanan (lihat Topik 3.2 — Manajemen Insiden).
12. **Tinjau secara berkala.** Setidaknya dua kali setahun, periksa sampel register terhadap kenyataan fisik untuk kelas perangkat utama, dan perbaiki proses di balik celah apa pun.

## Pertanyaan untuk dibahas bersama tim Anda

**Jika kita menghitung setiap perangkat yang kita miliki hari ini, apakah akan cocok dengan register?**

Pilih satu lantai, tim, atau gudang dan lakukan hitungan cepat terhadap register. Perbedaannya adalah pelajarannya. Tanyakan ketidakcocokan mana yang paling penting: perangkat dengan data di dalamnya, perangkat yang tak ditambal. Fasilitator dapat menanyakan apa yang menghalangi orang memperbarui register pada saat perubahan. Pilih satu proses untuk diperketat.

**Apa yang kita lakukan dengan laptop ketika seseorang pergi?**

Telusuri langkahnya: siapa yang mengambil, ke mana perginya, siapa yang menghapus, siapa yang memperbarui catatan. Celah sering muncul antartim. Minta contoh terakhir dan telusuri. Sepakati satu pemilik dan daftar periksa.

**Bagaimana kita memutuskan kapan mengganti peralatan?**

Minta aturan saat ini dan sumbernya. Sering kali itu usia tetap yang ditetapkan seseorang lama lalu. Bahas data apa yang Anda punya tentang kegagalan, biaya dukungan, dan dukungan keamanan. Bandingkan dengan biaya mengganti terlalu dini atau terlambat. Sepakati data apa yang dikumpulkan.

**Bagaimana kita akan membuktikan bahwa data pada perangkat yang kita buang telah dihancurkan?**

Ambil pembuangan terbaru dan tanyakan bukti apa yang ada. Jika jawabannya "pendaur ulang bilang begitu," bahas apa yang seharusnya dimuat sertifikat atau log. Tanyakan metode apa yang dipakai untuk penyimpanan solid-state. Sepakati standar minimum dan bukti.

**Perangkat kita yang mana yang habis garansi atau dukungan keamanan, dan apa yang bergantung padanya?**

Daftar perangkat yang mendekati akhir dukungan. Tanyakan apa yang didukung masing-masing. Perangkat tanpa dukungan di balik layanan penting adalah risiko. Rencanakan penggantian menurut urutan dampak dan putuskan di mana tindakan kompensasi diperlukan.

**Siapa yang menangani perangkat hilang atau dicuri, dan seberapa cepat?**

Tanyakan bagaimana pengguna melaporkan kehilangan dan apa yang terjadi berikutnya. Periksa apakah kunci atau penghapusan jarak jauh tersedia dan apakah ada yang mencobanya. Bahas kapan kehilangan menjadi insiden keamanan. Sepakati langkah pertama yang jelas bagi pengguna.

## Dalam praktik: contoh ITIL agile

Otoritas kesehatan provinsi memasok sekitar 4.000 laptop dan tablet kepada perawat komunitas, yang mengunjungi pasien di rumah. Perangkat sering hilang atau rusak. Catatan otoritas menunjukkan 4.300 perangkat, tetapi service desk meyakini mengelola lebih sedikit. Tinjauan keamanan menemukan bahwa sejumlah laptop yang didaftar sebagai dipensiunkan terlihat dipakai, dan bahwa timbunan perangkat lama di lemari masih berisi data pasien.

Kepala layanan pengguna akhir menetapkan program kecil. Setiap perangkat mendapat tag unik dan catatan yang tertaut ke perawat dan tim yang disebut namanya. Perkakas penemuan membandingkan register dengan perangkat yang terhubung ke jaringan, dan daftar bulanan perangkat yang tak cocok dikirim ke manajer tim, yang punya dua minggu untuk menjelaskan atau mengembalikannya. Perangkat didaftarkan otomatis dengan enkripsi aktif dan perangkat lunak standar, sehingga laptop yang hilang mengungkap sedikit. Daftar periksa karyawan keluar menambahkan pengembalian perangkat sebagai langkah yang ditandatangani manajer. Untuk pensiun, otoritas berkontrak dengan pendaur ulang bersertifikat yang menghapus drive, menghancurkan yang tak dapat dihapus, dan memberi sertifikat untuk tiap batch. Lemari dikosongkan dan isinya dihapus dan dicatat.

Dalam enam bulan register dan penemuan cocok dalam margin kecil, dan laptop yang hilang dikunci dari jarak jauh dalam sejam dalam kebanyakan kasus. Beberapa masalah tersisa. Perawat kadang berbagi perangkat pada shift sibuk, sehingga kolom pemilik salah, dan sertifikat pendaur ulang mendaftar batch tetapi bukan perangkat individual, yang ditanyakan auditor. Kepala layanan pengguna akhir memperkenalkan catatan perangkat bersama dengan tanda keluar harian dan meminta pendaur ulang menyertakan nomor seri pada sertifikat. Ia juga memutuskan meninjau kebijakan penggantian memakai data kegagalan tahun pertama, alih-alih mempertahankan usia tetap.

## Empat perspektif

### Tim produk dan pengiriman

Tim pengiriman memegang perangkat uji, server build, dan peralatan lab. Daftarkan, beri pemilik, dan pensiunkan dengan benar. Beri tahu manajemen aset ketika Anda butuh perangkat, agar pasokan sesuai proyek.

### Tim layanan dan operasi

Operasi dan service desk menjalankan sebagian besar siklus hidup: membangun, men-deploy, mendukung, dan memensiunkan. Jaga catatan mutakhir pada tiap langkah, pakai penemuan untuk menangkap celah, dan simpan bukti pembuangan. Bagikan data kondisi dan kegagalan kepada siapa pun yang merencanakan penggantian.

### Kepemimpinan dan tata kelola

Pemimpin memutuskan anggaran penggantian dan selera risiko. Minta jumlah perangkat yang tanpa dukungan, proses untuk perangkat hilang, dan bukti penghancuran data. Dukung penyegaran berbasis bukti dan kendali kecil, seperti tag dan daftar periksa, yang menjaga catatan tetap benar.

### Pelanggan dan pengguna

Pengguna memegang peralatan sehari-hari. Rawat, laporkan kehilangan atau kerusakan dengan cepat, dan kembalikan peralatan ketika Anda pergi. Beri tahu desk jika Anda berbagi perangkat atau pindah lokasi, agar catatan benar.

## Pola kegagalan umum

- **Peralatan tanpa tag.** Perangkat tidak dapat dibedakan. Sebaliknya, beri tag dan catat saat penerimaan.
- **Catatan usang.** Perpindahan dan karyawan keluar tidak tertangkap. Sebaliknya, kaitkan pembaruan dengan peristiwa seperti proses masuk, pindah, dan keluar.
- **Penyegaran usia tetap tanpa data.** Perangkat diganti terlalu dini atau terlalu terlambat. Sebaliknya, tinjau data kegagalan, biaya, dan dukungan.
- **Pembuangan lemah.** Data tetap pada perangkat yang dibuang. Sebaliknya, hapus dan verifikasi dengan metode yang sesuai media, simpan bukti, dan pakai mitra bersertifikat.
- **Mengabaikan penyimpanan flash.** Penimpaan diasumsikan bekerja. Sebaliknya, pakai perintah sanitize atau penghancuran kunci dan verifikasi.
- **Timbunan.** Perangkat tak terpakai menumpuk. Sebaliknya, tempatkan ulang atau pensiunkan menurut jadwal.
- **Tanpa kaitan ke layanan.** Perangkat yang gagal hanyalah tiket. Sebaliknya, catat layanan yang didukung tiap perangkat.
- **Daur ulang tanpa sertifikasi.** Peralatan berakhir di tempat yang tak diketahui siapa pun. Sebaliknya, pilih mitra bersertifikat dan tanyakan ke mana bahan pergi.

## Model kematangan

| Dimensi | Memulai | Mengembangkan | Menstandarkan | Mengelola | Mengorkestrasi |
|---|---|---|---|---|---|
| Inventaris dan pelacakan | Perangkat diketahui secara informal | Register mencakup perangkat utama | Setiap perangkat diberi tag dan dicatat, direkonsiliasi dengan penemuan | Akurasi dan celah diukur dan dikoreksi | Inventaris mencakup perangkat milik, sewa, dan mitra dengan data bersama |
| Siklus hidup dan penyegaran | Penggantian terjadi saat gagal | Beberapa perangkat mengikuti rencana penyegaran | Langkah siklus hidup dan kebijakan penyegaran ditetapkan | Data kegagalan dan biaya mendorong keputusan penggantian | Penyegaran direncanakan di seluruh organisasi bersama pemasok dan keuangan |
| Pembuangan dan perlindungan data | Pembuangan ad hoc | Beberapa perangkat dihapus | Metode penghapusan standar dan pembuangan bersertifikat dengan bukti | Bukti pembuangan diaudit dan celah ditutup | Pembuangan dikoordinasikan dengan mitra dan program pemakaian ulang |
| Kaitan dengan layanan dan keuangan | Perangkat tidak dikaitkan dengan layanan atau biaya | Beberapa data biaya disimpan | Perangkat dikaitkan dengan pemilik, layanan, dan biaya | Data biaya dan dukungan ditinjau dan dipakai dalam anggaran | Data aset dibagikan dengan keuangan, keamanan, dan pemasok secara terus-menerus |

## Daftar periksa

- [ ] Setiap perangkat yang kami lacak punya tag unik atau catatan seri dan pemilik atau pengguna yang ditunjuk.
- [ ] Perangkat dikaitkan dengan layanan yang didukungnya.
- [ ] Penemuan dibandingkan dengan register setidaknya setiap bulan untuk jenis perangkat utama.
- [ ] Tanggal akhir garansi dan dukungan dicatat dan ditinjau.
- [ ] Kebijakan penggantian kami berbasis data dan ditinjau tahunan.
- [ ] Proses karyawan keluar dan pindah mengambil kembali atau menugaskan ulang perangkat.
- [ ] Penghapusan data memakai metode yang sesuai media, dengan verifikasi dan catatan.
- [ ] Mitra pembuangan bersertifikat dan memberi bukti per perangkat atau batch.
- [ ] Perangkat hilang dan dicuri dapat dilaporkan dengan cepat dan dikunci atau dihapus dari jarak jauh bila tersedia.
- [ ] Sampel register diperiksa terhadap kenyataan fisik dua kali setahun.

## Prompt AI

**Tujuan: merekonsiliasi hitungan fisik dengan register.**

```text
I have a physical count of devices in [location or team] and the register entries for the same scope.

Physical count (tag or serial, type, who has it): [paste].
Register (tag or serial, type, owner, status): [paste]. 

Using only these lists, identify items present physically but missing from the register, items in the register but not found, and items where the owner or status differs. For each group, suggest a question to ask. Do not guess about items that cannot be matched. List what you are unsure of.
```

**Tujuan: menyiapkan tinjauan penggantian berbasis data.**

```text
Help me prepare a replacement review for [device class, e.g. "field laptops"].

Data we have (age, repairs, failures, support tickets, warranty end, security support end, cost): [paste a table of real data].
Current replacement rule and its source: [paste, or write "unknown"].
Budget limits: [describe, or write "unknown"].

Using only this data, describe patterns by age group (for example failure and repair counts), identify devices near end of support, and suggest questions about whether the current rule fits. Do not invent failure rates or costs. If the data are too thin, say what to collect. List what you are unsure of.
```

**Tujuan: menulis daftar periksa pembuangan perangkat dengan persyaratan bukti.**

```text
Help me write a disposal checklist for [device type, e.g. "laptops and phones"].

Data sensitivity: [describe].
Storage types: [for example hard drives, SSDs, phones with encrypted storage].
Disposal partner and what they provide: [describe, or write "not yet chosen"].
Rules we must follow, with source text: [paste, or write "none known"].

Produce a checklist covering authorization, removal of accounts and licenses, data erasure or destruction method by storage type, verification, evidence kept (certificate content, serial numbers), disposal route, and register update. Mark steps that are assumptions. Do not state that any law or standard requires a method unless I pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Tujuan: merencanakan respons perangkat hilang.**

```text
Draft a short response procedure for a lost or stolen [device type].

What controls exist today (encryption, remote lock, remote wipe, location): [describe, or write "unknown"].
Data the device may hold: [describe].
Who is told today: [list].

Write steps for the user, the service desk, and security: how to report, what to do in the first hour, when to treat the loss as a security incident, and how to record it. Leave any notification duty as [CHECK WITH LEGAL] unless I give the source text. Ask clarifying questions first, and list what you are unsure of.
```

## Keterampilan AI

- [configuration-management](../../../../skills/configuration-management/SKILL.md): gunakan untuk mengaitkan perangkat dengan layanan yang didukungnya.
- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): gunakan untuk merencanakan berapa banyak peralatan yang dibutuhkan dan kapan.
- [budget-forecasting](../../../../skills/budget-forecasting/SKILL.md): gunakan untuk memperkirakan biaya penyegaran dan dukungan.
- [data-governance](../../../../skills/data-governance/SKILL.md): gunakan untuk memutuskan siapa memiliki data pada perangkat dan bagaimana dilindungi saat pensiun.
- [vendor-management](../../../../skills/vendor-management/SKILL.md): gunakan untuk memilih dan meninjau pemasok perangkat keras dan mitra pembuangan.

## Sumber utama

- **IT asset management** (Wikipedia): definisi dan deskripsi manajemen aset perangkat keras, dalam artikel tentang manajemen pusat data.
- **Data erasure** (Wikipedia): metode, standar, verifikasi, dan kasus khusus penyimpanan solid-state.
- **Electronic waste** (Wikipedia): skala, bahaya, daur ulang, dan Konvensi Basel, dengan catatan tentang angka yang bertentangan.
- **Guidelines for Media Sanitization** (NIST Special Publication 800-88): panduan primer yang dikutip artikel Wikipedia; baca revisi terkini sebelum menetapkan standar.

## Referensi

1. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
2. Data erasure — Wikipedia — https://en.wikipedia.org/wiki/Data_erasure
3. Electronic waste — Wikipedia — https://en.wikipedia.org/wiki/Electronic_waste
4. Basel Convention — Wikipedia — https://en.wikipedia.org/wiki/Basel_Convention
5. Data center management — Wikipedia — https://en.wikipedia.org/wiki/Data_center_management
6. Total cost of ownership — Wikipedia — https://en.wikipedia.org/wiki/Total_cost_of_ownership
7. Mobile device management — Wikipedia — https://en.wikipedia.org/wiki/Mobile_device_management
8. Information security — Wikipedia — https://en.wikipedia.org/wiki/Information_security
