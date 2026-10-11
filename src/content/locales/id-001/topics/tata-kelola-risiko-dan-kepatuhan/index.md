# Tata Kelola, Risiko, dan Kepatuhan

**Tata kelola, risiko, dan kepatuhan menetapkan arah, batas, dan bukti bagi pekerjaan organisasi, dan dalam organisasi agile ia bekerja paling baik sebagai pagar pengaman yang dibangun ke dalam cara tim mengirim, bukan sebagai gerbang yang ditaruh di akhir.**

## Mengapa ini penting

Setiap organisasi yang menyediakan layanan bertanggung jawab kepada seseorang: pelanggan, dewan, regulator, publik. Pertanggungjawaban itu mengambil beberapa bentuk yang akrab. Harus ada arah dan hak keputusan yang jelas (tata kelola). Harus ada pandangan jujur tentang apa yang bisa salah dan apa yang dilakukan tentangnya (risiko). Dan harus ada bukti bahwa organisasi mengikuti hukum, kontrak, dan kebijakan yang berlaku baginya (kepatuhan).

Tim agile dan fungsi tata kelola sering bertemu dalam kecurigaan bersama. Tim melihat dewan persetujuan, formulir panjang, dan aturan yang alasannya tak terlihat. Staf tata kelola dan audit melihat tim yang mengubah produksi dengan cepat dan meninggalkan sedikit catatan. Kedua pihak punya benarnya. Jalan keluarnya bukan agar salah satu menang, tetapi merancang tata kelola yang kompatibel dengan perubahan sering: batas yang jelas, kendali berbasis risiko, dan bukti yang dihasilkan oleh pekerjaan itu sendiri.

