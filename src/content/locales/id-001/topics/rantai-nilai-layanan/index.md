# Rantai Nilai Layanan

**Rantai nilai layanan adalah seperangkat enam aktivitas yang digabungkan tim dalam urutan berbeda untuk menciptakan aliran nilai, dan ia menjelaskan bagaimana pengiriman berkelanjutan dan operasi layanan menyatu dalam satu aliran, bukan dua yang terpisah.**

## Mengapa ini penting

Banyak organisasi memperlakukan membangun dan menjalankan sebagai dua tahap: pertama proyek membangun layanan, lalu kelompok operasi mengambil alih. Serah terima adalah tempat pengetahuan hilang, tanggung jawab kabur, dan pelanggan merasakan celahnya. Rantai nilai layanan ITIL 4 dirancang untuk menggantikan gambaran itu dengan gambaran ketika aktivitas yang sama dapat terjadi dalam urutan apa pun dan sesering yang diperlukan, tergantung situasi.

Itu dekat dengan cara tim agile sudah bekerja. Dalam seminggu, tim dapat merencanakan fitur, membangun sebagiannya, merilisnya, menjawab pertanyaan pelanggan tentangnya, dan memperbaiki masalah yang ditemukan di produksi. Masing-masing adalah aktivitas berbeda dalam rantai. Melihatnya sebagai bagian dari satu aliran membantu tim bertanya di mana pekerjaan menunggu, siapa mengerjakan tiap aktivitas, dan aktivitas mana yang diabaikan.

Topik ini menjelaskan enam aktivitas, bagaimana mereka bergabung menjadi aliran nilai, dan bagaimana tim agile dapat memakai gagasan ini. Ringkasannya berasal dari penyedia pelatihan dan vendor perangkat lunak, karena halaman publik pemilik kerangka kerja yang dibaca untuk panduan ini hanya menyebut rantai nilai layanan sepintas. Halaman vendor mendaftar aktivitas tanpa menjelaskannya, jadi perlakukan deskripsi di bawah sebagai pembacaan yang dipakai luas, dan periksa publikasi ITIL 4 untuk redaksi pemilik (lihat Topik 2.2 — ITIL).

## Konsep inti

### Di mana rantai berada

Dalam sistem nilai layanan, rantai adalah model operasi di pusat (lihat Topik 2.3 — Sistem Nilai Layanan ITIL). Halaman vendor menggambarkannya sebagai bagian sistem yang berkaitan dengan pipeline pengiriman atau siklus hidup produk atau layanan, mengambil permintaan sebagai masukan dan menghasilkan nilai sebagai keluaran. Halaman juga mencatat bahwa dalam praktik siklus hidup jarang linear.

### Enam aktivitas

Tabel memberi tiap aktivitas, tujuan yang dinyatakan halaman penyedia pelatihan untuknya, dan seperti apa aktivitas itu dalam tim agile. Kolom kanan adalah pembacaan panduan ini.

| Aktivitas | Tujuan, seperti diringkas penyedia pelatihan | Seperti apa dalam tim agile |
|---|---|---|
| **Rencanakan** | Menentukan kebijakan, sasaran, dan pedoman untuk arah organisasi, sehingga semua orang berbagi pemahaman tentang visi, status saat ini, dan arah perbaikan | Tujuan produk, peta jalan, perencanaan triwulanan, dan pilihan portofolio |
| **Tingkatkan** | Terus memperbaiki layanan, praktik, dan proses di semua aktivitas | Retrospektif, tinjauan pasca-insiden, dan butir perbaikan dalam backlog |
| **Libatkan** | Berinteraksi dengan pemangku kepentingan untuk memahami kebutuhan, memberi informasi, menangkap umpan balik dan persyaratan, dan mengelola hubungan | Riset pengguna, sprint review, service desk, dan percakapan pelanggan |
| **Rancang dan transisi** | Memastikan layanan baru atau yang berubah memenuhi ekspektasi pemangku kepentingan, dari desain sampai lingkungan live | Merancang perubahan, mengujinya, dan menyiapkannya untuk rilis dan dukungan |
| **Peroleh/bangun** | Memperoleh atau membuat komponen yang dibutuhkan layanan, seperti sumber daya fisik, infrastruktur, pengetahuan, atau perangkat lunak | Mengembangkan perangkat lunak, membeli perkakas, menyiapkan infrastruktur, melatih staf |
| **Kirim dan dukung** | Mengirim layanan sesuai kesepakatan dan memberi dukungan berkelanjutan untuk menyelesaikan masalah dan memenuhi permintaan | Menjalankan layanan, menangani insiden dan permintaan, men-deploy rilis |

