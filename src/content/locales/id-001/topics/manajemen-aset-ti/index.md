# Manajemen Aset TI

**Manajemen aset TI melacak perangkat keras, perangkat lunak, dan sumber daya terkait yang dimiliki atau dibayar organisasi, dari pembelian sampai pembuangan, agar keputusan tentang biaya, risiko, dan dukungan didasarkan pada fakta dan bukan tebakan.**

## Mengapa ini penting

Tanyakan kepada kebanyakan organisasi berapa banyak laptop, server, akun cloud, dan lisensi perangkat lunak yang mereka punya, dan jawaban pertama adalah tebakan. Jawaban kedua, setelah pencarian, sering berbeda. Celah itu punya harga. Lisensi dibeli tetapi tak dipakai siapa pun, atau dipakai tanpa dibeli. Perangkat keras lama tetap di jaringan tanpa tambalan. Staf yang pergi mempertahankan akses ke sistem yang tak diingat siapa pun untuk dicabut. Service desk tidak dapat mendukung peralatan yang tak diketahuinya ada.

Manajemen aset TI (ITAM) adalah praktik menutup celah itu. Ia terkait erat dengan manajemen layanan: layanan berjalan di atas aset, insiden dan perubahan menyentuh aset, dan biaya layanan sebagian besar adalah biaya asetnya. Bagi tim agile, praktik ini punya liku khusus. Aset kini mencakup sumber daya cloud yang dibuat skrip dalam hitungan detik dan dihancurkan beberapa menit kemudian, citra kontainer, pustaka sumber terbuka, dan langganan yang dibeli dengan kartu. Model lama berupa spreadsheet peralatan yang dibeli tidak menangkapnya.

Artikel Wikipedia bahasa Inggris berjudul "IT asset management" saat ini dialihkan ke artikelnya tentang manajemen pusat data, tempat ITAM muncul sebagai satu bagian. Bagian itu menggambarkan ITAM sebagai praktik bisnis yang menggabungkan fungsi keuangan, kontraktual, dan inventaris untuk mendukung manajemen siklus hidup dan keputusan TI strategis, dan singkat. Topik ini memakainya untuk definisi, menambahkan rincian dari artikel tentang manajemen aset perangkat lunak dan basis data manajemen konfigurasi, dan menempatkan praktik dalam konteks agile. Di tempat ia melampaui sumber, ia mengatakannya.

## Konsep inti

### Apa itu

Menurut bagian Wikipedia tentang manajemen aset pusat data, mengutip Gartner, ITAM adalah seperangkat praktik bisnis yang menggabungkan fungsi keuangan, kontraktual, dan inventaris untuk mendukung manajemen siklus hidup dan keputusan TI strategis. Aset mencakup perangkat lunak dan perangkat keras di lingkungan bisnis. Praktik ini juga disebut manajemen inventaris. Artikel mencatat bahwa praktik ini memakai penemuan otomatis agar inventaris dapat dibandingkan dengan hak lisensi, dan bahwa manajemen penuh memerlukan repositori beberapa jenis informasi, terintegrasi dengan sistem rantai pasok, help desk, pengadaan, sumber daya manusia, dan ITSM.

### Apa yang dihitung sebagai aset

Daftar kerja yang berguna untuk organisasi layanan:

| Jenis aset | Contoh | Dibahas di |
|---|---|---|
| **Perangkat keras** | Laptop, server, perangkat jaringan, ponsel, penyimpanan | Topik 4.3 — Manajemen Aset Perangkat Keras |
| **Perangkat lunak** | Aplikasi berlisensi, sistem operasi, komponen sumber terbuka, langganan | Topik 4.2 — Manajemen Aset Perangkat Lunak |
| **Sumber daya cloud dan layanan** | Mesin virtual, kontainer, bucket penyimpanan, akun SaaS | Topik 4.2 — Manajemen Aset Perangkat Lunak dan Topik 4.5 — Manajemen Keuangan TI dan FinOps |
| **Data dan informasi** | Kumpulan data, catatan, backup | Topik 3.13 — Manajemen Keamanan Informasi |
| **Kontrak dan hak** | Lisensi, perjanjian dukungan, garansi | Topik 4.2 — Manajemen Aset Perangkat Lunak dan Topik 3.14 — Manajemen Pemasok |
| **Orang dan keterampilan** | Staf dan kapabilitas (biasanya tidak dalam register aset, tetapi bagian dari layanan) | Topik 2.5 — Empat Dimensi Manajemen Layanan |