[Artikel Wikipedia tentang tata kelola, manajemen risiko, dan kepatuhan](https://en.wikipedia.org/wiki/Governance,_risk_management,_and_compliance) menjelaskan GRC sebagai pendekatan holistik terhadap tata kelola, manajemen risiko, dan kepatuhan regulasi, dikembangkan pada 2000-an untuk mengelola persyaratan kepatuhan keuangan yang makin kompleks. Ia tidak menyebut kritik dan tidak ada kerangka khusus TI. Topik ini menggabungkannya dengan artikel tentang manajemen risiko dan kepatuhan regulasi, dengan topik terdahulu tentang perubahan, keamanan, dan kontinuitas, dan dengan panduan DORA tentang persetujuan. Ia tidak memberi nasihat hukum; aturan yang berlaku bagi Anda bergantung pada negara, sektor, dan kontrak Anda, dan sumber yang tepat adalah teks aturan.

## Konsep inti

### Tata kelola

Artikel GRC menjelaskan tata kelola korporat sebagai proses yang ditetapkan dewan yang membentuk struktur dan menetapkan peran. Dalam TI, tata kelola tentang siapa memutuskan apa, atas dasar apa, dan bagaimana keputusan diperiksa. COBIT, yang dijelaskan Wikipedia sebagai kerangka ISACA untuk manajemen dan tata kelola TI, adalah salah satu rujukan (lihat Topik 2.7 — Kerangka Kerja dan Standar ITSM). Sistem nilai layanan ITIL mencakup tata kelola sebagai komponen (lihat Topik 2.3 — Sistem Nilai Layanan ITIL).

Tata kelola yang baik dalam organisasi agile eksplisit tentang:

- **Arah:** tujuan dan prioritas, dan siapa yang menetapkannya.
- **Batas:** apa yang boleh diputuskan tim sendiri, dan apa yang perlu eskalasi (lihat Topik 1.9 — Manajemen Agile).
- **Akuntabilitas:** siapa yang bertanggung jawab atas tiap layanan (lihat Topik 5.5 — Kepemilikan Produk dan Layanan).
- **Bukti:** bagaimana organisasi tahu bahwa arah dan batasnya diikuti.

### Manajemen risiko

Wikipedia menjelaskan manajemen risiko sebagai identifikasi, evaluasi, dan pemrioritasan risiko, diikuti meminimalkan, memantau, dan mengendalikan dampak atau probabilitasnya. Artikel menyebut empat opsi penanganan:

| Opsi | Arti | Contoh |
|---|---|---|
| **Penghindaran** | Tidak melakukan aktivitas berisiko (yang juga melepaskan potensi keuntungan) | Memutuskan tidak menyimpan data tertentu |
| **Pengurangan** | Menurunkan tingkat keparahan atau kemungkinan | Pengujian otomatis, rollout bertahap, pemantauan ekstra |
| **Pembagian** | Mentransfer beban atau manfaat, seperti lewat asuransi atau alih daya; artikel mencatat bahwa "transfer risiko" sering keliru nama, karena pihak asli biasanya mempertahankan tanggung jawab hukum | Asuransi, mengontrak pemasok |
| **Penahanan** | Menerima kerugian, biasanya untuk risiko kecil atau tak dapat diasuransikan | Keputusan untuk hidup dengan risiko kecil |

Artikel juga memperlakukan peluang, peristiwa tak pasti yang positif, dengan strategi paralel. Ia mencatat bahwa penilaian risiko menimbang tingkat keparahan dan probabilitas, dan bahwa data laju sering langka, terutama untuk peristiwa katastrofik. Ia mengutip kritik: Douglas Hubbard (2009) dikutip mengatakan beberapa standar tidak menunjukkan perbaikan risiko yang terukur, meskipun keyakinan atas keputusan tampak naik; riset kemudian menunjukkan manfaat finansial bergantung lebih pada seberapa sering dan dengan metode apa risiko dinilai daripada rumus yang dipakai; dan pembedaan Benoit Mandelbrot antara risiko "jinak" dan "liar," dengan meremehkan keliaran sebagai kesalahan umum. Artikel mengutip ISO 31000, "Risk management — Guidelines," dan sendiri ditandai memerlukan lebih banyak kutipan.

### Register risiko

**Register risiko** adalah catatan risiko yang teridentifikasi, dengan deskripsi, penilaian, pemilik, penanganan yang dipilih, dan status. Kutipan artikel yang dibaca untuk panduan ini tidak menyebutnya, jadi ini praktik umum. Jaga singkat, dimiliki, dan ditinjau. Risiko untuk layanan mencakup keamanan, ketersediaan, kegagalan pemasok, ketergantungan pada orang kunci, dan kepatuhan (lihat Topik 3.13 — Manajemen Keamanan Informasi, Topik 3.12 — Manajemen Kontinuitas Layanan, dan Topik 3.14 — Manajemen Pemasok).

### Kepatuhan

Artikel Wikipedia tentang kepatuhan regulasi menjelaskannya sebagai tujuan yang didambakan organisasi untuk dicapai dalam tetap menyadari dan mengikuti hukum, kebijakan, dan regulasi yang relevan, dan mencatat bahwa organisasi makin menggabungkan kendali ke dalam kerangka bersama untuk mengurangi pekerjaan ganda. Ia mengatakan definisi rencana kepatuhan yang efektif sulit dipahami, dan menyebut standar seperti ISO 37301 dan ISO 19600. Ia menyebut rezim termasuk Sarbanes–Oxley Act (2002), HIPAA, GDPR, PCI-DSS, Gramm–Leach–Bliley Act, dan lainnya. Ia mencatat kritik: riset psikologis yang dikutip dalam artikel berpendapat bahwa hadiah atau denda dapat melemahkan motivasi intrinsik dan merusak kepatuhan, pegiat privasi mempertanyakan persyaratan penyimpanan data, penegakan berbeda antaryurisdiksi, dan persyaratan yang berubah cepat sulit dilacak.

Poin praktis: kepatuhan bukan satu hal. Setiap rezim punya cakupan dan persyaratannya sendiri. Cari tahu mana yang berlaku untuk layanan mana dari fungsi hukum atau kepatuhan Anda, dan peroleh teksnya.

### GRC sebagai satu pandangan

Artikel GRC mengatakan GRC mencakup tiga segi yang terkait: tata kelola korporat, manajemen risiko perusahaan, dan kepatuhan, dan menyebut varian seperti GRC keuangan, hukum, dan operasional. Ia menisbatkan istilah itu pada makalah Scott Mitchell 2007 dan Open Compliance and Ethics Group, dan mencatat bahwa perangkat lunak untuk GRC ada sejak 2002 dan bahwa sebagian perusahaan mulai memakai perkakas AI untuk GRC pada 2025. Keuntungan pandangan gabungan adalah bahwa ketiganya terkait: tata kelola menetapkan apa yang penting, manajemen risiko menemukan apa yang mengancamnya, dan kepatuhan menunjukkan apa yang dilakukan.

### Pagar pengaman, bukan gerbang

**Gerbang** adalah pos pemeriksaan, biasanya manual, tempat pekerjaan menunggu persetujuan. **Pagar pengaman** adalah batas yang dibangun ke dalam jalur yang menjaga pekerjaan tidak keluar jalur tanpa menghentikannya. Contoh: pengujian otomatis yang harus lulus, pemeriksaan kebijakan dalam pipeline yang memblokir konfigurasi tidak aman, anggaran dengan peringatan, dan akses berbasis peran. Panduan DORA tentang persetujuan perubahan mengatakan persetujuan paling baik dicapai lewat tinjauan sejawat dan otomatisasi, bahwa persetujuan eksternal yang berat dikaitkan dengan kinerja pengiriman lebih buruk, dan bahwa menambah persetujuan sebagai tanggapan atas ketidakstabilan cenderung memperburuk keadaan (lihat Topik 3.4 — Pemampuan Perubahan). Pagar pengaman menerapkan gagasan yang sama di seluruh tata kelola: kendali ada di dalam sistem dan menghasilkan buktinya sendiri.

### Bukti sebagai hasil sampingan

Auditor memerlukan bukti bahwa kendali beroperasi. Pipeline yang mencatat siapa yang meninjau, apa yang diuji, dan apa yang di-deploy memberi bukti untuk setiap perubahan. Katalog layanan (ITIL mengejanya "service catalogue") dengan pemilik memberi bukti akuntabilitas. Postmortem memberi bukti pembelajaran. Ini jauh lebih kuat daripada dokumen triwulanan yang ditulis untuk audit. Bahas sejak awal dengan auditor apa yang akan mereka terima (lihat Topik 5.1 — Manajemen Layanan Agile).

### Lingkungan teregulasi

Artikel Wikipedia tentang pengembangan perangkat lunak agile melaporkan bahwa ranah teregulasi seperti perangkat medis, farmasi, keuangan, nuklir, otomotif, dan avionika pada mulanya dianggap tidak cocok untuk agile, dan bahwa kini ada adaptasinya, dengan kekhawatiran jaminan kualitas, keselamatan dan keamanan, ketertelusuran, serta verifikasi dan validasi (lihat Topik 1.3 — Pengembangan Perangkat Lunak Agile). Pola yang berhasil biasanya mempertahankan kendali yang diwajibkan, mengotomatisasi buktinya, dan menjadikannya bagian dari definisi selesai, alih-alih menyingkirkannya.

### Batas sumber

Artikel GRC tidak menyebut kerangka atau kritik dan dibaca untuk panduan ini dalam bentuk singkat. Artikel manajemen risiko hanya dibaca sebagian dan ditandai memerlukan kutipan. Artikel kepatuhan tidak memberi biaya dan prosedur audit. Pakai ini sebagai peta dan rujuklah sumber primer untuk rincian.

## Praktik terbaik

1. **Tuliskan hak keputusan.** Untuk tiap tim atau layanan, katakan apa yang boleh diputuskan sendiri, apa yang memerlukan konsultasi, dan apa yang memerlukan persetujuan. Terbitkan, dan tinjau bersama tim.
2. **Tetapkan arah dan batas, bukan instruksi terperinci.** Nyatakan hasil, anggaran, batas risiko, dan aturan yang tak dapat ditawar. Biarkan tim memutuskan bagaimana bekerja di dalamnya.
3. **Simpan register risiko singkat.** Untuk tiap layanan penting, daftar risiko teratas dengan pemilik, penanganan, dan tanggal tinjauan. Tinjau pada rapat berkala, dan buang risiko yang telah berlalu.
4. **Pilih penanganan dengan sengaja.** Untuk tiap risiko, putuskan menghindari, mengurangi, membagi, atau menahannya, dan catat siapa yang membuat keputusan. Ingat bahwa membagi risiko tidak menghilangkan akuntabilitas Anda sendiri.
5. **Nilai sering, dengan metode sederhana.** Artikel melaporkan bahwa manfaat bergantung lebih pada frekuensi dan metode daripada rumus. Tinjau risiko secara berkala memakai metode yang dipahami tim.
6. **Ketahui aturan mana yang berlaku untuk layanan mana.** Minta fungsi hukum atau kepatuhan Anda daftar rezim yang berlaku, dengan teks sumber. Catat terhadap tiap layanan.
7. **Bangun pagar pengaman ke dalam pipeline.** Otomatisasi pengujian, pemindaian keamanan, pemeriksaan kebijakan, dan batas akses agar pekerjaan tidak aman dihentikan lebih awal. Perlakukan kendali sebagai kode dengan pemilik.
8. **Tangkap bukti sebagai hasil sampingan.** Pastikan perkakas mencatat tinjauan, persetujuan, hasil pengujian, deployment, dan insiden. Sepakati dengan auditor apa yang akan mereka terima.
9. **Petakan kendali sekali.** Jika Anda harus memenuhi beberapa kerangka, jelaskan kendali Anda sekali dan petakan ke tiap persyaratan, seperti dikatakan artikel kepatuhan bahwa organisasi makin melakukannya.
10. **Pakai jalur berbasis risiko untuk perubahan.** Buat perubahan berisiko rendah cepat, tandai yang berisiko tinggi untuk ditinjau, dan pertahankan badan pusat untuk koordinasi dan pertukaran (lihat Topik 3.4 — Pemampuan Perubahan).
11. **Sertakan tata kelola dalam retrospektif.** Tanyakan secara berkala kendali mana yang membantu dan mana yang hanya menambah penundaan. Singkirkan atau rancang ulang yang terakhir, bersama pemilik dan auditor.
12. **Rencanakan perubahan aturan.** Tunjuk seseorang untuk mengikuti perubahan hukum, standar, dan kontrak, dan melaporkan apa yang penting bagi layanan Anda.

## Pertanyaan untuk dibahas bersama tim Anda

**Persetujuan mana yang perlu kita dapatkan, dan apa yang dilindungi masing-masing?**

Daftar persetujuan pada perubahan atau pembelian tipikal. Untuk masing-masing, tanyakan risiko apa yang ditanganinya dan apakah pernah menolak apa pun. Persetujuan yang tak melindungi apa pun adalah kandidat untuk dihapus. Persetujuan yang melindungi dari risiko nyata mungkin dapat dipenuhi dengan cara lebih ringan. Fasilitator dapat menanyakan bukti apa yang akan diterima penyetuju sebagai ganti tanda tangan.

**Apa lima risiko teratas untuk layanan utama kita, dan siapa pemilik masing-masing?**

Minta orang mendaftar risiko secara mandiri, lalu bandingkan. Perbedaan menunjukkan apa yang dilihat tim. Periksa bahwa masing-masing punya pemilik dan penanganan. Bahas mana yang diterima secara default, bukan lewat keputusan.

**Aturan mana yang berlaku bagi kita, dan di mana teksnya?**

Minta daftar hukum, standar, dan kontrak yang berlaku. Jika tak ada yang bisa mengatakannya, cari tahu siapa yang bisa. Periksa bahwa rekayasa tahu apa yang diwajibkan masing-masing darinya. Sepakati cara menjaga daftar tetap mutakhir.

**Bukti apa yang sudah dihasilkan perkakas kita yang dapat dipakai auditor?**

Daftar catatan: tinjauan, hasil pengujian, riwayat deployment, tinjauan insiden. Tanyakan apa yang baru-baru ini diminta auditor dan apakah perkakas dapat menyediakannya. Identifikasi satu catatan untuk diotomatisasi. Undang auditor untuk melihat.

**Di mana kita menambah kendali setelah masalah, dan apakah itu membantu?**

Minta contoh. Bandingkan dengan peringatan DORA bahwa menambah persetujuan sebagai tanggapan atas ketidakstabilan cenderung memperburuk keadaan. Tanyakan apakah tanggapan lain, seperti pengujian lebih baik atau perubahan lebih kecil, akan berhasil. Catat satu pelajaran.

**Seperti apa pagar pengaman untuk sesuatu yang kini kita beri gerbang?**

Pilih satu gerbang. Tanyakan apa yang dimaksudkan gerbang itu untuk dicegah dan bagaimana hal itu dapat dicegah secara otomatis. Misalnya, pemeriksaan kebijakan yang memblokir konfigurasi berisiko. Sepakati uji coba dengan pemilik gerbang.

## Dalam praktik: contoh ITIL agile

Dana pensiun nasional menjalankan kalkulator tunjangan daring dan layanan pembayaran. Ia teregulasi, diaudit setiap tahun, dan tunduk pada aturan ketat tentang penanganan data. Kantor tata kelola dana mensyaratkan setiap perubahan produksi ditinjau oleh dewan perubahan yang bertemu mingguan, dan setiap proyek menyelesaikan penilaian risiko 30 halaman sebelum rilis. Pengembang merilis jarang dan dalam batch besar. Rilis baru-baru ini menyebabkan perhitungan salah bagi sekelompok kecil anggota, dan tanggapan dewan adalah menambah persetujuan lain.

Kepala risiko dan kepala rekayasa memutuskan mencoba cara lain. Mereka mulai dengan daftar rezim yang berlaku bagi kalkulator dan layanan pembayaran, diperoleh dari tim hukum dana dengan teks masing-masing, dan memetakan kendali dana kepadanya sekali. Peran dewan perubahan berubah: perubahan rutin yang teruji baik dengan pengujian otomatis dan tinjauan sejawat berjalan tanpanya, perubahan berisiko tinggi (yang menyentuh aturan perhitungan atau pembayaran) ditandai oleh daftar singkat sinyal dan ditinjau spesialis risiko dalam dua hari, dan dewan bertemu untuk mengoordinasikan dan menangani pengecualian. Pipeline mencatat siapa yang meninjau dan pengujian apa yang lulus, dan pemeriksaan kebijakan memblokir rilis yang gagal pada rangkaian pengujian perhitungan. Penilaian risiko diganti dengan satu entri register satu halaman per layanan, ditinjau setiap bulan.

Auditor internal melihat catatan pipeline dan register, dan meminta sampel tinjauan untuk menguji apakah tinjauan sejawat itu asli; kepala rekayasa mengatur pengambilan sampel triwulanan oleh engineer senior. Setelah enam bulan, rilis mingguan, laju kegagalan perubahan lebih rendah, dan audit menilai bukti memadai. Beberapa kesulitan tersisa. Dua tim menerapkan sinyal risiko tinggi secara tidak konsisten, panduan satu regulator mensyaratkan persetujuan eksplisit untuk perubahan perhitungan tertentu yang tidak ditangkap jalur baru, dan entri register ditulis dengan kurang cermat di beberapa tim. Kepala risiko menambahkan langkah persetujuan untuk perubahan itu, menerbitkan contoh sinyal, dan meminta tim membawa satu entri register ke tinjauan bulanan.

## Empat perspektif

### Tim produk dan pengiriman

Tim pengiriman melaksanakan kendali lewat pipeline dan praktik mereka. Pelajari aturan mana yang berlaku bagi layanan Anda dan mengapa, tawarkan cara menghasilkan bukti secara otomatis, dan bawa risiko ke perencanaan. Perlakukan pagar pengaman sebagai bagian dari produk.

### Tim layanan dan operasi

Tim operasi memiliki banyak kendali: akses, pemantauan, kontinuitas, dan catatan. Jaga bukti dalam perkakas, beri tahu tata kelola apa yang berfungsi dalam praktik, dan bantu merancang ulang gerbang yang hanya menambah penundaan. Ikut serta dalam tinjauan risiko dengan data insiden nyata.

### Kepemimpinan dan tata kelola

Pemimpin menetapkan arah, batas, dan akuntabilitas, dan memutuskan risiko apa yang diterima. Minta pandangan risiko dalam bahasa sederhana dan bukti, bukan volume dokumen. Bersedialah mengganti gerbang dengan pagar pengaman ketika tujuannya dapat dipenuhi. Jaga peran dewan berfokus pada koordinasi dan pertukaran nyata.

### Pelanggan dan pengguna

Pelanggan dan pengguna mengandalkan organisasi untuk menangani data dan uang mereka dengan benar. Tanyakan kepada penyedia standar dan aturan mana yang mereka ikuti dan bagaimana mereka menunjukkannya. Harapkan informasi jujur setelah kegagalan. Jika Anda punya persyaratan khusus, seperti aturan regulator, beri tahu penyedia sejak dini.

## Pola kegagalan umum

- **Tata kelola sebagai gerbang terakhir.** Tinjauan tiba di akhir dan memperlambat segalanya. Sebaliknya, bangun pagar pengaman ke dalam pekerjaan dan tinjau menurut risiko.
- **Dokumen sebagai bukti.** Laporan ditulis untuk auditor. Sebaliknya, hasilkan bukti dari perkakas yang dipakai dalam pekerjaan.
- **Satu jalur untuk semua perubahan.** Perubahan rutin menunggu bersama yang berisiko. Sebaliknya, klasifikasikan menurut risiko.
- **Register risiko yang tak dibaca siapa pun.** Ia menjadi daftar panjang. Sebaliknya, jaga singkat, dimiliki, dan ditinjau.
- **Memperlakukan transfer risiko sebagai penghapusan risiko.** Asuransi atau alih daya diasumsikan mengakhiri akuntabilitas. Sebaliknya, ingat bahwa pihak asli biasanya mempertahankan tanggung jawab.
- **Aturan tak dikenal.** Tim tidak tahu hukum dan standar mana yang berlaku. Sebaliknya, dapatkan daftar dan teks dari hukum atau kepatuhan.
- **Kendali ditambah setelah setiap insiden.** Proses tumbuh dan kecepatan turun. Sebaliknya, cari penyebab dan perbaiki dengan pengujian, perubahan lebih kecil, atau pemulihan lebih cepat.
- **Kepatuhan sebagai hukuman.** Denda dan ketakutan mendominasi. Sebaliknya, jelaskan tujuan aturan dan jadikan jalur aman sebagai jalur mudah.

## Model kematangan

| Dimensi | Memulai | Mengembangkan | Menstandarkan | Mengelola | Mengorkestrasi |
|---|---|---|---|---|---|
| Tata kelola dan hak keputusan | Keputusan mengikuti kebiasaan dan hierarki | Beberapa tim punya batas tertulis | Hak keputusan, batas, dan pemilik dituliskan dan dibagikan | Efektivitas tata kelola ditinjau terhadap hasil | Tata kelola diselaraskan lintas tim, pemasok, dan mitra |
| Manajemen risiko | Risiko dibahas secara informal | Beberapa layanan punya daftar risiko | Register risiko singkat yang dimiliki dengan penanganan ditinjau secara berkala | Ukuran dan peristiwa risiko memberi masukan pada penilaian dan penanganan | Pandangan risiko dibagikan dan dikonsolidasikan di seluruh organisasi |
| Kepatuhan dan bukti | Bukti dirakit untuk audit | Sebagian bukti dihasilkan perkakas | Aturan yang berlaku didaftar; kendali dipetakan sekali; bukti datang dari perkakas | Operasi kendali dan kualitas bukti diukur | Bukti dibagikan dengan auditor dan mitra secara terus-menerus |
| Pagar pengaman dan jalur perubahan | Kendali adalah gerbang manual | Ada beberapa pemeriksaan otomatis | Jalur berbasis risiko dan pagar pengaman pipeline adalah standar | Efektivitas pagar pengaman dan pemblokiran palsu dilacak dan disetel | Pagar pengaman dibagikan dan diperbaiki lintas tim |

## Daftar periksa

- [ ] Hak keputusan dan batas dituliskan untuk tiap tim atau layanan.
- [ ] Setiap layanan penting punya register risiko singkat dengan pemilik, penanganan, dan tanggal tinjauan.
- [ ] Kami punya daftar hukum, standar, dan kontrak yang berlaku untuk tiap layanan, dengan teks sumber.
- [ ] Kendali kami dijelaskan sekali dan dipetakan ke tiap persyaratan.
- [ ] Pipeline mencatat tinjauan, pengujian, dan deployment sebagai bukti.
- [ ] Auditor telah mengatakan bukti apa yang mereka terima sebagai ganti tanda tangan.
- [ ] Perubahan rutin dan berisiko mengikuti jalur berbeda dengan kriteria yang jelas.
- [ ] Setiap persetujuan punya tujuan yang dinyatakan, dan persetujuan yang tak pernah menolak ditinjau.
- [ ] Kendali yang ditambah setelah insiden ditinjau dampaknya.
- [ ] Seseorang mengikuti perubahan aturan yang berlaku dan melaporkannya.

## Prompt AI

**Tujuan: mengubah rantai persetujuan menjadi opsi pagar pengaman.**

```text
Here is an approval chain we use for [type of change or purchase]: [list each approval, who gives it, what they check, how long it takes, and how many times it has refused something in the last year (use real figures or write "unknown")].
Rules we know require some of it, with source text: [paste, or write "none known"].

For each approval, state the purpose as best you can from the text, suggest what evidence or automated check could meet the same purpose, and say what risk would remain. Do not remove anything required by the pasted rules. Do not claim any law or standard requires something unless I pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Tujuan: menyusun entri register risiko.**

```text
Help me write a risk register entry for [service].

The risk, in my words: [describe].
What could cause it and what could result: [describe].
What controls exist: [list].
What I know about likelihood and impact (facts only): [paste, or write "unknown"].

Produce an entry with: a clear statement ("If … then … resulting in …"), causes, consequences, existing controls, a proposed treatment option (avoid, reduce, share, or retain) with reasoning, a suggested owner role, and review date placeholder. Do not invent likelihoods or numbers. Mark assumptions. Ask clarifying questions first, and list what you are unsure of.
```

**Tujuan: mendaftar bukti yang sudah dihasilkan perkakas Anda untuk sebuah kendali.**

```text
An auditor will ask us about this control: [describe the control and how it is described in the requirement; paste the text].

Our tools and records for the activity: [list version control, pipeline, ticketing, monitoring, and what each records].
How the activity works: [describe].

Make a table of what evidence each tool produces for the control, where it is stored, who can alter it, and the gaps. Suggest three lightweight ways to close the gaps. Do not claim the requirement demands anything beyond the pasted text. Ask clarifying questions first, and list what you are unsure of.
```

**Tujuan: menyiapkan percakapan tata kelola antara tim pengiriman dan audit.**

```text
Plan a 60-minute conversation between [number] delivery team members and [number] audit or governance colleagues about how an agile team shows control.

Concerns from audit, in their words: [paste].
Concerns from teams, in their words: [paste].
Evidence the teams produce today: [list].

Provide a timed agenda, questions for each side, a template to record what evidence is acceptable for each control, and a closing step that records actions with owners and dates. Keep it free of any particular tool. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## Keterampilan AI

- [risk-register](../../../../skills/risk-register/SKILL.md): gunakan untuk mencatat dan meninjau risiko, penanganan, dan pemilik.
- [risks-actions-issues-decisions](../../../../skills/risks-actions-issues-decisions/SKILL.md): gunakan untuk menyimpan log ringan risiko, tindakan, isu, dan keputusan.
- [key-risk-indicators](../../../../skills/key-risk-indicators/SKILL.md): gunakan untuk memilih ukuran peringatan dini bagi risiko.
- [legal-compliance-audit](../../../../skills/legal-compliance-audit/SKILL.md): gunakan untuk menyiapkan audit dan mengorganisasi bukti.
- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): gunakan untuk membuat hak keputusan dan akuntabilitas eksplisit.

