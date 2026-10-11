# Manajemen Kontinuitas Layanan

**Manajemen kontinuitas layanan menyiapkan organisasi untuk menjaga layanan terpentingnya tetap berjalan, atau memulihkannya dengan cepat, setelah gangguan serius, dan nilainya hanya terbukti lewat latihan, bukan oleh rencana yang tersimpan di rak.**

## Mengapa ini penting

Sebagian besar insiden kecil dan lokal. Beberapa tidak: kebakaran pusat data, wilayah cloud yang gagal, serangan ransomware, runtuhnya pemasok, pandemi, banjir. Peristiwa ini mengancam kemampuan organisasi untuk mengirim sama sekali, dan menanganinya memerlukan perencanaan yang tidak dicakup manajemen insiden biasa. Tim yang telah memikirkan sebelumnya apa yang paling penting dan bagaimana ia akan melanjutkan punya peluang jauh lebih baik untuk melewatinya.

Tim agile menemui subjek ini dengan tantangan khusus. Sistem mereka berubah setiap minggu, sehingga rencana kontinuitas yang ditulis sekali dan diarsipkan sudah usang dalam beberapa bulan. Langkah pemulihan yang bergantung pada server atau skrip tertentu mungkin tidak lagi valid. Jawaban agile bukan menyerah pada perencanaan tetapi menjadikan kontinuitas bagian hidup dari cara layanan dibangun dan dijalankan: pemulihan dirancang sejak awal, sering diuji, dan disimpan dalam kendali versi bersama kode.