Tabel ini adalah daftar kerja panduan ini, bukan klasifikasi dari sumber.

### Siklus hidup

Bagian Wikipedia menjelaskan manajemen aset perangkat keras sebagai mencakup komponen komputer dan jaringan fisik dari akuisisi sampai pembuangan, dengan praktik yang didaftar berupa permintaan dan persetujuan, pengadaan, manajemen siklus hidup, penempatan ulang, dan pembuangan, dan mengatakan bahwa menangkap informasi keuangan tentang siklus hidup perangkat keras adalah komponen kunci. Ia tidak memberi model tahapan formal. Urutan praktis umum, yang dipakai luas dan ditawarkan di sini sebagai demikian, adalah:

1. **Rencanakan dan minta:** putuskan apa yang dibutuhkan dan dapatkan persetujuan.
2. **Peroleh:** beli atau bangun, dan catat pembelian.
3. **Deploy:** masukkan ke layanan dan kaitkan dengan pengguna atau layanan.
4. **Operasikan dan pelihara:** tambal, dukung, pindahkan, dan lacak perubahan.
5. **Pensiunkan dan buang:** keluarkan dari layanan, hapus data, dan buang dengan aman.

Pada tiap tahap, tanyakan siapa yang bertanggung jawab dan catatan apa yang disimpan.

### Inventaris, penemuan, dan catatan

Register aset hanya berguna jika benar. Artikel mencatat bahwa penemuan otomatis mendukung perbandingan inventaris dengan hak. Perkakas penemuan memindai jaringan dan akun cloud untuk menemukan apa yang ada, dan register mencatat apa yang bermaksud dimiliki dan dibayar organisasi. Perbedaan antara keduanya adalah temuan: perangkat tak dikenal, lisensi tak terpakai, langganan tak disetujui.

### Kaitan dengan ITSM dan CMDB

Bagian Wikipedia mengatakan ITAM terintegrasi dengan ITSM tetapi tidak memetakannya ke proses ITIL secara rinci. Deskripsi ITIL biasanya membedakan manajemen aset, yang menyangkut kepemilikan, biaya, dan kontrak, dari manajemen konfigurasi, yang menyangkut hubungan antarkomponen. **Basis data manajemen konfigurasi (CMDB)**, menurut Wikipedia, adalah istilah ITIL untuk basis data yang menyimpan informasi tentang aset perangkat keras dan perangkat lunak, disebut item konfigurasi, dan hubungan di antaranya (lihat Topik 4.4 — Manajemen Konfigurasi). Catatan aset dan catatan konfigurasi tumpang tindih; banyak organisasi memfederasi datanya agar tiap sumber mempertahankan kendali atas miliknya sendiri.

### Standar

Bagian Wikipedia menyebut keluarga ISO/IEC 19770 sebagai standar untuk manajemen aset perangkat lunak tanpa menjelaskan bagiannya. Artikel tentang manajemen aset perangkat lunak mendaftar bagiannya: 19770-1:2017 tentang persyaratan sistem manajemen aset TI, kerangka proses yang dapat diimplementasikan dalam tingkatan bertahap; 19770-2:2015 tentang tag identifikasi perangkat lunak; 19770-3:2016 tentang manajemen hak; 19770-4:2017 tentang pengukuran pemanfaatan sumber daya; dan 19770-5:2015 tentang tinjauan dan kosakata. Periksa standarnya sendiri untuk redaksi persis dan edisi terkini.

### Manfaat dan batasan

Bagian Wikipedia tidak mendaftar manfaat dan kritik, dan tidak menyebut perkakas. Manfaat praktis banyak diklaim, seperti biaya lisensi lebih rendah, risiko keamanan berkurang, dan dukungan lebih baik, tetapi panduan ini tidak punya bukti terukur untuk itu dalam sumber yang dibaca. Perlakukan klaim penghematan dengan hati-hati, minta bukti dari orang yang membuatnya, dan ukur milik Anda sendiri.

### ITAM dalam konteks agile dan cloud

Praktik dari dekade lalu mengasumsikan bahwa aset dibeli, dikirim, dan dipasang oleh TI. Hari ini:

- **Tim membuat sumber daya sendiri,** di konsol cloud atau lewat kode. Register harus mengetahuinya dari akun cloud, bukan dari pesanan pembelian.
- **Aset berumur pendek.** Kontainer mungkin hidup satu jam. Lacak layanan dan akun, bukan setiap instans.
- **Langganan menggantikan lisensi.** Perangkat lunak dibayar bulanan dengan kartu seseorang, dan kepemilikan tidak jelas.
- **Komponen sumber terbuka** masuk lewat kode, di luar sistem pembelian (lihat Topik 4.2 — Manajemen Aset Perangkat Lunak).

Perubahan ini mendorong ITAM ke arah otomatisasi, pemberian tag, dan akuntabilitas bersama antara TI dan tim yang memakai aset.

## Praktik terbaik

1. **Mulai dengan yang paling penting.** Pilih aset dengan biaya atau risiko tertinggi lebih dulu: lisensi mahal, server yang menghadap internet, perangkat dengan data sensitif. Register lengkap bisa menyusul.
2. **Tentukan apa itu aset untuk tujuan Anda.** Tulis daftar singkat jenis aset yang akan Anda lacak dan fakta yang Anda butuhkan untuk masing-masing: pemilik, lokasi atau akun, biaya, kontrak, dan status. Hindari kolom yang tak dipakai siapa pun.
3. **Tunjuk pemilik untuk setiap aset.** Seseorang atau tim harus bertanggung jawab atas tiap aset atau kelompok aset. Aset tanpa pemilik adalah tempat pemborosan dan risiko berkumpul.
4. **Pakai penemuan untuk mencari apa yang ada.** Pindai jaringan, akun cloud, dan titik akhir, dan bandingkan dengan register. Perlakukan perbedaan sebagai butir untuk diselidiki.
5. **Beri tag pada sumber daya cloud.** Wajibkan tag untuk pemilik, layanan, dan lingkungan pada sumber daya yang dibuat di akun cloud, dan laporkan yang tanpa tag. Tag memungkinkan register mengikuti aset yang bergerak cepat.
6. **Hubungkan pembelian dengan register.** Pastikan pembelian baru, termasuk langganan dan pembelian dengan kartu, membuat atau memperbarui catatan. Tinjau pengeluaran untuk butir yang tidak.
7. **Kaitkan aset dengan layanan.** Catat layanan mana yang didukung tiap aset. Ini memungkinkan Anda menghitung dampak insiden, perubahan, atau pensiun (lihat Topik 4.4 — Manajemen Konfigurasi).
8. **Lacak sisi keuangan.** Catat biaya, syarat kontrak, tanggal pembaruan, dan penyusutan bila relevan. Menangkap informasi keuangan sepanjang siklus hidup adalah komponen kunci manajemen perangkat keras, seperti dikatakan bagian Wikipedia.
9. **Kelola akhir masa pakai.** Rencanakan pensiun sejak awal: penghapusan data, pengembalian, dan pembuangan. Cabut akses dan lisensi pada saat yang sama.
10. **Tinjau secara berkala.** Setidaknya dua kali setahun, periksa register terhadap kenyataan untuk kelas aset terpenting. Perbaiki proses yang menyebabkan perbedaan apa pun.
11. **Bagikan datanya.** Sediakan data aset bagi service desk, keamanan, keuangan, dan tim, dalam bentuk yang dapat mereka pakai. Data yang hanya dilihat manajer aset bernilai kecil.
12. **Ukur praktiknya.** Lacak seberapa lengkap dan akurat register, berapa lama menemukan aset, dan biaya butir yang tak terpakai. Pakai untuk memperbaiki, bukan memeringkat orang.

## Pertanyaan untuk dibahas bersama tim Anda

**Jika seseorang bertanya berapa banyak dari tiap jenis aset yang kita punya, seberapa yakin kita?**

Minta tiap orang memperkirakan jumlah laptop, server, akun cloud, dan langganan, lalu bandingkan dengan register. Perbedaan menunjukkan seberapa banyak yang tidak diketahui. Fasilitator dapat menanyakan kategori mana yang paling kurang dipercaya orang. Pilih satu untuk direkonsiliasi lebih dulu.

**Siapa yang memiliki tiap aset kita, dan apa yang terjadi ketika orang itu pergi?**

Ambil sampel aset dan lihat kolom pemilik. Hitung yang tanpa pemilik atau pemilik yang sudah pergi. Tanyakan proses apa yang seharusnya memperbarui pemilik ketika orang berpindah. Sepakati satu pemicu, seperti proses karyawan keluar.

