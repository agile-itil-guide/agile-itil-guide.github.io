# DevOps

**DevOps adalah upaya membawa pengembangan dan operasi ke dalam satu aliran kerja dengan kepemilikan bersama, otomatisasi, dan umpan balik cepat, dan ia melengkapi manajemen layanan dengan menaruh kendali yang dipedulikan ITIL ke dalam pipeline.**

## Mengapa ini penting

DevOps adalah nama yang diberikan sebagian besar organisasi pada titik temu antara pengiriman berkelanjutan dan operasi TI. Ia tumbuh dari frustrasi: pengembang dihargai karena perubahan dan staf operasi karena stabilitas, sehingga kedua kelompok menarik ke arah berlawanan, dan serah terima di antaranya adalah tempat kecepatan dan kualitas hilang. DevOps meminta keduanya berbagi tanggung jawab atas seluruh jalur dari gagasan sampai layanan yang berjalan.

Bagi orang yang bekerja di ITSM, DevOps bisa tampak mengancam atau berlebihan. Mengancam, karena tampak menepis proses yang dibangun operasi setelah pengalaman keras. Berlebihan, karena banyak yang dianjurkannya, seperti tinjauan insiden, otomatisasi, dan peningkatan berkelanjutan, sudah ada dalam ITIL. Keduanya tidak sepenuhnya benar. Artikel Wikipedia tentang DevOps membandingkan DevOps dengan apa yang disebutnya kerangka ITIL yang "top-down" dan kaku pada 1990-an, yang benar untuk versi lama; ITIL 4 ditulis agar selaras dengan agile, DevOps, dan lean (lihat Topik 2.2 — ITIL).

Definisi DevOps diperdebatkan, dan artikel Wikipedia mengatakannya. Topik ini memakai artikel itu, halaman riset DORA, dan uraian Gene Kim tentang "Three Ways," dan menyebut apa yang mapan, apa yang diperdebatkan, dan apa yang tidak dapat diverifikasi panduan ini.

## Konsep inti

### Apa itu DevOps

