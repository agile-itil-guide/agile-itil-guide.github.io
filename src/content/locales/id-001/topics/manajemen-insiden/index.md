# Manajemen Insiden

**Manajemen insiden memulihkan layanan yang menurun secepat yang aman, dan kebiasaan agile yang membuatnya berhasil adalah peran yang jelas di bawah tekanan diikuti tinjauan tanpa menyalahkan yang mengubah setiap insiden menjadi perubahan.**

## Mengapa ini penting

Insiden adalah saat sebuah layanan dinilai. Pengguna tidak mengingat berbulan-bulan ketersediaan yang baik; mereka mengingat gangguan dan bagaimana ia ditangani. Tim yang telah menentukan sebelumnya siapa mengerjakan apa, bagaimana ia berkomunikasi, dan kapan ia meminta bantuan memulihkan layanan lebih cepat dan membuat lebih sedikit kesalahan daripada tim yang berimprovisasi.

Tim agile yang menjalankan apa yang mereka bangun sering menangani insiden secara informal. Ini berhasil sampai insiden itu besar, melibatkan beberapa tim, atau terjadi di malam hari. Saat itu kurangnya peran dan catatan terlihat: engineer menumpuk pada masalah teknis, tak ada yang memberi tahu pelanggan, dan dua orang membuat perubahan yang bertentangan. Praktik ITSM manajemen insiden, bersama praktik dari site reliability engineering, menawarkan cara teruji untuk mencegahnya.

