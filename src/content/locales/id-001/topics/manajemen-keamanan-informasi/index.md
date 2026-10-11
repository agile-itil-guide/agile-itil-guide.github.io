# Manajemen Keamanan Informasi

**Manajemen keamanan informasi melindungi kerahasiaan, integritas, dan ketersediaan informasi lewat kendali berbasis risiko, dan dalam organisasi agile kendali bekerja paling baik ketika dibangun ke dalam pipeline pengiriman dan kebiasaan harian tim, bukan ditambahkan sebagai gerbang di akhir.**

## Mengapa ini penting

Setiap layanan menyimpan informasi yang dipedulikan seseorang: rincian pelanggan, catatan pembayaran, data kesehatan, rencana internal. Kegagalan keamanan merugikan orang yang digambarkan informasi itu, merusak reputasi organisasi, dan dapat membawa sanksi hukum dan finansial. Tim manajemen layanan sering menjadi yang pertama melihat kegagalan, sebagai insiden, dan yang harus memulihkan operasi normal sesudahnya.

Keamanan dan pengiriman berkelanjutan sering digambarkan sebagai lawan: keamanan berkata perlambat, pengiriman berkata percepat. Pandangan itu tidak membantu. Keamanan yang tiba hanya di akhir rilis menghasilkan kejutan terlambat dan pengecualian tergesa-gesa. Keamanan yang dibangun ke dalam pekerjaan, dengan pemeriksaan yang berjalan otomatis dan risiko yang dibahas sejak dini, melindungi layanan tanpa menghentikannya. Hal yang sama berlaku untuk manajemen layanan: praktik yang membuat perubahan aman juga membuat perubahan keamanan aman.