[Artikel Wikipedia tentang DevOps](https://en.wikipedia.org/wiki/DevOps) menggambarkannya sebagai integrasi dan otomatisasi pengembangan perangkat lunak dan operasi TI, yang dapat mempersingkat waktu pengembangan dan memperbaiki siklus hidup pengembangan. Ia mengutip peneliti akademik Len Bass, Ingo Weber, dan Liming Zhu, yang menjelaskannya sebagai seperangkat praktik yang bertujuan mengurangi waktu antara meng-commit perubahan ke sistem dan penempatannya yang normal di produksi. Artikel mencatat bahwa istilah ini dipakai dalam beberapa konteks dan definisinya diperdebatkan, dan bahwa studi akademik dari 2015 sampai 2017 tidak menemukan konsensus tentang cirinya.

Artikel melaporkan bahwa usulan menggabungkan metode pengembangan dengan deployment dan operasi berasal dari akhir 1980-an dan awal 1990-an, dan bahwa konferensi DevOps Days pertama diadakan di Ghent, Belgia, pada 2009, didirikan Patrick Debois. Ia umumnya mencirikan DevOps dengan tiga prinsip, kepemilikan bersama, otomatisasi alur kerja, dan umpan balik cepat, dan mencatat bahwa karakterisasi ini sendiri diperdebatkan.

### Three Ways

Gene Kim, penulis *The Phoenix Project* dan *The DevOps Handbook*, menjelaskan tiga prinsip yang, katanya, pola DevOps dapat diturunkan darinya. Seperti diringkas dalam tulisan Kim sendiri di situs IT Revolution dan dalam ringkasan sekunder:

| Cara | Gagasan | Contoh |
|---|---|---|
| **Cara Pertama: aliran** | Lihat kinerja seluruh sistem, bukan satu silo; percepat pekerjaan dari gagasan ke nilai | Jangan teruskan cacat yang diketahui ke hilir; jangan biarkan optimalisasi lokal menurunkan keseluruhan; selalu upayakan menambah aliran |
| **Cara Kedua: umpan balik** | Persingkat dan perkuat sinyal yang mengalir kembali dari tahap kemudian ke yang lebih awal | Telemetri, pipeline yang cepat gagal, umpan balik pelanggan |
| **Cara Ketiga: pembelajaran dan eksperimen berkelanjutan** | Bangun budaya yang mengambil risiko kecil yang disengaja dan belajar darinya | Menyisihkan waktu untuk belajar, mengubah penemuan lokal menjadi perbaikan global |

Ini cocok dengan tema panduan ini sendiri: aliran (lihat Topik 1.5 — Kanban dan Topik 1.7 — Pengembangan Perangkat Lunak Lean), umpan balik (lihat Topik 3.10 — Pemantauan dan Manajemen Peristiwa), dan pembelajaran (lihat Topik 1.10 — Pembelajaran Agile). Catatan terminologi: tulisan Kim menamai Cara Kedua "amplify feedback loops," dan Handbook menyebutnya "feedback."

### Praktik

Menurut Wikipedia, integrasi berkelanjutan dan pengiriman berkelanjutan sangat penting bagi keberhasilan DevOps, bersama otomatisasi. Artikel menyebut kendali versi, mesin virtual, kontainerisasi, dan DevOps basis data, yang menerapkan kendali versi, pengujian otomatis, dan CI/CD pada perubahan skema dan data. Ia menjelaskan GitOps sebagai mengelola konfigurasi deployment dalam kendali versi, dan DevSecOps sebagai mengintegrasikan keamanan ke dalam pengiriman lewat pengujian "shift left," termasuk analisis statis dan dinamis. Daftar kapabilitas DORA mencakup pengiriman berkelanjutan, integrasi berkelanjutan, otomatisasi deployment, otomatisasi pengujian, trunk-based development, kendali versi, manajemen perubahan basis data, pemantauan dan observabilitas, keamanan yang menyeluruh, bekerja dalam batch kecil, dan batas pada pekerjaan dalam proses (lihat Topik 3.5 — Manajemen Rilis dan Deployment).

### Budaya

Daftar kapabilitas DORA, yang dibaca untuk panduan ini, mencakup butir budaya: budaya organisasi generatif, budaya pembelajaran, kepemimpinan transformasional, kepuasan kerja, kesejahteraan, dan eksperimen tim. Halaman yang mendaftarnya tidak menjelaskannya, dan tidak memeringkatnya. Halaman DORA lain mengatakan metriknya memprediksi kinerja organisasi dan kesejahteraan anggota tim, dan memperingatkan terhadap kepemilikan yang terkotak, menganjurkan kepemilikan bersama di antara tim pengembangan, operasi, dan rilis. Ini sejalan dengan Cara Ketiga: DevOps sama banyaknya tentang bagaimana orang bekerja bersama seperti tentang perkakas.

Mnemonik umum **CALMS** (culture, automation, lean, measurement, sharing) sering dipakai untuk merangkum DevOps. Artikel Wikipedia tentang DevOps tidak menyebutnya, dan panduan ini tidak memverifikasi asal-usulnya, jadi hanya disebut di sini karena pembaca akan menemuinya.

### DevOps dan agile

Artikel mengatakan build dan pengujian otomatis, integrasi berkelanjutan, dan pengiriman berkelanjutan berasal dari dunia agile, dan bahwa Scrum yang tidak memuat praktik rekayasa menyebabkan pekerjaan otomatisasi terpisah menjadi DevOps. Ini cocok dengan Topik 1.4 — Perkiraan Pengiriman dan Metrik Perencanaan, yang mencatat bahwa Scrum tidak mengatakan cara membangun, menguji, men-deploy, atau mengoperasikan perangkat lunak. Extreme Programming sudah memuat banyak praktik rekayasa (lihat Topik 1.6 — Extreme Programming). DevOps memperluas perhatian agile melampaui titik rilis.

### DevOps dan ITIL

Artikel membandingkan DevOps dengan kerangka ITIL yang "top-down" dan kaku pada 1990-an dan tidak membahas ITSM lebih lanjut. Gambaran yang lebih adil untuk hari ini:

| | Cenderung menekankan | Risiko jika dipakai sendiri |
|---|---|---|
| **DevOps** | Aliran, otomatisasi, kepemilikan bersama, umpan balik cepat | Mengabaikan catatan, kendali, dan pandangan layanan yang lebih luas |
| **ITIL 4** | Nilai, praktik, tata kelola, rentang luas praktik layanan | Memperlakukan praktik sebagai proses berat |

Skema sertifikasi ITIL 4 sendiri mencakup modul spesialis bernama High Velocity IT (HVIT) dalam jalur Managing Professional, seperti didaftar artikel Wikipedia tentang ITIL. Itu menunjukkan pemilik memperlakukan pekerjaan digital yang bergerak cepat sebagai topik tersendiri. Kombinasi praktis: pakai praktik DevOps untuk mengimplementasikan praktik ITIL dalam pipeline, seperti mencatat perubahan secara otomatis, menjalankan pengujian sebagai kendali risiko, dan pemantauan sebagai praktik peristiwa (lihat Topik 3.4 — Pemampuan Perubahan dan Topik 5.1 — Manajemen Layanan Agile).

### DevOps dan site reliability engineering

Artikel Wikipedia mengatakan Google mengembangkan site reliability engineering pada 2003, dan bahwa sebagian penulis aslinya memandang SRE sebagai implementasi DevOps. Artikel SRE menyebutnya implementasi spesifik DevOps, lebih sempit karena berkonsentrasi membangun sistem yang andal (lihat Topik 5.3 — Site Reliability Engineering).

### Ukuran

Ukuran kinerja pengiriman perangkat lunak DORA memberi kosakata bersama: lead time perubahan, frekuensi deployment, waktu pemulihan deployment gagal, laju kegagalan perubahan, dan laju pengerjaan ulang deployment (lihat Topik 3.4 — Pemampuan Perubahan dan Topik 5.6 — Metrik dan Pengukuran). Artikel Wikipedia melaporkan bahwa metrik diterbitkan pada 2016, bahwa ukuran pemulihan diganti nama dalam laporan 2023, bahwa ukuran pengerjaan ulang ditambahkan pada 2024, dan bahwa pada 2025 DORA mengganti tingkatan kinerja dengan tujuh arketipe tim. Ia juga mencatat bahwa sebagian pakar mengkritik metodologi dan metrik riset DORA. Perlakukan ukuran sebagai pertanyaan yang berguna dan bukan sebagai skor.

### Kritik dan batasan

Di luar tiadanya definisi yang mapan, artikel melaporkan kritik terhadap metodologi DORA. Kritik praktis umum, yang ditawarkan di sini sebagai pengalaman praktik dan bukan temuan sumber, mencakup "DevOps" dipakai sebagai nama jabatan untuk peran operasi lama, perkakas diadopsi tanpa perubahan budaya, dan kepatuhan diabaikan dalam mengejar kecepatan. Artikel tidak memberi statistik adopsi.

## Praktik terbaik

1. **Sepakati apa yang Anda maksud dengan DevOps.** Tulis pernyataan singkat tentang artinya bagi tim Anda, seperti kepemilikan bersama atas layanan, pengiriman otomatis, dan umpan balik cepat. Definisi bersama mencegah perdebatan tentang label.
2. **Bagi kepemilikan layanan.** Jadikan orang yang membangun layanan bertanggung jawab atas bagaimana ia berjalan, dan beri mereka sarananya: on-call, pemantauan, dan akses. Dukung mereka dengan keahlian operasi.
3. **Otomatisasi jalur ke produksi.** Bangun pipeline yang membangun, menguji, dan men-deploy setiap perubahan. Catat apa yang dilakukannya. Perlakukan pipeline sebagai produk dengan pengguna.
4. **Bekerja dalam batch kecil.** Rilis perubahan kecil sering. Ini mengurangi risiko dan mempercepat umpan balik, seperti disarankan daftar kapabilitas DORA.
5. **Persingkat putaran umpan balik.** Buat hasil pengujian, pemantauan, dan umpan balik pengguna terlihat oleh tim dalam hitungan menit atau jam. Ikuti Cara Kedua: perkuat sinyal yang mengalir kembali.
6. **Lihat seluruh aliran.** Petakan jalur dari gagasan ke layanan yang berjalan dan temukan penantian terpanjang, termasuk yang di luar tim pengembangan. Ikuti Cara Pertama: jangan mengoptimalkan satu silo dengan mengorbankan keseluruhan (lihat Topik 5.4 — Manajemen Aliran Nilai).
7. **Bangun keamanan dan kepatuhan ke dalamnya.** Taruh pemeriksaan keamanan dan kebijakan otomatis dalam pipeline, dan catat bukti sebagai hasil sampingan (lihat Topik 3.13 — Manajemen Keamanan Informasi dan Topik 5.7 — Tata Kelola, Risiko, dan Kepatuhan).
8. **Perlakukan budaya sebagai perhatian utama.** Investasikan pada pembelajaran, tinjauan tanpa menyalahkan, rasa aman psikologis, dan tujuan bersama. Daftar kapabilitas DORA memuat budaya berdampingan dengan butir teknis karena suatu alasan.
9. **Sediakan waktu untuk belajar dan bereksperimen.** Sisihkan waktu dan tempat aman untuk eksperimen, dan bagikan pelajaran. Ikuti Cara Ketiga.
10. **Pakai praktik ITIL di tempat membantu.** Pertahankan praktik insiden, masalah, perubahan, dan pengetahuan, diimplementasikan lewat otomatisasi dan catatan ringan. Singkirkan langkah yang tak melayani tujuannya.
11. **Ukur dengan hati-hati.** Lacak ukuran gaya DORA per layanan, perbaiki terhadap kinerja masa lalu Anda sendiri, dan hindari menetapkannya sebagai target (lihat Topik 5.6 — Metrik dan Pengukuran).
12. **Hindari jebakan jabatan.** Jangan membuat "tim DevOps" terpisah yang menjadi silo baru antara pengembangan dan operasi. Sebarkan praktik lintas tim, dan pakai tim platform atau pemampu untuk membantu.

## Pertanyaan untuk dibahas bersama tim Anda

**Apa arti DevOps di sini, dan di mana kita pertama kali mendengar kata itu?**

Minta definisi satu kalimat dari tiap orang. Bandingkan. Artikel Wikipedia mengatakan definisinya diperdebatkan, jadi perbedaan diharapkan. Tulis pernyataan bersama yang konkret: siapa memiliki apa, apa yang diotomatisasi, umpan balik apa yang ada. Fasilitator dapat menanyakan apa yang telah berubah karena kata itu sejauh ini.

**Di mana perubahan menunggu antara "siap" dan "live," dan siapa yang memiliki penantian itu?**

Telusuri perubahan terbaru dan daftar penantian: tinjauan, persetujuan, lingkungan, jendela rilis. Tandai yang di luar tim. Tanyakan penantian mana yang melindungi dari risiko nyata dan mana yang kebiasaan. Pilih satu untuk dipersingkat, bekerja dengan pemiliknya.

**Ketika sesuatu rusak di produksi, siapa yang on-call, dan apakah mereka punya sarana untuk memperbaikinya?**

Tanyakan siapa yang di-page dan apa yang dapat mereka lakukan sendiri. Jika pembangun tidak on-call, tanyakan mengapa. Jika staf operasi tidak dapat mengubah kode, tanyakan apa yang mereka lakukan. Bahas seperti apa kepemilikan bersama di sini dan dukungan apa yang diperlukan.

**Umpan balik apa yang kita dapat setelah rilis, dan seberapa cepat?**

Daftar sinyal: pengujian, pemantauan, tiket dukungan, komentar pengguna. Tanyakan berapa lama masing-masing sampai ke tim. Jawaban lazim: pengujian dalam menit, tiket dalam hari. Pilih satu sinyal untuk dipercepat.

**Seberapa aman mencoba sesuatu dan gagal?**

Minta contoh terbaru eksperimen yang gagal dan apa yang terjadi pada orang yang terlibat. Cara Ketiga bergantung pada belajar dari kegagalan kecil. Bahas apa yang akan membuat eksperimen lebih aman, seperti batas, rollback, dan tinjauan tanpa menyalahkan.

**Bagaimana praktik ITIL kita muncul dalam pipeline, dan di mana tidak?**

Ambil praktik perubahan, insiden, dan pengetahuan dan tanyakan di mana masing-masing muncul dalam otomatisasi. Celah menunjuk pekerjaan manual atau kendali yang tak dibuktikan. Sepakati satu praktik untuk dipindahkan ke pipeline.

## Dalam praktik: contoh ITIL agile

Jasa pos nasional punya kelompok pengembangan 40 orang dan kelompok operasi 25 orang. Pengembang merilis versi besar setiap kuartal dan menyerahkan paket dan dokumen panjang kepada operasi, yang men-deploy-nya selama akhir pekan. Operasi mengeluh bahwa pengembang tidak memahami produksi, dan pengembang mengeluh bahwa operasi tidak dapat dihubungi ketika cacat memerlukan perbaikan cepat. Rilis terbaru memakan 19 jam, merusak halaman pelacakan paket, dan menimbulkan sehari saling tunjuk.

Kepala platform baru mengusulkan uji coba dengan satu tim produk, layanan pelacakan paket. Empat pengembang dan dua engineer operasi membentuk satu tim yang memiliki layanan dari ujung ke ujung. Pengembang bergabung dengan jadwal on-call, didukung engineer operasi. Tim membangun pipeline yang membangun, menguji, dan men-deploy setiap perubahan yang digabung ke lingkungan staging, dan men-deploy ke produksi dengan satu langkah persetujuan yang diberikan pemilik layanan. Catatan perubahan dibuat oleh pipeline. Pemantauan ditambahkan, peringatan masuk ke seluruh tim, dan setiap insiden produksi mendapat tinjauan tanpa menyalahkan singkat. Tim menyepakati merilis setidaknya mingguan, dan kepala platform memintanya melacak lead time, frekuensi deployment, laju kegagalan perubahan, dan waktu pemulihan.

Setelah empat bulan tim merilis dua kali seminggu, median waktu dari penggabungan ke produksi di bawah sehari, dan insiden terakhir diperbaiki dalam kurang dari sejam oleh pengembang yang menulis perubahan. Tidak semuanya berhasil. Engineer operasi menemukan bahwa peringatan pengembang bising, dan pengembang kesal harus on-call pada malam hari. Tim tetangga yang bergantung pada pelacakan paket tidak diberi tahu tentang irama baru dan terkejut oleh sebuah perubahan. Kepala platform menyisihkan waktu bagi tim untuk menyetel peringatan, menambahkan jadwal dengan batas panggilan malam, dan mengatur rapat bulanan dengan tim yang bergantung. Audit internal meminta melihat bukti persetujuan, dan kepala platform menunjukkan catatan pipeline dan tinjauan insiden.

## Empat perspektif

### Tim produk dan pengiriman

Tim pengiriman mengambil tanggung jawab operasional: pemantauan, on-call, dan pembelajaran insiden. Bangun pipeline dan umpan balik yang Anda butuhkan, dan minta keahlian operasi alih-alih menyerahkan. Jaga perubahan tetap kecil dan terlihat.

### Tim layanan dan operasi

Tim operasi membawa pengetahuan tentang bagaimana layanan gagal dan kendali mana yang penting. Bantu membangun platform dan pemeriksaan, bagi on-call, dan ajarkan. Hindari menjadi gerbang; jadilah pemampu yang menjadikan jalur aman sebagai jalur mudah.

### Kepemimpinan dan tata kelola

Pemimpin menciptakan kondisi: tujuan bersama lintas pengembangan dan operasi, waktu untuk otomatisasi, budaya yang belajar dari kegagalan, dan kepercayaan pada bukti dari pipeline. Hindari mengganti nama tim tanpa mengubah insentif, dan minta hasil, bukan adopsi DevOps.

### Pelanggan dan pengguna

Pelanggan dan pengguna melihat DevOps sebagai perbaikan lebih cepat dan pemulihan lebih cepat. Harapkan perubahan kecil yang sering dan komunikasi yang jelas tentangnya. Beri umpan balik dengan cepat, karena tim disiapkan untuk memakainya.

## Pola kegagalan umum

- **Tim DevOps sebagai silo baru.** Pengembangan dan operasi masih tidak berbicara. Sebaliknya, sebarkan praktik lintas tim dan pakai tim platform untuk memampukan.
- **Perkakas tanpa budaya.** Pipeline dibangun dan tak ada yang lain berubah. Sebaliknya, ubah kepemilikan, insentif, dan umpan balik bersama-sama.
- **Kecepatan tanpa keselamatan.** Rilis dipercepat dan kegagalan naik. Sebaliknya, investasikan pada pengujian, pemantauan, dan rollback sebelum laju.
- **Meninggalkan ITIL sepenuhnya.** Catatan dan kendali lenyap. Sebaliknya, pertahankan praktik dan implementasikan dalam pipeline.
- **Pengembang on-call tanpa dukungan.** Kelelahan menyusul. Sebaliknya, bagi jadwal, setel peringatan, dan batasi panggilan malam.
- **Metrik sebagai target.** Tim memainkan hitungan deployment. Sebaliknya, pakai beberapa ukuran dan bandingkan dengan riwayat Anda sendiri.
- **Mengabaikan tim yang bergantung.** Perubahan mengejutkan tetangga. Sebaliknya, komunikasikan irama dan perubahan kepada tim yang bergantung pada tim Anda.
- **Memperlakukan kata sebagai tujuan.** Label menggantikan hasil. Sebaliknya, tanyakan seperti apa aliran, umpan balik, dan pembelajaran yang lebih baik bagi pengguna Anda.

## Model kematangan

| Dimensi | Memulai | Mengembangkan | Menstandarkan | Mengelola | Mengorkestrasi |
|---|---|---|---|---|---|
| Kepemilikan bersama | Pengembangan dan operasi menyerahterimakan saat rilis | Beberapa tim berbagi on-call | Tim memiliki layanan mereka dari ujung ke ujung dengan dukungan | Dampak kepemilikan pada kualitas dan beban diukur | Model kepemilikan dikoordinasikan lintas tim, platform, dan pemasok |
| Otomatisasi dan aliran | Pengiriman manual dan borongan | Beberapa pipeline ada | Pipeline umum membangun, menguji, men-deploy, dan mencatat perubahan | Lead time, frekuensi, kegagalan, dan pemulihan diukur dan disetel | Pipeline dan aliran dioptimalkan lintas tim dan aliran nilai |
| Umpan balik | Umpan balik datang dari pengguna setelah masalah | Beberapa tim memantau rilis | Pengujian, pemantauan, dan umpan balik pengguna sampai ke tim dalam menit atau jam | Kecepatan dan kualitas umpan balik diukur dan diperbaiki | Putaran umpan balik mencakup tim, pemasok, dan pelanggan |
| Budaya dan pembelajaran | Menyalahkan mengikuti kegagalan | Beberapa tinjauan tanpa menyalahkan | Tinjauan tanpa menyalahkan, eksperimen, dan waktu belajar adalah rutin | Tindakan pembelajaran dilacak dan hasilnya diperiksa | Pembelajaran menyebar di seluruh organisasi secara terus-menerus |

## Daftar periksa

- [ ] Kami punya definisi tertulis bersama tentang arti DevOps bagi kami.
- [ ] Tim yang membangun layanan berbagi tanggung jawab menjalankannya.
- [ ] Pipeline membangun, menguji, dan men-deploy perubahan dan mencatat apa yang dilakukannya.
- [ ] Perubahan dirilis dalam batch kecil, sering.
- [ ] Umpan balik pengujian, pemantauan, dan pengguna sampai ke tim dengan cepat.
- [ ] Pemeriksaan keamanan dan kebijakan berjalan dalam pipeline.
- [ ] On-call dibagi, dengan batas panggilan malam dan peringatan yang disetel.
- [ ] Tinjauan insiden tanpa menyalahkan dan menghasilkan tindakan yang dimiliki.
- [ ] Kami melacak lead time, frekuensi deployment, laju kegagalan perubahan, dan waktu pemulihan untuk tiap layanan.
- [ ] Tim yang bergantung diberi tahu tentang irama rilis dan perubahan besar kami.

## Prompt AI

**Tujuan: memetakan penantian antara "siap" dan "live."**

```text
Help me map the waits for a typical change in [team or service].

The steps from "ready" to "live," who does each, whether it is manual or automated, and how long work waits before it (use real data; mark estimates as estimates): [paste].

Produce a simple text diagram, highlight the three longest waits and which team owns each, and suggest, for each, a question to ask about whether the wait protects against a real risk. Do not invent durations. If the data are too thin, say what to collect. Ask clarifying questions first, and list what you are unsure of.
```

**Tujuan: memeriksa di mana praktik ITIL muncul dalam pipeline Anda.**

```text
Help me compare our pipeline with service management practices.

What our pipeline does today, step by step: [paste].
The practices we want to check: change enablement, release and deployment, incident management, problem management, knowledge management, configuration management.

For each practice, say what in the pipeline description appears to support it (quote my words), what is missing, and one question to ask. Do not claim that a standard requires anything unless I pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Tujuan: merencanakan uji coba kepemilikan bersama dengan satu tim.**

```text
Plan a four-month pilot of shared ownership for [service], bringing together [number] developers and [number] operations engineers.

Today's arrangement: [describe who builds, who runs, who is on call].
Concerns from each side: development [list]; operations [list].
Measures we have: [list].

Give a plan with: team formation, on-call arrangements with limits, pipeline and monitoring work, how the team learns from incidents, which measures to review (leave targets as [to be agreed]), what evidence to keep for audit, and how to tell dependent teams. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Tujuan: merancang tinjauan insiden tanpa menyalahkan untuk tim campuran.**

```text
Design a 45-minute blameless review for this incident: [describe the incident factually].

People involved: [roles from development and operations].
Information available (timeline, alerts, changes): [list].

Provide an agenda that builds the timeline first, identifies contributing causes in systems and processes, notes what went well, and ends with at most three actions with owners. Include prompts that avoid blame. Ask clarifying questions first, and list what you are unsure of.
```

## Keterampilan AI

- [agile-delivery](../../../../skills/agile-delivery/SKILL.md): gunakan untuk merencanakan rilis kecil yang sering dan pemeriksaan di sekitarnya.
- [test-driven-development](../../../../skills/test-driven-development/SKILL.md): gunakan untuk membangun pengujian otomatis yang menjadi tumpuan pipeline.
- [shift-left-testing](../../../../skills/shift-left-testing/SKILL.md): gunakan untuk memindahkan pengujian dan pemeriksaan keamanan lebih awal dalam pipeline.
- [on-call-rotation](../../../../skills/on-call-rotation/SKILL.md): gunakan untuk merancang on-call bersama dengan batas yang adil.
- [postmortem](../../../../skills/postmortem/SKILL.md): gunakan untuk menjalankan tinjauan tanpa menyalahkan yang memberi masukan pada Cara Ketiga.

## Sumber utama

- **DevOps** (Wikipedia): tinjauan definisi, praktik, hubungan dengan agile, SRE dan DevSecOps, dan metrik DORA, dengan perdebatan yang dicatat.
- **The Three Ways: The Principles Underpinning DevOps** (Gene Kim, IT Revolution): sumber untuk aliran, umpan balik, dan pembelajaran berkelanjutan.
- **DORA capabilities and metrics** (dora.dev): daftar kapabilitas program riset dan ukuran pengiriman perangkat lunaknya.
- **The DevOps Handbook** dan **The Phoenix Project** (Gene Kim dan rekan penulis): buku yang mengembangkan Three Ways secara rinci.

## Referensi

1. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
2. The Three Ways: The Principles Underpinning DevOps — Gene Kim, IT Revolution — https://itrevolution.com/the-three-ways-principles-underpinning-devops/
3. DORA capabilities — DORA, dora.dev — https://dora.dev/capabilities/
4. DORA's software delivery performance metrics — DORA, dora.dev — https://dora.dev/guides/dora-metrics-four-keys/
5. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
6. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
7. Continuous delivery — Wikipedia — https://en.wikipedia.org/wiki/Continuous_delivery
8. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
9. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
