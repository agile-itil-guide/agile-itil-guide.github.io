# AI dalam Manajemen Layanan TI

**Kecerdasan buatan dapat mempercepat deteksi, triase, dan kerja pengetahuan dalam manajemen layanan TI, dan ia aman dipakai hanya bila seseorang tetap bertanggung jawab, jawaban berpijak pada materi Anda sendiri, dan risiko kesalahan, bias, serta paparan data dikelola.**

## Mengapa ini penting

Manajemen layanan melibatkan banyak bahasa dan pengenalan pola: membaca tiket, meringkas insiden, mencari pengetahuan, menyusun balasan, menemukan sinyal tak biasa dalam data pemantauan. Ini adalah tugas yang tampaknya paling dikuasai sistem AI terkini, dan para vendor bergegas menambahkannya ke service desk dan perkakas operasi. Tim akan ditanya, jika belum, apakah akan memakainya.

Peluangnya nyata, begitu pula bahayanya. Sistem AI dapat menyatakan kebohongan dengan percaya diri, mencerminkan bias dalam pelatihannya dan dalam data yang diberikan kepadanya, membocorkan informasi rahasia bila disuapi sembarangan, dan membuat orang memercayai keluaran yang belum mereka periksa. Beberapa kasus yang banyak dilaporkan menunjukkan harga dari kepercayaan yang salah tempat. Organisasi layanan yang mengadopsi AI tanpa berpikir dapat merugikan pelanggannya dan reputasinya sendiri.

Pada 2026, AI juga telah masuk ke kerangka kerja. Halaman sertifikasi publik PeopleCert menjelaskan ITIL baru sebagai "Practical and AI-native by design" dan mendaftar modul ITIL AI Governance (Version 5) yang mencakup tata kelola AI "responsibly and at scale" (lihat Topik 2.2 — ITIL). Panduan ini tidak dapat memverifikasi dari publikasi pemiliknya apa yang dikatakan ITIL 5 tentang AI secara rinci, jadi topik ini tidak menjelaskan posisi kerangka di luar pernyataan itu. Ia bersandar pada artikel Wikipedia tentang AIOps dan tentang halusinasi AI, pada halaman AI Risk Management Framework NIST, dan pada penalaran praktis, dan ia menandai praktik sebagai demikian.

## Konsep inti

### Di mana AI membantu dalam manajemen layanan

Sebagian besar pemakaian jatuh ke beberapa kelompok. Tabel menunjukkan contoh dan jenis risiko yang dibawa masing-masing, menurut pembacaan panduan ini.

| Pemakaian | Apa yang dilakukan AI | Risiko utama |
|---|---|---|
| **Deteksi dan korelasi (AIOps)** | Menemukan anomali, mengelompokkan peristiwa terkait, menyarankan penyebab yang mungkin | Alarm palsu, peristiwa terlewat, penalaran buram |
| **Bantuan service desk** | Menyarankan jawaban, meringkas tiket, menyusun balasan, mengarahkan permintaan | Jawaban salah atau dikarang, nada, privasi |
| **Kerja pengetahuan** | Menyusun dan memperbaiki artikel, mencari pengetahuan | Isi yang dikarang, sumber basi |
| **Analisis insiden dan masalah** | Meringkas lini masa, menyarankan hipotesis, menyusun tinjauan | Penyebab yang masuk akal tetapi tak berdasar |
| **Dukungan perubahan dan rilis** | Meninjau perubahan, menyusun catatan, menyarankan risiko | Terlalu percaya diri, konteks terlewat |
| **Kode dan otomatisasi** | Menulis skrip dan konfigurasi | Kode tidak aman atau salah, ketergantungan tersembunyi |
| **Analisis dan pelaporan** | Meringkas data, menyusun laporan | Perhitungan salah, angka dikarang |

### AIOps

Artikel Wikipedia menjelaskan AIOps sebagai pemakaian AI, pembelajaran mesin, dan analitik big data untuk mengotomatisasi dan memperbaiki manajemen pusat data, bertujuan mendeteksi, mendiagnosis, dan menyelesaikan masalah TI lebih efisien daripada metode tradisional. Ia mengatakan Gartner pertama kali mendefinisikan AIOps pada 2016. Artikel mendaftar kemampuan termasuk korelasi peristiwa, deteksi anomali, analisis akar masalah, penentuan kausalitas, analitik prediktif, manajemen insiden, remediasi otomatis, prediksi kinerja, alokasi sumber daya, dan manajemen kapasitas. Ia mengatakan AIOps bersandar pada data observasional, seperti log dan pemantauan, dan data interaksi, seperti tiket, peristiwa, dan catatan insiden.

