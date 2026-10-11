# Empat Dimensi Manajemen Layanan

**Empat dimensi ITIL 4 adalah daftar periksa untuk menemukan apa yang kurang dari sebuah layanan: orang dan struktur yang tepat, informasi dan teknologi, mitra dan pemasok, serta aliran kerja yang ditetapkan, dan kelemahan pada salah satunya membatasi nilai dari yang lain.**

## Mengapa ini penting

Ketika sebuah layanan mengecewakan, tim cenderung meraih perbaikan yang paling mereka kenal. Engineer mencurigai teknologi, manajer mencurigai proses, dan SDM mencurigai keterampilan. Masing-masing mungkin benar, dan peluang memperbaiki masalah lebih baik jika Anda mencari di keempat tempat. Empat dimensi memberi kerangka sederhana untuk melakukannya.

Dimensi-dimensi itu juga rem yang berguna bagi kegagalan agile yang umum. Tim yang unggul mengirim kode tetap dapat mengirim layanan yang buruk jika tak ada yang memikirkan pemasok yang API-nya menjadi tumpuan, keterampilan yang dibutuhkan untuk mendukungnya pada malam hari, atau informasi yang akan dibutuhkan service desk ketika ia gagal. Demikian pula, kelompok manajemen layanan yang menyempurnakan prosesnya dapat mengabaikan budaya dan perkakas yang membuatnya berfungsi.

Menurut halaman ITIL 4 Foundation PeopleCert, empat dimensi adalah organisasi dan orang; informasi dan teknologi; mitra dan pemasok; serta aliran nilai dan proses. Daftar itu satu-satunya bagian topik ini yang diambil langsung dari halaman publik pemilik kerangka kerja. Deskripsi di bawah berasal dari penyedia pelatihan dan sumber komentar, yang saling sepakat tetapi bersifat sekunder. Periksa publikasi ITIL 4 bila Anda memerlukan redaksi yang persis.

## Konsep inti

### Empat dimensi

Tabel memberi tiap dimensi, apa yang dicakupnya seperti diringkas secara luas, dan pertanyaan untuk diajukan tentang sebuah layanan.

| Dimensi | Apa yang dicakup | Pertanyaan untuk diajukan |
|---|---|---|
| **Organisasi dan orang** | Struktur, budaya, peran, keterampilan, dan kepemimpinan yang dibutuhkan untuk mengerjakan pekerjaan; meluas melampaui staf TI ke semua orang yang berinteraksi dengan layanan | Siapa mengerjakan apa, dengan keterampilan apa, dan apakah budayanya mendukung? |
| **Informasi dan teknologi** | Informasi dan pengetahuan yang dipakai dan dihasilkan layanan, serta perkakas dan teknologi yang mendukungnya | Apa yang perlu kita ketahui, dan di atas apa kita menjalankannya? |
| **Mitra dan pemasok** | Hubungan dengan organisasi lain yang berkontribusi pada layanan, termasuk bagaimana pemasok dipilih, dikelola, dan diintegrasikan | Siapa lagi yang terlibat, dan untuk apa kita bergantung pada mereka? |
| **Aliran nilai dan proses** | Aktivitas dan aliran kerja yang menciptakan nilai, dan bagaimana semuanya diatur dan dikendalikan | Bagaimana pekerjaan bergerak, dan di mana ia menunggu? |

Sumber pelatihan menekankan bahwa dimensi-dimensi itu saling bergantung. Memberi terlalu sedikit perhatian pada salah satunya membatasi nilai yang dapat dikirim organisasi kepada pemangku kepentingannya.

### Kaitan dengan kerangka kerja lainnya

Dimensi berlaku untuk setiap bagian sistem nilai layanan (lihat Topik 2.3 — Sistem Nilai Layanan ITIL). Praktik, seperti manajemen insiden, dapat diperiksa melalui masing-masing: orang dan peran apa yang dibutuhkannya, informasi dan perkakas apa, pemasok apa, dan proses apa. Dimensi juga terhubung dengan prinsip panduan, terutama "berpikir dan bekerja secara holistik" (lihat Topik 2.4 — Prinsip Panduan ITIL).

### Faktor eksternal

