# Manajemen Tingkat Layanan

**Manajemen tingkat layanan mengubah apa yang dibutuhkan pengguna menjadi target yang dapat diukur dan dibela tim, dan bentuk yang paling berguna bagi tim agile adalah sejumlah kecil sasaran yang berfokus pada pengguna dengan anggaran kegagalan yang eksplisit.**

## Mengapa ini penting

Setiap layanan punya tingkat kualitas, entah ada yang mengukurnya atau tidak. Jika tidak dinyatakan, pengguna mengasumsikan satu dan tim mengasumsikan yang lain, dan celahnya ditemukan saat gangguan. Manajemen tingkat layanan adalah praktik menyatakan tingkat itu, mengukurnya, dan bertindak atas hasilnya. Ia memberi tim sesuatu untuk mengarahkan dan memberi pelanggan sesuatu untuk diandalkan.

Tim agile sering menolak tingkat layanan karena mengaitkannya dengan kontrak dan penalti. Namun tim agile yang merilis setiap minggu sedang membuat keputusan, disadari atau tidak, tentang seberapa banyak risiko yang diambil terhadap ketersediaan. Sasaran yang jelas membuat keputusan itu eksplisit. Buku *Site Reliability Engineering* Google, dalam babnya tentang sasaran tingkat layanan, menjelaskan cara melakukannya dengan cara yang cocok untuk tim yang bergerak cepat: pilih beberapa indikator yang penting bagi pengguna, tetapkan target, dan pakai ruang antara sempurna dan dapat diterima, anggaran kesalahan, untuk memutuskan kapan merilis.