Artikel mengklaim manfaat, seperti mean time to detect membaik 15 sampai 20 persen dan insiden kritis turun lebih dari 50 persen, tetapi mencatat bahwa ini datang dari satu artikel konsultan dan tidak diverifikasi independen dalam teks. Ia tidak menyebut kritik, kasus kegagalan, atau keterbatasan. Perlakukan klaim vendor sesuai itu, dan uji perkakas apa pun terhadap insiden Anda sendiri (lihat Topik 3.10 — Pemantauan dan Manajemen Peristiwa).

### AI generatif dan halusinasi

Artikel Wikipedia tentang halusinasi dalam AI mendefinisikannya sebagai respons yang memuat informasi palsu atau menyesatkan yang disajikan sebagai fakta, dan mencatat bahwa istilah itu dikritik karena mengantropomorfisasi perangkat lunak. Ia memberi penyebab: pra-pelatihan pada prediksi kata berikutnya memberi hadiah pada menebak ketika model kekurangan informasi, dataset mungkin tidak lengkap atau tidak representatif, dan peneliti OpenAI berpendapat bahwa pelatihan dan evaluasi memberi hadiah pada menebak daripada mengakui ketidakpastian. Contoh yang dicatatnya meliputi:

- **Mata v. Avianca (Mei 2023):** seorang pengacara mengajukan enam kasus palsu yang dihasilkan ChatGPT; hakim menjatuhkan denda US$5.000 pada 23 Juni 2023.
- **Moffatt v. Air Canada (Februari 2024):** sebuah tribunal mengikat maskapai pada kebijakan duka cita yang dikarang chatbot-nya.
- Laporan sebuah konsultan yang memuat kutipan palsu, dan studi yang menemukan 69 dari 178 referensi GPT-3 punya pengenal yang salah atau tidak ada.

Ini adalah akibat memercayai keluaran yang tidak diverifikasi: tanggung jawab hukum, paparan finansial, dan kepercayaan yang rusak. Dalam manajemen layanan, chatbot yang mengarang kebijakan atau prosedur menciptakan kelas risiko yang sama.

### Mitigasi: pijakan dan pemeriksaan

Artikel menjelaskan retrieval-augmented generation (RAG) sebagai membiarkan model mengakses sumber eksternal sebelum menjawab. Ia juga mendaftar metode terkait data, metode model dan inferensi, dan usulan seperti perangkat lunak pagar pengaman dan penilaian keyakinan, dan mencatat bahwa tidak ada sumber yang diberikannya yang mengukur seberapa banyak masing-masing mengurangi halusinasi. Bagi tim layanan, mitigasi praktisnya:

- **Pijakkan jawaban pada materi Anda sendiri yang disetujui,** seperti basis pengetahuan, dan tunjukkan sumbernya.
- **Pertahankan manusia dalam lingkaran** untuk apa pun yang memengaruhi pelanggan, komitmen, atau produksi.
- **Minta apa yang tidak dipastikan AI,** dan perlakukan pernyataan tak berdukungan sebagai belum terverifikasi.
- **Uji secara berkala** pada kasus nyata, termasuk kasus yang jawaban benarnya adalah "saya tidak tahu."

### Kerangka manajemen risiko

National Institute of Standards and Technology (NIST) menerbitkan AI Risk Management Framework (AI RMF 1.0) pada 26 Januari 2023, yang dijelaskannya dimaksudkan untuk pemakaian sukarela, untuk membantu mengelola risiko AI bagi individu, organisasi, dan masyarakat dan untuk memperbaiki kemampuan memasukkan pertimbangan keterpercayaan ke dalam desain, pengembangan, pemakaian, dan evaluasi produk, layanan, dan sistem AI. Halaman NIST menyebut empat fungsi, Govern, Map, Measure, dan Manage, tetapi tidak menjelaskannya. NIST juga merilis Generative Artificial Intelligence Profile (NIST-AI-600-1) pada 26 Juli 2024 untuk membantu organisasi mengidentifikasi risiko unik AI generatif, dan mengatakan kerangka sedang direvisi. Baca kerangka itu sendiri untuk rincian. Aturan lain tentang AI, seperti hukum dan standar, berbeda menurut negara dan sektor; tanyakan fungsi hukum dan kepatuhan Anda, dan peroleh teksnya (lihat Topik 5.7 — Tata Kelola, Risiko, dan Kepatuhan).

