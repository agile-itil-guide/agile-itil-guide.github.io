# Site Reliability Engineering

**Site reliability engineering memperlakukan operasi sebagai masalah rekayasa, memakai sasaran tingkat layanan, anggaran kesalahan, dan batas pada pekerjaan manual berulang untuk menjaga layanan tetap andal sambil tetap berubah dengan cepat.**

## Mengapa ini penting

Banyak praktik manajemen layanan dirancang untuk dunia ketika staf operasi menjalankan perangkat lunak yang ditulis orang lain, dan biaya mengoperasikan tumbuh seiring ukuran layanan. Site reliability engineering (SRE) adalah jawaban satu organisasi tentang apa yang terjadi ketika model itu menabrak skala yang sangat besar: minta insinyur perangkat lunak merancang dan menjalankan fungsi operasi, dan buat sistem mengerjakan apa yang kalau tidak akan dikerjakan orang dengan tangan.

Bagi pembaca panduan ini, SRE berguna karena tiga alasan. Ia membuat pertukaran antara kecepatan dan keandalan eksplisit, dengan angka yang dapat dibaca tim produk dan operasi. Ia memberi gagasan tegas tentang seberapa banyak pekerjaan manual yang terlalu banyak. Dan ia menunjukkan betapa banyak praktik ITIL, seperti manajemen insiden, masalah, perubahan, dan kapasitas, dapat dilakukan dalam istilah rekayasa. SRE bukan satu-satunya cara melakukannya, dan ia berasal dari keadaan perusahaan internet yang sangat besar, jadi apa yang dapat dipindahkan bergantung pada situasi Anda.

Topik ini terutama didasarkan pada tiga bab buku *Site Reliability Engineering* Google, dilengkapi artikel Wikipedia tentang SRE. Buku menjelaskan praktik di satu organisasi dan membela pendekatannya; artikel Wikipedia memberi gambaran yang lebih luas tetapi lebih tipis dan tidak menyebut kritik. Baca keduanya sebagai sumber gagasan untuk diuji, bukan standar.

## Konsep inti

### Apa itu SRE