Sumber pelatihan dan komentar juga menjelaskan faktor eksternal yang memengaruhi keempat dimensi. Mereka umumnya memakai akronim **PESTLE**: politik, ekonomi, sosial (sebagian sumber mengatakan sosiokultural), teknologi, hukum, dan lingkungan. Ini hal-hal yang tidak dapat dikendalikan organisasi tetapi harus dipertimbangkan, karena dapat menciptakan risiko atau memicu kebutuhan mengubah layanan. Perubahan hukum dapat mengubah informasi apa yang boleh disimpan layanan; pergeseran ekonomi dapat mengubah harga pemasok; teknologi baru dapat mengubah apa yang diharapkan pelanggan. Sumber menyarankan meninjaunya setiap kali Anda mempertimbangkan cara menanggapi permintaan atau peluang yang berubah.

### Dimensi dalam tim agile

Tim agile sudah bekerja dengan beberapa dimensi karena kebiasaan dan mengabaikan yang lain.

| Dimensi | Apa yang biasanya dilakukan tim agile dengan baik | Apa yang sering terlewat |
|---|---|---|
| Organisasi dan orang | Tim yang mengatur diri, retrospektif, fokus pada motivasi | Beban on-call, keterampilan di luar tim, budaya kelompok yang mendukung layanan |
| Informasi dan teknologi | Otomatisasi, perkakas, kendali versi | Pengetahuan untuk staf dukungan, kepemilikan data, dokumentasi yang dipakai orang lain |
| Mitra dan pemasok | Memakai layanan pihak ketiga dan sumber terbuka dengan cepat | Siapa yang mendukung sebuah ketergantungan, apa yang terjadi ketika pemasok mengubah syarat atau gagal |
| Aliran nilai dan proses | Siklus pendek, papan yang terlihat | Bagian aliran di luar tim, seperti persetujuan, tinjauan keamanan, dan serah terima ke operasi |

### Memakai dimensi untuk mendiagnosis

Penggunaan praktisnya adalah mengambil insiden atau perubahan yang gagal dan menanyakan pada dimensi mana kelemahannya berada. Beberapa contoh menunjukkan gagasannya, tanpa klaim bahwa itu tipikal:

- Perbaikan memakan berjam-jam karena hanya satu orang yang memahami sistem: organisasi dan orang.
- Peringatan diabaikan karena tidak mengatakan apa pun yang berguna: informasi dan teknologi.
- Pemulihan macet karena saluran dukungan pemasok tutup: mitra dan pemasok.
- Perubahan menunggu tiga hari untuk tanda tangan yang tidak berguna: aliran nilai dan proses.

Sebagian besar masalah nyata menyentuh lebih dari satu. Nilai latihan ini adalah memperhatikan dimensi mana yang biasanya Anda lewatkan.

### Batasan

Dimensi adalah kerangka dan bukan metode. Ia tidak memberi tahu cara memperbaiki dimensi yang lemah, dan cukup luas sehingga hampir semua masalah dapat ditempatkan di lebih dari satu. Artikel Wikipedia tentang ITIL tidak menjelaskannya, dan panduan ini belum menemukan bukti independen tentang seberapa baik mereka bekerja dalam praktik. Perlakukan sebagai pemantik yang membantu tim mengajukan pertanyaan yang lebih baik.

## Praktik terbaik