### Perlindungan data dan privasi

Segala sesuatu yang diberikan kepada layanan AI mungkin disimpan, dipakai untuk pelatihan, atau terpapar, tergantung layanan dan ketentuannya. Tiket, log, dan transkrip obrolan sering memuat data pribadi, kredensial, dan informasi bisnis rahasia. Sebelum memakai perkakas AI apa pun dengan data nyata, cari tahu ke mana data pergi, siapa yang dapat melihatnya, berapa lama disimpan, dan apakah dipakai melatih model, dan terapkan kebijakan keamanan informasi Anda (lihat Topik 3.13 — Manajemen Keamanan Informasi). Hapus atau ganti data pribadi dan rahasia sebelum menempelkannya ke perkakas yang belum Anda setujui.

### Akuntabilitas dan transparansi

Seseorang atau tim harus tetap bertanggung jawab atas keputusan yang dikontribusi AI. Ketika AI menyusun balasan, pengirimlah yang bertanggung jawab. Ketika AI menyarankan akar masalah, penyelidik bertanggung jawab mengujinya. Beri tahu pelanggan ketika mereka berbicara dengan sistem otomatis bila hukum, kontrak, atau keadilan menuntutnya, dan beri jalur ke manusia. Simpan catatan apa yang ditanyakan kepada AI dan apa yang dihasilkannya untuk keputusan signifikan, seperti untuk perkakas lain (lihat Topik 5.1 — Manajemen Layanan Agile untuk bukti).

### Bias dan keadilan

Sistem AI belajar dari data yang mencerminkan keputusan dan celah masa lalu. Asisten triase yang dilatih pada tiket historis mungkin memperlakukan kelompok pengguna atau jenis masalah tertentu sebagai prioritas lebih rendah. Periksa keluaran lintas kelompok, libatkan orang dengan perspektif berbeda dalam pengujian, dan waspadai pola. Sumber yang dibaca untuk panduan ini tidak merinci bias, jadi ini peringatan umum, bukan temuan.

### Mengukur AI

Ukur kualitas dan dampak tiap langkah AI, bukan hanya volumenya: seberapa sering manusia menimpanya, seberapa sering salah, berapa lama tugas dengan dan tanpanya, dan apa kata pengguna (lihat Topik 5.6 — Metrik dan Pengukuran). Berhati-hatilah dengan angka vendor; klaim manfaat artikel AIOps sendiri bersandar pada satu sumber.

### Keterampilan dan prompt

Keterampilan praktis bekerja dengan AI mencakup menulis instruksi yang jelas, menyediakan materi yang tepat, meminta ketidakpastian, dan memverifikasi keluaran. Topik 6.3 — Keterampilan dan Prompt AI membahas ini secara rinci.

### Batas sumber

Artikel AIOps tidak memuat kritik dan angka manfaatnya datang dari satu sumber; artikel halusinasi ditandai perlu pembaruan dan dibaca sebagian; halaman NIST tidak menjelaskan fungsi kerangka; dan halaman PeopleCert tidak menjelaskan apa yang dikatakan ITIL 5 tentang AI. Karena itu topik ini memberi uraian berhati-hati dan menyerahkan rincian kepada sumber primer.

## Praktik terbaik