Pengantar buku mendefinisikan SRE sebagai "what happens when you ask a software engineer to design an operations team." [Artikel Wikipedia tentang site reliability engineering](https://en.wikipedia.org/wiki/Site_reliability_engineering) menggambarkannya sebagai disiplin dalam rekayasa perangkat lunak dan dukungan infrastruktur TI yang memantau dan memperbaiki ketersediaan dan kinerja perangkat lunak yang di-deploy dan layanan besar, dengan fokus pada otomatisasi dan infrastruktur sebagai kode. Artikel menyebut SRE implementasi spesifik DevOps, lebih sempit cakupannya karena berkonsentrasi membangun sistem yang andal (lihat Topik 5.2 — DevOps). Buku menjelaskan DevOps sebagai seperangkat prinsip yang lebih luas yang diimplementasikan SRE dengan cara tertentu.

Menurut artikel, praktik SRE Google bermula pada 2003 ketika Benjamin Treynor Sloss bergabung dan membentuk tim dari tujuh insinyur produksi; pada 2016 tim itu memiliki lebih dari 1.000 SRE, dan perusahaan internet besar lain telah mengadopsi praktik itu. Survei 2020 atas 572 profesional menemukan tim SRE di 64 persen organisasi dengan 10.000 karyawan atau lebih, 44 persen dari yang berkaryawan 101 sampai 1.000, dan 32 persen dari yang berkaryawan 100 atau kurang. Rangkaian konferensi SREcon berlangsung setiap tahun sejak 2014.

### Masalah yang ditangani SRE

Pengantar menjelaskan model tradisional: pengembang dan administrator sistem dipisah ke dalam tim terpisah. Ia menyebut dua jenis biaya:

- **Biaya langsung.** Manajemen perubahan manual dan penanganan peristiwa menjadi mahal, karena tim operasi tumbuh seiring beban.
- **Biaya tidak langsung.** Tim punya kosakata, insentif, dan asumsi tentang risiko yang berbeda, yang menimbulkan konflik atas rilis. Operasi menambah gerbang peluncuran, dan pengembang menanggapi dengan jalan pintas.

SRE bertujuan menghindari pemisahan ini dengan memperlakukan operasi sebagai masalah rekayasa. Bab mengatakan ukuran tim tumbuh lebih lambat daripada sistem, karena rekayasa menjaga beban operasional tidak tumbuh selaras dengan lalu lintas.

### Tenet

Pengantar mendaftar area yang menjadi tanggung jawab tim SRE: ketersediaan, latensi, kinerja, efisiensi, manajemen perubahan, pemantauan, respons darurat, dan perencanaan kapasitas. Artikel Wikipedia mendaftar praktik inti yang mencakup mengotomatisasi pekerjaan berulang, menentukan tujuan keandalan lewat indikator tingkat layanan (SLI), sasaran (SLO), dan anggaran kesalahan, merancang sistem untuk mengurangi risiko, observabilitas dan pemantauan, mengelola toil, proses manajemen insiden yang teruji, dan perencanaan kapasitas, manajemen rilis, dan chaos engineering.

### Sasaran tingkat layanan dan anggaran kesalahan

SRE mengaitkan keandalan dengan target eksplisit (lihat Topik 3.7 — Manajemen Tingkat Layanan untuk pembahasan penuh). Singkatnya:

- Pilih beberapa indikator yang mencerminkan apa yang dipedulikan pengguna.
- Tetapkan sasaran yang tidak menuntut kesempurnaan.
- Izinkan **anggaran kesalahan**: ruang antara sempurna dan sasaran.
- Pakai anggaran untuk memutuskan laju rilis: selama anggaran tersisa, rilis berlanjut; ketika habis, rilis melambat dan upaya bergeser ke keandalan.

Bab "Embracing Risk" menjelaskan mengapa: tim produk diukur pada kecepatan dan tim keandalan pada keandalan, yang menciptakan ketegangan, dan anggaran memberi keduanya ukuran bersama yang objektif. Bab yang sama mengatakan biaya keandalan naik curam dan tujuannya mencocokkan risiko layanan dengan apa yang akan diterima bisnis (lihat Topik 3.11 — Ketersediaan, Kapasitas, dan Kinerja).

### Toil

Bab "Eliminating Toil" mendefinisikan **toil** sebagai pekerjaan operasional yang terkait dengan menjalankan layanan produksi, dan mengatakan ia bukan sekadar pekerjaan yang tidak disukai seseorang dan berbeda dari overhead seperti rapat. Toil cenderung:

| Ciri | Arti |
|---|---|
| **Manual** | Memerlukan upaya manusia langsung, meskipun skrip menjalankan langkahnya |
| **Berulang** | Dilakukan berulang kali, bukan masalah baru |
| **Dapat diotomatisasi** | Mesin dapat mengerjakannya, atau kebutuhannya dapat dirancang agar hilang |
| **Taktis** | Digerakkan interupsi dan reaktif, seperti menanggapi page |
| **Tanpa nilai yang bertahan** | Layanan berada dalam keadaan yang sama sesudahnya |
| **Linear dengan pertumbuhan** | Upaya berskala dengan ukuran layanan, lalu lintas, atau pengguna |

Buku mengatakan SRE bertujuan menjaga toil di bawah 50 persen waktu mereka, dengan setidaknya separuh dihabiskan untuk pekerjaan proyek rekayasa, dan pengantar menempatkan batas 50 persen pada pekerjaan "ops" agregat, mengembalikan kelebihannya ke tim pengembangan. Ia mengatakan terlalu banyak toil menyebabkan stagnasi karier, moral rendah, dan kelelahan, memperlambat pekerjaan fitur, dan mendorong pergantian staf; "toil becomes toxic when experienced in large quantities," meskipun jumlah kecil dapat menenangkan dan sebagian tak terhindarkan. Bab memberi cara menghitung lantai yang dikenakan on-call (misalnya batas bawah 33 persen untuk jadwal enam orang di bawah asumsi contohnya) dan melaporkan bahwa interupsi adalah sumber toil terbesar, diikuti respons on-call lalu rilis. Ia mendefinisikan pekerjaan rekayasa sebagai baru, memerlukan penilaian, menghasilkan perbaikan permanen, dan mengikuti strategi.

### Respons darurat dan pemantauan

Pengantar mengatakan pemantauan tidak boleh memerlukan manusia untuk menafsirkan peringatan: perangkat lunak menafsirkan data dan manusia diberi tahu hanya ketika tindakan diperlukan (lihat Topik 3.10 — Pemantauan dan Manajemen Peristiwa). Ia mengatakan SRE on-call sebaiknya menerima paling banyak sekitar dua peristiwa per shift. Ia mengklaim bahwa playbook menghasilkan perbaikan sekitar tiga kali lipat pada mean time to repair dibandingkan berimprovisasi. Penanganan insiden mengikuti pendekatan komando insiden, dan postmortem tanpa menyalahkan serta ditulis untuk semua insiden signifikan (lihat Topik 3.2 — Manajemen Insiden).

### Manajemen perubahan

Pengantar menyatakan bahwa sekitar 70 persen gangguan berasal dari perubahan pada sistem yang hidup, dan menganjurkan rollout progresif, deteksi masalah cepat, dan rollback aman. Ini klaim buku sendiri, dari pengalaman Google, dan mungkin tidak berlaku untuk setiap organisasi. Pesannya konsisten dengan panduan DORA tentang perubahan (lihat Topik 3.4 — Pemampuan Perubahan dan Topik 3.5 — Manajemen Rilis dan Deployment).

### SRE dan ITIL

SRE dapat dibaca sebagai cara rekayasa melaksanakan beberapa praktik ITIL:

| Praktik ITIL | Pendekatan SRE |
|---|---|
| Manajemen insiden | Peran komando insiden, catatan insiden langsung, postmortem tanpa menyalahkan |
| Manajemen masalah | Tindakan postmortem dalam backlog, penyingkiran toil pada penyebabnya |
| Pemampuan perubahan | Rollout progresif, deteksi cepat, rollback aman, pemeriksaan otomatis |
| Manajemen tingkat layanan | SLI, SLO, anggaran kesalahan |
| Pemantauan dan manajemen peristiwa | Peringatan berbasis gejala, empat sinyal emas |
| Manajemen kapasitas | Perencanaan kapasitas sebagai tugas rekayasa, dengan pengujian beban |
| Peningkatan berkelanjutan | Batas pada toil, proyek rekayasa sebagai pekerjaan utama |

Pemetaan ini milik panduan ini, bukan sumber. Baik buku maupun artikel Wikipedia tidak mengklaim mengimplementasikan ITIL.

### Model deployment

Artikel Wikipedia menjelaskan enam model organisasi untuk SRE: "Kitchen Sink," infrastruktur, perkakas, produk atau aplikasi, tertanam, dan konsultasi. Ia mengatakan hibrida lazim di organisasi besar, tetapi menandai klaim itu memerlukan kutipan. Model mana yang cocok bagi Anda bergantung pada ukuran dan jumlah layanan Anda.

### Batasan dan kritik

Artikel Wikipedia tidak menyatakan kritik, biaya, atau mode kegagalan, dan buku menjelaskan keberhasilan satu organisasi. Batasan praktis sudah dikenal dari pengalaman, dan ditawarkan di sini sebagai demikian: SRE memerlukan engineer yang dapat menulis perangkat lunak dan bersedia melakukan operasi; batas 50 persen memerlukan dukungan manajemen; anggaran kesalahan hanya berfungsi jika tim produk menghormatinya; dan pendekatan ini sulit disalin tanpa skala dan perkakas yang melahirkannya. Organisasi lebih kecil dapat mengadopsi gagasannya, seperti sasaran, anggaran, pengukuran toil, dan tinjauan tanpa menyalahkan, tanpa membentuk tim.

## Praktik terbaik

1. **Pilih satu layanan dan tetapkan sasaran.** Pilih dua sampai empat indikator yang mencerminkan pengalaman pengguna, tetapkan sasaran pertama yang longgar, dan ukur selama beberapa bulan sebelum memperketatnya.
2. **Sepakati kebijakan anggaran kesalahan.** Tuliskan apa yang terjadi ketika anggaran hampir habis dan ketika habis, dan siapa yang boleh menimpa. Jadikan aturan bersama produk dan operasi.
3. **Ukur toil.** Minta orang mencatat berapa banyak waktu mereka untuk pekerjaan operasional manual dan berulang. Pakai enam ciri untuk mengklasifikasi. Lihat sumber teratas.
4. **Batasi pekerjaan manual.** Tetapkan batas atas untuk toil, seperti separuh waktu seseorang, dan tinjau. Ketika batas terlampaui, kembalikan kelebihan pekerjaan ke tim pemilik penyebab atau kurangi cakupan.
5. **Otomatisasi toil terbesar lebih dulu.** Pilih butir yang memakan waktu paling banyak dan paling dapat diulang, otomatisasi dengan pengujian, dan ukur penghematannya. Utamakan merancang kebutuhan agar hilang daripada mengotomatisasinya.
6. **Lindungi waktu rekayasa.** Rencanakan pekerjaan proyek bagi engineer operasi sebagai pekerjaan nyata dengan pemilik dan tanggal. Tanpanya, toil mengembang.
7. **Batasi interupsi.** Bidik sedikit peristiwa per shift on-call, setel peringatan agar page dapat ditindaklanjuti, dan perbaiki penyebab berulang. Panduan buku sekitar dua peristiwa per shift paling banyak.
8. **Tulis playbook.** Untuk kegagalan umum, tulis langkah respons singkat yang teruji. Buku mengklaim ia memperbaiki waktu perbaikan dibandingkan berimprovisasi.
9. **Jadikan perubahan progresif dan dapat dibalik.** Rollout bertahap, deteksi masalah dengan cepat, dan rollback dengan aman. Karena perubahan adalah penyebab gangguan terbanyak dalam pengalaman buku, investasikan di sini lebih dulu.
10. **Jalankan postmortem tanpa menyalahkan untuk insiden signifikan,** termasuk nyaris celaka yang tidak men-page. Ubah tindakan menjadi butir backlog.
11. **Mulai dengan gagasannya, bukan timnya.** Organisasi lebih kecil dapat mengadopsi sasaran, anggaran, ukuran toil, dan postmortem dengan staf yang ada sebelum membentuk tim khusus.
12. **Pilih model organisasi dengan sengaja.** Jika Anda membentuk fungsi SRE, putuskan apakah ia menyediakan perkakas, tertanam dengan tim produk, atau berkonsultasi, dan tinjau pilihan seiring Anda tumbuh.

## Pertanyaan untuk dibahas bersama tim Anda

**Layanan mana yang akan kita beri sasaran lebih dulu, dan apa sasarannya?**

Minta tiap orang menyebut layanan dan indikator yang paling mencerminkan pengalaman pengguna. Bandingkan. Perbedaan menunjukkan prioritas yang tidak jelas. Fasilitator dapat menanyakan apa yang terjadi hari ini ketika layanan lebih lambat atau kurang tersedia daripada harapan pengguna. Sepakati layanan untuk dimulai dan apa yang diukur.

**Apa yang akan kita lakukan jika menghabiskan seluruh anggaran kesalahan bulan ini?**

Minta tim dan perwakilan produk menjelaskan tindakan, siapa yang memutuskan, dan apa yang dilindungi. Banyak tim belum pernah menyepakatinya. Bahas apakah jeda rilis berisiko akan diterima. Susun kebijakan satu halaman.

**Berapa banyak minggu kita yang berupa toil, dan apa tiga sumber teratas?**

Minta orang memperkirakan lalu mencatat selama dua minggu. Bandingkan perkiraan dengan catatan. Tujuannya melihat bentuk pekerjaan, bukan menyalahkan. Pilih sumber terbesar dan tanyakan apakah dapat disingkirkan lewat desain.

**Tugas manual berulang mana yang dapat disingkirkan oleh skrip atau perubahan desain?**

Daftar tugas yang ditakuti orang. Untuk masing-masing, perkirakan frekuensi dan waktu. Kandidat terbaik sering, stabil, dan berisiko rendah. Tanyakan apa yang akan membuat otomatisasi aman, seperti batas dan log. Pilih satu untuk diotomatisasi.

**Berapa banyak peristiwa yang diterima tiap shift on-call, dan berapa yang memerlukan tindakan?**

Hitung untuk kuartal terakhir. Jika angkanya tinggi, bahas dari mana asalnya. Pengantar menyarankan membidik sekitar dua peristiwa per shift. Pilih satu sumber peringatan untuk diperbaiki.

**Apa yang akan hilang dan diperoleh jika kita membentuk tim keandalan khusus?**

Minta pandangan jujur. Keuntungan mungkin fokus dan keterampilan; kerugian mungkin silo baru atau pembuangan pekerjaan operasional. Bahas alternatif seperti engineer tertanam atau rotasi. Putuskan apa yang dicoba dalam skala kecil.

## Dalam praktik: contoh ITIL agile

Distributor listrik regional menjalankan aplikasi pelaporan pemadaman dan sistem dispatch kru lapangan. Tim gabungan delapan belas orang membangun dan menjalankan keduanya. Staf operasi dalam tim menghabiskan sebagian besar waktunya untuk pekerjaan manual: memulai ulang pekerjaan yang macet, menyesuaikan umpan data, dan menanggapi page. Kepala kelompok mencatat bahwa mereka punya sedikit waktu tersisa untuk perbaikan, dan dua di antaranya meminta pindah ke tim lain.

Kepala tim mengusulkan pendekatan terinspirasi SRE. Untuk aplikasi pelaporan pemadaman, tim menetapkan dua indikator: porsi pengiriman laporan yang berhasil dan waktu untuk menampilkan konfirmasi. Tim menyepakati sasaran longgar dan anggaran kesalahan bulanan dengan manajer layanan pelanggan, dan menulis kebijakan satu halaman: ketika lebih dari tiga perempat anggaran terpakai, rilis berisiko menunggu. Tim meminta engineer mencatat toil selama sebulan. Catatan menunjukkan bahwa sepertiga waktu mereka habis untuk memulai ulang pekerjaan impor data yang gagal dan penyesuaian manual setelah badai, ketika permintaan melonjak. Mereka menetapkan batas separuh waktu mereka untuk toil, memutuskan memperbaiki penyebab pekerjaan impor lebih dulu, dan mengotomatisasi penyesuaian badai dengan skrip yang punya batas dan log. Page disetel agar hanya gejala yang terlihat pengguna yang memperingatkan engineer on-call.

Empat bulan kemudian, toil turun menjadi sekitar sepertiga waktu tim, pekerjaan impor tidak lagi gagal, dan kebijakan anggaran kesalahan telah dipakai sekali, pada bulan dengan gangguan pemasok, untuk menunda rilis fitur. Kesulitan tersisa. Sistem dispatch belum punya sasaran, dan manajer layanan pelanggan tergoda menimpa kebijakan anggaran dua kali untuk fitur mendesak. Kepala tim dan manajer menyepakati meninjau penimpaan setiap bulan dan menetapkan sasaran untuk dispatch berikutnya. Mereka juga belajar bahwa "batas" adalah panduan, bukan janji: setelah badai besar, toil naik jauh melebihi separuh selama dua minggu, dan mereka harus memutuskan apa yang dipotong.

## Empat perspektif

### Tim produk dan pengiriman

Tim pengiriman ikut menetapkan sasaran dan menghormati anggaran. Bangun kemampuan dioperasikan ke dalam fitur, terima bahwa toil kembali ke tim yang menyebabkannya, dan bantu mengotomatisasi. Perlakukan anggaran yang habis sebagai informasi tentang layanan, bukan hukuman.

### Tim layanan dan operasi

Tim operasi mungkin melakukan pekerjaan SRE atau mengadopsi gagasannya. Ukur toil, lindungi waktu untuk rekayasa, dan dorong pekerjaan berulang kembali ke sumbernya. Pakai sasaran untuk menjelaskan mengapa sebagian pekerjaan harus ditolak.

### Kepemimpinan dan tata kelola

Pemimpin harus mendukung batas toil dan aturan anggaran kesalahan; tanpa dukungan keduanya gagal. Minta sasaran dan status anggaran, bukan jumlah insiden. Sediakan waktu untuk pekerjaan rekayasa dan bersedialah menolak fitur ketika anggaran habis.

### Pelanggan dan pengguna

Pelanggan dan pengguna diuntungkan oleh tingkat layanan yang jelas dan pemulihan lebih cepat ketika ada yang gagal. Beri tahu tim apa yang paling penting, agar sasaran mencerminkan pengalaman Anda. Harapkan percakapan jujur tentang pertukaran antara fitur baru dan keandalan.

## Pola kegagalan umum

- **Menyalin jabatannya.** Operasi diganti nama dan tak ada yang berubah. Sebaliknya, adopsi sasaran, anggaran, dan ukuran toil lebih dulu.
- **Anggaran kesalahan yang tak dihormati siapa pun.** Fitur menimpanya setiap kali. Sebaliknya, sepakati aturan dengan product owner dan tinjau penimpaan.
- **Tanpa waktu untuk rekayasa.** Toil memenuhi minggu. Sebaliknya, batasi dan lindungi waktu proyek.
- **Mengotomatisasi hal yang salah.** Tugas langka diotomatisasi sementara yang sering tetap. Sebaliknya, peringkat menurut waktu dan frekuensi.
- **Target kesempurnaan.** Sasaran menuntut 100 persen. Sebaliknya, tetapkan target longgar dari kebutuhan pengguna dan perketat dengan data.
- **Tim keandalan sebagai tempat pembuangan.** Pengembangan mengirim semua pekerjaan operasional kepadanya. Sebaliknya, kembalikan kelebihan pekerjaan ke sumbernya.
- **Menyalin skala Google.** Praktik yang memerlukan organisasi besar diadopsi organisasi kecil. Sebaliknya, ambil gagasan yang cocok, seperti sasaran dan postmortem.
- **Mengabaikan orang.** Beban on-call membakar orang. Sebaliknya, batasi peristiwa per shift dan bagi jadwal.

## Model kematangan

| Dimensi | Memulai | Mengembangkan | Menstandarkan | Mengelola | Mengorkestrasi |
|---|---|---|---|---|---|
| Sasaran dan anggaran | Tujuan keandalan informal | Beberapa layanan punya sasaran | Layanan utama punya sasaran dan kebijakan anggaran kesalahan yang disepakati | Anggaran memandu rilis dan penimpaan kebijakan ditinjau | Sasaran dan anggaran diselaraskan lintas layanan yang saling bergantung |
| Toil dan otomatisasi | Toil tidak diukur | Beberapa tim memperkirakan toil | Toil diukur dan dibatasi; pekerjaan otomatisasi direncanakan | Sumber toil dan penghematan dilacak dan dikurangi | Otomatisasi dibagikan dan toil dikurangi lintas tim |
| Respons darurat | Respons diimprovisasi | Ada beberapa playbook dan jadwal | Peran, playbook, dan postmortem tanpa menyalahkan adalah standar | Beban peristiwa dan waktu perbaikan diukur dan diperbaiki | Respons dilatih dan dikoordinasikan lintas tim dan pemasok |
| Perubahan dan kapasitas | Perubahan berisiko dan manual | Beberapa rollout bertahap | Rollout progresif dan perencanaan kapasitas adalah rutin | Kegagalan perubahan dan perkiraan kapasitas diukur | Praktik perubahan dan kapasitas dibagikan di seluruh organisasi |

## Daftar periksa

- [ ] Setidaknya satu layanan punya indikator dan sasaran longgar, diukur dari waktu ke waktu.
- [ ] Kebijakan anggaran kesalahan disepakati dengan product owner dan dituliskan.
- [ ] Toil diukur dengan definisi yang konsisten, dan sumber teratas diketahui.
- [ ] Batas atas toil ada dan ditinjau.
- [ ] Waktu untuk proyek rekayasa direncanakan dan dilindungi.
- [ ] Beban on-call diukur, dan page dapat ditindaklanjuti.
- [ ] Playbook ada untuk kegagalan paling umum dan telah diuji.
- [ ] Rollout progresif dan rollback diuji.
- [ ] Insiden signifikan dan nyaris celaka mendapat postmortem tanpa menyalahkan dengan tindakan yang dimiliki.
- [ ] Kami telah memilih dengan sengaja bagaimana pekerjaan keandalan diorganisasi.

## Prompt AI

**Tujuan: mengklasifikasikan pekerjaan Anda sebagai toil, rekayasa, atau overhead.**

```text
Here is a list of what our operations engineers did in the last two weeks, with the time spent on each: [paste real data].

Classify each item as toil, engineering work, or overhead, using these definitions. Toil: manual, repetitive, automatable, tactical, without enduring value, and growing linearly with the service. Engineering work: novel, requires judgment, produces permanent improvement. Overhead: administrative work not tied to running a service. Give a one-sentence reason from my text for each. Compute the share of time in each class from my numbers only, and list the three largest toil items. Mark items you could not classify. Do not invent time figures. List what you are unsure of.
```

**Tujuan: menyusun kebijakan anggaran kesalahan.**

```text
Draft a one-page error budget policy for [service].

Objective and period: [for example, "99.9% of purchase requests succeed, per month"].
Release rhythm and who decides: [describe].
Customer and product concerns: [list].

Write sections: how the budget is calculated and shown, what happens at three stages of consumption (leave thresholds as [to be agreed]), who can override and how overrides are recorded, how the policy is reviewed, and what we do after an exhausted budget. Do not invent numbers. Ask clarifying questions first, and list what you are unsure of.
```

**Tujuan: memilih butir toil untuk diotomatisasi lebih dulu.**

```text
Here are our top toil items with how often each occurs, time per occurrence, risk if the automation fails, and whether the cause could be designed away: [paste].

Rank them by total time saved per month (computed from my numbers only). For the top three, say whether I should design the need away or automate it, and what safeguards the automation needs (tests, limits, logs). Do not invent numbers. Ask clarifying questions first, and list what you are unsure of.
```

**Tujuan: menulis entri playbook.**

```text
Write a playbook entry for this recurring failure: [describe symptom and impact].

What I know about causes and fixes: [paste].
Who to escalate to: [role, or "unknown"].

Provide a short entry: how to confirm the failure, the first checks, the usual fix, how to confirm recovery, when to escalate, and what to record. Mark any step you inferred with [CHECK]. Ask clarifying questions first, and list what you are unsure of.
```

## Keterampilan AI

- [on-call-rotation](../../../../skills/on-call-rotation/SKILL.md): gunakan untuk merancang jadwal yang adil dengan batas peristiwa per shift.
- [runbook](../../../../skills/runbook/SKILL.md): gunakan untuk menulis playbook yang mempercepat perbaikan.
- [postmortem](../../../../skills/postmortem/SKILL.md): gunakan untuk menjalankan tinjauan tanpa menyalahkan dan melacak tindakan.
- [chaos-testing](../../../../skills/chaos-testing/SKILL.md): gunakan untuk menguji bahwa desain keandalan berfungsi dengan menyebabkan kegagalan secara aman.
- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): gunakan untuk merencanakan kapasitas sebagai tugas rekayasa yang terkait permintaan.

