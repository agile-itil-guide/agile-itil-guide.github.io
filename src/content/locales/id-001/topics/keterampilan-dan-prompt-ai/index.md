# Keterampilan dan Prompt AI

**Prompt yang baik memberi asisten AI materi, tugas, dan pemeriksaan yang dibutuhkannya, dan keterampilan (skill) yang baik mengemas pengetahuan itu agar tim dapat memakainya ulang, sehingga prompt dan keterampilan AI dalam panduan ini adalah titik awal yang Anda sesuaikan dan verifikasi.**

## Mengapa ini penting

Setiap topik dalam panduan ini diakhiri dengan prompt dan keterampilan. Keduanya ada karena banyak tugas dalam manajemen layanan cocok untuk asisten yang dapat membaca tumpukan tiket, menyusun runbook, atau mengubah catatan menjadi rencana. Keduanya juga ada karena permintaan yang kabur kepada AI menghasilkan hasil yang kabur, kadang salah. Perbedaan antara jawaban berguna dan jawaban yang masuk akal tetapi kosong sering terletak pada cara permintaan ditulis dan materi apa yang menyertainya.

Topik ini menjelaskan cara memakai prompt dan keterampilan panduan, mengapa keduanya ditulis seperti itu, dan cara menulis milik Anda sendiri untuk tim Anda. Ini lebih tentang kebiasaan daripada trik: menyediakan materi nyata, mengatakan apa yang Anda inginkan, meminta asisten menandai apa yang tidak diketahuinya, dan memeriksa apa yang kembali. Ia dibangun di atas peringatan dalam topik sebelumnya, yang menjelaskan di mana AI membantu dan di mana ia dapat merugikan (lihat Topik 6.2 — AI dalam Manajemen Layanan TI).