1. **Mulai dengan pemakaian berisiko rendah dan pertanyaan yang jelas.** Pilih tugas yang kesalahannya murah dan mudah ditangkap, seperti menyusun ringkasan untuk pemakaian internal, dan definisikan apa arti keberhasilan.
2. **Pertahankan seseorang yang bertanggung jawab.** Sebut siapa yang bertanggung jawab atas apa yang dikontribusikan AI, dan wajibkan tinjauan untuk apa pun yang sampai ke pelanggan, mengubah produksi, atau membuat komitmen.
3. **Pijakkan jawaban pada materi yang disetujui.** Bila Anda memakai AI untuk jawaban, hubungkan dengan basis pengetahuan Anda sendiri dan tunjukkan sumbernya. Buat ia mengatakan "saya tidak tahu" bila tak punya.
4. **Lindungi data.** Putuskan data apa yang boleh ke perkakas mana, hapus data pribadi dan rahasia, dan pakai perkakas yang disetujui dengan ketentuan yang telah Anda baca. Libatkan staf keamanan dan hukum sejak awal.
5. **Uji dengan kasus nyata.** Kumpulkan sekumpulan tiket dan insiden nyata dengan jawaban yang diketahui, jalankan AI padanya, dan catat di mana ia gagal. Ulangi setelah perubahan perkakas atau pengaturan.
6. **Verifikasi klaim dan referensi.** Periksa nama, angka, kutipan, dan prosedur terhadap sumber, seperti ditunjukkan kasus kutipan pengadilan yang dikarang. Jangan pernah menerima referensi yang belum Anda lihat.
7. **Jujurlah kepada pelanggan.** Katakan ketika sistem otomatis menjawab di tempat yang penting, dan beri jalur mudah ke manusia.
8. **Waspadai bias.** Tinjau keluaran lintas kelompok pengguna dan jenis masalah, dan libatkan orang yang dapat melihat celah. Sesuaikan atau hentikan pemakaian bila muncul kerugian.
9. **Ukur kualitas dan dampak.** Lacak laju penimpaan, laju kesalahan, waktu yang dihemat, dan pandangan pengguna. Bandingkan dengan proses tanpa AI, dan skeptislah terhadap angka vendor.
10. **Simpan catatan.** Untuk keputusan signifikan, simpan apa yang ditanyakan dan dihasilkan, siapa yang meninjau, dan apa yang diputuskan. Ini mendukung akuntabilitas dan audit.
11. **Pakai kerangka risiko.** Adopsi pendekatan yang diakui, seperti AI RMF NIST atau kebijakan AI organisasi, untuk menstrukturkan keputusan tentang di mana AI diizinkan. Perlakukan sebagai panduan berpikir.
12. **Latih orang.** Ajari staf bagaimana perkakas bekerja, di mana gagal, dan apa yang diizinkan. Perbarui pelatihan seiring perkakas dan aturan berubah.

## Pertanyaan untuk dibahas bersama tim Anda

**Di mana kita sudah memakai AI, secara resmi atau tidak?**

Tanyakan dengan jujur. Staf sering memakai perkakas publik dengan tiket nyata. Tujuannya bukan menghukum tetapi memahami. Daftar pemakaian dan data yang terlibat. Bahas mana yang dapat diterima dan mana yang memerlukan jalur lebih aman. Sepakati kebijakan singkat.

**Tugas apa yang paling kita inginkan bantuannya, dan apa yang terjadi jika AI keliru?**

Pilih satu tugas dan telusuri kasus kegagalannya. Jika jawabannya email permintaan maaf, risikonya kecil; jika instruksi salah kepada pelanggan, risikonya lebih tinggi. Ini membantu memeringkat pemakaian menurut risiko. Pilih uji coba pertama dengan kerugian terbatas.

**Bagaimana kita tahu bahwa jawaban AI salah?**

Tanyakan siapa yang memeriksa jawaban dan bagaimana. Jawaban umum: tak ada, atau orang yang bertanya. Bahas sumber, pengujian, dan tinjauan kedua. Sepakati pemeriksaan minimum untuk tiap jenis pemakaian.

**Data apa yang nyaman kita masukkan ke perkakas AI, dan apa yang tidak?**

Kumpulkan jenisnya: tiket, log, nama pelanggan, kredensial, kontrak. Tandai masing-masing sebagai dapat diterima, dapat diterima setelah bagian sensitif dihapus, atau tidak pernah. Periksa dengan keamanan dan hukum. Tulis sebagai panduan satu halaman.

**Siapa yang bertanggung jawab ketika keputusan berbantuan AI salah?**

Pakai contoh lampau keputusan yang dibantu perkakas. Tanyakan siapa yang menjawab. Sepakati bahwa orang yang disebut namanya tetap bertanggung jawab dan bukti apa yang harus ia simpan. Catat celah tempat tak ada yang akan bertanggung jawab.

**Apa yang akan meyakinkan kita bahwa sebuah perkakas layak dipertahankan?**