1. **Tinjau tiap layanan melalui keempat dimensi.** Untuk tiap layanan penting, tulis dua atau tiga baris di bawah tiap dimensi: apa yang ada dan apa yang kurang. Lakukan ini saat Anda merancang layanan dan lagi setahun sekali.
2. **Taruh orang di urutan pertama.** Periksa siapa yang berjaga, keterampilan apa yang dibutuhkan, dan apakah bebannya adil. Layanan yang bergantung pada segelintir orang yang kelelahan berisiko (lihat Topik 1.2 — Prinsip Agile tentang kecepatan berkelanjutan).
3. **Perlakukan informasi sebagai bagian dari layanan.** Identifikasi informasi yang dibutuhkan pengguna, staf dukungan, dan tim lain, dan siapa pemiliknya. Buat mudah ditemukan (lihat Topik 3.9 — Manajemen Pengetahuan).
4. **Kenali teknologi Anda dan jaga agar dapat didukung.** Simpan daftar komponen utama dan siapa yang dapat mendukung masing-masing. Pensiunkan apa yang tak dipahami siapa pun.
5. **Daftar pemasok Anda dan untuk apa Anda bergantung pada mereka.** Sertakan penyedia cloud, vendor perangkat lunak, dan tim internal di luar tim Anda. Catat siapa yang dihubungi, bagaimana, dan apa yang mereka janjikan (lihat Topik 3.14 — Manajemen Pemasok).
6. **Sertakan pemasok dalam tinjauan Anda.** Undang mitra utama ke perencanaan bersama atau tinjauan insiden. Pemasok yang mengetahui rencana Anda terlambat tidak dapat membantu.
7. **Petakan aliran nilai dan serah terima.** Gambar bagaimana pekerjaan mengalir dari permintaan ke nilai, menandai di mana ia melintasi tim atau pemasok. Serah terima adalah tempat informasi dan waktu paling sering hilang (lihat Topik 5.4 — Manajemen Aliran Nilai).
8. **Lihat dimensi yang paling kurang berkembang lebih dulu.** Saat memperbaiki layanan, mulailah dari dimensi yang terlemah, bukan yang paling disukai tim. Tunjukkan bukti di balik pilihan Anda.
9. **Pindai faktor eksternal sekali atau dua kali setahun.** Pakai judul PESTLE untuk mendaftar apa yang dapat berubah untuk tiap layanan: hukum, harga, teknologi, sikap publik. Catat dimensi mana yang dapat dipengaruhi masing-masing.
10. **Pakai dimensi dalam tinjauan insiden dan perubahan.** Tambahkan pertanyaan pada templat tinjauan: dimensi mana yang paling lemah di sini? Seiring waktu, pola akan tampak.
11. **Jaga tetap ringan.** Satu halaman per layanan cukup. Jika tinjauan memakan lebih dari satu jam, Anda mungkin mengumpulkan informasi yang tidak akan dipakai siapa pun.
12. **Jangan pakai dimensi untuk menyalahkan.** Tujuannya pandangan lengkap tentang layanan. Perlakukan celah sebagai masalah desain untuk diselesaikan bersama, bukan kegagalan tim.

## Pertanyaan untuk dibahas bersama tim Anda

**Untuk layanan utama kita, apa yang akan kita tulis di bawah tiap dari empat dimensi, dan mana yang paling tipis?**

Bagi tim menjadi empat kelompok, satu per dimensi, dan beri sepuluh menit. Bandingkan daftar. Yang tipis sering mengejutkan orang: tim pengiriman sering menemukan mitra dan pemasok hanya sedikit isinya, sementara tim operasi mungkin menemukan hal sama untuk informasi. Fasilitator dapat menanyakan apa yang telah dibebankan dimensi tipis itu dalam enam bulan terakhir.

**Pada siapa kita bergantung yang belum pernah kita ajak bicara?**

Daftar pemasok dan tim internal yang menjadi tumpuan layanan, termasuk yang tersembunyi di balik produk cloud. Tandai mana yang Anda punya kontaknya dan mana yang tidak. Tanyakan apa yang terjadi jika masing-masing gagal. Ini tempat yang baik untuk menemukan risiko yang tidak dimiliki siapa pun. Pilih satu ketergantungan untuk dipahami lebih baik.

**Pengetahuan apa yang hanya ada di kepala satu orang?**

Minta orang menyebut tugas yang hanya dapat dilakukan satu orang, dan informasi apa yang kurang dari service desk untuk mendukung layanan. Perlakukan jawabannya sebagai daftar risiko. Tanyakan bagaimana pengetahuan dapat dibagikan dalam sebulan, misalnya dengan pairing atau menulis panduan singkat. Catat langkah pertama dan pemiliknya.

**Di mana pekerjaan menunggu di luar tim kita?**

Telusuri permintaan terbaru lintas tim dan tandai setiap penantian. Penantian pada persetujuan, tinjauan keamanan, atau antrean pemasok berada di luar kendali tim tetapi tidak di luar pengaruhnya. Tanyakan siapa yang dapat mengubah tiap penantian dan bukti apa yang akan membantu. Pilih satu penantian untuk diangkat kepada pemiliknya.

**Apa yang terjadi terakhir kali sesuatu di luar kendali kita berubah, seperti hukum, harga, atau platform?**