### Aktivitas bukan tahapan

Halaman penyedia pelatihan mengatakan aktivitas "are not linear but are interlinked and can be combined in various ways to form multiple value streams." **Aliran nilai**, dalam katanya, adalah seperangkat aktivitas tertentu yang menciptakan dan mengirim layanan atau produk tertentu kepada pelanggan. Ini gagasan sentralnya. Rantai adalah menu aktivitas, dan aliran nilai adalah jalur melaluinya yang dipilih untuk tujuan tertentu.

### Aliran nilai ilustratif

Halaman yang dibaca untuk panduan ini tidak memberi contoh aliran nilai, jadi yang berikut adalah ilustrasi panduan ini tentang bagaimana aktivitas dapat bergabung. Itu bukan dari publikasi ITIL, dan aliran nyata akan berbeda.

| Aliran nilai | Satu kemungkinan jalur melalui aktivitas |
|---|---|
| **Menangani insiden** | Libatkan (pengguna melaporkannya) → kirim dan dukung (pulihkan layanan) → tingkatkan (tinjau dan perbaiki penyebab) |
| **Merilis fitur** | Rencanakan (tetapkan tujuan) → rancang dan transisi (rancang, uji, siapkan dukungan) → peroleh/bangun (kembangkan) → kirim dan dukung (rilis) → libatkan (dapatkan umpan balik) → tingkatkan |
| **Memenuhi permintaan akses** | Libatkan (permintaan diterima) → kirim dan dukung (periksa dan beri akses) → libatkan (konfirmasi dengan pengguna) |
| **Mengorientasi pemasok baru** | Rencanakan (tentukan kebutuhan) → libatkan (pilih dan sepakati syarat) → peroleh/bangun (integrasikan) → kirim dan dukung (operasikan) → tingkatkan (tinjau kinerja) |

### Praktik dan rantai

Praktik adalah kapabilitas yang diandalkan aktivitas. Manajemen insiden, misalnya, adalah praktik yang dipakai dalam beberapa aliran nilai. Sumber tidak sepakat pada setiap rincian pemetaan antara praktik dan aktivitas, jadi hindari tabel yang kaku. Ujian yang lebih baik adalah apakah praktik berkontribusi pada aliran nilai yang Anda periksa (lihat Bagian 3).

### Aliran nilai dan aliran agile

Pemikiran agile dan lean sudah memakai aliran nilai (lihat Topik 1.7 — Pengembangan Perangkat Lunak Lean). Peta aliran nilai menunjukkan langkah, waktu, dan penantian dalam sebuah jalur. Gagasan ITIL menambahkan kosakata untuk mengklasifikasi langkah dan pengingat bahwa jalur mencakup dukungan dan perbaikan selain membangun. Untuk pekerjaan digital, ini terhubung dengan manajemen aliran nilai (lihat Topik 5.4 — Manajemen Aliran Nilai).

### Batasan

Halaman yang dibaca untuk panduan ini tidak memberi metode untuk merancang atau memilih aliran nilai, dan halaman vendor tidak menjelaskan bagaimana rantai berkaitan dengan peningkatan berkelanjutan di luar menyebut perbaikan sebagai krusial. Rantai adalah cara menggambarkan pekerjaan, bukan cara memutuskan bagaimana mengerjakannya. Nilainya bergantung pada apakah Anda memakainya untuk melihat aliran nyata.

## Praktik terbaik