**Apa yang kita bayar yang tak dipakai siapa pun?**

Lihat lisensi, langganan, dan sumber daya cloud, dan tanyakan mana yang tak punya pemakaian baru-baru ini. Bersiaplah untuk kejutan. Tanyakan siapa yang dapat mengotorisasi pembatalan. Pilih tiga terbesar dan periksa masing-masing.

**Bagaimana kita mengetahui sumber daya cloud atau langganan baru?**

Telusuri yang terakhir. Sering kali jawabannya "dari tagihan" atau "ketika rusak." Bahas bagaimana pengadaan, pemberian tag, dan penemuan dapat menangkapnya lebih awal. Sepakati satu kendali, seperti tag wajib atau laporan bulanan butir tanpa tag.

**Apa yang terjadi pada laptop atau server di akhir masa pakainya?**

Telusuri langkahnya: siapa yang memutuskan, bagaimana data dihapus, apa kata catatan. Celah sering muncul di sekitar penghapusan data dan catatan. Minta bukti bahwa pembuangan terbaru dilakukan dengan benar. Rencanakan daftar periksa singkat.

**Data aset apa yang dibutuhkan tim lain yang tidak kita berikan?**

Tanyakan kepada service desk, keamanan, dan keuangan apa yang ingin mereka lihat. Permintaan lazim mencakup pemilik, layanan, dan biaya. Bahas cara membagikannya dan siapa yang menjaganya mutakhir. Pilih satu laporan untuk dihasilkan.

## Dalam praktik: contoh ITIL agile

Badan statistik nasional memiliki 1.800 staf dan menjalankan pemrosesan surveinya di campuran pusat data lokal dan akun cloud publik. Tim keuangan memperhatikan bahwa tagihan cloud tumbuh sepertiga dalam setahun, dan audit keamanan menemukan tiga server di pusat data yang tak dapat diidentifikasi siapa pun. Fungsi ITAM adalah dua orang dengan spreadsheet.

Kepala TI menetapkan tujuan sederhana: ketahui aset utama, siapa pemiliknya, dan berapa biayanya, dimulai dari cloud. Aturan baru mewajibkan tag pemilik, layanan, dan lingkungan pada setiap sumber daya cloud. Laporan mingguan mendaftar sumber daya tanpa tag, dan tim punya dua minggu untuk mengklaim atau menyingkirkannya. Di pusat data, dua staf ITAM menjalankan pemindaian penemuan dan membandingkannya dengan spreadsheet, menemukan 40 perangkat yang tidak ada dalam daftar. Mereka menelusuri pemilik sebagian besar. Pengadaan menyepakati bahwa langganan perangkat lunak baru apa pun dilaporkan ke ITAM dalam seminggu.

Setelah satu kuartal, porsi sumber daya cloud tanpa tag turun dari sekitar sepertiga menjadi segelintir, dan keuangan dapat mengaitkan tagihan cloud dengan layanan. Beberapa sumber daya yang tak terpakai dimatikan, dan dua server dipensiunkan. Masalah tersisa. Sekelompok peneliti membeli perkakas dengan kartu departemen dan tidak melaporkannya, dan laporan mingguan hanya dibaca beberapa tim. Staf ITAM berbicara dengan kelompok peneliti tentang formulir pendaftaran sederhana, dan meminta kepala keuangan menambahkan langganan ke tinjauan bulanan. Mereka juga memutuskan bahwa register akan mencakup layanan cloud menurut akun dan layanan, bukan setiap instans berumur pendek.

## Empat perspektif

### Tim produk dan pengiriman

Tim pengiriman membuat banyak aset. Beri tag pada apa yang Anda buat, daftarkan langganan dan pustaka yang Anda tambahkan, dan pensiunkan apa yang tak lagi Anda butuhkan. Perlakukan register sebagai layanan yang Anda sumbangkan dan nikmati manfaatnya.

### Tim layanan dan operasi

Tim operasi bergantung pada register untuk dukungan, penambalan, dan respons insiden. Jaga akurat dengan memperbaruinya saat deployment, perubahan, dan pensiun. Pakai penemuan untuk menemukan apa yang hilang, dan laporkan perbedaan kepada pemilik.

### Kepemimpinan dan tata kelola

