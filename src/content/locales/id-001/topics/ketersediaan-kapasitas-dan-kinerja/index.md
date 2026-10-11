# Ketersediaan, Kapasitas, dan Kinerja

**Ketersediaan, kapasitas, dan kinerja adalah tiga pandangan tentang apakah layanan ada, cukup besar, dan cukup cepat ketika pengguna membutuhkannya, dan pendekatan agile adalah memilih target dari kebutuhan pengguna, menghargainya dengan jujur, dan mengujinya sebelum permintaan tiba.**

## Mengapa ini penting

Pengguna tidak memisahkan ketiganya. Layanan yang "aktif" tetapi terlalu lambat untuk dipakai telah mengecewakan mereka, dan layanan yang cepat di hari sepi dan tumbang saat puncak telah mengecewakan mereka pada saat mereka paling membutuhkannya. Tim yang melihat ketersediaan, kapasitas, dan kinerja secara terpisah sering melewatkan cara keduanya berinteraksi: menambah kapasitas mengubah biaya dan kompleksitas, mengejar ketersediaan sempurna membatasi seberapa cepat Anda dapat berubah, dan menyetel kecepatan dapat mengurangi ketahanan.

Tim agile menghadapi versi khusus dari masalah ini. Mereka sering mengubah layanan, dan setiap perubahan dapat mengubah kinerja atau kebutuhan sumber daya dengan cara yang tidak diuji siapa pun. Mereka juga cenderung bekerja dengan cakrawala waktu pendek, sehingga kebutuhan kapasitas yang memerlukan berbulan-bulan untuk diatur, seperti perangkat keras, kontrak, atau lisensi, dapat terlewat. Praktik dalam topik ini memberi cara melihat ke depan tanpa kembali ke perencanaan jangka panjang demi dirinya sendiri.