1. **Pilih satu aliran nilai dan gambar.** Pilih aliran yang penting bagi pelanggan, seperti merilis perubahan atau menangani permintaan. Daftar langkah berurutan, dan beri label masing-masing dengan salah satu dari enam aktivitas yang terdekat.
2. **Sertakan dukungan dan perbaikan dalam gambar.** Jangan hentikan aliran pada rilis. Tunjukkan apa yang terjadi sesudahnya: menangani insiden dan belajar darinya.
3. **Cari aktivitas yang hilang.** Jika aliran tidak punya langkah libatkan, tak ada yang berbicara dengan pengguna. Jika tidak punya langkah tingkatkan, tak ada yang dipelajari. Tambahkan di tempat yang penting.
4. **Ukur waktu penantian.** Untuk satu aliran, catat berapa lama pekerjaan menunggu antaraktivitas dan di mana ia melintasi batas tim. Penantian terpanjang adalah hal pertama yang diperiksa (lihat Topik 5.4 — Manajemen Aliran Nilai).
5. **Gabungkan aktivitas dengan bebas.** Izinkan aliran berbeda memakai jalur berbeda. Perbaikan bug kecil dapat langsung dari kirim dan dukung ke peroleh/bangun dan kembali, tanpa langkah perencanaan.
6. **Masukkan rancang dan transisi ke dalam pekerjaan tim.** Sertakan catatan dukungan, pemantauan, dan pelatihan sebagai bagian dari membangun, bukan serah terima di akhir (lihat Topik 3.5 — Manajemen Rilis dan Deployment).
7. **Jadikan "libatkan" aktivitas berkelanjutan.** Jangan batasi kontak dengan pengguna di awal dan akhir proyek. Sertakan service desk dan umpan balik pelanggan dalam perencanaan.
8. **Hubungkan perencanaan dengan bukti dari operasi.** Pakai data insiden dan permintaan dalam percakapan perencanaan agar tujuan mencerminkan apa yang benar-benar dialami pengguna (lihat Topik 5.1 — Manajemen Layanan Agile).
9. **Tunjuk pemilik untuk tiap aliran.** Satu orang harus bisa mengatakan bagaimana aliran berkinerja, dan bisa mempertemukan tim untuk memperbaikinya.
10. **Pakai rantai sebagai daftar periksa celah.** Ketika sesuatu gagal, tanyakan aktivitas mana yang lemah: rencana tidak jelas, keterlibatan buruk, transisi tergesa-gesa, pembangunan lemah, dukungan goyah, atau tanpa perbaikan.
11. **Jaga diagram tetap sederhana.** Sketsa kasar dengan enam label sudah cukup. Jika gambar memerlukan legenda, sederhanakan.
12. **Tinjau aliran setelah perubahan.** Ketika struktur tim, pemasok, atau perkakas berubah, periksa apakah aliran masih bekerja seperti digambar.

## Pertanyaan untuk dibahas bersama tim Anda

**Apa tiga aliran nilai terpenting bagi pengguna kita, dan siapa pemilik masing-masing?**

Minta orang menyebut aliran yang paling penting, seperti pengguna mendapat akun baru atau perbaikan mencapai produksi. Bandingkan daftar. Perbedaan menunjukkan tim punya gambaran berbeda tentang apa yang penting. Fasilitator dapat menanyakan siapa yang bisa menjawab untuk tiap aliran dari ujung ke ujung. Sering kali tak ada, dan itu temuan.

**Untuk satu aliran, dari enam aktivitas mana yang kita lakukan dengan baik, dan mana yang kita lewati?**

Gambar aliran dan beri label langkahnya. Lalu cari aktivitas yang hilang. Tim sering menemukan bahwa mereka merencanakan dan membangun dengan baik, dan melibatkan serta meningkatkan dengan buruk. Tanyakan apa yang akan ditambahkan aktivitas yang hilang dan berapa biayanya. Pilih satu untuk ditambahkan dalam skala kecil.

**Di mana pekerjaan menunggu antaraktivitas, dan siapa pemilik penantian itu?**

Tandai serah terima dan catat penantian tipikal. Banyak penantian berada di batas antartim. Tanyakan apakah penantian itu diperlukan, seperti untuk pemeriksaan risiko, atau kebetulan dari cara tim diatur. Pilih satu untuk dipersingkat.

**Bagaimana kita mengetahui apa pendapat pengguna tentang apa yang kita kirim, dan seberapa cepat itu mengubah rencana kita?**

Telusuri satu umpan balik terbaru dari pengguna ke backlog. Hitung langkahnya. Jika memakan berminggu-minggu atau tak pernah sampai, aktivitas libatkan lemah. Tanyakan apa yang akan mempersingkat jalur, seperti kanal bersama dengan service desk. Sepakati satu perubahan.

**Apa yang kita lakukan setelah insiden atau rilis untuk memperbaiki yang berikutnya?**