[Artikel Wikipedia tentang manajemen insiden](https://en.wikipedia.org/wiki/Incident_management) mencakup beberapa bidang, dari tanggap darurat sampai keamanan komputer. Untuk manajemen layanan TI ia mengatakan tujuannya memulihkan layanan normal dalam tingkat layanan yang disepakati secepat mungkin, mengutip ITIL 2011 dalam mendefinisikan insiden sebagai gangguan tak terencana pada layanan TI atau penurunan kualitasnya, dan mendaftar tiga tantangan: kebisingan peringatan, penyelesaian masalah yang lama, dan sulitnya memprediksi gangguan. Untuk rincian, topik ini banyak bersandar pada dua bab buku *Site Reliability Engineering* Google, yang menjelaskan pendekatan komando insiden dan postmortem tanpa menyalahkan dari praktik di satu organisasi besar. Perlakukan bab-bab itu sebagai satu pendekatan yang terdokumentasi dengan baik, bukan satu-satunya.

## Konsep inti

### Apa itu insiden

**Insiden**, dalam penggunaan ITSM, adalah gangguan tak terencana pada layanan atau penurunan kualitasnya. Artikel ITSM juga mencakup gangguan "potensial". Insiden tidak sama dengan **masalah**, yang adalah penyebab mendasar, atau **permintaan layanan**, yang adalah permintaan rutin (lihat Topik 3.3 — Manajemen Masalah dan Topik 3.6 — Manajemen Permintaan Layanan). Memisahkan ketiganya penting karena masing-masing dikelola untuk tujuan berbeda: memulihkan layanan, menyingkirkan penyebab, dan memenuhi permintaan rutin.

### Tujuan: pulihkan layanan, jaga bukti

Tujuan pertama manajemen insiden adalah memulihkan layanan. Bab SRE tentang mengelola insiden menambahkan yang kedua: menjaga bukti yang diperlukan untuk menemukan akar penyebab kemudian. Praktik terbaik bab itu sendiri mengatakan untuk memprioritaskan memulihkan layanan dan menjaga bukti, dalam semangat itu. Memperbaiki penyebab dapat menyusul kemudian, dalam manajemen masalah.

### Mengapa insiden yang tidak dikelola salah arah

Bab SRE, ditulis Andrew Stribblehill, memakai contoh panjang tentang engineer on-call yang gangguannya tumbuh menjadi kegagalan total. Bab itu menyebut tiga bahaya insiden yang tidak dikelola:

- **Fokus tajam pada masalah teknis.** Engineer yang tenggelam dalam perbaikan kehilangan pandangan atas mitigasi dan gambaran yang lebih luas.
- **Komunikasi buruk.** Tak ada yang tahu apa yang dilakukan orang lain, dan pemangku kepentingan tetap tidak diberi tahu.
- **Freelancing.** Perubahan yang tidak terkoordinasi, seperti deployment menit terakhir, memperburuk keadaan.

### Peran di bawah tekanan

Bab itu mendasarkan pendekatannya pada Incident Command System, yang berasal dari tanggap darurat (artikel Wikipedia tentang manajemen insiden juga menyebutnya). Gagasan utamanya:

| Peran | Apa yang dilakukannya |
|---|---|
| **Incident commander** | Memegang keadaan tingkat tinggi, menyusun respons, menyingkirkan hambatan, dan memegang peran apa pun yang belum didelegasikan |
| **Operations lead** | Menerapkan perkakas pada masalah; hanya tim operasi yang mengubah sistem selama insiden |
| **Communications lead** | Menjadi wajah publik respons; menerbitkan pembaruan berkala dan menjaga dokumen insiden tetap mutakhir |
| **Planning lead** | Menangani isu jangka panjang seperti mengajukan bug, mengatur serah terima, dan melacak penyimpangan dari normal agar perubahan dapat dibalik |

Bab itu menyebut prinsipnya pemisahan tanggung jawab yang rekursif. Peran yang jelas memberi orang otonomi, karena mereka tidak perlu meragukan rekan, dan orang yang kewalahan meminta lebih banyak staf dan mendelegasikan sebagian pekerjaan. Serah terima antarkomandan eksplisit dan diakui.

### Dokumen insiden langsung

Bab itu mengatakan tugas terpenting komandan adalah menjaga dokumen langsung tentang keadaan insiden, idealnya dapat disunting beberapa orang sekaligus. Dokumen boleh berantakan tetapi harus tetap berguna, dengan informasi kunci di dekat bagian atas, dan disimpan untuk analisis kemudian. Kanal bersama atau ruangan fisik berfungsi sebagai pos komando.

### Kapan menyatakan insiden

Bab itu menganjurkan menyatakan insiden lebih awal, bukan berjam-jam setelah masalah memburuk. Ia menyarankan memperlakukan peristiwa sebagai insiden jika tim kedua harus dilibatkan untuk memperbaikinya, jika gangguan terlihat oleh pelanggan, atau jika tetap belum terselesaikan setelah satu jam analisis terkonsentrasi. Ini aturan praktis satu organisasi. Ambang Anda sendiri harus mencerminkan layanan dan pengguna Anda.

### Prioritas dan keparahan

Sumber yang dibaca untuk panduan ini tidak mendefinisikan tingkat prioritas atau keparahan, dan artikel Wikipedia tidak menyatakan satu pun. Dalam praktik, tim mendefinisikan tingkat dari dampak pada pengguna dan urgensi kebutuhan, dan memutuskan sebelumnya siapa yang dihubungi pada tiap tingkat. Jaga skema singkat, dengan contoh, dan periksa dengan menerapkannya pada insiden masa lalu.

### Komunikasi

Komunikasi punya dua audiens. Responder perlu tahu keadaan dan siapa mengerjakan apa. Pemangku kepentingan dan pengguna perlu tahu apa yang terdampak, apa yang dilakukan, dan kapan pembaruan berikutnya. Communications lead dalam bab SRE melayani audiens kedua dan menjaga log untuk yang pertama. Untuk gangguan yang menghadap publik, rencana komunikasi dalam krisis berguna (lihat keterampilan komunikasi krisis di bawah).

### Postmortem tanpa menyalahkan

Bab SRE tentang budaya postmortem menguraikan separuh pembelajaran. Postmortem mencatat insiden, dampaknya, mitigasi, akar penyebab, dan tindakan lanjutan. Tujuannya mendokumentasikan insiden, memahami semua akar penyebab yang berkontribusi, dan menerapkan tindakan pencegahan yang efektif. Ia tanpa menyalahkan: ia mengidentifikasi penyebab yang berkontribusi tanpa menyalahkan individu atau tim, dan mengasumsikan semua orang "had good intentions and did the right thing with the information they had." Dalam kata-kata bab itu, "You can't 'fix' people, but you can fix systems and processes."

Bab menyarankan menentukan pemicu postmortem sebelumnya, seperti waktu henti yang terlihat pengguna melebihi ambang, kehilangan data apa pun, intervensi on-call seperti rollback, waktu penyelesaian di atas ambang, atau kegagalan pemantauan. Bab juga mengatakan "An unreviewed postmortem might as well never have existed," dan karena itu menganjurkan sesi tinjauan berkala dan repositori bersama. Ia menjelaskan kegiatan pembangun budaya seperti buletin bulanan, klub baca, dan "Wheel of Misfortune" tempat insiden masa lalu dimainkan ulang.

### Insiden besar

Banyak praktik ITSM mendefinisikan **insiden besar** sebagai insiden yang memerlukan respons lebih formal daripada biasanya. Sumber yang dibaca di sini tidak mendefinisikannya, jadi lakukan dengan kata-kata Anda sendiri: misalnya, insiden yang memengaruhi banyak pengguna atau layanan kritis dan memerlukan respons terkoordinasi lintas tim. Yang penting adalah orang tahu sebelumnya apa yang berubah: siapa yang memimpin, siapa yang dihubungi, seberapa sering pembaruan dikirim.

### Insiden dan pengiriman berkelanjutan

Insiden sering muncul dari perubahan terbaru. Tim agile berada di posisi baik untuk belajar darinya karena mereka sering merilis dan punya putaran umpan balik pendek. Pembelajaran memerlukan jalur: tindakan postmortem masuk ke backlog dengan pemilik dan tanggal, dan insiden berulang masuk ke manajemen masalah. Tanpa jalur itu, penanganan insiden menjadi rutinitas perbaikan.

## Praktik terbaik

1. **Tentukan sebelumnya apa yang dihitung sebagai insiden.** Tulis definisi singkat dengan contoh, dan turunkan ambang untuk menyatakannya. Aturan praktis bab SRE adalah menyatakan lebih awal ketika tim kedua diperlukan, pelanggan dapat melihat masalah, atau satu jam analisis belum menyelesaikannya.
2. **Definisikan beberapa tingkat keparahan dengan contoh.** Dasarkan pada dampak pengguna, dan nyatakan siapa yang dihubungi pada tiap tingkat. Uji skema pada insiden masa lalu dan sesuaikan.
3. **Tetapkan peran di awal setiap insiden.** Tunjuk incident commander, operations lead, dan communications lead. Dalam tim kecil satu orang mungkin memegang lebih dari satu peran; ucapkan dengan lantang.
4. **Pisahkan memperbaiki dari mengoordinasikan.** Orang yang mengubah sistem sebaiknya tidak juga menjawab pertanyaan. Biarkan komandan mengoordinasikan dan communications lead memberi informasi.
5. **Simpan catatan langsung.** Pakai satu dokumen atau kanal bersama dengan cap waktu, keputusan, dan perubahan yang dibuat. Ia mendukung serah terima dan memberi postmortem bahannya.
6. **Izinkan hanya perubahan yang berwenang.** Bab SRE mengatakan hanya tim operasi yang boleh memodifikasi sistem selama insiden. Nyatakan siapa boleh mengubah apa, dan minta yang lain berbicara kepada komandan.
7. **Berkomunikasi menurut jadwal.** Sepakati selang pembaruan untuk tiap tingkat keparahan dan patuhi, bahkan saat tidak ada yang baru. Kebisuan menumbuhkan kekhawatiran dan pertanyaan ganda.
8. **Serahterimakan secara eksplisit.** Ketika komandan atau responder diganti, ucapkan dengan lantang dan minta orang lain mengakuinya. Serah terima yang tidak jelas kehilangan konteks.
9. **Berlatih.** Jalankan proses insiden pada peristiwa kecil dan dalam latihan, agar peran dikenal sebelum gangguan serius. Rotasikan orang melalui peran.
10. **Adakan postmortem tanpa menyalahkan ketika pemicu Anda terpenuhi.** Tulis bersama pihak yang terlibat, fokus pada penyebab yang berkontribusi dan perbaikan sistem, dan bagikan secara luas (lihat keterampilan postmortem di bawah).
11. **Ubah tindakan menjadi butir backlog.** Beri tiap tindak lanjut pemilik dan tanggal, dan tinjau pada rapat berkala. Postmortem yang tidak ditinjau tidak menghasilkan perubahan.
12. **Alirkan bukti ke manajemen masalah.** Kaitkan insiden berulang dengan catatan masalah, agar penyebab disingkirkan dan bukan hanya diperbaiki (lihat Topik 3.3 — Manajemen Masalah).

## Pertanyaan untuk dibahas bersama tim Anda

**Apa yang kita lakukan dalam sepuluh menit pertama insiden, dan siapa yang memutuskan?**

Telusuri insiden signifikan terakhir menit demi menit. Catat siapa yang memimpin, siapa yang berkomunikasi, dan siapa mengubah apa. Banyak tim menemukan bahwa peran diasumsikan dan bukan disepakati. Fasilitator dapat menanyakan apa yang akan terjadi jika pemimpin biasa tidak ada. Lanjutkan dengan menyepakati bagaimana peran ditetapkan lain kali.

**Kapan kita menyebut sesuatu insiden, dan kapan kita menunggu?**

Kumpulkan contoh peristiwa yang dinyatakan terlambat. Tanyakan apa yang menahan orang: tidak ingin merepotkan orang lain, ketidakpastian, atau takut disalahkan. Bandingkan dengan pemicu bab SRE. Sepakati ambang dan cara menyatakan insiden tanpa keributan.

**Bagaimana pengguna kita mengetahui apa yang terjadi selama gangguan, dan seberapa sering?**

Lihat gangguan terakhir dari sisi pengguna. Tanyakan siapa yang memberi tahu mereka, apa yang dikatakan, dan berapa lama jedanya. Sering kali jawabannya kebisuan panjang diikuti catatan singkat. Tanyakan siapa yang harus memiliki komunikasi dan apa yang harus dikatakan pesan pertama. Sepakati templat dan ritme pembaruan.

**Apa yang diubah postmortem terakhir kita, dan bagaimana kita tahu?**

Minta tindakan, pemilik, dan statusnya. Jika tak ada yang diselesaikan, tanyakan mengapa: tak ada pemilik, tak ada waktu, atau nilai yang tidak jelas. Cari tahu apakah postmortem dibaca siapa pun di luar tim. Sepakati sesi berkala untuk meninjau tindakan terbuka.

**Apakah orang merasa aman mengatakan apa yang mereka lakukan salah?**

Pertanyaan ini menguji ketiadaan menyalahkan. Minta orang menggambarkan bagaimana perasaan mereka menulis tentang kesalahan sendiri dalam postmortem. Dengarkan ketakutan akan akibat dan contoh ketika menyalahkan terjadi. Jangan menuntut keterbukaan; tanyakan apa yang perlu dilakukan tim dan pemimpin untuk membuatnya aman. Pilih satu langkah yang terlihat.

**Bagaimana kita berlatih, dan kapan terakhir kali kita melakukannya?**

Tanyakan apakah tim pernah menjalankan latihan atau insiden simulasi, dan apa yang dipelajarinya. Jika tidak pernah, bahas permulaan kecil, seperti memainkan ulang insiden masa lalu dalam satu jam. Bab SRE menyebut berlatih proses pada perubahan rutin dan latihan pemulihan bencana. Rencanakan satu untuk kuartal berikutnya.

## Dalam praktik: contoh ITIL agile

Portal pelanggan sebuah perusahaan listrik daerah memungkinkan rumah tangga melaporkan pemadaman dan melihat tagihan. Tim sebelas orang membangun dan menjalankannya, dengan jadwal on-call empat orang. Saat badai, lalu lintas laporan melonjak, portal melambat, lalu gagal. Engineer on-call mencoba memulai ulang basis data, engineer kedua secara bersamaan men-deploy perbaikan konfigurasi, dan engineer ketiga me-rollback rilis sebelumnya. Portal kembali setelah tiga jam, dan pusat panggilan, yang tak pernah diberi tahu, menerima ribuan panggilan marah.

Pada postmortem tim melihat tiga bahaya dari bab SRE: semua orang berfokus pada perbaikan teknis, tak ada yang berkomunikasi, dan perubahan bertabrakan. Mereka menulis proses insiden satu halaman. Siapa pun boleh menyatakan insiden, dan tim kedua yang terlibat, terlihatnya oleh pelanggan, atau satu jam tanpa kemajuan berarti mereka harus. Engineer on-call menjadi operations lead, dan jadwal menunjuk incident commander dan communications lead dari tim yang lebih luas. Hanya operations lead yang mengubah produksi. Communications lead mengirim pembaruan setiap 30 menit ke pusat panggilan dan ruang kendali. Kanal bersama menyimpan log langsung.

Pada badai berikutnya portal melambat lagi, insiden dinyatakan dalam sepuluh menit, dan layanan dipulihkan dalam 70 menit dengan pembaruan mengalir ke pusat panggilan sepanjang waktu. Masalah tersisa. Jadwal komandan punya celah pada hari libur, dan tim menemukan bahwa satu ketergantungan, penyedia pesan teks, tidak punya kontak eskalasi. Postmortem menghasilkan dua tindakan dengan pemilik: lengkapi jadwal dengan cadangan, dan sepakati jalur eskalasi dengan penyedia. Tim menjadwalkan pemutaran ulang insiden badai untuk anggota jadwal baru.

## Empat perspektif

### Tim produk dan pengiriman

Tim pengiriman menyebabkan dan memperbaiki banyak insiden. Bergabunglah dengan jadwal on-call atau beri dukungan langsung kepadanya, dan perlakukan tindakan postmortem sebagai butir backlog. Bangun sarana untuk mendeteksi dan me-rollback masalah ke dalam rilis Anda. Ikut serta dalam latihan agar peran dikenal.

### Tim layanan dan operasi

Tim operasi memiliki prosesnya. Jaga singkat dan terlatih, beri orang wewenang bertindak, dan simpan catatan yang dapat dipakai orang lain. Bagikan apa yang Anda pelajari kepada tim pengiriman, dan dorong pelajarannya ke manajemen masalah dan perencanaan.

### Kepemimpinan dan tata kelola

Pemimpin menetapkan budaya. Minta postmortem dan bacalah, puji orang yang melaporkan masalah, dan tolak mencari seseorang untuk disalahkan. Lindungi waktu untuk berlatih dan menyelesaikan tindakan. Putuskan siapa yang boleh mengeluarkan uang atau memanggil tingkat respons tertinggi.

### Pelanggan dan pengguna

Pelanggan dan pengguna membutuhkan pembaruan yang tepat waktu dan jujur serta cara yang jelas untuk melaporkan masalah. Tanyakan kepada penyedia Anda apa yang dapat diharapkan selama gangguan dan bagaimana Anda akan diberi tahu. Ketika postmortem dibagikan kepada Anda, bacalah untuk melihat apa yang akan diubah penyedia.

## Pola kegagalan umum

- **Tanpa peran.** Semua orang mengerjakan perbaikan teknis dan tak ada yang mengoordinasikan atau berkomunikasi. Sebaliknya, tunjuk incident commander, operations lead, dan communications lead setiap kali.
- **Menyatakan terlambat.** Orang menunggu sampai masalah buruk. Sebaliknya, tetapkan ambang rendah dan jelas dan normalkan menyatakan insiden.
- **Freelancing.** Beberapa orang mengubah sistem sekaligus. Sebaliknya, izinkan perubahan hanya lewat operations lead.
- **Kebisuan.** Pengguna dan pemangku kepentingan tidak mendengar apa pun. Sebaliknya, sepakati selang pembaruan dan templat.
- **Menyalahkan.** Postmortem mencari orang yang bersalah. Sebaliknya, tanyakan apa dalam sistem yang memungkinkan kesalahan dan perbaiki itu.
- **Postmortem yang tak ke mana-mana.** Tindakan tidak punya pemilik. Sebaliknya, masukkan ke backlog dengan tanggal dan tinjau secara berkala.
- **Tidak pernah berlatih.** Pertama kali proses dipakai adalah insiden besar. Sebaliknya, latih pada peristiwa kecil dan latihan.
- **Memperlakukan perbaikan sebagai penyelesaian.** Insiden yang sama kembali. Sebaliknya, kaitkan pengulangan dengan manajemen masalah dan perbaiki penyebabnya.

## Model kematangan

| Dimensi | Memulai | Mengembangkan | Menstandarkan | Mengelola | Mengorkestrasi |
|---|---|---|---|---|---|
| Deteksi dan pernyataan | Insiden diketahui lewat keluhan pengguna | Ada beberapa peringatan dan beberapa insiden dinyatakan | Ambang tertulis dan skema keparahan sederhana dipakai secara konsisten | Waktu deteksi dan waktu pernyataan dilacak dan dikurangi | Deteksi dan pernyataan dibagikan lintas tim dan pemasok |
| Respons dan peran | Responder berimprovisasi | Beberapa tim menunjuk pemimpin | Peran, serah terima, dan catatan langsung adalah standar | Waktu respons dan kinerja peran ditinjau | Respons dikoordinasikan lintas tim dan pemasok, dengan latihan bersama |
| Komunikasi | Pembaruan ad hoc | Beberapa pembaruan sampai ke beberapa audiens | Ritme pembaruan dan templat ada untuk tiap tingkat keparahan | Ketepatan waktu komunikasi diukur dan pengguna ditanya | Komunikasi dikoordinasikan dengan pelanggan dan mitra |
| Pembelajaran | Tinjauan hanya mengikuti insiden terburuk | Beberapa postmortem ditulis | Postmortem tanpa menyalahkan mengikuti pemicu yang ditetapkan, dengan tindakan dilacak | Penyelesaian tindakan dan pengulangan diukur | Pelajaran dibagikan lintas tim dan memberi masukan pada perubahan seluruh organisasi |

## Daftar periksa

- [ ] Kami punya definisi singkat insiden dengan contoh.
- [ ] Kami punya skema keparahan kecil dengan contoh dampak pengguna dan daftar panggilan.
- [ ] Setiap insiden dimulai dengan menunjuk incident commander, operations lead, dan communications lead.
- [ ] Catatan langsung disimpan untuk setiap insiden.
- [ ] Hanya operations lead yang ditunjuk yang mengubah produksi selama insiden.
- [ ] Selang pembaruan disepakati untuk tiap tingkat keparahan.
- [ ] Pemicu postmortem dituliskan.
- [ ] Postmortem tanpa menyalahkan, dibagikan, dan ditinjau.
- [ ] Setiap tindakan postmortem punya pemilik dan tanggal, dan tindakan terbuka ditinjau.
- [ ] Kami telah berlatih proses itu dalam enam bulan terakhir.

## Prompt AI

**Tujuan: menyusun proses insiden satu halaman dari praktik Anda saat ini.**

```text
Help me draft a one-page incident process for a team of [number] people who run [service].

How we handle incidents today: [describe in a few sentences].
Our on-call arrangement: [describe].
Who needs to be told during an incident: [list audiences].
Rules we must follow (contracts, regulations), with source text if you have it: [paste, or write "none known"].

Produce a short process with: what counts as an incident, a simple severity scheme with user-impact examples (leave numeric thresholds as [to be agreed]), the roles and what each does, how to communicate, and when to hold a postmortem. Mark every item that is an assumption. Do not invent obligations. Ask clarifying questions first, and list what you are unsure of.
```

**Tujuan: mengubah log insiden menjadi draf postmortem tanpa menyalahkan.**

```text
Below is the log of an incident: [paste timestamps, messages, and actions; remove personal data].
Impact as we know it: [describe users affected and for how long, using only facts].

Draft a blameless postmortem with: summary, impact, timeline, how it was detected, how it was mitigated, contributing causes (separate known from suspected), what went well, what went badly, and proposed actions with a suggested type (prevent, detect, respond) but no owners or dates. Describe actions of people neutrally, as roles. Do not invent facts or causes. Mark gaps with [UNKNOWN], and list what you are unsure of.
```

**Tujuan: menulis pembaruan status insiden untuk pemangku kepentingan non-teknis.**

```text
Write a status update for stakeholders who are not technical about this incident.

Facts: what is affected: [describe]; since when: [time]; what we know about the cause: [what is known, or "not yet known"]; what we are doing: [describe]; when the next update will come: [time].

Write under 120 words in plain language. State what we know and what we do not, without guessing at the cause or the time of recovery. Do not promise a resolution time unless I gave one. Offer two versions: one for customers and one for internal staff. List what you are unsure of.
```

**Tujuan: merancang latihan insiden kecil.**

```text
Design a 60-minute incident exercise for [number] people who run [service].

Scenario basis: [describe a past incident or a plausible failure, using only facts you want to use].
Roles to practice: incident commander, operations lead, communications lead.
Constraints: [for example no use of production systems].

Give a timed plan: briefing, the scenario released in three stages, prompts for each role, and a short review with questions on roles, communication, and records. Do not use real production access. Ask clarifying questions first if information is missing, mark assumptions, and list what you are unsure of.
```

## Keterampilan AI

- [incident-response-plan](../../../../skills/incident-response-plan/SKILL.md): gunakan untuk menulis rencana yang menetapkan peran, ambang, dan komunikasi bagi tim Anda.
- [postmortem](../../../../skills/postmortem/SKILL.md): gunakan untuk menjalankan tinjauan tanpa menyalahkan dan mencatat tindakan setelah insiden.
- [runbook](../../../../skills/runbook/SKILL.md): gunakan untuk mengubah perbaikan yang diketahui menjadi prosedur singkat bagi responder.
- [on-call-rotation](../../../../skills/on-call-rotation/SKILL.md): gunakan untuk merancang jadwal yang adil dengan cadangan dan serah terima.
- [crisis-communication-plan](../../../../skills/crisis-communication-plan/SKILL.md): gunakan untuk merencanakan apa yang Anda sampaikan kepada pengguna, staf, dan publik selama gangguan besar.

## Sumber utama

- **Managing Incidents** (Andrew Stribblehill, dalam *Site Reliability Engineering*, Google, sre.google): uraian publik paling jelas tentang komando insiden bagi tim layanan.
- **Postmortem Culture: Learning from Failure** (*Site Reliability Engineering*, Google, sre.google): argumen untuk postmortem tanpa menyalahkan, dengan pemicu dan gagasan pembangun budaya.
- **Incident management** (Wikipedia): tinjauan multibidang dengan bagian tentang manajemen layanan TI.
- **IT service management** (Wikipedia): definisi insiden dan tempat penanganan insiden dalam service desk.

## Referensi

1. Managing Incidents — Andrew Stribblehill, Google SRE book, sre.google — https://sre.google/sre-book/managing-incidents/
2. Postmortem Culture: Learning from Failure — Google SRE book, sre.google — https://sre.google/sre-book/postmortem-culture/
3. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
4. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
5. Incident Command System — Wikipedia — https://en.wikipedia.org/wiki/Incident_Command_System
6. Root cause analysis — Wikipedia — https://en.wikipedia.org/wiki/Root_cause_analysis
7. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
8. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
9. Computer security incident management — Wikipedia — https://en.wikipedia.org/wiki/Computer_security_incident_management