Topik ini memakai [artikel Wikipedia tentang keamanan informasi](https://en.wikipedia.org/wiki/Information_security) dan [artikel tentang ISO/IEC 27001](https://en.wikipedia.org/wiki/ISO/IEC_27001) sebagai sumber utama. Keduanya umum. Yang pertama artikel panjang, dan panduan ini hanya membaca 100.000 karakter pertama dari sekitar 243.000. Topik ini tidak memberi nasihat hukum; hukum, regulasi, dan kewajiban kontraktual berbeda menurut negara dan sektor, dan sumber yang tepat adalah teks aturan yang berlaku bagi Anda.

## Konsep inti

### Apa itu keamanan informasi

Wikipedia mendefinisikan keamanan informasi sebagai melindungi informasi dengan memitigasi risiko informasi, bertujuan mencegah atau mengurangi akses, pemakaian, pengungkapan, gangguan, penghapusan, kerusakan, modifikasi, atau devaluasi informasi yang tidak sah, dan mengurangi dampak insiden. Ia berlaku untuk informasi elektronik, fisik, dan tak berwujud, dan merupakan bagian dari manajemen risiko informasi.

### Segitiga CIA

Tujuan intinya adalah **kerahasiaan**, **integritas**, dan **ketersediaan**, diseimbangkan dengan efisiensi kebijakan dan produktivitas organisasi. Artikel menjelaskannya seperti ini:

| Tujuan | Arti | Contoh dalam layanan |
|---|---|---|
| **Kerahasiaan** | Informasi dilindungi dari pengungkapan tidak sah | Hanya staf berwenang yang dapat melihat catatan pasien |
| **Integritas** | Informasi akurat dan lengkap dan tidak dapat diubah dengan cara tidak sah atau tidak terdeteksi | Jumlah pembayaran tidak dapat diubah tanpa jejak |
| **Ketersediaan** | Informasi dapat diakses saat dibutuhkan | Layanan tetap aktif dan tahan terhadap serangan denial-of-service |

Artikel mencatat bahwa kerahasiaan berbeda dari privasi, yang disebutnya konsep lebih luas. Ia juga mencatat bahwa organisasi dapat menambah tujuan seperti keaslian, akuntabilitas, non-repudiasi, dan keandalan, dan bahwa Parkerian Hexad, model yang diperluas, punya manfaat yang diperdebatkan. Ketersediaan terkait langsung dengan manajemen layanan (lihat Topik 3.11 — Ketersediaan, Kapasitas, dan Kinerja).

### Manajemen risiko

Artikel menjelaskan risiko sebagai kemungkinan bahaya pada aset informasi. **Kerentanan** adalah kelemahan, **ancaman** adalah penyebab potensial bahaya, dan **dampak** adalah kerugian yang dihasilkan. Manajemen risiko adalah proses berkelanjutan dan iteratif tempat manajemen dapat menerima, memitigasi, mentransfer (misalnya lewat asuransi), atau menghindari risiko. Yang tersisa disebut **risiko residual**. Artikel mendaftar enam langkah: identifikasi aset, nilai ancaman, nilai kerentanan, hitung dampak, pilih dan terapkan kendali, dan evaluasi kendali itu.

### Kendali dan pertahanan berlapis

Kendali melindungi kerahasiaan, integritas, atau ketersediaan. Artikel menjelaskan **pertahanan berlapis** (defense in depth), pelapisan kendali yang tumpang tindih, dengan jenis kendali digambarkan sebagai administratif (kebijakan, prosedur), logis (tindakan teknis seperti kendali akses dan enkripsi), dan fisik (kunci, fasilitas). Tidak ada satu kendali pun yang cukup; lapisan menutupi kegagalan satu sama lain.

### Insiden keamanan

Artikel menjelaskan manajemen insiden keamanan komputer sebagai memantau, mendeteksi, dan merespons peristiwa keamanan, dengan rencana respons insiden diaktifkan ketika pelanggaran terdeteksi, biasanya dilakukan oleh tim respons insiden. Insiden keamanan adalah jenis insiden dan diuntungkan oleh peran, komunikasi, dan pembelajaran tanpa menyalahkan yang sama (lihat Topik 3.2 — Manajemen Insiden), ditambah langkah khusus seperti menjaga bukti dan memberi tahu regulator atau orang yang terdampak bila diwajibkan.

### ISO/IEC 27001 dan 27002

Menurut Wikipedia, **ISO/IEC 27001** menetapkan persyaratan untuk membangun, menerapkan, memelihara, dan terus memperbaiki sistem manajemen keamanan informasi (ISMS), termasuk menilai dan menangani risiko keamanan informasi. Persyaratannya generik dan dimaksudkan untuk organisasi dari jenis, ukuran, atau sifat apa pun. Edisi pertama terbit pada Oktober 2005 dari standar Inggris BS 7799-2, kedua pada 2013, dan ketiga pada Oktober 2022, diselaraskan dengan ISO/IEC 27002:2022; amandemen pada Februari 2024 menambahkan pertimbangan perubahan iklim.

Fakta kunci dari artikel:

- Persyaratan ISMS ada di klausul 4 sampai 10: konteks, kepemimpinan, perencanaan, dukungan, operasi, evaluasi kinerja, dan perbaikan.
- Annex A edisi 2022 punya 93 kendali referensi dalam empat tema: organisasi, orang, fisik, dan teknologi. Edisi 2013 mendaftar 114. Annex A adalah kumpulan referensi dan bukan daftar periksa wajib: organisasi menghasilkan **Statement of Applicability** yang membenarkan kendali mana yang mereka sertakan dan kecualikan.
- Sertifikasi bersifat opsional kecuali hukum, kontrak, atau skema mensyaratkannya. ISO tidak menyertifikasi organisasi; badan sertifikasi independen yang melakukannya, secara bertahap, diikuti audit pengawasan dan resertifikasi dalam siklus tiga tahun. Sertifikat hanya berlaku dalam cakupan yang dinyatakan.
- **ISO/IEC 27002** memberi panduan tentang kendali Annex A. Ia panduan dan tidak dapat disertifikasi.

Artikel mencatat bahwa tinjauan literatur 2021 menemukan sedikit studi empiris tentang hasil sertifikasi. Sertifikat menunjukkan bahwa sistem manajemen ada; itu bukan bukti bahwa pelanggaran tertentu tidak mungkin terjadi.

### Kerangka kerja dan hukum lain

Artikel keamanan informasi menyebut banyak standar dan skema lain, seperti NIST Cybersecurity Framework, Cyber Essentials di Inggris, Essential Eight di Australia, dan standar industri kartu pembayaran. Ia juga mendaftar hukum, termasuk Computer Misuse Act (1990) dan Data Protection Act (1998) Inggris serta HIPAA (1996), Gramm–Leach–Bliley Act (1999), dan Sarbanes–Oxley Act (2002) Amerika Serikat. Daftar itu menunjukkan betapa beragamnya aturan. Mana yang berlaku bagi Anda bergantung pada di mana Anda beroperasi, sektor, dan data yang Anda simpan; tanyakan fungsi hukum atau kepatuhan Anda (lihat Topik 5.7 — Tata Kelola, Risiko, dan Kepatuhan).

### Keamanan dalam pipeline pengiriman

Praktik yang cocok dengan pengiriman berkelanjutan mencakup:

- **Diskusi ancaman sejak dini:** tanyakan dalam perencanaan apa yang bisa salah pada sebuah fitur dan siapa yang ingin menyalahgunakannya.
- **Pemeriksaan otomatis:** memindai kode, ketergantungan, dan konfigurasi pada setiap perubahan, dengan hasil terlihat oleh tim (lihat Topik 3.4 — Pemampuan Perubahan).
- **Hak istimewa terkecil:** memberi orang dan sistem hanya akses yang mereka butuhkan.
- **Manajemen rahasia:** menjaga kredensial di luar kode dan merotasinya.
- **Pengujian keamanan:** uji penetrasi dan pengujian otomatis sebagai bagian dari siklus (lihat keterampilan pengujian keamanan di bawah).
- **Pencatatan dan pemantauan:** mendeteksi aktivitas mencurigakan (lihat Topik 3.10 — Pemantauan dan Manajemen Peristiwa).

Panduan DORA, yang dikutip di bagian lain panduan ini, mendaftar keamanan yang menyeluruh di antara praktik yang mendukung pengiriman berkelanjutan (lihat Topik 3.5 — Manajemen Rilis dan Deployment).

### Budaya dan orang

Artikel keamanan informasi menyebut riset tentang budaya keamanan, termasuk tujuh dimensi budaya yang diidentifikasi Roer dan Petric (2017). Apa pun modelnya, intinya banyak pelanggaran bermula dari orang: pesan phishing, kesalahan, jalan pintas di bawah tekanan. Pelatihan, jalur pelaporan yang jelas, dan sikap tanpa menyalahkan terhadap kesalahan yang jujur memperbaiki keamanan lebih daripada menyalahkan.

### Batas sumber

Artikel Wikipedia tidak menyatakan kritik spesifik terhadap segitiga CIA dan hanya dibaca sebagian. Artikel ISO/IEC 27001 tidak membahas hubungan dengan ISO/IEC 20000 atau dengan siklus plan-do-check-act. Topik ini tidak memberi instruksi teknis; pakai panduan spesialis untuk platform Anda, dan teks standar jika Anda perlu mengklaim kesesuaian.

## Praktik terbaik

1. **Ketahui informasi apa yang Anda simpan dan di mana.** Buat daftar jenis informasi utama, siapa pemilik masing-masing, di mana disimpan, dan seberapa sensitif. Anda tidak dapat melindungi apa yang belum Anda identifikasi.
2. **Lakukan penilaian risiko dalam bahasa sederhana.** Untuk tiap layanan penting, tanyakan apa yang bisa salah dengan kerahasiaan, integritas, dan ketersediaan, seberapa mungkin, dan seberapa buruk. Catat keputusan untuk menerima, mengurangi, mentransfer, atau menghindari tiap risiko (lihat Topik 5.7 — Tata Kelola, Risiko, dan Kepatuhan).
3. **Lapisi kendali Anda.** Padukan kebijakan, kendali teknis, dan kendali fisik agar satu kegagalan tidak cukup. Tinjau lapisan mana yang melindungi informasi paling sensitif Anda.
4. **Bangun pemeriksaan ke dalam pipeline.** Jalankan pemeriksaan keamanan otomatis pada kode, ketergantungan, dan konfigurasi dengan setiap perubahan, dan buat pemeriksaan yang gagal terlihat. Perbaiki masalah pada titik perubahan.
5. **Beri hak istimewa terkecil secara default.** Beri akses menurut peran dan kebutuhan, tinjau secara berkala, dan cabut dengan segera ketika orang pergi atau berganti peran (lihat Topik 3.6 — Manajemen Permintaan Layanan).
6. **Kelola rahasia dengan benar.** Jaga kredensial di luar kode sumber, simpan dalam vault terkelola, dan rotasikan. Uji bahwa Anda dapat merotasinya dengan cepat setelah insiden.
7. **Perlakukan insiden keamanan sebagai insiden.** Pakai peran, komunikasi, dan tinjauan yang sama seperti insiden lain, dan tambahkan langkah untuk bukti, penahanan, dan pemberitahuan. Latih rencananya.
8. **Ketahui kewajiban pemberitahuan Anda.** Cari tahu, dari fungsi hukum atau kepatuhan Anda, hukum atau kontrak mana yang mewajibkan Anda memberi tahu otoritas atau orang yang terdampak setelah pelanggaran, dan seberapa cepat. Tuliskan ke rencana insiden, mengutip teks sumber.
9. **Sertakan pemasok.** Tanyakan kepada pemasok kritis bagaimana mereka melindungi informasi Anda, dan taruh ekspektasi dalam kontrak (lihat Topik 3.14 — Manajemen Pemasok).
10. **Latih dan bicaralah.** Sediakan pelatihan singkat dan berkala berdasarkan contoh nyata, dan permudah melaporkan kesalahan atau pesan mencurigakan tanpa menyalahkan.
11. **Pakai standar sebagai sumber struktur.** Jika Anda mengadopsi ISO/IEC 27001, perlakukan Annex A sebagai kumpulan referensi, tulis Statement of Applicability yang dibenarkan, dan jaga ISMS tetap ringan. Sertifikasi opsional kecuali diwajibkan.
12. **Belajar dari nyaris celaka.** Tinjau nyaris celaka dan peristiwa berkeparahan rendah untuk pola, dan alirkan ke backlog dan register risiko.

## Pertanyaan untuk dibahas bersama tim Anda

**Informasi apa yang kita simpan yang akan merugikan orang jika bocor, dan di mana letaknya?**

Minta tiap orang menyebut data paling sensitif yang mereka tangani dan di mana ia berada. Bandingkan. Kejutan itu umum: salinan di lingkungan uji, ekspor di folder bersama, log yang berisi data pribadi. Fasilitator dapat menanyakan salinan mana yang paling kurang terlindungi. Pilih satu untuk dikurangi atau dilindungi lebih baik.

**Kapan terakhir kali kita membuat keputusan menerima risiko keamanan, dan siapa yang membuatnya?**

Minta contoh. Risiko yang diterima sering dibuat diam-diam, lewat penundaan. Bahas siapa yang seharusnya memutuskan, informasi apa yang mereka butuhkan, dan di mana dicatat. Daftar cara menangani risiko dalam artikel (terima, mitigasi, transfer, hindari) adalah bingkai yang berguna. Sepakati tempat sederhana untuk mencatat keputusan berikutnya.

**Pemeriksaan keamanan apa yang berjalan otomatis pada setiap perubahan, dan apa yang kita abaikan?**

Daftar pemeriksaan dalam pipeline dan hasilnya. Tanyakan temuan mana yang rutin diabaikan dan mengapa. Temuan yang diabaikan biasanya berarti kebisingan, kurang kepemilikan, atau kurang waktu. Putuskan mana yang diperbaiki, mana yang ditekan dengan alasan, dan siapa pemilik daftar.

**Siapa yang punya akses ke apa, dan kapan terakhir kali kita meninjaunya?**

Pilih sistem sensitif dan daftar siapa yang dapat menjangkaunya. Bandingkan dengan siapa yang membutuhkannya. Sering kali akses telah menumpuk. Tanyakan seberapa cepat akses dicabut ketika seseorang pergi. Sepakati tanggal tinjauan dan pemilik.

**Apa yang akan kita lakukan pada jam pertama dugaan pelanggaran?**

Telusuri langkahnya: siapa yang diberi tahu, apa yang dijaga, apa yang dimatikan, siapa berbicara dengan siapa. Celah biasanya muncul di sekitar wewenang dan bukti. Tanyakan di mana rencananya dan kapan terakhir dipakai. Jadwalkan latihan tabletop.

**Aturan keamanan atau privasi apa yang berlaku bagi kita, dan bagaimana kita tahu?**

Tanyakan siapa yang bertanggung jawab mengetahuinya. Jika jawabannya "hukum" atau "tak ada," tanyakan bagaimana rekayasa mengetahui persyaratannya. Aturan berbeda menurut negara dan sektor, jadi daftar tempat Anda beroperasi. Sepakati meminta daftar singkat dari fungsi hukum atau kepatuhan, dengan teks sumber.

## Dalam praktik: contoh ITIL agile

Layanan komputasi riset sebuah universitas menyimpan kumpulan data dari studi medis dan memberi peneliti akses ke server analisis. Tim delapan orang menjalankannya. Setelah insiden ketika seorang peneliti menyalin kumpulan data yang tidak terlindungi ke folder cloud pribadi, petugas keamanan universitas menuntut agar setiap perubahan dan setiap permintaan akses melalui tinjauan keamanan tiga minggu. Peneliti keberatan bahwa ini akan membuat layanan tidak dapat dipakai.

Manajer layanan mengusulkan pendekatan lain dan bertemu petugas keamanan dan dua peneliti. Mereka mendaftar informasi yang disimpan, mengelompokkan kumpulan data sebagai publik, internal, dan sensitif. Untuk data sensitif, mereka menyepakati kendali lebih ketat: akses menurut peran dan proyek yang disebut namanya, tanpa salinan di luar layanan, dan pencatatan ekspor data. Untuk data lain, aturan lebih ringan berlaku. Tim menambahkan pemeriksaan otomatis untuk penyimpanan yang salah konfigurasi dan untuk rahasia dalam kode ke pipeline pengiriman, dan petugas keamanan meninjau hasilnya setiap minggu alih-alih meninjau tiap perubahan. Permintaan akses untuk kumpulan data sensitif mengikuti model permintaan dengan persetujuan oleh pengelola data proyek dan tanggal kedaluwarsa. Sesi pelatihan singkat berdasarkan insiden sebelumnya dijalankan untuk peneliti.

Enam bulan kemudian, tidak ada lagi salinan di luar layanan yang ditemukan, dan tinjauan akses memakan satu sore setiap kuartal. Beberapa kesulitan tersisa. Sekelompok peneliti memakai perkakas yang mengekspor data dengan cara yang tidak ditangkap pencatatan, dan pemeriksaan otomatis menghasilkan alarm palsu yang mulai diabaikan tim. Mereka menyepakati dengan petugas keamanan untuk menambahkan perkakas itu ke cakupan pencatatan, menyetel pemeriksaan, dan meninjau peringatan setiap bulan. Mereka juga meminta tim hukum membuat pernyataan tertulis tentang kewajiban pemberitahuan yang berlaku untuk kumpulan data sensitif, agar rencana insiden dapat mengutip sumbernya.

## Empat perspektif

### Tim produk dan pengiriman

Tim pengiriman membuat keamanan nyata dalam kode dan konfigurasi. Bahas ancaman sejak dini, jaga rahasia di luar kode, tanggapi temuan otomatis, dan hindari membagikan data sensitif dalam pengujian. Beri tahu keamanan dan operasi tentang perubahan yang mengubah paparan.

### Tim layanan dan operasi

Tim operasi menjalankan kendali: akses, pemantauan, penambalan, dan backup. Perlakukan peristiwa keamanan sebagai insiden, jaga bukti, dan ikut serta dalam latihan. Alirkan pola insiden kembali ke tim pengiriman dan register risiko.

### Kepemimpinan dan tata kelola

Pemimpin memiliki keputusan risiko dan budaya di sekitarnya. Minta ringkasan risiko dalam bahasa sederhana, dukung waktu untuk pelatihan dan latihan, dan pastikan seseorang bertanggung jawab atas setiap keputusan menerima risiko. Jangan menuntut sertifikasi sebagai label tanpa alasan.

### Pelanggan dan pengguna

Pelanggan dan pengguna memercayakan informasi mereka kepada layanan. Pakai autentikasi kuat bila ditawarkan, laporkan pesan mencurigakan, dan tanyakan kepada penyedia bagaimana mereka melindungi data Anda dan bagaimana mereka akan memberi tahu Anda tentang pelanggaran. Harapkan kejujuran dan kecepatan jika ada yang salah.

## Pola kegagalan umum

- **Keamanan sebagai gerbang terakhir.** Tinjauan tiba di akhir dan menunda rilis. Sebaliknya, bahas ancaman sejak dini dan otomatisasi pemeriksaan dalam pipeline.
- **Kepatuhan sebagai tujuan.** Sertifikat menyembunyikan praktik lemah. Sebaliknya, pakai standar untuk struktur dan ukur perlindungan nyata.
- **Data tak terlacak.** Salinan menyebar ke sistem uji dan penyimpanan pribadi. Sebaliknya, ketahui di mana data sensitif berada dan batasi salinan.
- **Akses berlebih.** Hak menumpuk dan tak pernah dicabut. Sebaliknya, tinjau akses secara berkala dan buat kedaluwarsa.
- **Rahasia dalam kode.** Kredensial disimpan di repositori. Sebaliknya, pakai vault dan rotasikan rahasia.
- **Tanpa rencana insiden yang teruji.** Pemakaian pertama adalah pelanggaran nyata. Sebaliknya, latih rencana dan tuliskan kewajiban pemberitahuan.
- **Menyalahkan kesalahan.** Orang menyembunyikan galat. Sebaliknya, permudah pelaporan dan tanggapi dengan pembelajaran.
- **Mengabaikan pemasok.** Pihak ketiga menyimpan data tanpa perlindungan jelas. Sebaliknya, tanyakan, kontrakkan, dan tinjau.

## Model kematangan

| Dimensi | Memulai | Mengembangkan | Menstandarkan | Mengelola | Mengorkestrasi |
|---|---|---|---|---|---|
| Informasi dan risiko | Data sensitif tidak didaftar; risiko implisit | Beberapa layanan mencatat jenis data dan risiko | Data dan risiko dicatat per layanan dengan pemilik dan keputusan | Risiko ditinjau terhadap insiden dan metrik | Pandangan risiko dibagikan dengan pelanggan dan pemasok dan diselaraskan |
| Kendali dalam pengiriman | Tinjauan keamanan terjadi di akhir, jika ada | Beberapa tim menjalankan pemindaian keamanan | Pemeriksaan keamanan diotomatisasi dalam pipeline umum, dengan pemilik untuk temuan | Temuan, perbaikan, dan yang lolos diukur dan ditinjau | Kendali diperbaiki lintas tim dari bukti bersama |
| Akses dan rahasia | Akses diberikan ad hoc; rahasia dalam kode | Ada beberapa tinjauan dan vault | Akses berbasis peran dengan kedaluwarsa dan rahasia terkelola adalah standar | Tinjauan akses dan rotasi diukur | Praktik akses dan rahasia dikoordinasikan dengan mitra |
| Respons insiden dan budaya | Insiden keamanan diimprovisasi | Ada beberapa rencana | Insiden keamanan mengikuti proses insiden dengan langkah tambahan yang ditetapkan dan dilatih | Waktu deteksi dan respons diukur dan pembelajaran dibagikan | Respons dikoordinasikan dengan pemasok, pelanggan, dan otoritas |

## Daftar periksa

- [ ] Kami telah mendaftar jenis informasi utama, pemilik, lokasi, dan sensitivitasnya.
- [ ] Risiko terhadap kerahasiaan, integritas, dan ketersediaan dinilai untuk layanan penting, dan keputusan dicatat.
- [ ] Pemeriksaan keamanan otomatis berjalan pada setiap perubahan, dan temuan punya pemilik.
- [ ] Akses menurut peran dan kebutuhan, ditinjau secara berkala, dan dicabut ketika tidak lagi dibutuhkan.
- [ ] Rahasia disimpan dalam vault terkelola dan dapat dirotasi dengan cepat.
- [ ] Rencana insiden keamanan ada, telah dilatih, dan mencakup kewajiban pemberitahuan dengan teks sumber.
- [ ] Pemasok yang menyimpan informasi kami telah ditanya tentang perlindungan mereka.
- [ ] Staf menerima pelatihan singkat dan berkala dan dapat melaporkan kesalahan tanpa disalahkan.
- [ ] Jika kami memakai ISO/IEC 27001, kami punya Statement of Applicability yang dibenarkan dan ISMS yang ringan.
- [ ] Nyaris celaka ditinjau untuk pola.

## Prompt AI

**Tujuan: membuat inventaris informasi Anda dan memeringkatnya menurut sensitivitas.**

```text
Help me make a simple inventory of the information our service holds.

What the service does: [describe].
Data we know about (types, where stored, who can access): [paste a list; remove any real personal data].
Rules or contracts that apply, with source text: [paste, or write "none known"].

Produce a table with: information type, where it lives, who owns it, a suggested sensitivity level (public, internal, sensitive) with a one-sentence reason from my text, and one question to ask about protection. Mark guesses. Do not state that any law applies unless I pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Tujuan: menjalankan diskusi ancaman singkat untuk fitur baru.**

```text
Help me run a 30-minute threat discussion for this new feature: [describe what it does, what data it handles, who uses it, and what it connects to].

Provide questions to ask under these headings: who might misuse it and how; what data could be exposed, changed, or made unavailable; what could go wrong through dependencies or suppliers; what we would see if it went wrong; and what safeguards we already have. Then give a template for recording risks with an owner and a decision (accept, reduce, transfer, or avoid). Do not invent attacks or vulnerabilities in my system. Ask clarifying questions first, and list what you are unsure of.
```

**Tujuan: meninjau temuan keamanan otomatis untuk kebisingan dan prioritas.**

```text
Here are findings from our automated security checks in the last [period]: [paste, with counts and short descriptions; remove sensitive details].
What we did about each (fixed, suppressed, ignored): [paste, or write "unknown"].

Group the findings by type. For each group, suggest a question to ask about whether it is noise, a real risk, or a tool configuration issue, using only the text. Identify which groups are most often ignored. Do not state that a finding is exploitable or harmless. Suggest how to assign owners. List what you are unsure of.
```

**Tujuan: menyiapkan latihan insiden keamanan.**

```text
Design a 60-minute tabletop exercise on a suspected data breach in [service].

Scenario basis: [describe, using facts you choose, for example "a laptop with access to production data is reported lost"].
Roles taking part: [list].
Notification duties that apply, with source text from legal or compliance: [paste, or write "not yet confirmed"].

Give a timed plan, prompts for each role (contain, preserve evidence, communicate, decide who is told), a list of decisions that need authority, and a closing step that records gaps with owners. Do not use real data or systems. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## Keterampilan AI

- [security-testing](../../../../skills/security-testing/SKILL.md): gunakan untuk merencanakan pengujian keamanan sebagai bagian dari siklus pengiriman.
- [risk-register](../../../../skills/risk-register/SKILL.md): gunakan untuk mencatat risiko keamanan, keputusan, dan pemilik.
- [key-risk-indicators](../../../../skills/key-risk-indicators/SKILL.md): gunakan untuk memilih ukuran peringatan dini bagi risiko keamanan.
- [data-governance](../../../../skills/data-governance/SKILL.md): gunakan untuk menentukan siapa memiliki data dan bagaimana boleh dipakai dan dibagikan.
- [legal-data-privacy-compliance](../../../../skills/legal-data-privacy-compliance/SKILL.md): gunakan untuk menyiapkan pertanyaan bagi staf hukum atau kepatuhan tentang kewajiban privasi.

## Sumber utama

- **Information security** (Wikipedia): segitiga CIA, manajemen risiko, kendali, dan respons insiden, dengan daftar panjang standar dan hukum terkait.
- **ISO/IEC 27001** (Wikipedia, dan standarnya sendiri dari ISO): persyaratan untuk sistem manajemen keamanan informasi, dengan kendali Annex A dan proses sertifikasi.
- **Computer security incident management** (Wikipedia): latar belakang merespons peristiwa keamanan.
- **Defense in depth** (Wikipedia): latar belakang kendali berlapis.

## Referensi

1. Information security — Wikipedia — https://en.wikipedia.org/wiki/Information_security
2. ISO/IEC 27001 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_27001
3. ISO/IEC 27002 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_27002
4. Computer security incident management — Wikipedia — https://en.wikipedia.org/wiki/Computer_security_incident_management
5. Defense in depth (computing) — Wikipedia — https://en.wikipedia.org/wiki/Defense_in_depth_(computing)
6. Risk management — Wikipedia — https://en.wikipedia.org/wiki/Risk_management
7. Principle of least privilege — Wikipedia — https://en.wikipedia.org/wiki/Principle_of_least_privilege
8. Continuous delivery — DORA, dora.dev — https://dora.dev/capabilities/continuous-delivery/
9. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