Lihat beberapa insiden dan rilis terakhir untuk perbaikan yang tercatat. Jika tidak ada, aktivitas tingkatkan bersifat informal. Tanyakan siapa yang memiliki tindakan perbaikan dan bagaimana dilacak. Sepakati tempat sederhana untuk mencatatnya.

**Aliran mana yang melintasi batas organisasi, dan siapa yang berbicara atas nama keseluruhan?**

Daftar aliran yang melibatkan pemasok, departemen lain, atau pelanggan. Tanyakan siapa yang bertanggung jawab atas aliran ujung ke ujung dan apa yang terjadi di perbatasan. Hasil yang baik adalah menunjuk koordinator dan percakapan rutin lintas batas.

## Dalam praktik: contoh ITIL agile

Sebuah kelompok rumah sakit daerah menjalankan layanan portal pasien yang dipakai untuk memesan janji temu dan melihat hasil tes. Tim sepuluh orang membangun dan menjalankannya. Tim mengirim fitur baru setiap dua minggu, tetapi pasien mengeluh bahwa perbaikan atas kesalahan yang dilaporkan memakan waktu berbulan-bulan dan mereka tidak mendapat balasan atas pesan umpan balik mereka.

Kepala layanan digital meminta tim menggambar aliran nilai untuk kesalahan yang dilaporkan, dari pesan pasien sampai perbaikan di produksi. Mereka melabeli langkah dengan enam aktivitas. Pesan tiba lewat formulir kontak (libatkan) dan tergeletak di kotak masuk bersama berhari-hari sebelum ada yang memilahnya. Kesalahan yang telah dipilah masuk ke backlog yang sama dengan fitur baru (rencanakan), tempat ia bersaing dengan buruk. Perbaikan dibangun (peroleh/bangun), diuji, dan dirilis bersama kumpulan fitur berikutnya (rancang dan transisi, kirim dan dukung). Tak ada yang memberi tahu pasien (libatkan), dan tak ada yang mencatat apa yang diajarkan kesalahan itu kepada tim (tingkatkan).

Tim mengubah aliran. Kotak masuk bersama diperiksa setiap hari oleh jadwal piket, kesalahan diberi tag dan diberi jalur terpisah dalam backlog dengan target rilis berikutnya, pasien menerima balasan saat pesan diterima dan satu lagi ketika perbaikan live, dan setiap kesalahan yang lebih tua dari sebulan dibahas pada tinjauan dua mingguan. Setelah dua bulan, median waktu perbaikan turun dan keluhan pasien tentang kebisuan berkurang. Masalah tersisa: kesalahan yang melibatkan sistem janji temu rumah sakit, yang dijalankan pemasok, masih menunggu antrean pemasok, dan pesan balasan ditulis pengembang dalam bahasa yang sulit diikuti sebagian pasien. Tim mengundang pemasok ke tinjauan dan meminta tim komunikasi menyusun templat berbahasa sederhana.

## Empat perspektif

### Tim produk dan pengiriman

Tim pengiriman biasanya menghabiskan waktu paling banyak pada rencanakan, rancang dan transisi, serta peroleh/bangun. Lihat tiga lainnya: bagaimana Anda melibatkan pengguna, bagaimana Anda mendukung apa yang Anda kirim, dan bagaimana Anda meningkatkan. Perlakukan permintaan dukungan dan pembelajaran insiden sebagai masukan perencanaan.

### Tim layanan dan operasi

Tim operasi menghabiskan waktu paling banyak pada kirim dan dukung, dan sebagian libatkan. Gunakan rantai untuk menunjukkan bagaimana pekerjaan Anda bergantung pada aktivitas sebelumnya, seperti rancang dan transisi, dan untuk meminta apa yang Anda butuhkan dari mereka. Ikut serta dalam perencanaan agar pengetahuan operasional sampai ke awal aliran.

### Kepemimpinan dan tata kelola

Pemimpin dapat memakai rantai untuk menanyakan di mana aliran putus pada layanan penting. Dukung penunjukan pemilik aliran, dan beri mereka wewenang mempertemukan tim. Hindari mengubah enam aktivitas menjadi enam departemen; intinya menghubungkannya.

### Pelanggan dan pengguna