Buku *Site Reliability Engineering* Google, dalam bab "Embracing Risk," adalah sumber yang jelas tentang ekonomi ketersediaan: ia mengatakan pendekatannya tidak bertujuan pada keandalan 100%, karena melewati satu titik memaksimalkan stabilitas membatasi seberapa cepat fitur baru dapat dikembangkan, dan biaya keandalan naik curam. [Artikel Wikipedia tentang perencanaan kapasitas](https://en.wikipedia.org/wiki/Capacity_planning) memberi definisi dan strategi umum. Keduanya parsial, dan kosakata ITIL yang dipakai di sini berasal dari deskripsi yang banyak diterbitkan yang tidak dapat dipastikan panduan ini terhadap teks pemilik kerangka kerja.

## Konsep inti

### Ketersediaan

**Ketersediaan** adalah kemampuan layanan melakukan apa yang dibutuhkan pengguna ketika mereka membutuhkannya. Cara umum menyatakannya adalah sebagai persentase atas suatu periode. Bab SRE mencatat dua cara mengukurnya. Untuk satu sistem, ketersediaan berbasis waktu: 99,99% mengizinkan sekitar 52,56 menit waktu henti tak terencana per tahun. Untuk layanan terdistribusi yang sebagian aktif setiap saat, lebih baik diukur sebagai laju keberhasilan permintaan atas jendela bergulir; contoh bab adalah layanan dengan 2,5 juta permintaan harian dan target 99,99%, yang mengizinkan hingga 250 kesalahan. Bab berfokus pada waktu henti tak terencana. Waktu henti terencana memerlukan perjanjian tersendiri dengan pengguna.

### Harga setiap sembilan tambahan

Bab mengatakan biaya keandalan naik secara nonlinear: satu sembilan tambahan mungkin berbiaya 100 kali kenaikan sebelumnya, termasuk sumber daya redundan dan biaya peluang engineer yang tidak membangun fitur yang menghadap pengguna. Ia memberi ilustrasi: menaikkan ketersediaan dari 99,9% ke 99,99% pada layanan dengan pendapatan $1 juta bernilai sekitar $900, sehingga investasi hanya membayar jika sembilan tambahan berbiaya lebih rendah dari itu. Angkanya adalah contoh sumber, dan angka Anda sendiri harus berasal dari pendapatan atau nilai Anda sendiri. Prinsipnya berlaku: pilih ketersediaan yang dibutuhkan pengguna, dan hargai apa pun di luarnya.

### Toleransi risiko

Bab menjelaskan bekerja dengan product owner untuk mengubah tujuan bisnis menjadi sasaran eksplisit. Faktornya mencakup ketersediaan yang dibutuhkan, bentuk kegagalan (laju kesalahan rendah konstan versus gangguan penuh sesekali, dengan paparan data sangat parah), biaya, dan ukuran lain seperti latensi. Ia mencatat bahwa infrastruktur yang melayani banyak klien dapat ditawarkan pada tingkat layanan yang didefinisikan secara eksplisit, sehingga tiap klien memilih tingkat termurah yang memenuhi kebutuhannya.

### Anggaran kesalahan

Bab menjelaskan anggaran kesalahan sebagai ukuran bersama yang objektif antara tim produk, yang diukur pada kecepatan, dan tim keandalan, yang diukur pada keandalan. Selama anggaran masih ada, rilis berlanjut. Ketika habis, rilis melambat dan upaya berpindah ke keandalan (lihat Topik 3.7 — Manajemen Tingkat Layanan).

### Kapasitas

Artikel Wikipedia mendefinisikan perencanaan kapasitas sebagai menentukan kapasitas produksi yang dibutuhkan organisasi untuk memenuhi permintaan yang berubah, dan mengatakan bahwa dalam TI ia adalah sinonim manajemen kapasitas: memperkirakan sumber daya penyimpanan, perangkat keras, perangkat lunak, dan konektivitas yang dibutuhkan selama periode mendatang. Artikel membedakan **kapasitas desain**, keluaran maksimum yang mungkin, dari **kapasitas efektif**, keluaran setelah kendala. Dalam praktik, rencanakan untuk kapasitas efektif, yang selalu lebih rendah dari angka desain.

### Strategi kapasitas

Artikel menjelaskan empat strategi untuk menambah kapasitas:

| Strategi | Artinya | Pertukaran |
|---|---|---|
| **Lead** | Tambah kapasitas mendahului permintaan | Layanan baik dan lead time pendek, tetapi berisiko jika permintaan tak terprediksi |
| **Lag** | Tambah kapasitas hanya setelah berjalan pada atau melampaui kapasitas penuh | Risiko membangun berlebihan lebih rendah, tetapi dapat kehilangan pelanggan |
| **Match** | Tambah kapasitas dalam peningkatan kecil seiring permintaan berubah | Seimbang, memerlukan pemantauan yang baik |
| **Adjustment** | Tambah atau kurangi kapasitas dalam jumlah kecil atau besar seiring permintaan atau arsitektur berubah | Fleksibel, memerlukan penyediaan cepat |

Artikel menjelaskan perencanaan jangka pendek, menengah, dan panjang (operasional, taktis, dan strategis), dari hari sampai tahun. Dalam pengaturan cloud, "match" dan "adjustment" sering lebih mudah karena sumber daya dapat ditambah dengan cepat, tetapi biaya dan kontrak tetap perlu direncanakan (lihat Topik 4.5 — Manajemen Keuangan TI dan FinOps).

### Kinerja

**Kinerja** adalah seberapa cepat dan seberapa baik layanan merespons. Bab pemantauan buku SRE menyarankan mengukur latensi, lalu lintas, kesalahan, dan kejenuhan, dan memperingatkan bahwa rata-rata menyembunyikan pencilan lambat (lihat Topik 3.10 — Pemantauan dan Manajemen Peristiwa). Kejenuhan, seberapa "penuh" layanan, menghubungkan kinerja dengan kapasitas: bab mencatat bahwa kinerja sering menurun sebelum utilisasi 100%.

### Bagaimana ketiganya berinteraksi

- Kapasitas lebih besar dapat menaikkan ketersediaan dan kinerja, dengan biaya.
- Target ketersediaan tinggi biasanya memerlukan redundansi, yaitu kapasitas ekstra.
- Menyetel untuk kinerja puncak dapat mengurangi ruang untuk kegagalan.
- Perubahan pada layanan mengubah ketiganya, itulah sebabnya pengujian penting.

Disiplin yang berguna adalah menyatakan target bersama-sama untuk tiap layanan: seberapa tersedia, seberapa cepat, dan seberapa banyak beban yang harus dipikul.

### Permintaan dan perkiraan

Kapasitas bergantung pada permintaan. Permintaan datang dari pengguna dan dari bisnis: kampanye pemasaran, puncak musiman, pelanggan baru. Bisnis tahu lebih banyak tentang masa depan daripada TI, jadi bertanyalah. Rencanakan dengan rentang alih-alih angka tunggal, dan tinjau ulang perkiraan secara berkala (lihat keterampilan perkiraan permintaan di bawah).

### Pengujian

Klaim kapasitas dan kinerja adalah hipotesis sampai diuji. Pengujian beban dan pengujian kinerja menerapkan permintaan realistis untuk melihat bagaimana layanan berperilaku, dan pengujian chaos memperkenalkan kegagalan untuk melihat apakah ketersediaan bertahan. Ini dapat menjadi bagian dari pipeline pengiriman.

### Batas sumber

Artikel Wikipedia tentang perencanaan kapasitas tidak menyebut manajemen kapasitas ITIL atau menganalisis kaitan antara kapasitas, kinerja, dan ketersediaan, dan bagian asetnya ditandai kurang kutipan. Bab SRE menjelaskan praktik organisasi yang sangat besar dengan ekonomi yang berbeda. Pakai untuk prinsip, bukan untuk angka.

## Praktik terbaik

1. **Nyatakan target ketersediaan, kinerja, dan beban bersama-sama.** Untuk tiap layanan, tulis seberapa tersedia ia harus, seberapa cepat harus merespons, dan seberapa banyak beban yang harus dipikul. Dasarkan pada kebutuhan pengguna dan sepakati dengan pemilik layanan dan pelanggan.
2. **Hargai target.** Perkirakan berapa biaya tingkat ketersediaan atau kecepatan tambahan, dalam uang dan dalam fitur yang tertunda. Bandingkan dengan apa yang akan diperoleh pengguna dan bisnis. Pakai angka Anda sendiri, bukan contoh dalam buku.
3. **Ukur ketersediaan dengan cara yang cocok dengan layanan.** Untuk layanan yang sebagian aktif setiap saat, pakai laju keberhasilan atas jendela bergulir seperti bab SRE. Untuk sistem sederhana, pakai ukuran berbasis waktu. Hitung waktu henti tak terencana dan terencana secara terpisah.
4. **Rencanakan untuk kapasitas efektif.** Perkirakan apa yang dapat dipikul layanan setelah kendala nyata seperti overhead, kegagalan komponen, dan pemeliharaan. Simpan margin.
5. **Pilih strategi kapasitas dengan sengaja.** Putuskan apakah akan lead, lag, atau match untuk tiap sumber daya, berdasarkan lead time, biaya kekurangan, dan biaya membangun berlebihan. Tuliskan pilihan dan tinjau ulang.
6. **Tanyakan kepada bisnis tentang permintaan.** Temui pimpinan pemasaran, penjualan, dan operasi dalam siklus teratur untuk mengetahui kampanye, peluncuran, dan puncak musiman. Catat beban yang diharapkan dengan rentang.
7. **Amati kejenuhan.** Lacak seberapa penuh sumber daya utama dan atur peringatan jauh sebelum titik kinerja menurun. Ketahui tingkat saat layanan Anda mulai melambat.
8. **Uji sebelum puncak.** Jalankan pengujian beban dan kinerja yang menyerupai lalu lintas nyata, mendahului puncak yang diketahui dan setelah perubahan signifikan. Perbaiki apa yang Anda temukan selagi masih ada waktu.
9. **Uji kegagalan, bukan hanya beban.** Latih kehilangan komponen, zona, atau pemasok di lingkungan aman dan lihat apakah ketersediaan bertahan (lihat keterampilan pengujian chaos di bawah).
10. **Sertakan kapasitas dalam pekerjaan perubahan dan rilis.** Tanyakan dalam desain dan tinjauan apakah perubahan mengubah kebutuhan sumber daya. Tambahkan pemeriksaan kinerja ke pipeline untuk jalur yang penting (lihat Topik 3.5 — Manajemen Rilis dan Deployment).
11. **Pakai anggaran kesalahan untuk menyelesaikan pertukaran.** Ketika ada anggaran, habiskan untuk perubahan. Ketika habis, habiskan upaya untuk keandalan dan kapasitas. Tinjau aturan bersama pengiriman dan operasi.
12. **Tinjau perkiraan terhadap kenyataan.** Setiap kuartal, bandingkan permintaan yang diprediksi dan aktual dan sesuaikan metode Anda. Perlakukan kejutan sebagai informasi.

## Pertanyaan untuk dibahas bersama tim Anda

**Apa yang benar-benar dibutuhkan pengguna kita dalam ketersediaan, kecepatan, dan kapasitas, dan siapa yang memutuskan?**

Minta target saat ini dan dari mana asalnya. Sering kali ditetapkan lama lalu, atau oleh tim tanpa bertanya kepada pengguna. Tanyakan kepada pengguna dan pelanggan apa yang paling menyakitkan. Bahas apakah target cocok. Fasilitator dapat menanyakan apa yang akan terjadi jika target satu langkah lebih rendah, dan apa yang akan dibebaskan.

**Berapa harga sembilan berikutnya bagi kita?**

Pilih layanan dengan target ketersediaan tinggi. Perkirakan berapa biaya menaikkan atau menurunkannya satu langkah, dalam uang dan pekerjaan yang tertunda. Bandingkan dengan nilai bagi pengguna. Contoh bab SRE menunjukkan seberapa cepat aritmetika dapat berbalik melawan target yang lebih tinggi. Lakukan perhitungan dengan angka Anda sendiri dan catat asumsinya.

**Apa puncak permintaan berikutnya yang kita ketahui, dan apa yang telah kita lakukan untuk bersiap?**

Daftar puncak yang diketahui: kampanye, tenggat, lonjakan musiman. Untuk masing-masing, tanyakan siapa yang tahu beban yang diharapkan dan apakah layanan telah diuji pada tingkat itu. Sering kali tak ada yang bertanya. Sepakati orang yang mengumpulkan angka dan tanggal pengujian.

**Di mana layanan kita paling dekat dengan kejenuhan, dan apa yang terjadi ketika sampai di sana?**

Tanyakan sumber daya yang paling banyak dipakai. Lihat trennya. Tanyakan apa yang dilakukan layanan pada batas itu: melambat, galat, atau gagal. Jika tak ada yang tahu, ujilah. Pilih ambang untuk bertindak dan peringatan untuknya.

**Dari perubahan kita beberapa waktu terakhir, mana yang memengaruhi kinerja atau kapasitas, dan apakah kita tahu sebelumnya?**

Tinjau perubahan terbaru dan tanyakan bagaimana kinerja diperiksa. Jika tidak, bahas pemeriksaan ringan seperti apa. Pilihan lazim adalah pengujian pada jalur kritis atau canary release dengan pemantauan. Sepakati satu untuk rilis berikutnya.

**Jika satu komponen gagal sekarang, apa yang terjadi pada ketersediaan?**

Ambil layanan utama dan telusuri kegagalan basis data, zona, atau pemasok. Tanyakan apa yang diasumsikan desain dan apa yang telah diuji. Celah antara asumsi dan bukti adalah risiko. Rencanakan satu pengujian kegagalan terkendali di lingkungan aman.

## Dalam praktik: contoh ITIL agile

Otoritas pensiun nasional menjalankan layanan daring tempat warga memeriksa hak mereka dan mengajukan formulir. Layanan itu tenang sepanjang tahun kecuali pada minggu setelah laporan tahunan diposting, ketika lalu lintas naik beberapa kali lipat dari normal. Tahun lalu layanan melambat sampai banyak pengguna menyerah, dan pusat panggilan kewalahan. Tim platform sembilan orang dan manajer operasi ingin menghindari pengulangan.

Tim mulai dengan meminta kantor komunikasi memperkirakan beban. Kantor mengatakan laporan akan dikirim dalam dua batch dan memberi tanggal, tetapi tanpa angka. Tim memperkirakan rentang dari data tahun lalu dan menetapkan tujuan: halaman formulir harus merespons dalam waktu yang dapat diterima untuk puncak yang diharapkan, dan layanan harus tetap tersedia sepanjang dua batch. Mereka menjalankan pengujian beban pada salinan produksi dan menemukan bahwa basis data adalah sumber daya pertama yang jenuh, jauh di bawah puncak yang diprediksi. Mereka mengadopsi strategi "lead" untuk basis data, karena lead time menambah kapasitas panjang, dan strategi "match" untuk server web, yang dapat ditambah dalam hitungan menit. Pengujian kegagalan menunjukkan bahwa kehilangan satu node basis data memangkas kapasitas separuh, yang tidak dapat diterima pada puncak, sehingga mereka menambahkan cadangan.

Pada puncak, layanan tetap aktif dan waktu respons bertahan di batch pertama. Pada batch kedua, komponen konfirmasi pembayaran yang tidak pernah diuji siapa pun melambat di bawah beban, dan sebagian pengguna melihat keterlambatan. Tim tidak mengetahui batas ketergantungan ini dan tidak diberi tahu bahwa batch kedua akan lebih besar. Mereka menambahkan komponen itu ke pengujian beban berikutnya, meminta volume tiap batch lebih awal dari kantor komunikasi, dan menyepakati meninjau proses perkiraan pada kuartal berikutnya.

## Empat perspektif

### Tim produk dan pengiriman

Tim pengiriman memengaruhi ketiganya melalui desain dan perubahan. Sertakan kinerja dan kapasitas dalam tinjauan desain dan dalam pipeline. Beri tahu operasi tentang perubahan yang mengubah beban, dan tanyakan kepada bisnis tentang permintaan yang diharapkan.

### Tim layanan dan operasi

Tim operasi biasanya memikul pemantauan dan rencana kapasitas. Lacak kejenuhan dan tren, simpan pandangan atas lead time sumber daya, dan bawa bukti ke perencanaan. Bantu bisnis memahami berapa biaya tiap tingkat ketersediaan.

### Kepemimpinan dan tata kelola

Pemimpin menetapkan harga yang bersedia mereka bayar untuk keandalan dan kecepatan. Minta target yang sesuai kebutuhan pengguna, dengan biaya, dan terimalah bahwa ketersediaan sempurna bukan tujuan yang masuk akal. Dukung pengujian sebelum puncak yang diketahui dan anggaran untuk ketahanan di tempat yang penting.

### Pelanggan dan pengguna

Pelanggan dan pengguna merasakan hasilnya. Beri tahu penyedia ketika Anda mengharapkan beban tambahan, seperti kampanye atau tenggat, dan apa yang paling penting bagi Anda dalam kecepatan dan ketersediaan. Laporkan kelambatan selain gangguan, karena keduanya kegagalan dari sisi Anda.

## Pola kegagalan umum

- **Target dari kebiasaan.** "Lima sembilan" dituntut tanpa bertanya mengapa. Sebaliknya, turunkan target dari kebutuhan pengguna dan hargai.
- **Puncak mengejutkan.** Bisnis tahu tentang kampanye dan TI tidak. Sebaliknya, bertemu dalam siklus teratur dan catat beban yang diharapkan.
- **Rata-rata untuk kinerja.** Pencilan lambat tak terlihat. Sebaliknya, lihat persentil tinggi dan kejenuhan.
- **Kapasitas ditambah hanya setelah masalah.** Strategi lag dipakai tanpa sengaja. Sebaliknya, pilih strategi dengan sengaja, berdasarkan lead time.
- **Ketahanan yang tak teruji.** Redundansi ada di atas kertas. Sebaliknya, uji kegagalan komponen di lingkungan aman.
- **Perubahan tanpa pemeriksaan kinerja.** Rilis menurunkan kecepatan. Sebaliknya, tambahkan pemeriksaan ke pipeline untuk jalur yang penting.
- **Melupakan ketergantungan.** Komponen pihak ketiga membatasi seluruh layanan. Sebaliknya, daftar ketergantungan dan uji.
- **Memperlakukan perkiraan sebagai tetap.** Rencana mengabaikan galat. Sebaliknya, pakai rentang dan bandingkan perkiraan dengan kenyataan.

## Model kematangan

| Dimensi | Memulai | Mengembangkan | Menstandarkan | Mengelola | Mengorkestrasi |
|---|---|---|---|---|---|
| Target dan biaya | Target informal atau disalin | Beberapa layanan punya target yang dinyatakan | Layanan punya target ketersediaan, kinerja, dan beban yang disepakati dengan biaya yang diketahui | Target dan biaya ditinjau terhadap hasil | Target ditetapkan bersama pelanggan dan pemasok dan disesuaikan dengan bukti |
| Permintaan dan perencanaan kapasitas | Kapasitas ditambah setelah masalah | Beberapa tim memperkirakan puncak yang diketahui | Permintaan dikumpulkan dari bisnis dalam siklus, dengan strategi kapasitas yang dinyatakan | Akurasi perkiraan dilacak dan metode diperbaiki | Perencanaan dikoordinasikan lintas tim, pemasok, dan bisnis |
| Pengujian | Sedikit pengujian beban atau kegagalan | Beberapa pengujian sebelum acara besar | Pengujian beban dan kegagalan rutin untuk layanan utama | Hasil pengujian mendorong perbaikan yang dilacak | Pengujian dibagikan dan dikoordinasikan lintas layanan yang saling bergantung |
| Pemantauan dan respons | Masalah diketahui terlambat | Sebagian kejenuhan dilacak | Kejenuhan, latensi, dan kesalahan dipantau dengan peringatan sebelum batas | Tren dan ambang disetel dari data | Sinyal dan respons dikoordinasikan lintas tim dan pemasok |

## Daftar periksa

- [ ] Setiap layanan punya target yang dinyatakan untuk ketersediaan, kinerja, dan beban, dengan sumbernya.
- [ ] Kami telah memperkirakan berapa biaya tingkat ketersediaan berikutnya.
- [ ] Kami tahu bagaimana ketersediaan diukur untuk tiap layanan, dan apa yang dihitung sebagai waktu henti.
- [ ] Kami telah memilih strategi kapasitas untuk tiap sumber daya utama.
- [ ] Kami bertemu dengan bisnis secara berkala untuk mengetahui permintaan yang diharapkan.
- [ ] Kejenuhan sumber daya utama dipantau dengan peringatan sebelum batas.
- [ ] Pengujian beban telah dijalankan sebelum puncak yang diketahui terakhir.
- [ ] Kegagalan setidaknya satu komponen utama telah diuji di lingkungan aman.
- [ ] Perubahan yang memengaruhi kinerja atau kapasitas ditandai dalam tinjauan.
- [ ] Perkiraan dibandingkan dengan permintaan aktual setiap kuartal.

## Prompt AI

**Tujuan: mengubah data terukur menjadi pandangan ruang kapasitas.**

```text
Here are the measurements for [resource, e.g. "database CPU"] for [service] over [period]: [paste real values or summary figures such as daily peak and average].
Known limit at which performance degrades, if you know it: [paste, or write "unknown"].
Expected demand change: [describe, with source].

Using only my data, describe the trend and how much headroom there appears to be at the observed peak, in plain words. Show how headroom would change if demand grew by the amounts I gave. Do not invent limits or growth rates. Say what extra data would make the analysis more reliable, and list what you are unsure of.
```

**Tujuan: menghargai target ketersediaan yang lebih tinggi.**

```text
Help me compare the cost and value of raising the availability target for [service] from [current target] to [proposed target].

What the service is worth, with source (revenue, cost of an outage, or other value; use only figures I provide): [paste].
What the extra availability would require (redundancy, staff, tools), with cost estimates I have: [paste, or write "unknown"].
Current measured availability: [paste].

Calculate the allowed unplanned downtime or error count at each target using only the numbers I gave, show the difference, and compare with the value and cost figures if I provided them. State your assumptions. Do not invent costs or revenue. Ask clarifying questions first, and list what you are unsure of.
```

**Tujuan: merencanakan pengujian beban sebelum puncak yang diketahui.**

```text
Plan a load test for [service] before this event: [describe the peak, with date and source of the expected load].

Architecture, in brief: [describe components, dependencies, and suppliers].
Expected load range, with the source: [paste].
Test environment available: [describe].

Give a plan with: goals, what to measure (latency distribution, errors, saturation), scenarios to run, how to ramp up, what to do with results, and risks to production or to suppliers (for example agreements that need to be made before testing). Do not invent figures. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Tujuan: merancang pengujian kegagalan.**

```text
Help me design a controlled failure test for [service].

What I want to learn: [for example whether availability holds if one database node fails].
Environment for the test: [describe, e.g. a production-like test environment].
Safeguards available: [monitoring, rollback, people on hand].

Describe a step-by-step test plan: hypothesis, what to break and how, what to observe, who is present, what stops the test, and how to record what happened. Keep it away from production unless I say it is safe. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## Keterampilan AI

- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): gunakan untuk memperkirakan sumber daya yang dibutuhkan layanan dari waktu ke waktu dan memilih strategi menambahkannya.
- [demand-forecasting](../../../../skills/demand-forecasting/SKILL.md): gunakan untuk memperkirakan beban mendatang sebagai rentang dari data masa lalu dan rencana bisnis.
- [load-testing](../../../../skills/load-testing/SKILL.md): gunakan untuk merancang pengujian yang menerapkan permintaan realistis sebelum puncak.
- [performance-testing](../../../../skills/performance-testing/SKILL.md): gunakan untuk memeriksa kecepatan dan pemakaian sumber daya pada jalur kritis sebagai bagian dari pengiriman.
- [chaos-testing](../../../../skills/chaos-testing/SKILL.md): gunakan untuk menguji apakah ketersediaan bertahan ketika komponen gagal.