Minta kasus nyata. Lihat berapa lama untuk menyadari, siapa yang memutuskan, dan dimensi mana yang terkena. Tujuannya mempelajari bagaimana tim memindai perubahan eksternal. Tanyakan siapa yang bertanggung jawab mengamati dan apa yang mereka amati.

**Jika kita hanya bisa memperkuat satu dimensi kuartal ini, mana yang memberi manfaat terbesar bagi pengguna kita?**

Biarkan orang membela satu dimensi dengan contoh terbaru. Hindari voting pada awalnya; minta bukti. Lalu sepakati satu tindakan pada dimensi yang dipilih dengan pemilik dan ukuran. Ingat untuk mengatakan dimensi mana yang Anda pilih untuk tidak dikerjakan, agar pilihannya eksplisit.

## Dalam praktik: contoh ITIL agile

Sebuah badan lingkungan nasional menjalankan portal data publik yang menerbitkan bacaan kualitas udara dari ribuan sensor. Tim sembilan orang membangun dan menjalankannya. Tim mengirim perubahan setiap minggu, dan prosesnya tampak sehat. Namun saat gelombang panas, portal melambat parah, minat publik melonjak, dan kantor humas badan mengetahui masalahnya dari media sosial.

Pemilik portal memakai empat dimensi untuk meninjau insiden itu. Pada organisasi dan orang, hanya dua engineer yang mengetahui pipeline penyerapan data, dan salah satunya sedang cuti. Pada informasi dan teknologi, pemantauan menunjukkan basis data sibuk tetapi tidak menunjukkan bacaan mana yang terlambat, sehingga tim tidak bisa memberi tahu humas apa yang terdampak. Pada mitra dan pemasok, data sensor berasal dari badan-badan regional dan penyedia cloud, dan tak ada yang bertanya kepada keduanya apa yang diharapkan saat permintaan puncak. Pada aliran nilai dan proses, humas tidak punya jalur ke proses insiden, sehingga kontak pertamanya datang lewat seorang jurnalis.

Tim melakukan empat perubahan, satu per dimensi: engineer ketiga dilatih tentang pipeline, dasbor menunjukkan kesegaran data per wilayah, badan-badan regional dan penyedia cloud diundang ke tinjauan kapasitas singkat, dan humas ditambahkan ke pemberitahuan insiden. Gelombang panas berikutnya ditangani tanpa keluhan publik. Beberapa masalah tersisa: satu badan regional masih mengirim data dalam format lama yang merusak pipeline, dan humas merasa pesan status teknis sulit diubah menjadi bahasa sederhana. Tim sepakat meminta jadwal perubahan format dari badan regional itu, dan menulis templat status singkat bersama humas.

## Empat perspektif

### Tim produk dan pengiriman

Tim pengiriman biasanya mengendalikan teknologi dan proses tetapi mungkin mengabaikan orang dan pemasok. Tanyakan siapa yang akan mendukung apa yang Anda bangun, keterampilan apa yang mereka butuhkan, dan pihak luar mana yang menjadi tumpuan layanan Anda. Sediakan informasi yang dibutuhkan pihak lain, dan undang mereka ke tinjauan Anda.

### Tim layanan dan operasi

Tim operasi sering melihat kelemahan dimensi lebih dulu karena mereka hidup dengan akibatnya. Gunakan dimensi untuk menggambarkan masalah dengan cara yang dapat ditindaklanjuti tim pengiriman dan manajer, dan untuk memperjuangkan waktu bagi berbagi pengetahuan dan hubungan pemasok.

### Kepemimpinan dan tata kelola

Pemimpin mengendalikan struktur, keterampilan, kontrak pemasok, dan proses yang melintasi tim. Minta tinjauan empat dimensi atas layanan penting, dan lihat dimensi yang tipis. Bersiaplah mendanai bagian yang kurang glamor, seperti pelatihan dan hubungan pemasok.

### Pelanggan dan pengguna

Pelanggan dan pengguna mengalami hasil dari keempat dimensi tanpa melihatnya. Ketika ada yang salah, beri tahu penyedia apa yang Anda lihat dan apa yang Anda butuhkan. Informasi itu membantu mereka menemukan dimensi yang lemah. Tanyakan kepada penyedia bagaimana mereka mengatur dukungan, pemasok, dan informasi untuk layanan yang Anda pakai.