Pelanggan dan pengguna terutama ikut serta dalam libatkan, dan mereka diuntungkan ketika umpan balik menempuh seluruh jalan ke rencana dan perbaikan. Harapkan balasan dan hasil yang terlihat. Beri tahu penyedia aliran mana yang paling penting bagi Anda, dan penundaan apa yang merugikan Anda.

## Pola kegagalan umum

- **Membaca rantai sebagai urutan.** Tim memaksa setiap pekerjaan melalui keenamnya berurutan. Sebaliknya, pilih jalur yang cocok dengan pekerjaan.
- **Memetakan departemen, bukan aliran.** Setiap aktivitas ditugaskan ke departemen dan alirannya hilang. Sebaliknya, telusuri satu pekerjaan lintas departemen.
- **Melupakan libatkan dan tingkatkan.** Aliran berakhir pada rilis. Sebaliknya, sertakan kontak pengguna dan pembelajaran dalam setiap aliran.
- **Serah terima sebagai ganti rancang dan transisi.** Catatan dukungan, pemantauan, dan pelatihan ditinggalkan sampai akhir. Sebaliknya, bangun ke dalam pekerjaan sejak awal.
- **Tanpa pemilik aliran.** Tak ada yang bisa mengatakan bagaimana aliran berkinerja. Sebaliknya, tunjuk pemilik dengan wewenang mempertemukan tim.
- **Diagram terlalu rinci.** Peta menjadi poster yang tak dibaca siapa pun. Sebaliknya, jaga satu halaman dan perbarui ketika ada yang berubah.
- **Memperlakukan kosakata sebagai tujuan.** Tim menghabiskan waktu melabeli dan bukan memperbaiki. Sebaliknya, labeli hanya yang membantu menemukan celah.
- **Mengandalkan ringkasan sekunder.** Deskripsi aktivitas berbeda antarsumber. Sebaliknya, periksa publikasi pemilik bila presisi penting.

## Model kematangan

| Dimensi | Memulai | Mengembangkan | Menstandarkan | Mengelola | Mengorkestrasi |
|---|---|---|---|---|---|
| Visibilitas aliran nilai | Aliran diketahui hanya secara informal | Beberapa aliran digambar timnya sendiri | Aliran utama dipetakan dengan pemilik | Aliran diukur untuk penantian dan hasil | Aliran melintasi batas organisasi dan diperbaiki bersama |
| Cakupan aktivitas | Perencanaan dan pembangunan mendominasi | Beberapa tim menambah aktivitas libatkan dan tingkatkan | Keenam aktivitas muncul dalam aliran utama | Celah cakupan dilacak dan ditutup | Cakupan diseimbangkan lintas tim dan pemasok berdasarkan bukti |
| Serah terima dan transisi | Serah terima terlambat dan tidak dikelola | Beberapa tim menyertakan dukungan dalam pembangunan | Dukungan, pemantauan, dan pelatihan adalah bagian setiap rilis | Masalah transisi diukur dan dikurangi | Transisi dibagi antara pengiriman, operasi, dan pemasok |
| Umpan balik dan perbaikan | Umpan balik datang lewat keluhan | Sebagian umpan balik sampai ke backlog | Umpan balik dan butir perbaikan dilacak dengan pemilik | Dampak perbaikan diperiksa | Umpan balik dan pembelajaran mengalir lintas tim dan pelanggan secara terus-menerus |

## Daftar periksa

- [ ] Kami telah menggambar setidaknya satu aliran nilai yang penting bagi pengguna.
- [ ] Setiap langkah dalam gambar diberi label dengan aktivitas rantai nilai yang terdekat.
- [ ] Aliran mencakup keterlibatan dengan pengguna dan langkah yang mencatat perbaikan.
- [ ] Kami tahu di mana pekerjaan menunggu dan berapa lama, setidaknya secara kasar.
- [ ] Pekerjaan rancang dan transisi, seperti pemantauan dan catatan dukungan, adalah bagian dari pembangunan.
- [ ] Seseorang yang ditunjuk memiliki aliran ujung ke ujung dari aliran itu.
- [ ] Umpan balik dari pengguna sampai ke backlog dan mendapat balasan.
- [ ] Data insiden dan permintaan dipakai dalam perencanaan.
- [ ] Aliran ditinjau setelah perubahan signifikan.
- [ ] Kami telah memeriksa publikasi pemilik untuk definisi persis tiap aktivitas.

## Prompt AI