Minta tim menjelaskan bukti yang akan mereka terima: waktu dihemat dengan kualitas setara atau lebih baik, lebih sedikit kesalahan, kepuasan pengguna. Bahas cara mengumpulkannya dalam uji coba. Sepakati tanggal tinjauan.

## Dalam praktik: contoh ITIL agile

Service desk TI otoritas pajak nasional menangani sekitar 1.200 kontak per pekan dari staf, banyak tentang pertanyaan rutin. Manajer desk mengusulkan asisten AI untuk menyarankan jawaban dari basis pengetahuan dan menyusun balasan. Petugas keamanan otoritas khawatir tentang data pribadi dalam tiket dan tentang jawaban salah yang sampai ke staf.

Mereka menyepakati uji coba terbatas. Asisten bekerja hanya dari artikel pengetahuan yang disetujui, menunjukkan artikel mana yang jadi asal tiap saran, dan mengatakan ketika tidak menemukan yang relevan. Analis meninjau setiap balasan yang disarankan sebelum mengirim, dan perkakas tidak dapat mengirim sendiri. Tiket dipindai untuk data pribadi dan kredensial, yang dihapus sebelum asisten melihatnya. Himpunan uji berisi 200 tiket lalu dengan jawaban yang diketahui dipakai sebelum uji coba, dan tim mencatat di mana asisten gagal. Manajer desk dan petugas keamanan menyepakati ukuran: seberapa sering analis mengedit atau menolak saran, waktu respons pertama, dan satu pertanyaan kepuasan singkat untuk staf. Uji coba berjalan tiga bulan, dan manajer melapor ke tinjauan bersama yang mencakup seorang analis dan perwakilan staf.

Di akhir, analis menerima sebagian besar saran untuk pertanyaan umum dan waktu respons untuk itu turun. Himpunan uji menunjukkan bahwa asisten memberi jawaban yakin tetapi salah untuk pertanyaan tentang kebijakan yang baru berubah, karena artikel pengetahuan kedaluwarsa. Beberapa masalah tersisa. Dua analis mulai mengirim saran dengan sedikit pemeriksaan ketika sibuk, seorang staf dengan pertanyaan tak baku menerima balasan hambar yang tak menangkap maksudnya, dan ketentuan vendor tentang retensi data tidak jelas. Manajer menambahkan aturan bahwa perubahan kebijakan harus memperbarui artikel pengetahuan sebelum berlaku, memakai pemeriksaan sampel atas balasan terkirim oleh analis senior, dan meminta pengadaan dan petugas keamanan memperjelas ketentuan sebelum memperluas uji coba.

## Empat perspektif

### Tim produk dan pengiriman

Tim pengiriman mungkin menambahkan fitur AI ke produk dan memakai AI untuk menulis kode dan pengujian. Periksa kode yang dihasilkan untuk kebenaran dan keamanan, jauhkan rahasia dari prompt, dan jelas kepada pengguna ketika AI terlibat. Bangun pemantauan perilaku AI ke dalam layanan Anda.

### Tim layanan dan operasi

Tim operasi akan bertemu AI dalam pemantauan, perkakas desk, dan analisis. Perlakukan saran AI sebagai hipotesis, ujilah, dan simpan catatan. Bantu mendefinisikan data apa yang boleh dipakai, dan beri umpan balik untuk memperbaiki materi pijakan.

### Kepemimpinan dan tata kelola

Pemimpin menetapkan kebijakan, selera risiko, dan akuntabilitas untuk AI. Minta inventaris pemakaian, kerangka risiko, dan bukti dari uji coba, bukan klaim vendor. Pastikan staf hukum, keamanan, dan privasi terlibat sejak awal.

### Pelanggan dan pengguna

Pelanggan dan pengguna harus diberi tahu ketika mereka berhadapan dengan sistem otomatis di tempat yang penting, dan punya jalur ke manusia. Laporkan jawaban salah atau aneh, karena itu bukti. Tanyakan kepada penyedia bagaimana mereka melindungi data Anda dan memeriksa keluaran AI.

## Pola kegagalan umum