## Pola kegagalan umum

- **Memperbaiki dimensi yang familier.** Engineer menambah teknologi pada setiap masalah. Sebaliknya, tanyakan dimensi mana yang ditunjuk bukti.
- **Melupakan pemasok.** Layanan bergantung pada pihak yang belum pernah ditemui siapa pun. Sebaliknya, daftar pemasok dan catat kontak, komitmen, dan risikonya.
- **Memperlakukan orang sebagai hal yang diberikan.** Keterampilan dan beban on-call diasumsikan. Sebaliknya, tinjau sebagai bagian dari layanan.
- **Proses yang berhenti di batas tim.** Serah terima tidak dikelola. Sebaliknya, petakan aliran lintas tim dan sepakati serah terimanya.
- **Informasi yang tak dapat ditemukan siapa pun.** Dokumentasi ada tetapi staf dukungan tidak dapat memakainya. Sebaliknya, tanyakan kepada pemakai informasi itu apa yang mereka butuhkan.
- **Analisis berlebihan.** Tinjauan menjadi dokumen besar. Sebaliknya, jaga satu halaman per layanan.
- **Memakai kerangka untuk menyalahkan.** Tim dinilai karena celah. Sebaliknya, perlakukan celah sebagai masalah desain bersama.
- **Mengabaikan perubahan eksternal.** Hukum, harga, dan teknologi bergeser tanpa pemberitahuan. Sebaliknya, pindai faktor PESTLE secara berkala dan catat dimensi mana yang dipengaruhi masing-masing.

## Model kematangan

| Dimensi | Memulai | Mengembangkan | Menstandarkan | Mengelola | Mengorkestrasi |
|---|---|---|---|---|---|
| Organisasi dan orang | Peran dan keterampilan informal | Beberapa tim mendaftar keterampilan dan beban on-call | Peran, keterampilan, dan beban kerja dijelaskan untuk tiap layanan | Keterampilan dan beban diukur dan ditinjau | Staf dan keterampilan direncanakan lintas tim dan mitra |
| Informasi dan teknologi | Pengetahuan dan perkakas tersebar | Beberapa tim menyimpan daftar komponen dan pengetahuan | Komponen dan informasi punya pemilik dan mudah ditemukan | Pemakaian informasi dan perkakas dilacak dan celah diperbaiki | Informasi dan perkakas dibagikan dan diperbaiki lintas tim dan pemasok |
| Mitra dan pemasok | Pemasok dikelola oleh individu | Beberapa pemasok utama didaftar dengan kontak | Semua pemasok utama punya pemilik, kontak, dan ekspektasi | Kinerja dan risiko pemasok ditinjau | Pemasok ikut serta dalam perencanaan dan perbaikan |
| Aliran nilai dan proses | Pekerjaan mengalir karena kebiasaan | Beberapa aliran digambar | Aliran utama dipetakan lintas tim dengan pemilik | Aliran dan waktu menunggu diukur dan dikurangi | Aliran diperbaiki bersama pelanggan dan pemasok |

## Daftar periksa

- [ ] Untuk tiap layanan penting, kami telah menuliskan apa yang ada dan apa yang kurang pada tiap dimensi.
- [ ] Orang dan keterampilan yang dibutuhkan untuk menjalankan tiap layanan diidentifikasi, dengan beban on-call ditinjau.
- [ ] Informasi yang dibutuhkan pengguna dan staf dukungan dimiliki dan mudah ditemukan.
- [ ] Komponen utama layanan didaftar, dengan seseorang yang dapat mendukung masing-masing.
- [ ] Pemasok utama dan penyedia internal didaftar dengan kontak dan ekspektasi.
- [ ] Aliran kerja untuk satu layanan telah dipetakan lintas tim.
- [ ] Kami telah memindai faktor eksternal (PESTLE) setidaknya sekali dalam setahun terakhir.
- [ ] Tinjauan insiden dan perubahan menanyakan dimensi mana yang paling lemah.
- [ ] Tinjauan untuk tiap layanan muat dalam satu halaman.
- [ ] Kami telah memilih satu dimensi lemah untuk diperkuat kuartal ini.

## Prompt AI

**Tujuan: menyusun tinjauan empat dimensi atas sebuah layanan.**