**Tujuan: melabeli langkah aliran nyata dengan enam aktivitas.**

```text
Help me label the steps of a value stream with the six ITIL service value chain activities: plan; improve; engage; design and transition; obtain/build; deliver and support.

The stream (what it delivers and to whom): [describe].
The steps in order, with who does each and how long it waited before it, if known: [paste].

For each step, suggest the closest activity and give one sentence of reasoning using only my text. Then list which of the six activities do not appear, and what that might mean, as questions and not conclusions. Do not invent steps or durations. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Tujuan: menemukan di mana umpan balik hilang dalam perjalanannya ke backlog.**

```text
I want to trace how user feedback reaches our backlog.

Where feedback arrives (channels): [list].
What happens to a piece of feedback after it arrives, step by step, with who does each step: [paste].
One recent example, with dates: [paste].

Describe the path in order and identify steps where the feedback could be lost or delayed, using only my text. Suggest three questions for the people involved and one small change to shorten the path. Do not invent causes. Ask clarifying questions first if information is missing, and list what you are unsure of.
```

**Tujuan: merencanakan lokakarya aliran nilai dengan staf pengiriman dan operasi.**

```text
Plan a 90-minute workshop for [number] people from delivery and operations to draw one value stream: [stream name].

Preparation: they will bring [data, such as dates of recent examples].
Constraints: [for example remote, different time zones].

Give a timed agenda, instructions for drawing the stream step by step, how to label steps with the six value chain activities, a way to mark waits and handovers, and a closing step to agree one change with an owner and date. Keep it free of any particular tool. Ask clarifying questions first, and list what you are unsure of.
```

**Tujuan: menulis panduan singkat tentang rantai nilai untuk anggota tim baru.**

```text
Write a one-page guide to the ITIL service value chain for new team members.

Use only these notes, which I verified: [paste the six activity names and the descriptions you have checked against official sources, plus any examples from our own work].

Include: what the chain is for, one example stream from our work, and three questions a new person can ask to find which activity a task belongs to. Keep the language plain. Do not add claims about ITIL beyond my notes. Mark assumptions, and list what you are unsure of.
```

## Keterampilan AI

- [value-stream-map](../../../../skills/value-stream-map/SKILL.md): gunakan untuk menggambar aliran, mengukur waktu penantiannya, dan melabeli langkahnya.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md): gunakan untuk menganalisis bagaimana pekerjaan berpindah antarperan dan menemukan masalah serah terima.
- [agile-delivery](../../../../skills/agile-delivery/SKILL.md): gunakan untuk merencanakan bagaimana tim mengirim dalam langkah kecil melalui aktivitas pembangunan dan rilis.
- [getting-feedback](../../../../skills/getting-feedback/SKILL.md): gunakan untuk merancang cara mengumpulkan umpan balik dari pengguna untuk aktivitas libatkan.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): gunakan untuk menjalankan tinjauan yang membuat aktivitas tingkatkan nyata.

## Sumber utama

- **ITIL 4 Foundation** (PeopleCert): halaman pemilik yang menyebut rantai nilai layanan di antara topik yang dipelajari.
- **ITIL service value system** (Purple Griffon): ringkasan penyedia pelatihan tentang enam aktivitas dan aliran nilai; sekunder.
- **The ITIL 4 Service Value System** (ManageEngine): ringkasan vendor yang menyebut aktivitas; sekunder.
- **Value-stream mapping** (Wikipedia): latar belakang teknik pemetaan yang dipakai praktik lean untuk menemukan pemborosan.

## Referensi

1. ITIL 4 Foundation — PeopleCert — https://www.peoplecert.org/browse-certifications/it-governance-and-service-management/ITIL-1/itil-4-foundation-2565
2. ITIL service value system — Purple Griffon (training provider; secondary source) — https://purplegriffon.com/blog/itil-service-value-system
3. The ITIL 4 Service Value System — ManageEngine (software vendor; secondary source) — https://manageengine.com/products/service-desk/itsm/itil-4-service-value-system.html
4. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
5. Value-stream mapping — Wikipedia — https://en.wikipedia.org/wiki/Value-stream_mapping
6. Value chain — Wikipedia — https://en.wikipedia.org/wiki/Value_chain
7. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
8. Business process management — Wikipedia — https://en.wikipedia.org/wiki/Business_process_management
9. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