Pemimpin dan keuangan memakai data aset untuk keputusan tentang pengeluaran, risiko, dan pembaruan. Minta beberapa angka andal, seperti pengeluaran per layanan dan porsi aset yang punya pemilik, alih-alih register sempurna. Dukung kendali kecil, seperti tag dan pelaporan pembelian, yang menjaganya tetap benar.

### Pelanggan dan pengguna

Pengguna diuntungkan ketika peralatan dan akses mereka dikelola dengan baik: perangkat yang berfungsi, penggantian cepat, dan tanpa biaya kejutan. Beri tahu service desk tentang peralatan yang Anda tambahkan atau tak lagi butuhkan, dan harapkan diminta mengonfirmasi apa yang Anda pegang.

## Pola kegagalan umum

- **Register yang tak dipercaya siapa pun.** Ia usang dan diabaikan. Sebaliknya, persempit cakupan, pakai penemuan, dan perbarui pada setiap peristiwa siklus hidup.
- **Tanpa pemilik.** Aset tak dimiliki siapa pun. Sebaliknya, wajibkan pemilik untuk setiap aset atau kelompok.
- **Melacak segalanya.** Upayanya mengubur nilai. Sebaliknya, mulai dengan yang mahal atau berisiko, dan tumbuh.
- **Mengabaikan cloud dan langganan.** Register hanya mencakup perangkat keras yang dibeli. Sebaliknya, beri tag pada sumber daya cloud dan tangkap langganan.
- **Pembelian di luar proses.** Pembelian dengan kartu melewati register. Sebaliknya, hubungkan pengadaan dan laporan pengeluaran dengan ITAM.
- **Tanpa proses akhir masa pakai.** Perangkat lama menyimpan data dan akses. Sebaliknya, rencanakan pensiun, penghapusan, dan pembuangan.
- **Data disembunyikan dari orang lain.** Hanya ITAM yang melihat register. Sebaliknya, bagikan dengan service desk, keamanan, dan keuangan.
- **Menghitung tanpa bertindak.** Laporan menunjukkan aset tak terpakai dan tak ada yang dibatalkan. Sebaliknya, tunjuk pemilik untuk bertindak atas temuan.

## Model kematangan

| Dimensi | Memulai | Mengembangkan | Menstandarkan | Mengelola | Mengorkestrasi |
|---|---|---|---|---|---|
| Inventaris dan penemuan | Aset didaftar di spreadsheet atau tidak sama sekali | Beberapa kelas aset diinventarisasi | Penemuan dan register mencakup kelas aset utama dan direkonsiliasi secara berkala | Kelengkapan dan akurasi diukur dan celah diperbaiki | Inventaris mencakup lokal, cloud, dan pemasok dengan data bersama |
| Kepemilikan dan akuntabilitas | Sedikit aset punya pemilik | Pemilik ditunjuk untuk beberapa aset | Setiap aset atau kelompok punya pemilik, dijaga mutakhir oleh proses | Celah kepemilikan dilacak dan diselesaikan | Pemilik lintas tim dan pemasok bekerja menurut aturan bersama |
| Siklus hidup dan kendali keuangan | Pembelian dan pembuangan informal | Beberapa aset punya data biaya dan kontrak | Langkah siklus hidup dan data keuangan dicatat untuk aset utama | Biaya, pembaruan, dan pemanfaatan ditinjau dan ditindaklanjuti | Data keuangan dan siklus hidup dikaitkan dengan layanan dan dibagikan dengan keuangan |
| Pemakaian data | Data dipakai sedikit orang | Service desk kadang memakai register | Desk, keamanan, dan keuangan rutin memakai data aset | Kualitas dan pemakaian data diukur dan diperbaiki | Data memberi masukan pada keputusan di seluruh organisasi dan dengan mitra |

## Daftar periksa

- [ ] Kami punya daftar singkat jenis aset dan fakta yang kami catat untuk masing-masing.
- [ ] Setiap aset atau kelompok yang dilacak punya pemilik yang ditunjuk.
- [ ] Hasil penemuan dibandingkan dengan register menurut jadwal berkala.
- [ ] Sumber daya cloud memuat tag pemilik, layanan, dan lingkungan, dan yang tanpa tag dilaporkan.
- [ ] Pembelian baru, termasuk langganan, membuat atau memperbarui catatan.
- [ ] Aset dikaitkan dengan layanan yang didukungnya.
- [ ] Data biaya, kontrak, dan pembaruan dicatat untuk aset utama.
- [ ] Pensiun mencakup penghapusan data, pencabutan akses, dan catatan.
- [ ] Register direkonsiliasi dengan kenyataan setidaknya dua kali setahun untuk kelas aset utama.
- [ ] Service desk, keamanan, dan keuangan dapat melihat data yang mereka butuhkan.