## Sumber utama

- **Introduction** (*Site Reliability Engineering*, Google, sre.google): definisi SRE, batas 50 persen, tenet, dan pemisahan dev/ops yang hendak dihindarinya.
- **Eliminating Toil** (*Site Reliability Engineering*, Google, sre.google): definisi toil dan alasan membatasinya.
- **Embracing Risk** (*Site Reliability Engineering*, Google, sre.google): ekonomi keandalan dan anggaran kesalahan.
- **Site reliability engineering** (Wikipedia): ringkasan disiplin yang lebih luas, model deployment, survei adopsi, dan bacaan lanjutan.

## Referensi

1. Introduction — Google SRE book, sre.google — https://sre.google/sre-book/introduction/
2. Eliminating Toil — Google SRE book, sre.google — https://sre.google/sre-book/eliminating-toil/
3. Embracing Risk — Google SRE book, sre.google — https://sre.google/sre-book/embracing-risk/
4. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
5. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
6. Chaos engineering — Wikipedia — https://en.wikipedia.org/wiki/Chaos_engineering
7. Infrastructure as code — Wikipedia — https://en.wikipedia.org/wiki/Infrastructure_as_code
8. Observability (software) — Wikipedia — https://en.wikipedia.org/wiki/Observability_(software)
9. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
