# Manajemen Masalah

**Manajemen masalah menemukan dan menyingkirkan penyebab di balik insiden yang berulang, dan bentuk agile-nya adalah aliran tetap perbaikan kecil berbasis bukti dalam backlog alih-alih penyelidikan besar sesekali.**

## Mengapa ini penting

Tim yang menangani insiden dengan baik tetapi tidak pernah menyingkirkan penyebabnya berada di atas treadmill. Setiap gangguan diperbaiki, kesalahan yang sama kembali, dan engineer on-call menjadi lelah. Manajemen masalah adalah praktik yang turun dari treadmill: ia bertanya mengapa insiden terjadi, apakah akan terjadi lagi, dan apa yang akan menghentikannya.

Tim agile berada di posisi baik untuk melakukannya. Mereka punya backlog tempat perbaikan dapat bersaing dengan fitur, mereka bekerja dalam siklus pendek yang membuat perbaikan kecil murah, dan mereka mengadakan retrospektif tempat pola dapat diperhatikan. Yang sering kurang adalah kebiasaan menghubungkan insiden satu sama lain dan disiplin mencari penyebab dengan benar. Manajemen masalah menyediakan keduanya.

[Artikel Wikipedia tentang analisis akar penyebab](https://en.wikipedia.org/wiki/Root_cause_analysis) adalah sumber utama yang dibaca untuk topik ini, karena Wikipedia bahasa Inggris tidak punya artikel berjudul "Problem management" pada alamat yang diperiksa. Artikel itu menjelaskan analisis akar penyebab (RCA) sebagai metode pemecahan masalah yang dipakai dalam operasi TI dan bidang lain, dan memuat tag pemeliharaan untuk kutipan yang hilang. Kosakata ITIL yang dipakai di sini, seperti known error dan workaround, berasal dari deskripsi praktik yang banyak diterbitkan, yang tidak dapat dipastikan panduan ini terhadap teks pemilik kerangka kerja. Baca publikasi terkini pemilik bila definisi persis penting (lihat Topik 2.2 — ITIL).

## Konsep inti

### Insiden, masalah, known error

Tiga istilah dipakai bersama, dan perbedaannya penting:

| Istilah | Arti, seperti dipakai luas dalam ITSM | Contoh |
|---|---|---|
| **Insiden** | Gangguan tak terencana pada layanan atau penurunan kualitasnya | Halaman pemesanan mati selama dua puluh menit |
| **Masalah** | Penyebab mendasar, atau diduga penyebab, dari satu atau lebih insiden | Kebocoran memori pada layanan pemesanan |
| **Known error** | Masalah yang penyebabnya telah diidentifikasi, biasanya dengan workaround tercatat | Kebocoran memori dipahami; memulai ulang layanan setiap malam mencegah gangguan sampai diperbaiki |

**Workaround** adalah cara mengurangi atau menghindari dampak insiden atau masalah tanpa menyingkirkan penyebabnya. Manajemen masalah tentang menyingkirkan penyebab, dan manajemen insiden tentang memulihkan layanan (lihat Topik 3.2 — Manajemen Insiden).

### Reaktif dan proaktif

Artikel analisis akar penyebab membedakan pendekatan reaktif dan proaktif secara umum. Pekerjaan reaktif menangani gejala dengan cepat. Pekerjaan proaktif bertujuan mencegah masalah dan menempatkan akurasi diagnosis di atas kecepatan. Dalam praktik ITSM, keduanya ada: manajemen masalah reaktif menyelidiki masalah setelah insiden, dan manajemen masalah proaktif mencari pola dan kelemahan sebelum menyebabkan insiden.

### Apa itu akar penyebab

Artikel mendefinisikan akar penyebab dengan ujian praktis: suatu faktor adalah akar penyebab masalah jika menyingkirkannya mencegah masalah berulang. Ia membedakan akar penyebab dari faktor kausal lain. Ini aturan yang berguna. Jika Anda menyingkirkan sebuah faktor dan masalah masih dapat kembali, Anda telah menemukan kontributor, bukan akarnya.

Artikel juga memperingatkan batasannya. Ia mengatakan bahwa data pemantauan yang hilang, volume peristiwa yang sangat tinggi, akar penyebab ganda, dan penyelidik yang berhenti pada akar yang dangkal semuanya mempersulit analisis. Dalam TI, catatnya, RCA sering kekurangan fault tree atau spesifikasi desain, sehingga "tidak ada akar penyebab" menjadi ungkapan umum. Untuk sistem kompleks, harapkan beberapa penyebab yang berkontribusi dan bukan satu tersangka.

### Prinsip analisis akar penyebab

Artikel mendaftar langkah umum:

1. Gambarkan masalah dengan jelas.
2. Bangun lini masa dari operasi normal sampai kegagalan.
3. Pisahkan akar penyebab dari faktor kausal lain.
4. Petakan grafik kausal yang menghubungkan akar penyebab dengan masalah.

Artikel menambahkan bahwa penyelidik harus melihat pertahanan yang gagal atau tidak ada (analisis penghalang), menghindari bias dalam garis penyelidikan, memutuskan tindakan korektif, dan meninjau apakah tindakan itu efektif.

### Metode

Artikel mengatakan bahwa, menurut ISO/IEC 31010, RCA dapat memakai five whys, failure mode and effects analysis (FMEA), fault tree analysis, diagram Ishikawa (fishbone), dan analisis Pareto. Artikel menisbatkan diagram kausal yang menyandang namanya kepada Kaoru Ishikawa. Artikel juga menyebut metode fishbone dan five whys "not rigorous enough," pendapat yang tidak didukung sumber. Pembacaan praktis: metode sederhana adalah titik awal yang baik untuk diskusi tim, dan kegagalan kompleks atau berisiko tinggi mungkin memerlukan metode yang lebih ketat.

| Metode | Apa yang dilakukannya | Kapan membantu |
|---|---|---|
| **Five whys** | Bertanya "mengapa" berulang kali untuk bergerak dari gejala ke arah penyebab | Diskusi tim cepat tentang rantai sebab sederhana |
| **Diagram Ishikawa (fishbone)** | Mengelompokkan kemungkinan penyebab menurut kategori | Curah gagasan banyak kemungkinan penyebab |
| **Analisis Pareto** | Memeringkat penyebab menurut frekuensi atau dampak | Memilih masalah berulang mana yang ditangani lebih dulu |
| **Fault tree analysis** | Memetakan kombinasi kegagalan yang mengarah ke suatu hasil | Kegagalan kritis keselamatan atau kompleks |
| **FMEA** | Melihat ke depan bagaimana bagian dapat gagal dan apa dampaknya | Tinjauan desain proaktif |

### Tindakan korektif yang efektif

Artikel mengatakan tindakan korektif yang hanya menambah kerja administrasi atau pelatihan kurang efektif. Dalam praktik ini menyarankan mengutamakan tindakan yang mengubah sistem: otomatisasi pemeriksaan, singkirkan mode kegagalan, tambahkan pengaman, perbaiki pemantauan. Tindakan seperti "ingatkan engineer agar berhati-hati" lemah.

### Prinsip tanpa menyalahkan

Penyelidikan masalah berbagi prinsip tanpa menyalahkan yang dijelaskan untuk postmortem dalam buku SRE Google: identifikasi penyebab yang berkontribusi tanpa menyalahkan individu, karena orang dapat diajari dan sistem dapat diperbaiki (lihat Topik 3.2 — Manajemen Insiden). Penyelidikan yang menemukan "kesalahan manusia" lalu berhenti biasanya berhenti terlalu dini. Tanyakan apa yang membuat kesalahan itu mungkin dan apa yang akan mempersulitnya.

### Manajemen masalah dalam aliran agile

Pendekatan agile praktis terlihat seperti ini:

- Insiden dan postmortem menciptakan kandidat masalah.
- Tinjauan singkat berkala mengelompokkan insiden berulang dan memeringkat masalah menurut dampak dan frekuensi.
- Masalah terpilih masuk backlog sebagai butir biasa, dengan pemilik, hipotesis, dan batas waktu penyelidikan.
- Workaround dicatat sebagai known error agar service desk dan engineer on-call dapat memakainya (lihat Topik 3.9 — Manajemen Pengetahuan).
- Perbaikan kecil dan teruji, dirilis dengan cara normal, dan diperiksa sesudahnya untuk melihat apakah insiden berhenti.

## Praktik terbaik

1. **Kaitkan insiden dengan masalah.** Catat insiden mana yang tampak punya penyebab sama. Tanpa kaitan Anda tidak dapat melihat polanya, dan tanpa pola Anda tidak dapat memperjuangkan perbaikan.
2. **Tinjau insiden untuk pola menurut jadwal.** Sekali sebulan, kelompokkan insiden terbaru menurut layanan dan kemungkinan penyebab dan pilih beberapa teratas. Pakai pemikiran Pareto: beberapa penyebab biasanya menjelaskan banyak dari rasa sakit.
3. **Perlakukan masalah sebagai butir backlog.** Beri tiap masalah terpilih pemilik, pernyataan, dan batas waktu penyelidikan, dan biarkan bersaing dengan pekerjaan lain. Antrean "masalah" terpisah yang tidak dijadwalkan siapa pun adalah kuburan.
4. **Mulai dengan pernyataan masalah yang jelas.** Tulis apa yang terjadi, di mana, seberapa sering, dan apa dampaknya, memakai fakta. Pernyataan samar mengarah pada perbaikan samar.
5. **Bangun lini masa.** Kumpulkan log, perubahan, dan peristiwa dari operasi normal sampai kegagalan. Artikel mendaftar lini masa sebagai langkah inti, dan banyak kejutan datang dari perubahan yang tidak dikaitkan siapa pun.
6. **Cari penyebab yang, jika disingkirkan, mencegah pengulangan.** Pakai ujian artikel. Ketika tim mengusulkan penyebab, tanyakan apakah menyingkirkannya akan menghentikan masalah kembali.
7. **Harapkan lebih dari satu penyebab.** Cari faktor yang berkontribusi dalam desain, pemantauan, proses, dan pengetahuan orang. Jangan berhenti pada yang pertama masuk akal.
8. **Pilih metode yang sesuai dengan masalah.** Pakai five whys atau fishbone untuk diskusi tim cepat, dan perkakas yang lebih ketat untuk kegagalan serius atau kompleks.
9. **Utamakan tindakan yang mengubah sistem.** Pilih otomatisasi, pengaman, dan pemantauan yang lebih baik daripada pengingat dan pelatihan. Catat dampak yang diharapkan agar dapat diperiksa.
10. **Catat workaround sebagai known error.** Tulis seperti apa gejalanya, workaround-nya, dan siapa pemilik perbaikannya. Bagikan catatan kepada service desk dan staf on-call.
11. **Periksa bahwa perbaikan berhasil.** Setelah perbaikan, amati pengulangan selama periode yang disepakati dan laporkan hasilnya. Perbaikan yang tak pernah diperiksa hanyalah harapan.
12. **Bagikan apa yang Anda temukan.** Terbitkan ringkasan singkat masalah dan perbaikan agar tim lain dapat mengenali pola serupa.

## Pertanyaan untuk dibahas bersama tim Anda

**Insiden mana yang terus kembali, dan apa yang kita kira menyebabkannya?**

Minta orang menyebut insiden yang paling melelahkan mereka. Bandingkan jawaban. Lalu tanyakan apa yang diyakini tiap orang sebagai penyebab, dan bagaimana mereka tahu. Keyakinan sering berbeda, yang menunjukkan betapa sedikit bukti bersama. Fasilitator dapat menanyakan data apa yang akan menyelesaikannya. Pilih satu untuk diselidiki dengan batas waktu.

**Bagaimana kita tahu apakah dua insiden punya penyebab sama?**

Lihat bagaimana insiden dicatat dan tanyakan apakah ada yang bisa menemukan insiden terkait dengan cepat. Jawaban lazim adalah teks bebas, ingatan, atau keberuntungan. Tanyakan perubahan kecil apa pada catatan yang akan membantu, seperti kolom untuk layanan dan kemungkinan penyebab. Sepakati satu.

**Apa yang kita lakukan ketika menemukan "kesalahan manusia" dalam tinjauan?**

Minta contoh terbaru. Pertanyaannya apakah tinjauan berhenti di situ. Bahas apa dalam sistem yang membuat kesalahan itu mungkin: instruksi tidak jelas, perkakas membingungkan, tekanan waktu. Bandingkan dengan gagasan bahwa Anda tidak dapat memperbaiki orang, tetapi dapat memperbaiki sistem. Sepakati pertanyaan untuk diajukan setiap kali, seperti "Apa yang membuat ini mudah dilakukan?"

**Tindakan dari tinjauan masa lalu mana yang benar-benar mengubah sistem, dan mana yang hanya menambah pengingat?**

Daftar tindakan dari lima tinjauan terakhir dan tandai masing-masing sebagai perubahan sistem atau pengingat. Artikel mengatakan pengingat dan kerja administrasi kurang efektif. Tanyakan mengapa pengingat begitu umum: cepat, murah, dan terasa seperti tindakan. Pilih satu pengingat untuk diganti dengan perbaikan lebih kuat.

**Di mana kita punya workaround yang belum dituliskan siapa pun?**

Tanyakan kepada engineer on-call dan analis desk trik apa yang mereka pakai. Setiap workaround yang tak tertulis adalah risiko. Catat sebagai known error dengan gejala, workaround, dan pemilik. Fasilitator dapat menanyakan siapa yang diuntungkan oleh tiap catatan. Buat daftar singkat minggu ini.

**Bagaimana kita tahu bahwa perbaikan berhasil?**

Pilih perbaikan terbaru dan tanyakan bukti apa yang menunjukkannya. Jika jawabannya "tidak ada lagi keluhan," tanyakan berapa lama Anda menunggu dan apa yang Anda ukur. Bahas pemeriksaan sederhana: amati gejala spesifik selama periode tertentu. Sepakati mencatat pemeriksaan itu pada setiap perbaikan.

## Dalam praktik: contoh ITIL agile

Sebuah perusahaan logistik berukuran menengah menjalankan layanan perencanaan rute yang dipakai pengemudi dan petugas dispatch. Tim platform sembilan orang telah menangani insiden yang sama kira-kira setiap dua minggu: perhitungan rute habis waktu selama sepuluh sampai lima belas menit di pagi hari lalu pulih. Setiap kali, engineer on-call memulai ulang proses worker, dan insiden ditutup. Petugas dispatch mengeluh bahwa perencanaan pagi tidak dapat diandalkan.

Kepala tim memulai tinjauan insiden bulanan, mengelompokkannya menurut layanan dan kemungkinan penyebab. Habis waktu pagi berada di puncak daftar. Ia menulis pernyataan masalah dari catatan insiden: habis waktu terjadi pada hari kerja antara pukul 7:00 dan 7:30, berlangsung sepuluh sampai lima belas menit, dan memengaruhi semua petugas dispatch. Tim membangun lini masa yang mencakup impor data terjadwal pukul 7:00 dan perubahan terbaru yang memperbesar impor itu. Diskusi five whys menyarankan impor menjenuhkan basis data. Mereka mencoba perbaikan yang jelas, menambah kapasitas, tetapi insiden berlanjut dengan laju lebih rendah, sehingga mereka menyimpulkan bahwa kapasitas adalah kontributor dan bukan akarnya.

Pandangan kedua menemukan bahwa impor mengunci tabel yang juga dibaca perhitungan rute. Tim memindahkan impor ke replika terpisah dan menambahkan peringatan untuk lock wait. Mereka mencatat restart sebagai known error dengan gejala dan workaround sampai perbaikan live, dan sepakat mengamati gejala selama enam minggu. Insiden berhenti. Beberapa masalah tersisa: impor lain dari mitra masih berjalan pada jam puncak, dan tim belum membujuk mitra mengubah jadwalnya. Mereka menaruh jadwal mitra pada agenda perencanaan berikutnya, dan mempertahankan peringatan kunci.

## Empat perspektif

### Tim produk dan pengiriman

Tim pengiriman memegang pengetahuan untuk memperbaiki penyebab. Ambil masalah teratas ke backlog Anda, dan perlakukan sebagai pekerjaan yang membangun kepercayaan. Tambahkan pemantauan dan pengujian yang akan mengungkap penyebab, dan tulis known error dalam bahasa yang dapat dipakai desk.

### Tim layanan dan operasi

Tim operasi melihat insiden dan menyimpan catatannya. Kaitkan insiden, jalankan tinjauan bulanan, dan catat workaround sebagai known error. Dorong bukti ke tim pengiriman dalam bentuk yang membuat kasusnya, dengan frekuensi, dampak, dan lini masa.

### Kepemimpinan dan tata kelola

Pemimpin memutuskan apakah perbaikan masalah mendapat waktu. Minta masalah berulang teratas dan apa yang dilakukan tentangnya. Tahan godaan menghitung insiden yang ditutup sebagai ukuran keberhasilan, karena menghargai perbaikan. Dukung perbaikan yang butuh upaya tetapi menyingkirkan rasa sakit.

### Pelanggan dan pengguna

Pelanggan dan pengguna diuntungkan ketika kegagalan berulang berhenti. Laporkan masalah berulang dengan tanggal dan dampak, karena pola membantu tim. Tanyakan kepada penyedia apa yang telah mereka lakukan tentang penyebab gangguan berulang, dan harapkan jawaban di luar "kami memulai ulang."

## Pola kegagalan umum

- **Memperbaiki tanpa menyingkirkan.** Insiden ditutup dan kembali. Sebaliknya, kaitkan pengulangan dengan masalah dan perbaiki penyebabnya.
- **Antrean masalah yang tidak dijadwalkan siapa pun.** Masalah menunggu selamanya. Sebaliknya, masukkan masalah terpilih ke backlog dengan pemilik dan batas waktu.
- **Berhenti pada kesalahan manusia.** Tinjauan berakhir dengan seseorang untuk disalahkan. Sebaliknya, tanyakan apa yang membuat kesalahan mungkin dan perbaiki sistem.
- **Tindakan lemah.** Pengingat dan pelatihan menggantikan perubahan sistem. Sebaliknya, utamakan otomatisasi, pengaman, dan pemantauan yang lebih baik.
- **Mencari satu akar penyebab.** Tim berkeras pada satu tersangka. Sebaliknya, terima beberapa penyebab yang berkontribusi dan tangani yang paling efektif.
- **Tanpa pemeriksaan bahwa perbaikan berhasil.** Masalah ditutup saat rilis. Sebaliknya, tentukan cara melihat apakah gejala kembali.
- **Workaround yang tak tertulis.** Pengetahuan hidup pada individu. Sebaliknya, catat known error dan bagikan.
- **Pemujaan metode.** Tim berdebat soal teknik. Sebaliknya, pilih metode yang sesuai dengan masalah dan habiskan tenaga pada bukti.

## Model kematangan

| Dimensi | Memulai | Mengembangkan | Menstandarkan | Mengelola | Mengorkestrasi |
|---|---|---|---|---|---|
| Mengaitkan dan memprioritaskan | Insiden tidak dikaitkan | Beberapa tim mencatat pengulangan | Insiden dikaitkan dengan masalah dan ditinjau untuk pola menurut jadwal | Masalah diperingkat menurut dampak dan frekuensi terukur | Prioritas masalah dibagikan lintas tim dan pemasok |
| Penyelidikan | Penyelidikan informal | Beberapa tim memakai metode sederhana | Pendekatan tertulis dengan lini masa dan bukti dipakai | Kualitas dan waktu penyelidikan ditinjau | Penyelidikan melintasi tim dan pemasok dengan data bersama |
| Tindakan korektif | Perbaikan ad hoc atau pengingat | Beberapa perbaikan mengubah sistem | Tindakan dipilih karena dampaknya, dengan pemilik dan tanggal | Dampak diperiksa dan pengulangan diukur | Perbaikan menyebar ke sistem serupa di seluruh organisasi |
| Known error dan pengetahuan | Workaround tak tertulis | Sebagian dicatat oleh individu | Known error dicatat dan dibagikan kepada desk dan on-call | Pemakaian dan akurasi known error dilacak | Known error dibagikan kepada pengguna, pemasok, dan mitra |

## Daftar periksa

- [ ] Insiden yang tampak berbagi penyebab dikaitkan.
- [ ] Tinjauan berkala mengelompokkan insiden dan memilih masalah berulang teratas.
- [ ] Masalah terpilih ada di backlog dengan pemilik dan batas waktu.
- [ ] Setiap masalah punya pernyataan tertulis dengan fakta.
- [ ] Lini masa dibangun untuk setiap penyelidikan.
- [ ] Tinjauan menanyakan apa dalam sistem yang memungkinkan kesalahan manusia apa pun.
- [ ] Tindakan mengutamakan perubahan sistem daripada pengingat, dengan dampak yang diharapkan dicatat.
- [ ] Workaround dicatat sebagai known error dan dibagikan kepada desk dan staf on-call.
- [ ] Setiap perbaikan punya pemeriksaan pengulangan selama periode yang disepakati.
- [ ] Ringkasan masalah dan perbaikan dibagikan kepada tim lain.

## Prompt AI

**Tujuan: menemukan insiden berulang dan kandidat masalah dalam catatan Anda.**

```text
Below are descriptions of [number] incidents from the last [period], with dates and the service affected: [paste anonymized descriptions, one per line].

Group the incidents that look as if they might share a cause, based only on what is written. For each group, list the incidents, give a one-sentence description of the common symptom, and say how confident you are and why (low, medium, high). List incidents that do not fit any group. Do not guess at technical causes beyond the text. Suggest three questions for the team to ask to test each group. List what you are unsure of.
```

**Tujuan: menulis pernyataan masalah yang jelas dari bukti.**

```text
Help me write a problem statement.

What we observe, with dates and counts: [paste facts].
What is affected and who is affected: [describe].
What we know about when it started and what changed around then: [paste, or write "unknown"].
What we have already tried: [paste].

Write a problem statement of three to five sentences that describes what happens, where, how often, and the impact, without naming a cause. Then list the facts we still need and where to find them. Mark anything that is an assumption. Do not suggest causes as facts. List what you are unsure of.
```

**Tujuan: menyiapkan sesi five whys dan mencatat rantai penalarannya.**

```text
Help me prepare a five whys discussion for this problem: [paste the problem statement].

Facts we have: [list evidence such as logs, timelines, and changes].

Prepare: a first "why" question grounded in the evidence, a template where each answer records the evidence for it, and a reminder to branch when there is more than one possible answer. Warn me against stopping at human error. After the session I will paste the notes: do not invent answers yourself. Ask clarifying questions first, and list what you are unsure of.
```

**Tujuan: mengevaluasi apakah tindakan korektif yang diusulkan mengubah sistem.**

```text
Here are the actions proposed after our review: [paste a list].

For each, say whether it changes the system (for example automates a check, removes a failure mode, adds a safeguard, improves monitoring) or relies on people remembering or on training, and give one sentence of reasoning from the text only. For each reminder-type action, suggest a stronger alternative as a question for the team. Suggest how we could check whether each action worked, without inventing numbers. List what you are unsure of.
```

## Keterampilan AI

- [root-cause-analysis](../../../../skills/root-cause-analysis/SKILL.md): gunakan untuk memandu penyelidikan dari pernyataan masalah yang jelas sampai penyebab yang teruji.
- [fishbone-diagram](../../../../skills/fishbone-diagram/SKILL.md): gunakan untuk mencurahkan gagasan kemungkinan penyebab menurut kategori bersama tim.
- [cause-and-effect-diagram](../../../../skills/cause-and-effect-diagram/SKILL.md): gunakan untuk menguraikan bagaimana sebab dan akibat terhubung dalam kegagalan yang rumit.
- [postmortem](../../../../skills/postmortem/SKILL.md): gunakan untuk menjalankan tinjauan yang mengidentifikasi kandidat masalah.
- [six-sigma](../../../../skills/six-sigma/SKILL.md): gunakan ketika Anda memerlukan metode berbasis data untuk menganalisis variasi atau cacat berulang.

## Sumber utama

- **Root cause analysis** (Wikipedia): tinjauan umum tentang metode, prinsip, dan batasan, dengan ISO/IEC 31010 didaftar untuk metode.
- **Postmortem Culture: Learning from Failure** (*Site Reliability Engineering*, Google, sre.google): pendekatan tanpa menyalahkan untuk belajar dari kegagalan.
- **Managing Incidents** (*Site Reliability Engineering*, Google, sre.google): bagaimana penanganan insiden memberi masukan pada analisis kemudian.
- **Ishikawa diagram** dan **Five whys** (Wikipedia): latar belakang dua metode sederhana yang umum.

## Referensi

1. Root cause analysis — Wikipedia — https://en.wikipedia.org/wiki/Root_cause_analysis
2. Postmortem Culture: Learning from Failure — Google SRE book, sre.google — https://sre.google/sre-book/postmortem-culture/
3. Managing Incidents — Google SRE book, sre.google — https://sre.google/sre-book/managing-incidents/
4. Five whys — Wikipedia — https://en.wikipedia.org/wiki/Five_whys
5. Ishikawa diagram — Wikipedia — https://en.wikipedia.org/wiki/Ishikawa_diagram
6. Failure mode and effects analysis — Wikipedia — https://en.wikipedia.org/wiki/Failure_mode_and_effects_analysis
7. Fault tree analysis — Wikipedia — https://en.wikipedia.org/wiki/Fault_tree_analysis
8. Pareto analysis — Wikipedia — https://en.wikipedia.org/wiki/Pareto_analysis
9. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
10. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