## Prompt AI

**Tujuan: merekonsiliasi hasil penemuan dengan register.**

```text
I have two lists of assets: what our register says we have, and what a discovery scan found. 

Register: [paste a table with asset name or ID, type, owner, and status; remove personal data].
Discovery: [paste a table with name or ID, type, and any identifying details].

Using only these lists, identify: items in the register not found by discovery; items found by discovery not in the register; and items where the details differ. For each group, suggest a question to ask the owner or the team. Do not guess what an unknown item is. If the lists are too thin to match, say what to add. List what you are unsure of.
```

**Tujuan: menyusun standar pemberian tag singkat untuk sumber daya cloud.**

```text
Help me draft a one-page tagging standard for cloud resources.

Our cloud accounts and teams: [describe].
Facts we need to know about a resource: [for example owner, service, environment, cost center, data sensitivity].
Problems today: [for example untagged resources and unknown owners].

Propose three to six required tags with allowed values or formats, how untagged resources will be found and reported, who is responsible for fixing them, and a grace period (leave the length as [to be agreed]). Mark assumptions. Do not invent our tooling. Ask clarifying questions first, and list what you are unsure of.
```

**Tujuan: merencanakan daftar periksa pensiun untuk perangkat atau server.**

```text
Help me write a retirement checklist for [asset type, for example "laptops" or "servers"].

Our current practice: [describe].
Data it may hold: [describe sensitivity].
Records we must keep: [list, or write "unknown"].
Rules or contracts that apply, with source text: [paste, or write "none known"].

Produce a checklist covering: approval, removing access and licenses, data wiping or destruction and evidence, updating the register, financial records, and disposal or return. Mark every item that is an assumption. Do not state that a law requires a step unless I pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Tujuan: menemukan kandidat penghematan dari data pemakaian.**

```text
Here is a table of our subscriptions and licenses with cost per month, number of paid seats, and number of active users in the last 90 days: [paste real data].

Using only my numbers, list items where paid seats exceed active users and compute the difference and the cost of the unused seats. Rank by cost. For the top five, suggest a question to ask the owner before changing anything. Do not assume that inactive users can lose access; flag it as a question. List what you are unsure of.
```

## Keterampilan AI

- [configuration-management](../../../../skills/configuration-management/SKILL.md): gunakan untuk merencanakan bagaimana aset dan hubungannya dicatat dan dijaga benar.
- [vendor-management](../../../../skills/vendor-management/SKILL.md): gunakan untuk mengelola kontrak dan pembaruan yang berada di balik aset.
- [budget-forecasting](../../../../skills/budget-forecasting/SKILL.md): gunakan untuk memperkirakan biaya aset dan langganan.
- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): gunakan untuk memperjelas siapa yang memiliki, mendukung, dan menyetujui tiap kelas aset.
- [data-governance](../../../../skills/data-governance/SKILL.md): gunakan untuk memutuskan siapa memiliki data yang disimpan pada aset dan bagaimana dipensiunkan.

## Sumber utama

- **IT asset management** (Wikipedia, saat ini dalam artikel tentang manajemen pusat data): definisi singkat dan deskripsi manajemen aset perangkat keras.
- **Software asset management** (Wikipedia): definisi, tujuan, teknologi, dan bagian ISO/IEC 19770.
- **Configuration management database** (Wikipedia): istilah ITIL untuk penyimpanan item konfigurasi dan hubungan.
- **ITIL** (Wikipedia): kerangka kerja yang memperlakukan ITAM berdampingan dengan manajemen layanan.

## Referensi

1. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
2. Software asset management — Wikipedia — https://en.wikipedia.org/wiki/Software_asset_management
3. Configuration management database — Wikipedia — https://en.wikipedia.org/wiki/Configuration_management_database
4. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
5. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
6. Data center management — Wikipedia — https://en.wikipedia.org/wiki/Data_center_management
7. Cloud computing — Wikipedia — https://en.wikipedia.org/wiki/Cloud_computing
8. Asset management — Wikipedia — https://en.wikipedia.org/wiki/Asset_management
9. Inventory — Wikipedia — https://en.wikipedia.org/wiki/Inventory
