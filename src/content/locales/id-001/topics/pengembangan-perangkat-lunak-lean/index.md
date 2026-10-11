# Pengembangan Perangkat Lunak Lean

**Pengembangan perangkat lunak lean menerapkan gagasan lean tentang menghilangkan pemborosan, belajar cepat, dan mengoptimalkan seluruh sistem pada pekerjaan perangkat lunak, dan ia memberi tim layanan cara bersama untuk melihat di mana waktu dan tenaga bocor dari aliran antara permintaan dan nilai.**

## Mengapa ini penting

Metode agile menyuruh Anda mengirim dalam langkah kecil dan belajar. Lean mengajukan pertanyaan yang lebih tajam: ke mana waktu pergi? Di sebagian besar organisasi layanan, waktu kerja pada sebuah permintaan hanyalah bagian kecil dari waktu yang berlalu. Sisanya adalah menunggu persetujuan, serah terima antartim, pengerjaan ulang akibat cacat, dan pekerjaan yang sejak awal tidak diinginkan siapa pun. Lean memberi Anda kata dan perkakas untuk melihat pemborosan itu dan menyingkirkannya.

Lean juga memusatkan perhatian pada seluruh sistem. Tim yang mempercepat bagiannya sendiri sementara antrean sebelum atau sesudahnya bertambah panjang tidak memperbaiki apa pun bagi pelanggan. Pandangan ini cocok dengan manajemen layanan. Layanan adalah jumlah dari banyak tim, perkakas, dan pemasok, dan penundaan di mana pun adalah penundaan bagi pengguna. Prinsip "optimalkan keseluruhan" adalah pengingat tetap untuk melihat aliran ujung ke ujung.

Lean adalah sumber bagi banyak hal yang muncul di bagian lain panduan ini. Kanban bersumber dari akar yang sama (lihat Topik 1.5 — Kanban), manajemen aliran nilai menerapkan pemetaan lean pada pekerjaan digital (lihat Topik 5.4 — Manajemen Aliran Nilai), dan peningkatan berkelanjutan menggemakan kebiasaan lean berupa keuntungan kecil yang terus-menerus (lihat Topik 3.15 — Peningkatan Berkelanjutan). Topik ini menjelaskan gagasan-gagasan itu dan cara memakainya tanpa mengubahnya menjadi slogan.

## Konsep inti

### Dari mana lean berasal