- **Memercayai keluaran yang tidak diverifikasi.** Fakta karangan sampai ke pelanggan. Sebaliknya, pijakkan jawaban pada materi yang disetujui dan verifikasi sebelum mengirim.
- **AI bayangan.** Staf menempelkan data nyata ke perkakas publik. Sebaliknya, sediakan perkakas yang disetujui dan kebijakan data yang jelas.
- **Tak ada orang yang bertanggung jawab.** Tak ada yang menjawab untuk keputusan berbantuan AI. Sebaliknya, sebut pemilik dan wajibkan tinjauan.
- **Memercayai angka vendor.** Klaim manfaat tak diperiksa. Sebaliknya, uji pada kasus Anda sendiri dan ukur.
- **Pijakan basi.** Basis pengetahuan salah dan AI mengulanginya. Sebaliknya, jaga artikel mutakhir dan dimiliki.
- **Bias tersembunyi.** Sebagian pengguna atau isu diperlakukan lebih buruk. Sebaliknya, uji lintas kelompok dan tinjau keluaran.
- **Mengotomatisasi sebelum memahami.** AI bertindak pada produksi tanpa pemeriksaan. Sebaliknya, mulai dengan saran dan tinjauan, dan beralih ke tindakan hanya dengan pengaman kuat.
- **Tanpa catatan.** Keputusan tidak dapat diaudit. Sebaliknya, simpan log apa yang ditanyakan, dihasilkan, dan diputuskan.

## Model kematangan

| Dimensi | Memulai | Mengembangkan | Menstandarkan | Mengelola | Mengorkestrasi |
|---|---|---|---|---|---|
| Kebijakan dan akuntabilitas | Pemakaian ad hoc dan tak tercatat | Beberapa tim punya aturan | Kebijakan tertulis, inventaris pemakaian, dan pemilik yang disebut | Kepatuhan kebijakan dan insiden ditinjau | Kebijakan diselaraskan lintas tim, pemasok, dan regulator |
| Kualitas dan pijakan | Keluaran dipercaya secara default | Ada beberapa pemeriksaan pada pemakaian penting | Jawaban berpijak pada sumber yang disetujui dan diuji pada kasus nyata | Laju kesalahan dan penimpaan diukur dan ditindaklanjuti | Pijakan dan pengujian dibagikan dan diperbaiki lintas tim |
| Perlindungan data dan keadilan | Data ditempel bebas | Ada beberapa aturan data | Aturan penanganan data dan pemeriksaan bias adalah rutin | Insiden data dan temuan keadilan dilacak dan diperbaiki | Praktik data dan keadilan dikoordinasikan di seluruh organisasi dan pemasok |
| Nilai dan pembelajaran | Nilai diasumsikan | Beberapa uji coba dijalankan | Uji coba punya ukuran dan keputusan yang disepakati | Manfaat dan biaya diukur terhadap garis dasar | Pembelajaran dari pemakaian AI menyebar lintas layanan secara terus-menerus |

## Daftar periksa

- [ ] Kami punya inventaris tempat AI dipakai di dalam atau sekitar layanan kami, termasuk pemakaian tidak resmi.
- [ ] Seseorang yang disebut namanya bertanggung jawab atas tiap pemakaian berbantuan AI.
- [ ] Kebijakan tertulis menyatakan data apa yang boleh masuk ke perkakas mana.
- [ ] Data pribadi dan rahasia dihapus atau disamarkan sebelum dipakai dengan perkakas yang tidak disetujui untuknya.
- [ ] Jawaban yang ditampilkan kepada pelanggan atau dipakai dalam keputusan berpijak pada materi yang disetujui dan ditinjau.
- [ ] Kami punya himpunan uji kasus nyata dan menjalankannya ulang setelah perubahan.
- [ ] Pelanggan diberi tahu ketika sistem otomatis menjawab, di tempat yang penting, dan punya jalur ke manusia.
- [ ] Kami mengukur laju penimpaan, laju kesalahan, waktu yang dihemat, dan pandangan pengguna.
- [ ] Catatan disimpan untuk keputusan signifikan berbantuan AI.
- [ ] Staf hukum, keamanan, dan privasi telah meninjau pemakaian kami dan ketentuan perkakas.

## Prompt AI

**Tujuan: menyusun inventaris pemakaian AI dari apa yang dikatakan orang kepada Anda.**

```text
Help me structure an inventory of AI use in our service organization.

What people have told us they use AI for (paste notes; remove names): [paste].
Tools mentioned: [list].
Types of data involved, as far as we know: [list].

Produce a table with: use, tool, data involved, who is accountable (use "unknown" if not given), risk if wrong (low, medium, high with a one-sentence reason from my notes), and one question to ask. Do not guess about tools or terms I did not mention. Ask clarifying questions first, and list what you are unsure of.
```