## Sumber utama

- **Embracing Risk** (*Site Reliability Engineering*, Google, sre.google): ekonomi ketersediaan, pengukuran berbasis permintaan, dan anggaran kesalahan.
- **Capacity planning** (Wikipedia): definisi dan strategi lead, lag, match, dan adjustment.
- **Monitoring Distributed Systems** (*Site Reliability Engineering*, Google, sre.google): sinyal emas termasuk kejenuhan.
- **High availability** (Wikipedia): latar belakang merancang sistem untuk operasi berkelanjutan.

## Referensi

1. Embracing Risk — Google SRE book, sre.google — https://sre.google/sre-book/embracing-risk/
2. Capacity planning — Wikipedia — https://en.wikipedia.org/wiki/Capacity_planning
3. Monitoring Distributed Systems — Google SRE book, sre.google — https://sre.google/sre-book/monitoring-distributed-systems/
4. Service Level Objectives — Google SRE book, sre.google — https://sre.google/sre-book/service-level-objectives/
5. High availability — Wikipedia — https://en.wikipedia.org/wiki/High_availability
6. Scalability — Wikipedia — https://en.wikipedia.org/wiki/Scalability
7. Load testing — Wikipedia — https://en.wikipedia.org/wiki/Load_testing
8. Chaos engineering — Wikipedia — https://en.wikipedia.org/wiki/Chaos_engineering
9. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