Menurut [artikel Wikipedia tentang manufaktur lean](https://en.wikipedia.org/wiki/Lean_manufacturing), lean tumbuh dari [Toyota Production System](https://en.wikipedia.org/wiki/Toyota_Production_System). Setelah Perang Dunia Kedua, produsen Jepang hanya punya sedikit uang tunai, ruang, atau bahan mentah, dan Taiichi Ohno serta Shigeo Shingo merancang ulang proses Toyota di sekitar pabrik kecil dan persediaan rendah, dengan bertumpu pada ajaran W. Edwards Deming. John Krafcik menciptakan istilah "lean" dalam artikel 1988, dan James Womack serta Daniel Jones mendefinisikannya secara formal dalam buku mereka tahun 1996, *Lean Thinking*.

Istilah "pengembangan perangkat lunak lean" berasal dari buku 2003 *Lean Software Development: An Agile Toolkit* karya Mary dan Tom Poppendieck, menurut [artikel Wikipedia tentang pengembangan perangkat lunak lean](https://en.wikipedia.org/wiki/Lean_software_development). Buku itu mengadaptasi prinsip manufaktur lean ke perangkat lunak dan membandingkan perkakas lean dengan praktik agile. Ceramah keluarga Poppendieck di konferensi agile membantu membawa gagasan itu ke komunitas agile.

### Lima prinsip berpikir lean

Womack dan Jones menetapkan lima prinsip berpikir lean, seperti dicatat artikel manufaktur:

1. **Nilai:** definisikan nilai dari sudut pandang pelanggan.
2. **Aliran nilai:** kenali seluruh urutan langkah yang menciptakan nilai itu, dan tantang langkah yang tidak menambah nilai.
3. **Aliran:** buat langkah-langkah yang tersisa mengalir tanpa gangguan.
4. **Tarik:** biarkan permintaan pelanggan menarik pekerjaan melalui sistem, alih-alih mendorongnya.
5. **Kesempurnaan:** terus memperbaiki, agar pemborosan terus disingkirkan.

### Tujuh prinsip untuk perangkat lunak

Artikel Wikipedia tentang pengembangan perangkat lunak lean mendaftar tujuh prinsip untuk perangkat lunak:

| Prinsip | Apa yang diminta | Dalam pekerjaan layanan |
|---|---|---|
| **Hilangkan pemborosan** | Singkirkan apa pun yang tidak menambah nilai bagi pelanggan | Buang persetujuan yang tidak pernah menolak, laporan yang tidak dibaca siapa pun, dan fitur yang tidak dipakai siapa pun |
| **Perkuat pembelajaran** | Persingkat siklus dari mencoba sesuatu sampai mengetahui hasilnya | Rilis perubahan kecil dan amati apa yang dilakukan pengguna |
| **Putuskan selambat mungkin** | Tunda komitmen sampai Anda punya fakta, sambil menjaga pilihan tetap terbuka | Jangan menetapkan desain seluruh masa depan layanan sebelum Anda tahu bagaimana ia dipakai |
| **Kirim secepat mungkin** | Kurangi waktu dari gagasan ke nilai; pengiriman cepat memungkinkan Anda melihat dan menganalisis hasil lebih awal | Persingkat jalur untuk perubahan kecil dan permintaan rutin |
| **Beri wewenang kepada tim** | Biarkan orang yang mengerjakan membuat keputusan tentangnya | Beri service desk wewenang menyelesaikan masalah umum tanpa eskalasi |
| **Bangun integritas ke dalamnya** | Bangun kualitas saat pekerjaan dilakukan, alih-alih memeriksanya sesudahnya | Pengujian otomatis, pemantauan, dan runbook yang jelas sebagai bagian dari pekerjaan |
| **Optimalkan keseluruhan** | Perbaiki aliran ujung ke ujung, bukan kinerja satu bagian | Ukur waktu dari permintaan sampai penyelesaian lintas tim, bukan antrean tiap tim |

Artikel mengatakan prinsip-prinsip ini berhasil hanya jika diterapkan bersama dan dengan penilaian yang sehat tentang lingkungan. Artikel juga menyebut keyakinan bahwa "tergesa-gesa menghasilkan pemborosan" sebagai mitos, dengan berargumen bahwa pengiriman cepat membantu tim melihat dan menganalisis keluaran lebih awal. Klaim itu adalah pandangan, bukan hukum: kecepatan tanpa kualitas bawaan memang menghasilkan pemborosan, itulah sebabnya "bangun integritas ke dalamnya" berdampingan dengan "kirim secepat mungkin."

### Pemborosan dalam pekerjaan perangkat lunak dan layanan

Tujuh pemborosan lean (disebut *muda*) berasal dari daftar Shingo untuk manufaktur: persediaan, produksi berlebih, pemrosesan berlebih, transportasi, gerak berlebih, menunggu, dan cacat. Artikel perangkat lunak lean memetakannya ke perangkat lunak seperti ini:

| Pemborosan manufaktur | Padanan perangkat lunak | Contoh dalam tim layanan |
|---|---|---|
| Persediaan | Pekerjaan yang setengah jadi | Daftar panjang perubahan yang dimulai tetapi belum selesai |
| Produksi berlebih | Fitur tambahan | Laporan atau layanan yang tidak diminta siapa pun |
| Pemrosesan berlebih | Proses tambahan | Empat persetujuan pada perubahan berisiko rendah |
| Transportasi | Peralihan tugas | Engineer yang ditarik antara insiden dan pekerjaan proyek |
| Menunggu | Menunggu | Tiket yang menunggu antrean tim lain |
| Gerak | Serah terima | Permintaan yang melewati lima orang |
| Cacat | Cacat | Bug yang menyebabkan pengerjaan ulang dan insiden berulang |

Istilah Jepang *mura* (ketidakrataan) dan *muri* (beban berlebih) kadang ditambahkan ke pembahasan pemborosan. Artikel Wikipedia yang dirujuk di sini hanya mendaftar tujuh pemborosan, jadi pakai istilah tambahan itu dengan hati-hati, dan definisikan saat Anda memakainya.

### Pemetaan aliran nilai

Artikel perangkat lunak lean menyebut pemetaan aliran nilai sebagai teknik untuk menemukan pemborosan, dengan pemborosan disingkirkan dalam putaran berulang. Peta menunjukkan setiap langkah dalam jalur dari permintaan sampai nilai yang terkirim, dengan waktu pekerjaan sedang dikerjakan dan waktu ia menunggu. Hasilnya sering mengejutkan: jalur yang memakan waktu berminggu-minggu mungkin hanya berisi beberapa jam kerja nyata.

### Tarik, aliran, dan kanban

Prinsip tarik lean ada di balik batas Kanban pada pekerjaan yang sedang berjalan. Artikel perangkat lunak menggambarkan pengembangan just-in-time ketika pelanggan menyatakan hasil yang dibutuhkan dan tim mengatur tugasnya sendiri, menarik pekerjaan sesuai kapasitas. Kartu kanban adalah bentuk tarik yang terlihat (lihat Topik 1.5 — Kanban).

### Kaizen: perbaikan kecil yang terus-menerus

Kaizen berarti perbaikan berkelanjutan yang bertahap. Artikel manufaktur menelusurinya ke tim perbaikan di Toyota pada 1936. Dalam tim layanan, ia tampak sebagai perubahan kecil yang sering dilakukan oleh orang yang paling dekat dengan pekerjaan, seperti templat yang direvisi, pemeriksaan otomatis baru, atau serah terima yang lebih jelas. Ia berbeda dari program perbaikan besar karena tidak pernah menunggu siklus anggaran.

### Batas-batas lean

Artikel yang dirujuk tidak menyebut kritik formal, tetapi batasan praktisnya sudah dikenal baik. Lean berasal dari manufaktur yang berulang, dan kerja pengetahuan jauh lebih bervariasi. Menghitung pemborosan dapat mengurangi kelonggaran yang dibutuhkan tim untuk menghadapi kejutan, sehingga tim yang terisi penuh lambat merespons insiden. Perlakukan lean sebagai lensa yang menemukan pemborosan, dan simpan kapasitas cadangan di tempat variasi tinggi (lihat Topik 3.11 — Ketersediaan, Kapasitas, dan Kinerja).

## Praktik terbaik

1. **Definisikan nilai dari sisi pelanggan.** Untuk tiap layanan, tulis apa yang sebenarnya diperoleh pengguna dan kapan mereka memperolehnya. Gunakan ini untuk menilai setiap langkah: apakah menambah nilai bagi pengguna, atau hanya melayani proses kita sendiri?
2. **Petakan aliran nilai untuk satu jenis permintaan nyata.** Pilih permintaan atau perubahan yang umum, dan telusuri dari kontak pertama sampai pengiriman. Catat waktu kerja dan waktu menunggu pada tiap langkah. Peta kasar yang digambar dalam satu jam lebih berguna daripada peta sempurna yang digambar dalam satu kuartal.
3. **Namai pemborosan yang Anda temukan.** Gunakan tujuh kategori sebagai daftar periksa: pekerjaan setengah jadi, fitur tambahan, proses tambahan, peralihan tugas, menunggu, serah terima, cacat. Menamai membuatnya lebih mudah dibahas tanpa menyalahkan individu.
4. **Serang penantian terpanjang lebih dulu.** Penundaan terbesar dalam peta biasanya berada di antara langkah, bukan di dalamnya. Mengurangi itu biasanya lebih baik daripada memoles langkah yang sudah cepat.
5. **Batasi pekerjaan yang sedang berjalan.** Menyelesaikan pekerjaan lebih cepat daripada menyulapnya. Batasi jumlah item terbuka per tim dan amati apa yang terjadi pada waktu yang dibutuhkan masing-masing.
6. **Bangun kualitas ke dalam pekerjaan.** Tambahkan pemeriksaan saat pekerjaan dilakukan, seperti pengujian otomatis, tinjauan sejawat, dan pemantauan pra-rilis, agar cacat ditemukan lebih awal. Memeriksa di akhir lebih lambat dan lebih mahal.
7. **Tunda keputusan yang belum bisa Anda buat dengan baik.** Jaga pilihan tetap terbuka sampai Anda punya fakta, tetapi tetapkan tanggal kapan Anda akan memutuskan. Ini menghindari komitmen dini pada desain yang salah dan keraguan tanpa akhir.
8. **Beri wewenang kepada orang yang paling dekat dengan pekerjaan.** Biarkan analis service desk, engineer on-call, dan pengembang membuat keputusan dalam batas yang jelas. Nyatakan batasnya, seperti ambang pengeluaran atau risiko, dan tinjau setelah insiden.
9. **Lihat keseluruhan, bukan bagian.** Ukur waktu ujung ke ujung dari permintaan sampai penyelesaian, dan bahas dengan semua tim yang terlibat. Perubahan yang membantu satu tim dan memperlambat tim lain bukan perbaikan.
10. **Jadikan perbaikan kecil, sering, dan lokal.** Dorong setiap tim membuat satu perbaikan kecil setiap satu atau dua minggu, dan membagikan apa yang dipelajarinya. Catat perubahan dan hasilnya.
11. **Simpan kelonggaran di tempat variasi tinggi.** Jangan isi setiap jam tim on-call. Sisakan kapasitas untuk kejutan, dan nilai dari seberapa cepat tim pulih ketika ada yang salah.
12. **Gunakan lean bersama praktik lain.** Padukan peta aliran nilai dengan ukuran aliran dari Kanban, dan dengan manajemen masalah untuk cacat berulang (lihat Topik 3.3 — Manajemen Masalah).

## Pertanyaan untuk dibahas bersama tim Anda

**Jika kita mengikuti satu permintaan umum dari awal sampai akhir, berapa banyak dari waktu yang berlalu itu yang merupakan pekerjaan nyata?**

Pilih permintaan tipikal dan kumpulkan tanggal tiap langkah. Tandai waktu ketika seseorang mengerjakannya dan waktu ia tergeletak dalam antrean. Proporsinya sering mengejutkan. Tanyakan kepada orang di mana mereka mengira penantian itu berada, dan di mana sebenarnya. Fasilitator sebaiknya menahan diri dari solusi pada awalnya dan meminta kelompok menyepakati apa yang ditunjukkan peta.

**Dari tujuh pemborosan, mana yang paling sering kita lihat dalam pekerjaan sehari-hari?**

Beri orang daftar itu dan minta contoh terbaru untuk masing-masing. Harapkan pekerjaan setengah jadi, peralihan tugas, menunggu, dan serah terima sering muncul. Tanyakan mana yang dapat diubah tim sendiri dan mana yang memerlukan tim atau manajer lain. Tutup dengan memilih satu pemborosan untuk dikurangi bulan ini.

**Apa yang kita lakukan yang tidak akan dirindukan pelanggan kita jika kita berhenti?**

Daftar laporan, rapat, formulir, dan persetujuan. Untuk masing-masing, tanyakan siapa yang memakainya dan apa yang terjadi jika dihentikan. Sebagian akan diperlukan untuk audit atau keselamatan, yang merupakan alasan yang baik. Yang lain akan terbukti hanya kebiasaan. Tugaskan seseorang memeriksa setiap butir yang diragukan sebelum menyingkirkannya.

**Di mana kita memeriksa kualitas di akhir alih-alih membangunnya ke dalam pekerjaan?**

Lihat proses rilis, perubahan, dan insiden Anda untuk pemeriksaan di ujung lini. Tanyakan cacat apa yang ditemukan pemeriksaan itu dan kapan seharusnya dapat ditemukan lebih awal. Jawaban lazim mencakup pengujian setelah pengembangan selesai dan tinjauan dokumen sesudahnya. Pilih satu pemeriksaan untuk dipindahkan lebih awal dan jelaskan bagaimana Anda akan tahu apakah itu membantu.

**Siapa yang dapat membuat keputusan di tim kita tanpa bertanya, dan siapa yang seharusnya?**

Minta orang mendaftar lima keputusan terakhir yang ingin mereka buat tetapi tidak bisa, dan mengapa. Cari pola, seperti batas pengeluaran, persetujuan perubahan, atau keputusan prioritas. Tanyakan apa yang akan membuat aman memindahkan salah satu keputusan itu lebih dekat ke pekerjaan, seperti pagar pengaman atau tinjauan setelah kejadian. Jangan mendorong ke jawaban ya; tujuannya menemukan apa yang menurut orang diperlukan.

**Jika semua yang kita kerjakan sekarang menjadi lebih cepat, apa yang akan rusak lebih dulu?**

Pertanyaan ini menguji "kirim secepat mungkin" dan "bangun integritas ke dalamnya" bersamaan. Tanyakan di mana aliran yang lebih cepat akan membebani tim, perkakas, atau orang. Jawaban lazim adalah pengujian, persetujuan, dan beban on-call. Perlakukan jawabannya sebagai hal berikutnya yang diperbaiki. Ingat bahwa lean menghargai aliran seluruh sistem, jadi hambatan adalah tempat berinvestasi.

## Dalam praktik: contoh ITIL agile

Departemen TI sebuah badan pajak nasional menjalankan layanan internal bagi staf untuk meminta akses perangkat lunak. Permintaan tipikal memakan waktu sekitar tiga minggu, dan staf mengeluh keras. Tim lima orang yang memenuhi permintaan percaya bahwa mereka bekerja keras dan terkejut dengan keluhan itu.

Seorang manajer memimpin sesi pemetaan aliran nilai dengan tim, kelompok keamanan, dan dua pengguna bisnis. Bersama-sama mereka menelusuri sepuluh permintaan terbaru. Setiap permintaan melewati delapan langkah: pengajuan formulir, persetujuan atasan langsung, persetujuan pemilik data, tinjauan keamanan, pemeriksaan lisensi, penugasan tiket, instalasi, dan konfirmasi. Peta menunjukkan bahwa pekerjaan nyatanya memakan sekitar satu jam, dan hampir seluruh tiga minggu itu adalah menunggu di antara langkah, kebanyakan untuk dua persetujuan dan tinjauan keamanan. Dalam tiga dari sepuluh kasus, permintaan dikembalikan kepada pengguna karena ada kolom formulir yang hilang.

Kelompok menyepakati tiga perubahan. Formulir mendapat kolom wajib dan panduan singkat, yang menghilangkan pengembalian. Permintaan untuk daftar pendek aplikasi umum berisiko rendah mendapat satu persetujuan dari atasan langsung, dengan pemilik data diberi tahu. Kelompok keamanan sepakat meninjau sampel permintaan semacam itu setiap minggu, bukan setiap permintaan sebelum instalasi. Setelah dua bulan, waktu tipikal turun menjadi sekitar satu minggu. Satu kesulitan tersisa: permintaan untuk aplikasi sensitif masih memakan tiga minggu, dan kelompok keamanan mencatat bahwa pengambilan sampel menangkap dua permintaan yang seharusnya ditolak. Mereka menyesuaikan daftar aplikasi yang layak untuk persetujuan cepat, dan memutuskan meninjaunya setiap kuartal.

## Empat perspektif

### Tim produk dan pengiriman

Tim pengiriman dapat memakai lean untuk melihat melampaui sprint atau papan mereka sendiri. Petakan jalur dari gagasan ke tangan pengguna, termasuk pengujian, tinjauan keamanan, dan persetujuan rilis, dan temukan di mana pekerjaan menunggu. Perlakukan pekerjaan yang belum selesai sebagai pemborosan, dan utamakan menyelesaikan daripada memulai.

### Tim layanan dan operasi

Tim operasi melihat pemborosan setiap hari: insiden berulang, serah terima antartingkat, dan permintaan yang memantul. Gunakan peta untuk menunjukkan di mana pekerjaan menunggu, dan gunakan manajemen masalah untuk menyingkirkan penyebab pengulangan. Buat argumen untuk kapasitas cadangan dengan menunjukkan apa yang terjadi pada aliran ketika setiap jam direncanakan.

### Kepemimpinan dan tata kelola

Pemimpin membentuk sistem yang menciptakan sebagian besar pemborosan: aturan persetujuan, siklus pendanaan, dan pelaporan. Tanyakan kepada tim Anda di mana aturan itu memakan waktu paling banyak dan risiko apa yang dilindungi masing-masing. Bersiaplah mengganti kendali dengan pemeriksaan lebih ringan yang memenuhi tujuan yang sama.

### Pelanggan dan pengguna

Pelanggan menentukan nilai dalam pemikiran lean, dan mereka merasakan pemborosan sebagai penundaan. Harapkan ditanya apa yang sebenarnya Anda butuhkan dan seberapa cepat. Beri tahu tim bagian layanan mana yang paling penting bagi Anda, karena itu memandu ke mana tenaga diarahkan. Sebagai imbalannya, Anda dapat mengharapkan penantian yang lebih singkat dan lebih terduga.

## Pola kegagalan umum

- **Memangkas kapasitas atas nama pemborosan.** Tim berjalan pada beban penuh dan tidak dapat merespons kejutan. Sebaliknya, simpan kelonggaran di tempat variasi tinggi dan nilai dari seberapa cepat tim pulih.
- **Memetakan tanpa bertindak.** Peta aliran nilai dipasang di dinding dan tidak ada yang berubah. Sebaliknya, pilih penantian terbesar dan sepakati satu perubahan dengan pemilik sebelum sesi berakhir.
- **Mengoptimalkan satu tim.** Keuntungan lokal memindahkan antrean ke tempat lain. Sebaliknya, ukur waktu ujung ke ujung dan sepakati perubahan dengan semua tim dalam aliran.
- **Menyingkirkan kendali tanpa memahaminya.** Langkah yang tampak seperti pemborosan ternyata melindungi dari risiko nyata. Sebaliknya, tanyakan apa yang dilindungi tiap langkah dan gantikan dengan pemeriksaan lebih ringan bila bisa.
- **Memakai kata-kata lean sebagai slogan.** Orang mengatakan "pemborosan" untuk menepis pekerjaan rekan. Sebaliknya, pakai istilah itu untuk menggambarkan aliran dan jaga percakapan tentang sistem.
- **Mendorong kecepatan di atas kualitas.** Pengiriman lebih cepat menghasilkan lebih banyak cacat dan pengerjaan ulang. Sebaliknya, perlakukan "bangun integritas ke dalamnya" sebagai prasyarat kecepatan.
- **Menerapkan angka manufaktur pada kerja pengetahuan.** Target dari pabrik tidak cocok untuk pekerjaan yang bervariasi. Sebaliknya, pakai lean sebagai cara melihat dan bertanya, dan tetapkan ukuran dari data Anda sendiri.
- **Memperlakukan lean sebagai proyek sekali jalan.** Keuntungan memudar ketika perhatian beralih. Sebaliknya, jadikan perbaikan kecil bagian dari rutinitas setiap tim.

## Model kematangan

| Dimensi | Memulai | Mengembangkan | Menstandarkan | Mengelola | Mengorkestrasi |
|---|---|---|---|---|---|
| Melihat pemborosan | Pemborosan dirasakan tetapi tidak digambarkan | Beberapa tim memetakan pekerjaan mereka sendiri | Tim memakai kategori pemborosan dan peta aliran nilai bersama | Menunggu dan pengerjaan ulang diukur sepanjang aliran nilai | Peta dan ukuran melintasi tim dan pemasok |
| Aliran dan tarik | Pekerjaan didorong dan dimulai secara borongan | Beberapa tim membatasi pekerjaan yang sedang berjalan | Aturan tarik dan batas adalah standar | Ukuran aliran memandu perubahan batas dan kebijakan | Aliran dikoordinasikan di seluruh aliran nilai |
| Membangun kualitas ke dalam | Kualitas diperiksa di akhir | Beberapa tim menguji lebih awal dan meninjau pekerjaan | Pemeriksaan otomatis dan tinjauan bawaan adalah standar | Laju cacat yang lolos dilacak dan dikurangi | Praktik kualitas dibagikan dan diperbaiki lintas tim |
| Perbaikan berkelanjutan | Perbaikan mengikuti krisis | Beberapa tim membuat perubahan kecil secara berkala | Setiap tim punya rutinitas perbaikan berkala | Perbaikan dilacak dan dampaknya diperiksa | Perbaikan menyebar antartim dan pemasok secara rutin |

## Daftar periksa

- [ ] Kami telah mendefinisikan arti nilai bagi setidaknya satu layanan dari sisi pengguna.
- [ ] Kami telah memetakan aliran nilai untuk satu jenis permintaan umum, dengan waktu kerja dan waktu menunggu.
- [ ] Tim dapat menyebut tujuh pemborosan dan memberi contoh terbaru untuk masing-masing.
- [ ] Pekerjaan yang sedang berjalan dibatasi, dan pekerjaan yang belum selesai terlihat.
- [ ] Pemeriksaan kualitas terjadi selama pekerjaan maupun di akhir.
- [ ] Kami telah memilih setidaknya satu penantian untuk dikurangi, dengan pemilik dan tanggal.
- [ ] Tim memiliki batas yang jelas untuk keputusan yang dapat dibuatnya tanpa bertanya.
- [ ] Kami mengukur waktu ujung ke ujung untuk setidaknya satu aliran lintas tim.
- [ ] Kami menyimpan kapasitas cadangan untuk kejutan di tempat permintaan bervariasi.
- [ ] Setiap tim membuat dan mencatat perbaikan kecil dengan ritme teratur.

## Prompt AI

**Tujuan: menganalisis aliran nilai dari waktu yang Anda berikan.**

```text
Help me analyze a value stream for [type of request, e.g. "software access requests"].

Here are the steps in order, with who does each step, how long work was actually done on it, and how long the item waited before and after it. Use real numbers from a few recent cases: [paste as a table, with one row per step and one column per case].

Calculate, using only my numbers, the total elapsed time, the total working time, and the share of time spent waiting. Identify the three longest waits. For each wait, ask what the step protects against, and suggest one lighter alternative. Do not invent data. If numbers are missing, ask me first, mark assumptions, and list what you are unsure of.
```

**Tujuan: mengklasifikasikan contoh pemborosan dari pekerjaan tim Anda sendiri.**

```text
Here is a list of things that frustrate our team or customers: [paste 8-12 short, factual examples].

Classify each one under the seven wastes of lean software development: partially done work, extra features, extra process, task switching, waiting, handoffs, and defects. If an item does not fit any, say so. Give one sentence of reasoning per item based only on what I wrote. Then say which two categories seem most common in this list and suggest two questions the team should discuss. Mark assumptions, and list what you are unsure of.
```

**Tujuan: menguji apakah menyingkirkan sebuah kendali itu aman.**

```text
We are considering removing or simplifying this control: [describe the approval, report, or step].

What we believe it is for: [describe the purpose, or write "unknown"].
Who uses its output: [list people or teams, or write "unknown"].
Rules we know apply (audit, security, legal), with the actual text if you have it: [paste text, or write "none known"].

List the questions we should answer before changing it. Describe two lighter ways to meet its purpose, and a way to check after the change that nothing worse happened. Do not claim any law or standard applies unless I pasted its text. Mark assumptions, and list what you are unsure of.
```

**Tujuan: merencanakan lokakarya pemetaan aliran nilai.**

```text
Plan a 90-minute value stream mapping workshop for [number] people from [teams or roles]. We want to examine [request type or service].

Include: a timed agenda, who must attend, what data to bring (use only data we really have), how to draw the map step by step, how to mark working time and waiting time, and a closing step that records one agreed change with an owner and a date. Keep it free of any particular tool. Ask clarifying questions first if information is missing, and list what you are unsure of.
```

## Keterampilan AI

- [value-stream-map](../../../../skills/value-stream-map/SKILL.md): gunakan untuk memetakan langkah, waktu kerja, dan waktu menunggu sebuah permintaan dari awal sampai akhir.
- [kaizen](../../../../skills/kaizen/SKILL.md): gunakan untuk merencanakan perbaikan kecil yang berkelanjutan setelah pemborosan ditemukan.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md): gunakan untuk menganalisis bagaimana pekerjaan berpindah antarperan dan menemukan serah terima serta penundaan.
- [kanban](../../../../skills/kanban/SKILL.md): gunakan untuk menerapkan tarik dan batas pekerjaan yang sedang berjalan pada aliran yang telah Anda petakan.
- [six-sigma](../../../../skills/six-sigma/SKILL.md): gunakan ketika cacat dan variasi, bukan hanya menunggu, adalah masalah utama dan Anda memerlukan metode berbasis data untuk menguranginya.

## Sumber utama

- **Lean software development** (Wikipedia): tujuh prinsip, pemetaan pemborosan, dan tautan ke bacaan lanjutan.
- **Lean manufacturing** (Wikipedia): sejarah lean di Toyota, pemborosan, dan lima prinsip berpikir lean.
- **Lean Software Development: An Agile Toolkit** (Mary dan Tom Poppendieck, 2003): buku yang membawa gagasan lean ke komunitas agile.
- **Lean Thinking** (James Womack dan Daniel Jones, 1996): pernyataan formal lima prinsip lean.

## Referensi

1. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
2. Lean manufacturing — Wikipedia — https://en.wikipedia.org/wiki/Lean_manufacturing
3. Toyota Production System — Wikipedia — https://en.wikipedia.org/wiki/Toyota_Production_System
4. Kaizen — Wikipedia — https://en.wikipedia.org/wiki/Kaizen
5. Value-stream mapping — Wikipedia — https://en.wikipedia.org/wiki/Value-stream_mapping
6. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
7. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
8. Muda (Japanese term) — Wikipedia — https://en.wikipedia.org/wiki/Muda_(Japanese_term)