**Tujuan: merancang himpunan uji untuk asisten AI.**

```text
Design a test set for an AI assistant that suggests answers to service desk questions.

The knowledge sources it will use: [describe].
Types of question we get: [list with rough share if you know].
Cases where the right answer is "not in the knowledge base" or "escalate": [describe].

Propose a structure for 100-200 test cases (categories, how to choose real examples, how to record the correct answer and its source), how to score answers (correct, partly correct, wrong, confidently wrong, correctly declined), and how to repeat after changes. Do not invent test content; tell me what to collect. Ask clarifying questions first, and list what you are unsure of.
```

**Tujuan: menulis kebijakan pemakaian AI satu halaman untuk tim.**

```text
Draft a one-page AI use policy for [team].

Tools approved: [list, or write "none yet"].
Data we handle (types and sensitivity): [list].
Rules we must follow, with source text from legal, security, or contracts: [paste, or write "none known"].
Roles: [list].

Write plain-language sections: what AI may be used for, what data may and may not be put into tools, what must be checked by a person before use, who is accountable, how to record significant uses, how to report problems. Mark every item that is an assumption. Do not state that any law requires something unless I pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Tujuan: meninjau jawaban buatan AI sebelum sampai ke pengguna.**

```text
Here is a draft answer that an AI tool produced for a user question.

The user's question: [paste, with personal data removed].
The knowledge article(s) the answer should be based on: [paste].
The draft answer: [paste].

Check the draft against the article only. List statements that are supported by the article (quote the part), statements that are not supported, anything missing that the user would need, and the tone. Suggest a corrected version that uses only the article. Do not add facts. List what you are unsure of.
```

## Keterampilan AI

- [prompt-engineering](../../../../skills/prompt-engineering/SKILL.md): gunakan untuk menulis prompt jelas yang menyediakan materi yang tepat dan meminta ketidakpastian.
- [machine-learning-model-card](../../../../skills/machine-learning-model-card/SKILL.md): gunakan untuk mendokumentasikan untuk apa sebuah model, bagaimana ia diuji, dan batasannya.
- [data-governance](../../../../skills/data-governance/SKILL.md): gunakan untuk memutuskan data apa yang boleh dipakai dengan perkakas mana.
- [legal-data-privacy-compliance](../../../../skills/legal-data-privacy-compliance/SKILL.md): gunakan untuk menyiapkan pertanyaan bagi staf hukum dan privasi tentang pemakaian AI.
- [risk-register](../../../../skills/risk-register/SKILL.md): gunakan untuk mencatat risiko terkait AI, pemilik, dan penanganan.

## Sumber utama

- **AIOps** (Wikipedia): deskripsi singkat AI untuk operasi TI, kemampuannya, dan manfaat yang diklaim, tanpa kritik.
- **Hallucination (artificial intelligence)** (Wikipedia): penyebab, contoh, dan gagasan mitigasi untuk keluaran palsu.
- **AI Risk Management Framework** (NIST): kerangka sukarela dan profil AI generatifnya; baca kerangka itu sendiri untuk rinciannya.
- **ITIL certifications** (PeopleCert): pernyataan publik pemilik tentang ITIL baru dan modul tata kelola AI-nya.

## Referensi

1. AIOps — Wikipedia — https://en.wikipedia.org/wiki/AIOps
2. Hallucination (artificial intelligence) — Wikipedia — https://en.wikipedia.org/wiki/Hallucination_(artificial_intelligence)
3. AI Risk Management Framework — NIST — https://www.nist.gov/itl/ai-risk-management-framework
4. ITIL certifications — PeopleCert — https://www.peoplecert.org/browse-certifications/it-governance-and-service-management/ITIL-1
5. Retrieval-augmented generation — Wikipedia — https://en.wikipedia.org/wiki/Retrieval-augmented_generation
6. Artificial intelligence — Wikipedia — https://en.wikipedia.org/wiki/Artificial_intelligence
7. Large language model — Wikipedia — https://en.wikipedia.org/wiki/Large_language_model
8. Algorithmic bias — Wikipedia — https://en.wikipedia.org/wiki/Algorithmic_bias
9. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