```text
Help me draft a four-dimension review of the service [name]. The dimensions are: organizations and people; information and technology; partners and suppliers; value streams and processes.

About the service: [describe what it does and who uses it].
For each dimension, what I know: [write a few lines each; write "unknown" where you do not know].

For each dimension, say what exists, what appears to be missing, and one question I should ask the team, using only my text. Highlight the thinnest dimension and say why. Do not invent suppliers, people, or tools. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Tujuan: mengklasifikasikan dimensi terlemah dalam insiden terbaru.**

```text
Here are short, factual descriptions of [number] recent incidents or failed changes: [paste, one per item].

For each, say which of the four ITIL dimensions (organizations and people; information and technology; partners and suppliers; value streams and processes) the weakness most likely lay in, with one sentence of reasoning drawn only from the text. Where more than one applies, say so. Then count how many fall under each dimension, from my list only, and suggest two questions about the pattern. Do not invent causes, and list what you are unsure of.
```

**Tujuan: mendaftar pemasok dan ketergantungan untuk sebuah layanan.**

```text
Help me build a dependency and supplier list for [service].

What I know about how it is built and run: [describe components, cloud services, data sources, other teams].
Contracts or support arrangements I know about: [list, or write "unknown"].

Produce a table with columns: dependency, who provides it, what we rely on it for, what happens if it fails (from my text only), and the question I should ask the supplier. Mark anything you inferred. Do not invent contracts or service levels. Ask clarifying questions first, and list what you are unsure of.
```

**Tujuan: memindai faktor eksternal untuk sebuah layanan.**

```text
Help me prepare a scan of external factors using the PESTLE headings (political, economic, social, technological, legal, environmental) for the service [name].

Context: [describe the sector, countries served, and users].
Known upcoming changes: [list laws, price changes, technology shifts you actually know about, or write "none known"].

For each heading, propose questions we should research (not answers), and note which of the four ITIL dimensions each factor could affect. Do not state that any law or regulation exists or applies unless I have listed it. Mark assumptions, and list what you are unsure of.
```

## Keterampilan AI

- [stakeholder-analysis](../../../../skills/stakeholder-analysis/SKILL.md): gunakan untuk memetakan mitra, pemasok, dan kelompok yang bergantung pada atau berkontribusi pada sebuah layanan.
- [vendor-management](../../../../skills/vendor-management/SKILL.md): gunakan untuk merencanakan bagaimana Anda memilih, mengelola, dan meninjau pemasok.
- [value-stream-map](../../../../skills/value-stream-map/SKILL.md): gunakan untuk memetakan aliran kerja lintas tim bagi dimensi aliran nilai dan proses.
- [swot-analysis](../../../../skills/swot-analysis/SKILL.md): gunakan bersama pemindaian faktor eksternal untuk merangkum kekuatan, kelemahan, peluang, dan ancaman.
- [training-needs-analysis](../../../../skills/training-needs-analysis/SKILL.md): gunakan untuk menemukan celah keterampilan dalam dimensi organisasi dan orang.

## Sumber utama

- **ITIL 4 Foundation** (PeopleCert): halaman pemilik yang menyebut empat dimensi di antara topik yang dipelajari.
- **The ITIL Four Dimensions of Service Management** (itsm.tools): ringkasan situs praktisi tentang tiap dimensi dan PESTLE; sekunder.
- **PESTLE analysis** (Wikipedia): latar belakang alat faktor eksternal.
- **ITIL** (Wikipedia): konteks tentang ITIL 4 dan tempatnya dalam sejarah kerangka kerja.

## Referensi

1. ITIL 4 Foundation — PeopleCert — https://www.peoplecert.org/browse-certifications/it-governance-and-service-management/ITIL-1/itil-4-foundation-2565
2. The ITIL Four Dimensions of Service Management — itsm.tools (practitioner site; secondary source) — https://itsm.tools/the-itil-four-dimensions-of-service-management/
3. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
4. PESTLE analysis — Wikipedia — https://en.wikipedia.org/wiki/PEST_analysis
5. Systems thinking — Wikipedia — https://en.wikipedia.org/wiki/Systems_thinking
6. Value-stream mapping — Wikipedia — https://en.wikipedia.org/wiki/Value-stream_mapping
7. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
8. Supply chain management — Wikipedia — https://en.wikipedia.org/wiki/Supply_chain_management