## Sumber utama

- **Governance, risk management, and compliance** (Wikipedia): tinjauan singkat GRC, komponen, dan sejarahnya.
- **Risk management** (Wikipedia): definisi, opsi penanganan, dan catatan tentang penilaian risiko.
- **Regulatory compliance** (Wikipedia): definisi, rezim yang disebut, dan kritik.
- **Streamlining change approval** (DORA, dora.dev): panduan berbasis riset tentang mengganti persetujuan berat dengan tinjauan sejawat dan otomatisasi.

## Referensi

1. Governance, risk management, and compliance — Wikipedia — https://en.wikipedia.org/wiki/Governance,_risk_management,_and_compliance
2. Risk management — Wikipedia — https://en.wikipedia.org/wiki/Risk_management
3. Regulatory compliance — Wikipedia — https://en.wikipedia.org/wiki/Regulatory_compliance
4. Streamlining change approval — DORA, dora.dev — https://dora.dev/capabilities/streamlining-change-approval/
5. COBIT — Wikipedia — https://en.wikipedia.org/wiki/COBIT
6. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
7. ISO 31000 — Wikipedia — https://en.wikipedia.org/wiki/ISO_31000
8. Sarbanes–Oxley Act — Wikipedia — https://en.wikipedia.org/wiki/Sarbanes%E2%80%93Oxley_Act
9. Internal control — Wikipedia — https://en.wikipedia.org/wiki/Internal_control