Sumbernya praktis. Keterampilan `skills/prompt-engineering` milik panduan ini menjelaskan penulisan prompt sebagai praktik sengaja merancang dan mengiterasi instruksi yang diberikan kepada model bahasa, memperlakukan prompt seperti perangkat lunak kecil yang ditulis, diuji terhadap kasus nyata, dan direvisi. Dokumentasi Claude Code menjelaskan bagaimana keterampilan distrukturkan sebagai direktori dengan berkas `SKILL.md`. [Artikel Wikipedia tentang model bahasa besar](https://en.wikipedia.org/wiki/Large_language_model) memberi latar belakang. Tidak ada sumber yang dibaca untuk panduan ini yang menawarkan bukti tentang teknik prompting mana yang paling baik; perlakukan teknik di sini sebagai kebiasaan untuk diuji.

## Konsep inti

### Prompt, keterampilan, dan untuk apa keduanya

**Prompt** adalah instruksi dan materi yang Anda berikan kepada asisten AI untuk satu tugas. **Keterampilan (skill)**, dalam format yang dipakai di folder `skills/` panduan ini, adalah paket pengetahuan yang dapat dipakai ulang untuk satu jenis tugas: direktori berisi berkas `SKILL.md` yang mengatakan kapan memakainya dan bagaimana mengerjakannya. Dalam dokumentasi Claude Code, keterampilan adalah direktori dengan berkas `SKILL.md` yang wajib, yang frontmatter-nya punya nama dan deskripsi, dan badannya memberi instruksi; asisten memakai deskripsi untuk memutuskan kapan menerapkan keterampilan, dan memuat seluruh badan hanya ketika dipakai.

| | Prompt | Keterampilan |
|---|---|---|
| **Cakupan** | Satu tugas, sekarang | Satu jenis tugas, dipakai ulang |
| **Tinggal di** | Dalam obrolan atau dokumen | Dalam folder, seperti `skills/` atau direktori keterampilan proyek |
| **Diubah oleh** | Anda, setiap kali | Tim, dengan tinjauan |
| **Terbaik untuk** | Analisis spesifik materi Anda sendiri | Metode berulang seperti menjalankan retrospektif |

### Bagaimana prompt panduan dibangun

Prompt dalam panduan ini mengikuti pola sederhana, yang dipaparkan dalam panduan gaya:

1. **Tujuan satu baris yang dicetak tebal** mengatakan untuk apa prompt itu.
2. **Blok berpagar** berisi teks yang dapat Anda salin dan tempel.
3. **Placeholder dalam kurung siku** menandai apa yang harus Anda sediakan, dengan petunjuk apa yang ditaruh di sana.
4. **Tugas** yang menyebut keluaran yang diinginkan.
5. **Batasan**: jangan mengarang angka, sumber, kutipan, atau klaim kepatuhan; pakai hanya materi yang ditempel.
6. **Permintaan untuk bertanya dulu** bila informasi hilang, dan untuk menandai asumsi.
7. **Pemeriksaan akhir**: "List what you are unsure of."

Bagian-bagian ini ada karena alasan. Placeholder memaksa Anda membawa materi nyata. Batasan menghentikan asisten mengisi celah dengan karangan. Permintaan pertanyaan klarifikasi mengubah tebakan sekali jadi percakapan singkat. Baris akhir membuat asisten menandai titik lemahnya sendiri, yang membantu Anda memutuskan apa yang diperiksa.

### Pola yang membantu

Keterampilan `prompt-engineering` panduan mendaftar teknik, yang diringkas panduan ini dengan kata-katanya sendiri:

- **Spesifik tentang keluaran yang Anda inginkan,** seperti tabel dengan kolom bernama, atau daftar bernomor paling banyak lima butir, agar asisten tidak menebak bentuknya.
- **Beri contoh bila instruksi ambigu,** menunjukkan pola yang Anda inginkan dalam sampel singkat.
- **Sediakan konteks yang tidak dapat diketahui asisten,** seperti terminologi, kendala, dan dokumen yang dimaksud, dan katakan apa yang tidak boleh diasumsikannya.
- **Iterasi terhadap kasus uji nyata,** menjalankan prompt pada berbagai masukan nyata dan merevisi di mana gagal, alih-alih menilainya dari satu contoh bagus.

Prompt yang disetel pada satu masukan mungkin gagal pada yang lain. Keterampilan itu menegaskan bahwa masukan pendek yang berbunyi aneh, atau yang kehilangan satu bidang, dapat merusak prompt yang menangani contoh aslinya.

### Kebiasaan verifikasi

Setiap keluaran perlu diperiksa sebanding dengan biaya kesalahan. Kebiasaan yang membantu:

- **Periksa fakta terhadap sumber yang Anda tempel.** Minta asisten mengutip bagian materi Anda yang mendukung tiap pernyataan.
- **Jangan pernah menerima referensi yang belum Anda lihat.** Kasus yang dijelaskan dalam topik sebelumnya mencakup kutipan pengadilan yang dikarang; jangan mengulanginya.
- **Pisahkan apa yang dilihat asisten dari apa yang diasumsikannya.** Prompt panduan meminta ini.
- **Uji sendiri perhitungan,** atau minta langkah kerjanya dan periksa.
- **Pakai pandangan kedua untuk apa pun yang keluar dari tim,** seperti balasan pelanggan atau kebijakan.
- **Simpan catatan pemakaian signifikan,** seperti dijelaskan di Topik 6.2 — AI dalam Manajemen Layanan TI.

### Melindungi data

Sebelum menempelkan apa pun ke prompt, tanyakan apa isinya dan ke mana akan pergi. Hapus data pribadi, kredensial, dan rincian komersial rahasia kecuali perkakas dan ketentuannya telah disetujui untuk itu (lihat Topik 3.13 — Manajemen Keamanan Informasi). Prompt panduan meminta Anda menganonimkan, tetapi tanggung jawabnya ada pada Anda. Bila ragu, jelaskan situasinya secara umum.

### Seperti apa sebuah keterampilan

Dari dokumentasi Claude Code dan keterampilan dalam panduan ini, keterampilan adalah direktori seperti `skills/runbook/` berisi `SKILL.md`. Berkas dimulai dengan frontmatter YAML di antara penanda `---`, berisi setidaknya `name` dan `description`. Dokumentasi mengatakan deskripsi memberi tahu asisten apa yang dilakukan keterampilan dan kapan memakainya, dan menyarankan menaruh kasus pemakaian utama lebih dulu. Badan memberi metode dalam markdown. Berkas lain, seperti dokumen rujukan atau skrip, dapat berada di sampingnya dan dimuat bila perlu; dokumentasi menyarankan menjaga `SKILL.md` sendiri tetap pendek, di bawah 500 baris.

Keterampilan yang disalin dalam panduan ini mengikuti bentuk yang sama. Deskripsinya diawali "Use when asked to…", yang memperjelas kapan masing-masing berlaku.

### Di mana keterampilan tinggal

Dokumentasi menjelaskan keterampilan pribadi di direktori keterampilan rumah pengguna, keterampilan proyek di direktori keterampilan repositori yang dapat di-commit dan dibagikan dengan tim, dan lokasi lain seperti plugin. Untuk tim, folder proyek di bawah kendali versi adalah tempat yang wajar: keterampilan ditinjau, diubah lewat proses yang sama seperti pekerjaan lain, dan tersedia bagi semua orang.

### Menulis keterampilan tim Anda sendiri

Keterampilan tim menangkap praktik yang diulang tim dan ingin dikerjakan secara konsisten. Contoh untuk manajemen layanan: cara menulis postmortem dalam gaya rumah Anda, cara memilah jenis tiket tertentu, cara menyiapkan permintaan perubahan, cara menjalankan tinjauan Jumat Anda. Untuk menulisnya:

1. **Pilih tugas yang Anda ulang** dan yang punya cara pengerjaan baik yang diketahui.
2. **Tulis deskripsi dulu,** diawali "Use when…" dan kasus pemakaian utama, agar asisten dan rekan Anda tahu kapan berlaku.
3. **Tulis metodenya** sebagai langkah singkat, dengan format keluaran, pemeriksaan, dan hal yang dihindari.
4. **Tambahkan contoh** hasil yang baik, dengan rincian sensitif dihapus.
5. **Katakan apa yang tidak boleh dilakukannya,** seperti mengarang angka atau mengirim apa pun tanpa tinjauan.
6. **Uji pada kasus nyata** dan revisi.
7. **Beri pemilik dan tanggal tinjauan,** seperti dokumen bersama lainnya.

### Keterampilan dalam panduan ini

Folder `skills/` di repositori ini menyimpan salinan keterampilan dari koleksi skills-on-ai, terdaftar di `skills/README.md`, dan dua keterampilan yang ditulis untuk panduan ini: satu untuk pembaca dan satu untuk pemelihara. Tiap topik menaut ke keterampilan yang paling berguna untuk subjeknya, dengan satu kalimat tentang kapan memakai masing-masing. Keterampilan yang disalin bersifat umum, tidak spesifik pada isi panduan ini, jadi pakai sebagai titik awal dan sesuaikan keluarannya dengan konteks Anda.

### Batasan

Tidak ada sumber yang dibaca untuk panduan ini yang mengukur seberapa baik teknik prompting apa pun bekerja, dan perkakas AI berubah cepat. Dokumentasi Claude Code yang dibaca panjang dan hanya dibaca sebagian. Yang berikut adalah saran praktis yang bertahan dalam pemakaian umum, ditawarkan sebagai kebiasaan untuk diuji dan bukan sebagai jaminan.

## Praktik terbaik

1. **Mulai dari tugas nyata dan materi nyata.** Pilih sesuatu yang perlu Anda selesaikan, dan tempel fakta aktualnya, bukan deskripsinya. Isi setiap placeholder dengan hal spesifik.
2. **Nyatakan tujuan dalam satu baris.** Katakan untuk apa keluaran dan siapa yang akan memakainya. Ini membantu asisten memilih tingkat rincian yang tepat.
3. **Tentukan keluarannya.** Sebut format, panjang, dan struktur yang Anda inginkan. Minta tabel bila ingin membandingkan, daftar bila ingin langkah.
4. **Tetapkan batasan.** Katakan apa yang tidak boleh dilakukan asisten: mengarang angka, sumber, atau kutipan; mengasumsikan fakta yang tidak diberikan; mengklaim aturan berlaku tanpa teksnya.
5. **Minta pertanyaan klarifikasi dulu.** Suruh asisten bertanya apa yang dibutuhkannya sebelum menjawab. Jawab singkat, lalu minta ia melanjutkan.
6. **Minta ia memisahkan fakta dari asumsi.** Suruh ia menandai apa yang diambilnya dari materi Anda dan apa yang dikiranya. Prompt panduan ini diakhiri dengan "List what you are unsure of."
7. **Minta bukti.** Minta kutipan dari materi Anda yang mendukung tiap klaim, agar Anda dapat memeriksa dengan cepat.
8. **Iterasi.** Perlakukan jawaban pertama sebagai draf. Katakan apa yang salah dan minta revisi, atau ubah prompt dan coba lagi.
9. **Uji prompt pada beberapa kasus.** Sebelum mengandalkan prompt, jalankan pada tiga atau empat masukan nyata, termasuk yang tak lazim. Catat di mana ia gagal.
10. **Lindungi data.** Hapus rincian pribadi dan rahasia sebelum menempel. Pakai perkakas yang disetujui. Ikuti kebijakan organisasi Anda.
11. **Periksa sebelum memakai.** Verifikasi fakta, angka, dan referensi. Minta seseorang meninjau apa pun yang sampai ke pelanggan atau mengubah sistem.
12. **Bagikan yang berhasil.** Taruh prompt yang terbukti berguna, dengan catatannya, dalam keterampilan tim atau dokumen di bawah kendali versi, dengan pemilik.

## Pertanyaan untuk dibahas bersama tim Anda

**Tugas apa yang kita ulang yang dapat dibantu asisten, dan apa yang perlu kita periksa?**

Minta tiap orang mendaftar tugas, dan menandai risiko bila keluarannya salah. Kelompokkan menjadi risiko rendah, sedang, dan tinggi. Mulai dengan yang berisiko rendah. Fasilitator dapat menanyakan apa langkah pemeriksaannya. Pilih satu tugas untuk uji coba.

**Apa yang kita tempel ke perkakas AI hari ini, dan haruskah?**

Jujur dan tidak menghakimi. Daftar contoh. Bandingkan dengan kebijakan data dan perkakas yang disetujui. Sepakati pemeriksaan cepat yang dapat diterapkan orang sebelum menempel: "apakah ini memuat data pribadi, rahasia, atau rincian rahasia?"

**Prompt panduan ini yang mana yang akan kita coba lebih dulu, dan dengan materi nyata apa?**

Telusuri prompt bersama dan pilih satu. Identifikasi materi nyata untuk ditempel, hapus rincian sensitif, dan jalankan. Bandingkan hasil dan bahas apa yang diubah dalam prompt. Ini cara cepat mempelajari polanya.

**Bagaimana kita tahu sebuah prompt berfungsi?**

Minta himpunan uji: beberapa masukan nyata dengan keluaran baik yang diketahui. Bahas cara menilai jawaban dan siapa yang memutuskan. Prompt tanpa himpunan uji hanyalah harapan. Sepakati himpunan kecil untuk satu prompt.

**Praktik apa yang kita ulang yang layak menjadi keterampilan tim?**

Daftar kandidat: format tinjauan, rutinitas triase, templat laporan. Pilih satu, dan susun deskripsi dan langkahnya bersama. Putuskan siapa pemiliknya dan kapan ditinjau.

**Apa yang tidak akan pernah kita inginkan dilakukan AI sendiri?**

Daftar tindakan: mengirim kepada pelanggan, mengubah produksi, menyetujui akses, memutuskan prioritas. Bahas mengapa. Jawabannya adalah batasan untuk ditulis ke prompt dan keterampilan Anda. Sepakati daftar singkat.

## Dalam praktik: contoh ITIL agile

Service desk TI sebuah rumah sakit regional punya empat belas analis. Kepala desk memperhatikan bahwa rekan memakai asisten AI dengan cara berbeda: seorang menempelkan seluruh tiket, termasuk nama pasien, ke chatbot publik; yang lain menulis prompt rumit dan mendapat ringkasan berguna; sebagian besar tidak memakainya sama sekali. Artikel pengetahuan terbaru, yang disusun asisten, memuat langkah prosedur yang tidak ada.

Kepala desk mengadakan sesi satu jam memakai pendekatan panduan ini. Ia mulai dengan data: kelompok menyepakati aturan bahwa tidak ada rincian pasien atau kredensial yang masuk ke perkakas mana pun, dan bahwa asisten yang disetujui, yang dilisensikan rumah sakit dengan ketentuan yang sesuai, adalah satu-satunya yang dipakai dengan teks tiket. Ia memilih satu tugas, menyusun artikel pengetahuan dari tiket yang terselesaikan, dan memakai pola dari prompt panduan ini: tujuan satu baris, placeholder untuk tiket yang dianonimkan, instruksi untuk memakai hanya isi tiket, menandai setiap langkah yang disimpulkan dengan tag, dan mendaftar apa yang tidak dipastikannya. Dua analis menjalankan prompt pada lima tiket lalu, dan kelompok membaca hasilnya bersama. Prompt mengarang satu langkah pada satu kasus; mereka menambahkan satu baris yang meminta kutipan dari tiket untuk tiap langkah.

Kepala desk menulis prompt yang diperbaiki sebagai keterampilan tim di folder bersama desk, dengan deskripsi yang diawali "Use when…", pemilik, dan tanggal tinjauan, dan menambahkan aturan bahwa tiap artikel yang disusun diperiksa analis kedua sebelum terbit. Setelah dua bulan, jumlah artikel yang disusun per pekan berlipat dua dan peninjau menemukan lebih sedikit kesalahan daripada sebelumnya. Beberapa isu tersisa. Dua analis masih menempelkan rincian ke perkakas publik ketika terdesak, keterampilan menghasilkan kata-kata terlalu formal yang ditulis ulang analis, dan seorang peninjau mengaku membaca sekilas. Kepala desk mengulang aturan data di setiap rapat tim, menambahkan contoh gaya ke keterampilan, dan meminta peninjau mencentang daftar periksa singkat.

## Empat perspektif

### Tim produk dan pengiriman

Tim pengiriman memakai asisten untuk kode, pengujian, dan dokumentasi. Terapkan kebiasaan yang sama: materi nyata, batasan jelas, verifikasi, dan tinjauan. Jauhkan rahasia dari prompt, dan simpan prompt dan keterampilan yang berguna bersama kode.

### Tim layanan dan operasi

Tim operasi dapat memakai prompt untuk menganalisis tiket, menyusun runbook, dan menyiapkan tinjauan. Jauhkan data pribadi, periksa keluaran terhadap log dan catatan, dan tulis keterampilan untuk rutinitas yang diulang tim, seperti postmortem dan serah terima shift.

### Kepemimpinan dan tata kelola

Pemimpin menetapkan aturan tentang apa yang boleh dipakai, dengan data apa, dan siapa yang bertanggung jawab. Minta inventaris, kebijakan data, dan bukti dari uji coba. Dukung waktu bagi tim untuk menulis dan menguji prompt dan keterampilan, dan pastikan keterampilan bersama punya pemilik.

### Pelanggan dan pengguna

Pelanggan dan pengguna mungkin melihat hasil prompt dan keterampilan dalam balasan, artikel, dan ringkasan. Harapkan penyedia memeriksanya dan memberi tahu Anda ketika mereka memakai perkakas otomatis di tempat yang penting. Laporkan kesalahan, yang membantu memperbaiki materi dasarnya.

## Pola kegagalan umum

- **Permintaan kabur.** Asisten menebak. Sebaliknya, sediakan materi, tujuan, dan keluaran yang Anda inginkan.
- **Menempel data sensitif.** Rincian pribadi atau rahasia keluar dari organisasi. Sebaliknya, hapus dan pakai perkakas yang disetujui.
- **Menerima isi karangan.** Langkah, angka, atau referensi karangan dipakai. Sebaliknya, tetapkan batasan, minta kutipan, dan verifikasi.
- **Penyetelan satu contoh.** Prompt berhasil sekali dan gagal di tempat lain. Sebaliknya, uji pada beberapa masukan nyata.
- **Keterampilan tanpa pemilik.** Prompt bersama menjadi basi. Sebaliknya, tetapkan pemilik dan tanggal tinjauan, dan simpan di bawah kendali versi.
- **Terlalu memercayai prompt salinan.** Prompt dari internet atau dari panduan ini dipakai tanpa diubah. Sebaliknya, sesuaikan dengan konteks Anda dan periksa hasilnya.
- **Tanpa pandangan kedua.** Keluaran AI langsung ke pelanggan. Sebaliknya, minta seseorang meninjau apa pun yang keluar dari tim.
- **Memperlakukan asisten sebagai otoritas.** Keyakinannya dianggap kebenaran. Sebaliknya, minta apa yang tidak dipastikannya dan periksa.

## Model kematangan

| Dimensi | Memulai | Mengembangkan | Menstandarkan | Mengelola | Mengorkestrasi |
|---|---|---|---|---|---|
| Praktik prompt | Orang menulis prompt ad hoc | Beberapa orang berbagi prompt | Tim memakai pola umum dengan tujuan, materi, batasan, dan pemeriksaan | Kualitas prompt diuji pada himpunan kasus nyata | Prompt diperbaiki lintas tim dari hasil uji bersama |
| Keterampilan | Tak ada keterampilan bersama | Ada beberapa keterampilan pribadi | Keterampilan tim dengan pemilik dan tanggal tinjauan tinggal di kendali versi | Pemakaian dan hasil keterampilan ditinjau | Keterampilan dibagikan dan dipelihara lintas tim dan mitra |
| Verifikasi dan data | Keluaran dipercaya; data ditempel bebas | Ada beberapa pemeriksaan dan aturan data | Kebiasaan verifikasi dan kebijakan data adalah rutin | Kesalahan dan insiden data dilacak dan ditindaklanjuti | Praktik verifikasi dan data dikoordinasikan di seluruh organisasi |
| Pembelajaran | Pembelajaran bersifat individual | Beberapa tip dibagikan | Tim mengadakan sesi rutin untuk memperbaiki prompt dan keterampilan | Perbaikan dilacak dan diukur | Pembelajaran menyebar lintas tim secara terus-menerus |

## Daftar periksa

- [ ] Tim punya aturan singkat tentang data apa yang boleh masuk ke perkakas AI mana.
- [ ] Prompt yang kami andalkan punya tujuan yang dinyatakan, materi nyata, batasan, dan permintaan untuk apa yang tidak dipastikan asisten.
- [ ] Setiap prompt yang kami andalkan telah diuji pada setidaknya tiga masukan nyata.
- [ ] Keluaran yang keluar dari tim ditinjau oleh seseorang.
- [ ] Referensi dan angka dari keluaran AI diperiksa terhadap sumber.
- [ ] Prompt berguna disimpan dengan catatan di tempat bersama di bawah kendali versi.
- [ ] Keterampilan tim punya deskripsi "Use when…" yang jelas, pemilik, dan tanggal tinjauan.
- [ ] Tim telah mendaftar tindakan yang tidak boleh pernah dilakukan AI sendiri.
- [ ] Staf tahu perkakas mana yang disetujui.
- [ ] Kami meninjau prompt dan keterampilan kami setidaknya dua kali setahun.

## Prompt AI

**Tujuan: memperbaiki prompt yang sudah Anda pakai.**

```text
Here is a prompt I use: [paste it].
Here is an example of an input I give it, with sensitive details removed: [paste].
Here is what I got: [paste].
Here is what I wanted: [describe].

Diagnose why the output fell short, using only the text above. Suggest a revised prompt that: states the purpose, names the output format, sets boundaries (no invented facts, numbers, or sources), asks for clarifying questions first, requests quotes from the supplied material as evidence, and ends by asking you to list what you are unsure of. Keep placeholders in [square brackets]. Do not change the task. List what you are unsure of.
```

**Tujuan: mengubah tugas berulang menjadi draf keterampilan tim.**

```text
Help me draft a team skill in SKILL.md format for this task: [name and describe the task].

How we do it today, step by step: [paste].
What a good result looks like (an example with sensitive details removed): [paste].
What must never happen (for example inventing figures or sending without review): [list].

Write a SKILL.md with YAML frontmatter containing a name and a description that starts with "Use when" and puts the key use case first, then a body with the purpose, short method steps, output format, checks, and things to avoid. Keep it under 150 lines. Mark every item you added as an assumption. Ask clarifying questions first, and list what you are unsure of.
```

**Tujuan: membangun himpunan uji kecil untuk sebuah prompt.**

```text
I have a prompt that [describe what it does]: [paste it].

Help me design a test set of 5 to 10 inputs: typical cases, an unusual case, a case with a missing field, and a case where the right answer is "not enough information." Tell me what to collect from real examples (with sensitive details removed), how to record the expected output, and how to score results (correct, partly correct, wrong, confidently wrong, correctly declined). Do not invent test content; give me the categories and what to look for. Ask clarifying questions first, and list what you are unsure of.
```

**Tujuan: memeriksa draf tulisan AI terhadap sumbernya.**

```text
Here is the source material: [paste].
Here is a draft produced by an AI tool from that material: [paste].

List every statement in the draft, say whether the source supports it (quote the supporting text), contradicts it, or does not mention it, and suggest edits to remove unsupported statements. Do not add facts of your own. Give a short summary of how reliable the draft is. List what you are unsure of.
```

## Keterampilan AI

- [prompt-engineering](../../../../skills/prompt-engineering/SKILL.md): gunakan untuk menulis, menguji, dan memperbaiki prompt agar memberi hasil yang andal.
- [machine-learning-model-card](../../../../skills/machine-learning-model-card/SKILL.md): gunakan untuk mendokumentasikan untuk apa sebuah model dan apa batasannya ketika tim Anda bergantung padanya.
- [agile-coaching](../../../../skills/agile-coaching/SKILL.md): gunakan ketika membantu tim membangun kebiasaan seputar prompt dan keterampilan dari waktu ke waktu.
- [agile-itil-guide-skill](../../../../skills/agile-itil-guide-skill/SKILL.md): gunakan untuk menemukan topik dalam panduan ini, menjalankan percakapan tim dari pertanyaannya, atau menyesuaikan salah satu promptnya.
- [agile-itil-guide-maintainer-skill](../../../../skills/agile-itil-guide-maintainer-skill/SKILL.md): gunakan ketika menulis atau memeriksa topik, prompt, atau tautan keterampilan untuk panduan ini.

## Sumber utama

- **Claude Code skills documentation** (code.claude.com): uraian bagaimana keterampilan distrukturkan sebagai direktori dengan berkas `SKILL.md`.
- **Prompt engineering** (`skills/prompt-engineering/SKILL.md` milik panduan ini): pernyataan singkat teknik dan argumen untuk menguji prompt pada masukan nyata.
- **Large language model** (Wikipedia): latar belakang tentang bagaimana sistem ini dibangun dan di mana ia dapat gagal.
- **AI Risk Management Framework** (NIST): kerangka sukarela untuk mengelola risiko AI, berguna untuk kebijakan tim.

## Referensi

1. Skills (Claude Code documentation) — Anthropic — https://code.claude.com/docs/en/skills
2. Large language model — Wikipedia — https://en.wikipedia.org/wiki/Large_language_model
3. Prompt engineering — Wikipedia — https://en.wikipedia.org/wiki/Prompt_engineering
4. AI Risk Management Framework — NIST — https://www.nist.gov/itl/ai-risk-management-framework
5. Hallucination (artificial intelligence) — Wikipedia — https://en.wikipedia.org/wiki/Hallucination_(artificial_intelligence)
6. Retrieval-augmented generation — Wikipedia — https://en.wikipedia.org/wiki/Retrieval-augmented_generation
7. Artificial intelligence — Wikipedia — https://en.wikipedia.org/wiki/Artificial_intelligence
8. Version control — Wikipedia — https://en.wikipedia.org/wiki/Version_control
9. Information security — Wikipedia — https://en.wikipedia.org/wiki/Information_security