Topik ini menggabungkan bab itu dengan [artikel Wikipedia tentang perjanjian tingkat layanan](https://en.wikipedia.org/wiki/Service-level_agreement) untuk definisi perjanjian, dan dengan kosakata ITIL yang dipakai luas yang tidak dapat dipastikan panduan ini terhadap teks pemilik kerangka kerja. Bab SRE mencerminkan praktik satu organisasi dan membela pendekatan tertentu; bacalah sebagai pilihan yang dijelaskan dengan baik, bukan aturan universal.

## Konsep inti

### Indikator, sasaran, perjanjian

Bab SRE membedakan tiga istilah yang sering kacau:

| Istilah | Arti | Contoh |
|---|---|---|
| **Indikator tingkat layanan (SLI)** | Ukuran kuantitatif yang didefinisikan dengan cermat atas suatu aspek tingkat layanan | Pecahan permintaan yang terbentuk baik yang berhasil |
| **Sasaran tingkat layanan (SLO)** | Nilai atau rentang target untuk sebuah SLI | Setidaknya 99,9% permintaan berhasil dalam sebulan |
| **Perjanjian tingkat layanan (SLA)** | Kontrak eksplisit atau implisit dengan pengguna yang mencakup konsekuensi memenuhi atau melewatkan sasaran, paling sering finansial | Pengembalian dana jika ketersediaan turun di bawah tingkat yang dinyatakan |

Ujian bab itu untuk membedakan SLA dari SLO adalah apakah ada konsekuensi eksplisit. Jika tidak, itu SLO. Angka contoh dalam tabel adalah ilustrasi, bukan rekomendasi.

Artikel Wikipedia menggambarkan SLA sebagai perjanjian, biasanya kontrak yang mengikat, antara penyedia dan pelanggan yang mendefinisikan aspek layanan seperti kualitas, ketersediaan, dan tanggung jawab. Ia mendaftar isi yang tipikal: deskripsi layanan, tingkat kinerja, pemantauan dan pelaporan, cara masalah dilaporkan, kerangka waktu respons dan penyelesaian, dan konsekuensi atas kinerja yang tidak terpenuhi. Ia menyebut metrik umum seperti mean time between failures, mean time to repair, uptime, first-call resolution, dan turnaround time. Ia mencatat bahwa organisasi besar sering memakai SLA internal antarunit. Ia menjelaskan jenis menurut cakupan: berbasis pelanggan, berbasis layanan, dan multitingkat.

### Memilih indikator

Bab SRE menyarankan memilih beberapa indikator yang mencerminkan apa yang dipedulikan pengguna, bukan setiap metrik yang dapat Anda lacak. Sistem yang menghadap pengguna biasanya berfokus pada ketersediaan, latensi, dan throughput. Sistem penyimpanan menambahkan ketahanan, dan semua sistem harus melacak kebenaran. Ia menyarankan bahwa pengukuran di sisi klien dapat menangkap masalah yang terlewat metrik sisi server. Konsekuensi praktis bagi tim layanan: mulailah dari pengalaman pengguna, seperti "Saya bisa memesan janji temu dan memakan waktu beberapa detik," lalu temukan indikator yang memperkirakannya.

### Rata-rata menyembunyikan rasa sakit

Bab itu berargumen melawan mengandalkan rata-rata: "Most metrics are better thought of as distributions rather than averages." Persentil tinggi, seperti ke-99 atau ke-99,9, menunjukkan kasus terburuk yang masuk akal, sementara median menunjukkan kasus tipikal. Rata-rata dapat menyembunyikan ekor panjang permintaan lambat. Jika ukuran Anda adalah rata-rata, beberapa pengguna bisa mengalami waktu yang sangat buruk tanpa angka bergerak.

### Memilih target

Panduan bab itu tentang target langsung dan berguna:

- **Mulai dari pengguna.** "Start by thinking about (or finding out!) what your users care about, not what you can measure."
- **Jangan berpatokan pada kinerja saat ini.** Memilih target berdasarkan apa yang Anda capai sekarang dapat mengunci upaya heroik.
- **Jaga tetap sederhana.** Agregasi rumit mengaburkan perubahan dan lebih sulit dinalar.
- **Hindari mutlak.** Janji "selalu" tersedia tidak realistis.
- **Miliki SLO sesedikit mungkin.** Masing-masing harus layak dibela dalam diskusi prioritas.
- **Kesempurnaan bisa menunggu.** Lebih baik mulai dengan target longgar yang Anda perketat daripada yang nanti harus dilonggarkan.

### Anggaran kesalahan

Bab itu mengatakan menuntut kepatuhan 100% tidak realistis dan memperlambat inovasi. Sebaliknya, tim mengizinkan **anggaran kesalahan**: laju SLO boleh terlewat, dilacak harian, mingguan, atau bulanan. Anggaran memberi tahu keputusan tentang rilis. Ketika masih banyak anggaran tersisa, tim dapat mengambil lebih banyak risiko dengan perubahan; ketika hampir habis, tim memperlambat perubahan dan berinvestasi pada keandalan. Ini memberi tim agile dan operasi cara numerik bersama untuk berdebat soal kecepatan versus stabilitas, sebagai ganti berdebat dengan otoritas.

### Menetapkan ekspektasi

Bab mencatat bahwa menerbitkan SLO menetapkan ekspektasi pengguna. Tim dapat menjaga margin pengaman dengan target internal yang lebih ketat. Bab juga memperingatkan agar tidak berprestasi berlebihan, karena pengguna mulai bergantung pada kinerja apa pun yang mereka amati. Jika layanan jauh lebih baik daripada sasaran yang dinyatakan, pengguna akan membangun di atasnya, dan sasaran tidak lagi melindungi tim.

### Putaran kendali

Bab menggambarkan SLI dan SLO sebagai dasar putaran kendali: pantau SLI, bandingkan dengan SLO, putuskan apakah tindakan diperlukan, cari tahu tindakan apa yang akan memenuhi target, dan lakukan. Tanpa SLO, tim tidak dapat tahu apakah atau kapan harus bertindak (lihat Topik 3.10 — Pemantauan dan Manajemen Peristiwa).

### Perjanjian internal dan eksternal

SLA berada antara penyedia dan pelanggan. Dalam sebuah penyedia, tim saling bergantung dan bergantung pada pemasok. Artikel Wikipedia menyebut bahwa SLA dapat didukung perjanjian tingkat operasional (OLA) tetapi tidak menjelaskannya. Dalam kosakata ITIL, OLA adalah perjanjian antartim internal yang mendukung SLA, dan kontrak penopang (underpinning contract) adalah padanannya dengan pemasok eksternal. Sumber yang dibaca di sini tidak memastikan definisi itu, jadi periksa terhadap publikasi ITIL. Poin praktisnya adalah janji kepada pelanggan hanya sebaik janji di belakangnya (lihat Topik 3.14 — Manajemen Pemasok).

### Ekspektasi tingkat layanan di Kanban

Di Kanban, **ekspektasi tingkat layanan** adalah perkiraan berapa lama item pekerjaan seharusnya memakan waktu, berdasarkan cycle time masa lalu (lihat Topik 1.5 — Kanban). Itu bukan perjanjian, tetapi melayani tujuan serupa untuk item pekerjaan, dan dapat memberi masukan pada target untuk permintaan dan insiden.

## Praktik terbaik

1. **Mulai dengan apa yang dibutuhkan pengguna.** Tanyakan kepada pengguna dan pelanggan apa yang paling penting dan apa yang menyakitkan ketika gagal. Tuliskan dalam kata-kata mereka sebelum memilih ukuran.
2. **Pilih beberapa indikator.** Untuk tiap layanan, pilih dua sampai empat indikator yang mencerminkan pengalaman pengguna, seperti tingkat keberhasilan dan kecepatan. Tahan menambah lebih banyak sampai Anda memakai yang ini.
3. **Pakai persentil untuk kecepatan.** Ukur ujung lambat distribusi, bukan hanya rata-rata, agar pengguna dengan pengalaman buruk terlihat.
4. **Tetapkan target longgar lebih dulu, lalu perketat.** Mulailah dengan target yang dapat Anda penuhi dan bela, dan perketat setelah Anda punya data dan keyakinan. Ini mengikuti saran bab bahwa kesempurnaan bisa menunggu.
5. **Jangan menyalin kinerja saat ini.** Jika layanan Anda saat ini sangat baik, jangan tetapkan sasaran pada tingkat itu kecuali pengguna membutuhkannya. Sasaran yang lebih longgar memberi ruang untuk perubahan dan menghindari upaya heroik.
6. **Sepakati anggaran kesalahan dan pakai.** Tentukan seberapa banyak kegagalan yang dapat diterima dalam satu periode, dan biarkan sisa anggaran memandu keputusan rilis. Tinjau dalam rapat berkala bersama pengiriman dan operasi.
7. **Tulis perjanjian dalam bahasa sederhana.** SLA harus menyatakan apa yang disediakan, bagaimana diukur, bagaimana masalah dilaporkan, apa yang terjadi ketika target terlewat, dan kapan ditinjau. Hindari istilah yang hanya dapat dibaca pengacara atau engineer.
8. **Pisahkan sasaran dari perjanjian.** Simpan sasaran internal yang lebih ketat daripada perjanjian yang Anda tandatangani. Margin memberi Anda ruang bereaksi sebelum Anda berutang apa pun.
9. **Ketahui pada apa janji Anda bergantung.** Daftar tim dan pemasok yang menjadi tumpuan tingkat layanan Anda, dan periksa bahwa komitmen mereka mendukung milik Anda.
10. **Laporkan dalam bentuk yang dapat dipakai pelanggan.** Bagikan hasil secara berkala, dengan komentar singkat tentang apa yang terjadi dan apa yang Anda lakukan. Hindari dasbor tanpa komentar.
11. **Tinjau target bersama pelanggan.** Setidaknya setahun sekali, tanyakan apakah tingkat masih cocok dengan apa yang dibutuhkan pelanggan dan apa yang dapat Anda kirim. Ubah ketika jawabannya tidak.
12. **Jangan pakai tingkat layanan untuk menghukum orang.** Gunakan untuk memulai percakapan dan keputusan. Target yang dipakai sebagai tongkat akan dimainkan (lihat Topik 5.6 — Metrik dan Pengukuran).

## Pertanyaan untuk dibahas bersama tim Anda

**Seperti apa hari yang baik bagi pengguna kita, dan bagaimana kita akan tahu?**

Minta tim menggambarkan, dalam kata-kata pengguna, seperti apa pengalaman baik atas layanan. Lalu tanyakan apa yang kita ukur yang bersesuaian. Sering kali ukuran yang kita punya menggambarkan sistem kita dan bukan pengalaman pengguna. Fasilitator dapat menanyakan apakah kita akan menyadari jika sekelompok pengguna mengalami hari yang buruk. Pilih satu indikator untuk ditambahkan atau diubah.

**Apakah kita punya angka yang kita janjikan atau bidik, dan siapa yang menyepakatinya?**

Daftar target yang ada, formal atau informal. Untuk masing-masing, tanyakan siapa yang menetapkan, kapan, dan atas dasar apa. Banyak target ternyata ditetapkan karena kebiasaan atau oleh seseorang yang sudah pergi. Bahas mana yang harus dikonfirmasi, diubah, atau dibuang. Sepakati siapa pemilik masing-masing.

**Berapa banyak kegagalan yang mampu kita tanggung, dan apa yang akan kita lakukan dengan ruangnya?**

Perkenalkan gagasan anggaran kesalahan. Tanyakan tingkat ketidaktersediaan yang akan ditoleransi pengguna dan apa yang dapat dilakukan tim dengan ruangnya, seperti rilis lebih cepat. Tujuannya melihat pertukaran dalam angka. Jangan mengharapkan jawaban presisi; minta tebakan pertama untuk diuji.

**Di mana rata-rata kita menyembunyikan pengalaman buruk?**

Lihat satu ukuran yang melaporkan rata-rata. Tanyakan apa yang dialami satu persen pengguna paling lambat. Jika Anda tidak tahu, bahas cara mencari tahu. Sering kali kelompok kecil pengguna atau waktu tertentu dalam sehari memiliki pengalaman jauh lebih buruk. Rencanakan melihat satu persentil selama sebulan.

**Pada apa kita bergantung yang belum kita tanyakan?**

Daftar layanan, pemasok, dan tim yang menjadi tumpuan layanan Anda. Untuk masing-masing, tanyakan apa yang mereka janjikan dan bagaimana Anda akan tahu jika mereka terlewat. Banyak ketergantungan tidak punya tingkat yang dinyatakan. Pilih yang terpenting dan buka percakapan.

**Kapan target terakhir berubah, dan apa pemicunya?**

Minta perubahan terakhir. Jika sudah lama, tanyakan apa yang telah berubah dalam kebutuhan pengguna atau kemampuan tim sejak itu. Bahas tinjauan berkala. Pemicu yang baik adalah kebutuhan pengguna baru, insiden yang mengungkap target tak realistis, atau perubahan arsitektur.

## Dalam praktik: contoh ITIL agile

Operator lotre nasional menjalankan layanan pembelian tiket daring. Tim dua belas orang membangun dan menjalankannya. Bisnis punya aturan informal bahwa layanan harus "selalu aktif," sementara tim merilis dua kali seminggu dan mengalami empat gangguan singkat dalam setahun. Setelah akhir pekan yang buruk, sponsor eksekutif menuntut "ketersediaan 100%," dan kepala tim khawatir hal itu akan mengakhiri rilis yang sering.

Kepala tim dan sponsor mengadakan lokakarya dengan kepala layanan pelanggan. Mereka bertanya apa yang penting bagi pemain. Jawabannya, pemain harus bisa membeli tiket dalam satu jam sebelum undian ditutup; di luar jam itu layanan boleh mati beberapa menit tanpa merugikan. Mereka mendefinisikan indikator: porsi upaya pembelian yang berhasil dalam dua jam sebelum setiap undian ditutup. Mereka menetapkan sasaran yang diyakini tim dapat dipenuhi, sedikit di bawah kinerja terbarunya, dan menyepakati anggaran kesalahan untuk tiap bulan. Mereka juga menyepakati bahwa ketika anggaran hampir habis, rilis yang menyentuh pembelian berhenti sampai bulan berikutnya, dan tim berinvestasi pada keandalan.

Tiga bulan kemudian anggaran habis satu kali, pada bulan dengan kegagalan penyedia pembayaran, dan tim menjeda rilis berisiko selama dua minggu tanpa konflik. Sasaran memberi tim dan sponsor cara bersama untuk berbicara. Beberapa kesulitan tersisa. Komitmen penyedia pembayaran sendiri lebih lemah daripada sasaran tim, sehingga janji tim bergantung pada pemasok yang belum menyetujuinya. Ukuran juga mengabaikan halaman checkout yang lambat yang dikeluhkan pengguna, karena hanya menghitung keberhasilan. Tim menambahkan indikator kecepatan pada persentil ke-99 dan membuka pembicaraan dengan penyedia tentang tingkat layanannya.

## Empat perspektif

### Tim produk dan pengiriman

Tim pengiriman sebaiknya membantu memilih indikator dan memakai anggaran kesalahan dalam perencanaan. Bangun pengukuran ke dalam layanan agar angkanya andal. Perlakukan anggaran yang habis sebagai alasan mengerjakan keandalan, bukan sebagai hukuman.

### Tim layanan dan operasi

Tim operasi biasanya menjalankan pemantauan dan melaporkan tingkat. Jaga kumpulan ukuran tetap kecil, tampilkan dengan komentar, dan bawa data ke percakapan perencanaan. Simpan daftar apa yang menjadi tumpuan layanan Anda dan periksa bahwa komitmennya sejalan.

### Kepemimpinan dan tata kelola

Pemimpin dan sponsor menetapkan ekspektasi. Hindari meminta kesempurnaan; tanyakan apa yang dibutuhkan pengguna dan berapa harga pertukarannya. Dukung pemakaian anggaran kesalahan sebagai aturan bersama, dan pastikan berlaku juga untuk permintaan Anda sendiri. Tinjau tingkat layanan bersama pelanggan menurut jadwal.

### Pelanggan dan pengguna

Pelanggan dan pengguna diuntungkan ketika tingkat layanan dinyatakan dan dipenuhi. Katakan apa yang penting bagi Anda, termasuk kapan. Minta laporan dalam bentuk yang dapat Anda pahami, dan beri tahu penyedia ketika tingkat yang dinyatakan tidak lagi sesuai kebutuhan Anda.

## Pola kegagalan umum

- **Terlalu banyak metrik.** Tak ada yang tahu mana yang penting. Sebaliknya, pilih beberapa yang mencerminkan pengalaman pengguna.
- **Hanya rata-rata.** Sekelompok pengguna menderita sementara rata-rata tampak baik. Sebaliknya, sertakan ukuran persentil tinggi.
- **Target disalin dari kinerja saat ini.** Tim terkunci dalam heroisme. Sebaliknya, tetapkan sasaran dari kebutuhan pengguna dan perketat dengan data.
- **Menuntut 100%.** Rilis berhenti dan inovasi melambat. Sebaliknya, sepakati anggaran kesalahan dan aturan memakainya.
- **Janji yang tak dapat didukung.** Tingkat layanan bergantung pada pemasok yang belum menyetujui. Sebaliknya, periksa ketergantungan dan selaraskan komitmen.
- **Perjanjian yang tak dibaca siapa pun.** Syarat dalam bahasa hukum. Sebaliknya, tulis dengan sederhana dan tinjau bersama pelanggan.
- **Dasbor tanpa komentar.** Angka dilaporkan tanpa makna. Sebaliknya, tambahkan penjelasan singkat tentang apa yang terjadi dan apa yang akan berubah.
- **Menghukum yang terlewat.** Orang menyembunyikan masalah. Sebaliknya, pakai yang terlewat untuk memicu keputusan dan pembelajaran.

## Model kematangan

| Dimensi | Memulai | Mengembangkan | Menstandarkan | Mengelola | Mengorkestrasi |
|---|---|---|---|---|---|
| Menentukan tingkat | Tingkat diasumsikan atau informal | Beberapa layanan punya target yang dinyatakan | Setiap layanan punya indikator dan sasaran berbasis pengguna dengan pemilik | Sasaran ditinjau terhadap kebutuhan pengguna dan data | Tingkat ditetapkan bersama pelanggan dan pemasok |
| Mengukur | Ukuran ad hoc | Beberapa indikator diukur | Indikator diukur secara andal, termasuk persentil | Kualitas pengukuran ditinjau dan celah diperbaiki | Pengukuran dibagikan dan divalidasi lintas tim dan pemasok |
| Memakai anggaran kesalahan | Kegagalan tak terencana | Beberapa tim membahas kegagalan yang dapat diterima | Anggaran memandu keputusan rilis pada layanan utama | Pemakaian anggaran ditinjau dan aturan disetel | Anggaran dikoordinasikan lintas layanan yang saling bergantung |
| Perjanjian dan ketergantungan | Janji informal | Beberapa perjanjian ada | Perjanjian dalam bahasa sederhana, dengan ketergantungan yang diketahui | Perjanjian dan komitmen pemasok diperiksa terhadap hasil | Perjanjian membentuk rantai yang konsisten lintas tim, pemasok, dan pelanggan |

## Daftar periksa

- [ ] Untuk tiap layanan, kami telah menggambarkan dalam kata-kata pengguna seperti apa yang baik.
- [ ] Setiap layanan punya dua sampai empat indikator yang mencerminkan pengalaman pengguna.
- [ ] Setidaknya satu ukuran kecepatan memakai persentil tinggi, bukan hanya rata-rata.
- [ ] Sasaran ditetapkan dari kebutuhan pengguna, bukan hanya dari kinerja saat ini.
- [ ] Anggaran kesalahan ada dan memandu keputusan rilis untuk setidaknya satu layanan.
- [ ] Perjanjian ditulis dalam bahasa sederhana dan ditinjau bersama pelanggan.
- [ ] Ketergantungan pada tim dan pemasok lain didaftar dengan komitmen mereka.
- [ ] Hasil dilaporkan secara berkala dengan komentar.
- [ ] Target ditinjau setidaknya setahun sekali.
- [ ] Data tingkat layanan dipakai dalam perencanaan dan bukan sebagai tongkat.

## Prompt AI

**Tujuan: mengubah kebutuhan pengguna menjadi kandidat indikator dan sasaran.**

```text
Help me move from user needs to indicators and objectives for [service].

What users do with the service and what matters to them (in their words, with any feedback or complaints): [paste].
Measurements we can already collect: [list].
Rules or contracts that set levels, with the source text: [paste, or write "none known"].

Propose two to four candidate indicators that reflect the user experience, say how each would be measured with the data I listed, and suggest how to express an objective for each, leaving numeric targets as [to be agreed with users and data]. Mark any indicator we cannot measure yet. Do not invent targets or performance figures. Ask clarifying questions first, and list what you are unsure of.
```

**Tujuan: menganalisis apakah rata-rata menyembunyikan pengalaman buruk.**

```text
Here are response times (or other measurements) for [service] over [period]: [paste a column of real values, or summary figures such as median, 90th, 99th percentile if you have them].

Using only my data, compute or describe the average, the median, and the high percentiles if the data allows. Explain in plain words what the gap between the average and the high percentiles suggests for users. Suggest one indicator and one question to ask. Do not invent data, and say if the data is too thin. List what you are unsure of.
```

**Tujuan: menyusun kerangka perjanjian tingkat layanan dalam bahasa sederhana.**

```text
Draft an outline for a service level agreement for [service] between [provider] and [customer].

What we provide: [describe].
Measures and targets already agreed or being proposed: [paste, or write "to be agreed"].
Support hours and contacts: [describe].
Dependencies on suppliers: [list].
Terms we must include because of contract or law, with source text: [paste, or write "none known"].

Produce an outline with plain-language sections: service description, hours, measures and how they are measured, how to report a problem, response and resolution expectations (marked [to be agreed]), what happens if targets are missed, reporting, review date. Do not invent legal terms. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Tujuan: merencanakan kebijakan anggaran kesalahan.**

```text
Help me draft an error budget policy for [service].

Objective and period: [for example, "success rate of purchase attempts in the two hours before a draw closes, measured monthly"].
Current performance if known: [paste, or write "unknown"].
Release rhythm: [describe].
Who decides, and who is affected: [roles].

Draft a one-page policy: how the budget is calculated from the objective, how its use is tracked and shown, what happens at three stages of consumption (use [to be agreed] for thresholds), who may override and how, and how the policy is reviewed. Do not invent numbers. Ask clarifying questions first, and list what you are unsure of.
```

## Keterampilan AI

- [service-level-agreement](../../../../skills/service-level-agreement/SKILL.md): gunakan untuk menyusun atau meninjau perjanjian dalam bahasa sederhana.
- [software-engineering-metrics](../../../../skills/software-engineering-metrics/SKILL.md): gunakan untuk memilih dan menafsirkan ukuran kinerja pengiriman dan layanan.
- [key-risk-indicators](../../../../skills/key-risk-indicators/SKILL.md): gunakan untuk memilih indikator peringatan dini yang menunjukkan tingkat layanan berisiko.
- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): gunakan untuk memeriksa bahwa kapasitas mendukung tingkat yang Anda janjikan.
- [vendor-management](../../../../skills/vendor-management/SKILL.md): gunakan untuk menyelaraskan komitmen pemasok dengan tingkat yang Anda tawarkan.

## Sumber utama

- **Service Level Objectives** (*Site Reliability Engineering*, Google, sre.google): penjelasan publik paling jelas tentang indikator, sasaran, perjanjian, persentil, dan anggaran kesalahan.
- **Service-level agreement** (Wikipedia): definisi, isi tipikal, jenis, dan sejarah SLA.
- **DORA's software delivery performance metrics** (dora.dev): ukuran terkait kecepatan dan stabilitas pengiriman.
- **Quality of service** (Wikipedia): latar belakang bagaimana kualitas layanan dijelaskan dan diukur.

## Referensi

1. Service Level Objectives — Google SRE book, sre.google — https://sre.google/sre-book/service-level-objectives/
2. Service-level agreement — Wikipedia — https://en.wikipedia.org/wiki/Service-level_agreement
3. DORA's software delivery performance metrics — DORA, dora.dev — https://dora.dev/guides/dora-metrics-four-keys/
4. Quality of service — Wikipedia — https://en.wikipedia.org/wiki/Quality_of_service
5. Percentile — Wikipedia — https://en.wikipedia.org/wiki/Percentile
6. Service-level objective — Wikipedia — https://en.wikipedia.org/wiki/Service-level_objective
7. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
8. Goodhart's law — Wikipedia — https://en.wikipedia.org/wiki/Goodhart%27s_law
9. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