[Artikel Wikipedia tentang perencanaan kontinuitas bisnis](https://en.wikipedia.org/wiki/Business_continuity_planning) mendefinisikan kontinuitas bisnis sebagai kemampuan organisasi untuk terus mengirim produk atau layanan pada tingkat yang dapat diterima setelah gangguan, dan memperlakukan perencanaan kontinuitas sebagai subset manajemen risiko. Halaman "Disaster recovery" Wikipedia bahasa Inggris hanya halaman disambiguasi, dengan pemberitahuan bahwa artikel lengkap diinginkan, jadi topik ini memakai artikel kontinuitas bisnis untuk definisi dan menambahkan panduan praktis dari topik lain panduan, mencatat di mana itu praktik dan bukan materi sumber yang dilaporkan.

## Konsep inti

### Kontinuitas, pemulihan, dan ketahanan

Istilah dipakai longgar, jadi pakailah dengan cermat:

| Istilah | Arti, seperti dipakai luas | Fokus |
|---|---|---|
| **Kontinuitas bisnis** | Kemampuan untuk terus mengirim produk atau layanan pada tingkat yang dapat diterima setelah gangguan | Menjaga organisasi tetap berjalan |
| **Perencanaan kontinuitas bisnis** | Membuat sistem pencegahan dan pemulihan untuk ancaman terhadap organisasi | Rencana dan pengaturan |
| **Pemulihan bencana TI** | Mempertahankan atau membangun kembali infrastruktur teknologi informasi yang vital (deskripsi pada halaman disambiguasi Wikipedia) | Teknologi |
| **Kontinuitas layanan (ITSM)** | Memastikan layanan TI dapat dipulihkan ke tingkat yang disepakati setelah gangguan | Layanan TI dalam rencana yang lebih besar |

Artikel Wikipedia mengatakan pemulihan bencana tumpang tindih dengan perencanaan kontinuitas bisnis, terutama dalam fase solusi, dan bahwa kontinuitas adalah hasil yang dimaksudkan dari menjalankan keduanya. Manajemen kontinuitas layanan adalah pandangan layanan TI atas tujuan yang sama.

### Analisis dampak bisnis

**Analisis dampak bisnis (BIA)** adalah, menurut artikel, metode mengidentifikasi dan mengevaluasi bagaimana gangguan memengaruhi operasi dan menetapkan prioritas pemulihan. Sasarannya mencakup mengidentifikasi aktivitas dan ketergantungan kritis, menilai dampak finansial, operasional, reputasi, dan hukum, menentukan sasaran pemulihan, dan memberi masukan pada penilaian risiko. Untuk layanan TI, BIA menanyakan layanan mana yang tidak dapat dilepaskan organisasi, dalam urutan apa harus kembali, dan pada apa masing-masing bergantung (lihat Topik 4.4 — Manajemen Konfigurasi untuk ketergantungan).

### Sasaran pemulihan

Artikel mendefinisikan dua istilah kunci:

- **Recovery time objective (RTO):** waktu yang dapat diterima untuk memulihkan suatu fungsi.
- **Recovery point objective (RPO):** jumlah latensi data yang dapat diterima, dengan kata lain berapa banyak kehilangan data yang dapat ditoleransi.

Artikel juga mendaftar periode gangguan maksimum yang dapat ditoleransi. Artikel tidak memberi metode memilih nilai ini untuk organisasi tertentu, jadi nilainya harus datang dari bisnis: tanyakan berapa biaya satu jam, satu hari, dan satu minggu gangguan, dan data apa yang mampu hilang bagi bisnis. Menetapkannya adalah keputusan bisnis dengan harga, karena biaya memenuhi sasaran yang lebih ketat naik (lihat Topik 3.11 — Ketersediaan, Kapasitas, dan Kinerja).

### Rencana

Rencana kontinuitas atau pemulihan menjelaskan siapa mengerjakan apa, dalam urutan apa, untuk memulihkan layanan kritis setelah gangguan. Rencana harus mencakup: bagaimana rencana dipanggil dan oleh siapa, bagaimana orang diberi tahu dan dikumpulkan, urutan pemulihan untuk layanan, di mana pemulihan akan terjadi, dari mana data berasal, bagaimana berkomunikasi dengan pelanggan dan staf, dan bagaimana kembali ke normal. Rencana untuk layanan TI harus tertaut ke runbook untuk sistem individual (lihat Topik 3.9 — Manajemen Pengetahuan).

### Pengujian dan latihan

Artikel mengutip buku British Standards Institution 2008 yang menjelaskan tiga jenis latihan: latihan **tabletop** ketika kelompok kecil membahas satu aspek rencana, latihan **menengah** ketika beberapa tim mengerjakan beberapa aspek dengan kejutan berskrip, dan latihan **kompleks** yang menambahkan aktivasi tanpa pemberitahuan, evakuasi nyata, dan pemakaian situs pemulihan bencana. Artikel menjelaskan pemeliharaan dalam siklus tahunan atau dua tahunan, termasuk menguji solusi teknis dan prosedur pemulihan, dengan temuan kembali ke fase analisis. Latihan adalah tempat rencana mengetahui bahwa ia salah.

### Tingkatan pemulihan

Artikel menyebut tujuh tingkatan pemulihan bencana SHARE (1992), kemudian diperbarui IBM menjadi delapan tingkatan (0 sampai 7). Sumber yang dibaca di sini tidak merinci tingkatan itu. Sebagai praktik umum, organisasi mengklasifikasikan layanan ke dalam tingkatan menurut seberapa cepat harus dipulihkan, dan mencocokkan pendekatan dan biaya pemulihan dengan tingkatan.

### Standar

Artikel mengutip ISO 22301:2019, *Security and resilience, Business continuity management systems, Requirements*, yang menggantikan edisi 2012 dan mensyaratkan organisasi menentukan sasaran kontinuitas, tingkat layanan minimum yang dapat diterima, dan periode gangguan maksimum yang dapat ditoleransi. ISO 22313:2020 memberi panduan memakainya. Ini adalah standar untuk sistem manajemen yang dapat diadopsi organisasi; mereka tidak menggantikan perencanaan praktis. Periksa teks standar secara langsung jika pelanggan atau regulator Anda mensyaratkan kesesuaian.

### Kontinuitas agile

Praktik agile dan DevOps membantu kontinuitas:

- **Infrastruktur dan konfigurasi sebagai kode** memungkinkan lingkungan dibangun ulang dari kendali versi, yang membuat pemulihan lebih cepat dan dapat diuji.
- **Pipeline otomatis** dapat men-deploy ulang layanan ke situs pemulihan.
- **Rilis yang sering** menjaga tim terlatih dalam men-deploy.
- **Latihan berkala** dapat diperlakukan sebagai bentuk pengujian dalam backlog.

Praktik ini juga menciptakan risiko: ketergantungan berat pada satu akun cloud, sistem CI yang sendiri adalah titik kegagalan tunggal, dan rahasia yang disimpan di tempat yang tak dapat dijangkau saat bencana. Rencanakan untuk perkakas yang menjadi tumpuan pemulihan itu sendiri.

### Faktor manusia

Artikel menyebut wabah SARS 2002–2003 sebagai contoh tim yang dikotak-kotakkan dan dirotasi, yang merupakan pengingat bahwa kontinuitas mencakup orang: keterampilan kunci yang tersebar di antara individu, kerja jarak jauh, komunikasi ketika kanal normal gagal, dan perhatian pada staf di bawah tekanan.

### Batas sumber

Artikel tidak memberi metode menetapkan sasaran, tidak ada panduan seberapa sering menguji di luar siklus pemeliharaan tahunan atau dua tahunan, dan tidak ada rekomendasi perkakas. Ia adalah artikel bisnis umum, bukan TI. Untuk rincian pemulihan teknis, pakai dokumentasi platform Anda sendiri dan keterampilan panduan ini tentang perencanaan dan pengujian pemulihan bencana.

## Praktik terbaik

1. **Mulai dengan analisis dampak bisnis.** Identifikasi layanan yang tidak dapat dilepaskan organisasi, biaya kehilangannya dari waktu ke waktu, dan pada apa mereka bergantung. Lakukan bersama pemilik bisnis, bukan untuk mereka.
2. **Tetapkan sasaran pemulihan bersama bisnis.** Untuk tiap layanan kritis, sepakati waktu pemulihan dan titik pemulihan, dan catat biaya memenuhinya. Tinjau ulang ketika bisnis atau teknologi berubah.
3. **Bagi layanan Anda ke dalam tingkatan.** Kelompokkan layanan menurut seberapa cepat harus kembali, dan terapkan pendekatan pemulihan yang cocok dengan tiap tingkatan. Jangan menerapkan pendekatan termahal pada segalanya.
4. **Tulis rencana singkat yang dapat dipakai orang.** Nyatakan cara memanggil rencana, siapa yang memutuskan, siapa mengerjakan apa, cara berkomunikasi, dan urutan pemulihan. Jaga beberapa halaman dengan tautan ke runbook.
5. **Simpan rencana bersama kode dan lingkungan.** Simpan skrip pemulihan, konfigurasi, dan runbook dalam kendali versi dan tinjau ketika layanan berubah. Rencana yang tidak diperbarui bersama sistem akan gagal.
6. **Rencanakan untuk perkakas yang menjadi tumpuan pemulihan.** Pastikan akses ke pipeline, rahasia, dokumentasi, dan perkakas komunikasi bertahan dari hilangnya sistem yang didukungnya.
7. **Berlatih secara berkala.** Mulai dengan diskusi tabletop, beralih ke pengujian teknis pemulihan dan failover, dan jalankan latihan lebih besar untuk layanan paling kritis. Jadwalkan seperti pekerjaan lain.
8. **Uji pemulihan, bukan hanya backup.** Backup terbukti dengan memulihkan darinya. Uji bahwa data kembali, dalam titik pemulihan, dan bahwa layanan berfungsi dengannya (lihat keterampilan pengujian pemulihan bencana di bawah).
9. **Perlakukan temuan sebagai butir backlog.** Setiap latihan menghasilkan celah. Catat dengan pemilik dan tanggal, dan periksa bahwa selesai sebelum latihan berikutnya.
10. **Rencanakan komunikasi.** Putuskan siapa yang memberi tahu pelanggan, staf, regulator, dan publik apa, dan siapkan templat. Sertakan cara di luar jalur untuk menjangkau orang jika kanal normal mati (lihat keterampilan komunikasi krisis di bawah).
11. **Sertakan pemasok.** Tanyakan kepada pemasok kritis tentang pengaturan kontinuitas mereka sendiri dan sertakan mereka dalam latihan bila bisa (lihat Topik 3.14 — Manajemen Pemasok).
12. **Tinjau tahunan, dan setelah insiden serius atau perubahan besar apa pun.** Perbarui analisis, sasaran, dan rencana ketika bisnis atau teknologi berubah, bukan hanya menurut kalender.

## Pertanyaan untuk dibahas bersama tim Anda

**Layanan kita yang mana harus kembali lebih dulu, dan bagaimana kita tahu?**

Minta tiap orang memeringkat layanan menurut prioritas pemulihan. Bandingkan. Ketidaksepakatan itu informatif: menunjukkan bahwa urutan tak pernah disepakati dengan bisnis. Fasilitator dapat menanyakan berapa biaya bagi organisasi jika masing-masing mati satu jam, satu hari, dan satu minggu. Bawa pertanyaan itu kepada pemilik bisnis dan sepakati daftar.

**Berapa banyak data yang dapat hilang, dan apakah ada yang menyepakatinya?**

Tanyakan kapan backup terakhir data utama dibuat dan seberapa sering. Bandingkan dengan apa yang akan ditoleransi bisnis. Banyak tim menemukan jawabannya bukan yang mereka kira. Bahas berapa biaya titik pemulihan yang lebih ketat. Catat keputusan dan siapa yang membuatnya.

**Kapan terakhir kali kita memulihkan dari backup, dan apa yang terjadi?**

Minta tanggal nyata dan hasil nyata. Jika jawabannya "tidak pernah," itu temuan terpenting. Jika pernah dilakukan, tanyakan apa yang salah dan apa yang diperbaiki. Rencanakan uji pemulihan untuk layanan kritis dalam sebulan ke depan.

**Apa yang perlu kita pulihkan yang bergantung pada hal yang telah gagal?**

Telusuri skenario seperti hilangnya akun cloud atau pusat data. Tanyakan di mana runbook, rahasia, dan pipeline berada. Ketergantungan pada sistem yang gagal itu umum, seperti runbook yang disimpan di server yang mati. Daftar dan rencanakan memindahkan atau menyalin masing-masing.

**Siapa yang berwenang menyatakan bencana dan memulai rencana?**

Tanyakan orang siapa yang akan memutuskan, dan apakah mereka tahu. Keterlambatan memanggil rencana memakan waktu. Bahas aturan yang jelas dan seorang wakil. Periksa bagaimana orang itu akan dijangkau jika kanal biasa mati.

**Apa yang akan kita lakukan jika orang yang paling banyak tahu tidak tersedia?**

Bayangkan staf kunci tidak dapat dijangkau. Tanyakan siapa lagi yang dapat melakukan pemulihan dan apa yang mereka butuhkan. Pertanyaan ini menghubungkan kontinuitas dengan manajemen pengetahuan. Rencanakan satu cara menyebarkan pengetahuan kritis.

## Dalam praktik: contoh ITIL agile

Registri tanah sebuah pemerintah provinsi menjalankan layanan daring tempat pengacara dan surveyor mengajukan transaksi properti. Tim dua belas orang membangun dan menjalankannya, memakai satu wilayah penyedia cloud. Tinjauan kontinuitas bisnis menemukan bahwa layanan itu digolongkan kritis oleh kementerian, dengan harapan dapat dipulihkan dalam empat jam, dan bahwa tak seorang pun pernah menguji apakah hal itu mungkin.

Tim mulai dengan latihan tabletop. Skenarionya: wilayah cloud tidak tersedia selama sehari. Mereka menemukan bahwa runbook disimpan di wiki yang di-host di wilayah yang sama, bahwa kode infrastruktur hanya mencakup sebagian lingkungan, dan bahwa backup basis data disalin ke wilayah yang sama. Harapan empat jam kementerian ternyata ditulis seorang manajer bertahun-tahun lalu dan tidak pernah dihitung biayanya. Tim dan pemilik bisnis kementerian bertemu. Pemilik menjelaskan apa arti gangguan sehari bagi tenggat pengajuan, dan setuju bahwa empat jam diperlukan untuk hari pengajuan di akhir bulan tetapi delapan jam dapat diterima di waktu lain.

Tim menyalin runbook dan backup ke wilayah kedua, melengkapi kode infrastruktur, dan membangun ulang lingkungan dari kode di wilayah uji dalam latihan sehari penuh. Percobaan pertama memakan sebelas jam, sebagian besar karena langkah manual dan rahasia yang hilang. Setelah perbaikan, percobaan kedua memakan lima. Beberapa masalah tersisa. Target empat jam di akhir bulan masih di luar jangkauan, penyedia identitas yang dipakai staf untuk masuk tidak punya pengaturan pemulihan sendiri, dan tim menyadari ia bergantung pada pemasok yang rencana kontinuitasnya belum pernah dilihat. Tim menaruh penyedia identitas dan pertanyaan pemasok di backlog, dan kementerian menyetujui waktu pemulihan lebih lama untuk periode non-puncak selagi pekerjaan berlanjut.

## Empat perspektif

### Tim produk dan pengiriman

Tim pengiriman membuat pemulihan mungkin atau mustahil lewat desain. Bangun layanan agar dapat dibangun ulang dari kode, jaga data direplikasi, dan tulis langkah pemulihan sebagai bagian dari selesai. Ikut serta dalam latihan dan perbaiki celah yang ditemukan.

### Tim layanan dan operasi

Tim operasi memegang rencana dan menjalankan latihan. Jaga rencana singkat dan terkait runbook, uji pemulihan dan failover, dan buat ketergantungan pemulihan terlihat. Lacak temuan setiap latihan sampai ditutup.

### Kepemimpinan dan tata kelola

Pemimpin menetapkan sasaran dan membayarnya. Minta analisis dampak bisnis dan sasaran pemulihan, pahami berapa biayanya, dan hadiri latihan. Terima bahwa sebagian layanan akan memakan waktu lebih lama untuk pulih, dan buat keputusan itu dengan sengaja.

### Pelanggan dan pengguna

Pelanggan dan pengguna bergantung pada layanan yang berlanjut atau kembali. Beri tahu penyedia berapa lama Anda dapat tanpa layanan itu dan data apa yang tidak boleh hilang. Tanyakan tentang pengaturan kontinuitas mereka dan apa yang harus Anda lakukan saat bencana, seperti cara alternatif mengajukan pekerjaan mendesak.

## Pola kegagalan umum

- **Rencana yang belum diuji siapa pun.** Pengujian pertama adalah bencananya. Sebaliknya, mulai dengan latihan tabletop dan maju ke pemulihan teknis.
- **Sasaran yang tidak disepakati siapa pun.** Waktu pemulihan ditulis oleh seseorang yang sudah pergi. Sebaliknya, tetapkan waktu dan titik pemulihan bersama pemilik bisnis dan catat biayanya.
- **Backup yang tak pernah dipulihkan.** Backup ada, tetapi pemulihan gagal. Sebaliknya, uji pemulihan menurut jadwal dan ukur waktunya.
- **Pemulihan bergantung pada yang gagal.** Runbook, rahasia, dan perkakas berada di sistem yang gagal. Sebaliknya, petakan ketergantungan pemulihan dan simpan salinan di tempat lain.
- **Satu tingkatan untuk semuanya.** Semua layanan mendapat perlakuan termahal, atau tidak ada. Sebaliknya, bagi layanan ke tingkatan menurut kebutuhan.
- **Rencana usang.** Sistem berubah dan rencana tidak. Sebaliknya, simpan rencana bersama kode dan tinjau ketika layanan berubah.
- **Mengabaikan orang.** Rencana mengasumsikan staf biasa tersedia. Sebaliknya, rencanakan ketidakhadiran dan komunikasi ketika kanal mati.
- **Mengabaikan pemasok.** Ketergantungan kritis tidak punya pengaturan kontinuitas. Sebaliknya, tanyakan kepada pemasok dan sertakan dalam latihan.

## Model kematangan

| Dimensi | Memulai | Mengembangkan | Menstandarkan | Mengelola | Mengorkestrasi |
|---|---|---|---|---|---|
| Analisis dampak dan sasaran | Layanan kritis diasumsikan | Beberapa layanan punya tujuan pemulihan kasar | Layanan kritis punya waktu dan titik pemulihan yang disepakati, dengan biaya | Sasaran ditinjau terhadap hasil latihan dan perubahan bisnis | Sasaran diselaraskan dengan pelanggan, pemasok, dan regulator |
| Rencana dan desain pemulihan | Pemulihan diimprovisasi | Beberapa layanan punya catatan pemulihan | Rencana dan kode pemulihan ada untuk layanan kritis dan disimpan bersama sistem | Kemutakhiran rencana dan waktu pemulihan diukur dan diperbaiki | Pemulihan dikoordinasikan lintas layanan, tim, dan pemasok |
| Latihan dan pengujian | Sedikit atau tanpa pengujian | Beberapa pemulihan diuji | Pengujian tabletop dan teknis terjadi menurut jadwal | Temuan dilacak sampai ditutup dan pengujian disetel menurut risiko | Latihan menyertakan pemasok dan melintasi organisasi |
| Komunikasi dan orang | Komunikasi ad hoc | Beberapa daftar kontak ada | Rencana mencakup siapa memberi tahu siapa, dengan jalur di luar jalur dan wakil | Celah komunikasi dan staf diukur dan ditutup | Komunikasi dilatih bersama pelanggan, pemasok, dan regulator |

## Daftar periksa

- [ ] Kami telah mengidentifikasi layanan kritis kami bersama pemilik bisnis.
- [ ] Setiap layanan kritis punya waktu pemulihan dan titik pemulihan yang disepakati, dengan biaya diketahui.
- [ ] Layanan dikelompokkan ke tingkatan yang sesuai kebutuhan pemulihannya.
- [ ] Rencana pemulihan singkat ada, dengan siapa yang dapat memanggilnya dan cara menjangkau mereka.
- [ ] Kode pemulihan, konfigurasi, dan runbook ada di kendali versi dan ditinjau bersama perubahan.
- [ ] Runbook, rahasia, dan perkakas yang dibutuhkan untuk pemulihan bertahan dari hilangnya lingkungan utama.
- [ ] Pemulihan dari backup telah diuji untuk tiap layanan kritis dalam setahun terakhir.
- [ ] Latihan tabletop telah diadakan dalam setahun terakhir, dan temuan dilacak.
- [ ] Templat komunikasi dan jalur di luar jalur ada.
- [ ] Pemasok kritis telah ditanya tentang pengaturan kontinuitas mereka sendiri.

## Prompt AI

**Tujuan: menyusun pertanyaan untuk analisis dampak bisnis.**

```text
Help me prepare a business impact analysis for these services: [list services].

About the organization: [describe sector and who relies on the services].
Peak periods or deadlines: [list, or write "unknown"].
Rules or contracts that set recovery requirements, with source text: [paste, or write "none known"].

Write, for each service, a short set of questions to put to business owners about the impact of an outage after one hour, one day, and one week (financial, operational, reputational, legal), what data loss would be tolerable, what the service depends on, and what workarounds exist. Do not invent impacts or numbers. Ask clarifying questions first, and list what you are unsure of.
```

**Tujuan: merencanakan latihan tabletop.**

```text
Design a 90-minute tabletop exercise for [number] people from [teams] on this scenario: [describe, for example "our cloud region is unavailable for 24 hours"].

Services in scope: [list].
Existing plans and runbooks: [describe, or write "none"].

Give a timed plan with: the scenario released in three stages, prompts for each role, questions on dependencies of recovery (where runbooks, secrets, and tools live), decisions that must be made and who makes them, and a closing step that records gaps with owners and dates. Do not use real production access. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Tujuan: mengubah catatan latihan menjadi daftar celah.**

```text
Below are the notes from a continuity exercise: [paste what happened, what went wrong, what people said].

List the gaps found, grouped as: plan (what was missing or unclear), technology (what failed or was slow), people (who was missing or unsure), and dependencies (what recovery depended on that was itself unavailable). For each gap, suggest a backlog item title and a question about priority. Use only the notes. Do not invent causes. List what you are unsure of.
```

**Tujuan: menulis kerangka rencana pemulihan singkat untuk satu layanan.**

```text
Help me outline a recovery plan for [service].

What it does and who depends on it: [describe].
Agreed recovery time and recovery point, if any: [paste, or write "not agreed"].
Where it runs, where data and backups are kept: [describe].
Dependencies (other services, suppliers, identity, networks): [list].
People who can recover it: [roles].

Write a plan outline of no more than two pages: how it is invoked, who decides, communication, order of recovery steps (with links to runbooks as [LINK]), testing evidence needed, and how to return to normal. Mark each item that is an assumption. Do not invent recovery times. Ask clarifying questions first, and list what you are unsure of.
```

## Keterampilan AI

- [business-continuity-plan](../../../../skills/business-continuity-plan/SKILL.md): gunakan untuk menulis rencana tingkat organisasi untuk menjaga fungsi kritis tetap berjalan.
- [disaster-recovery-plan](../../../../skills/disaster-recovery-plan/SKILL.md): gunakan untuk merencanakan pemulihan teknis layanan TI.
- [disaster-recovery-testing](../../../../skills/disaster-recovery-testing/SKILL.md): gunakan untuk merancang pengujian pemulihan dan failover.
- [crisis-communication-plan](../../../../skills/crisis-communication-plan/SKILL.md): gunakan untuk merencanakan apa yang Anda sampaikan kepada pelanggan, staf, dan publik selama gangguan.
- [risk-register](../../../../skills/risk-register/SKILL.md): gunakan untuk mencatat risiko kontinuitas dan bagaimana dikelola.

## Sumber utama

- **Business continuity planning** (Wikipedia): definisi kontinuitas, analisis dampak bisnis, sasaran pemulihan, latihan, dan standar.
- **ISO 22301** (International Organization for Standardization): standar persyaratan untuk sistem manajemen kontinuitas bisnis; baca standarnya untuk klaim kesesuaian.
- **Incident management** (Wikipedia): tinjauan multibidang yang menempatkan kontinuitas di samping respons insiden.
- **Embracing Risk** (*Site Reliability Engineering*, Google, sre.google): ekonomi keandalan yang membingkai sasaran pemulihan.

## Referensi

1. Business continuity planning — Wikipedia — https://en.wikipedia.org/wiki/Business_continuity_planning
2. Disaster recovery — Wikipedia (disambiguation page) — https://en.wikipedia.org/wiki/Disaster_recovery
3. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
4. Embracing Risk — Google SRE book, sre.google — https://sre.google/sre-book/embracing-risk/
5. ISO 22301 — Wikipedia — https://en.wikipedia.org/wiki/ISO_22301
6. Risk management — Wikipedia — https://en.wikipedia.org/wiki/Risk_management
7. Backup — Wikipedia — https://en.wikipedia.org/wiki/Backup
8. Infrastructure as code — Wikipedia — https://en.wikipedia.org/wiki/Infrastructure_as_code
