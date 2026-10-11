# Manajemen Rilis dan Deployment

**Manajemen rilis dan deployment membawa perubahan ke produksi dengan aman, dan tujuannya dalam konteks agile adalah membuat perilisan begitu rutin, otomatis, dan dapat dibalik sehingga ia berhenti menjadi sebuah peristiwa.**

## Mengapa ini penting

Banyak organisasi masih memperlakukan rilis sebagai kesempatan besar yang tegang. Tanggal ditetapkan, jendela dipesan, orang lembur, dan keberhasilan diukur dari apakah ada yang rusak. Pola itu menghasilkan persis risiko yang ditakutinya: semakin banyak perubahan dibundel dalam rilis, semakin sulit memahami apa yang salah dan semakin menyakitkan rollback.

Program riset DORA menjelaskan alternatifnya. Halamannya tentang pengiriman berkelanjutan mendefinisikan praktik itu sebagai "the ability to release changes of all kinds on demand quickly, safely, and sustainably," dan melaporkan bahwa melakukannya dengan baik meningkatkan kinerja pengiriman dan ketersediaan, serta dikaitkan dengan kelelahan lebih rendah dan kepuasan kerja lebih tinggi. Halamannya juga memperingatkan bahwa men-deploy lebih sering tanpa mengubah proses dan arsitektur cenderung menaikkan laju kegagalan dan membuat tim kelelahan. Pelajarannya bukan "rilis lebih cepat" tetapi "bangun kemampuan merilis dengan aman, lalu rilis sering."

Buku *Site Reliability Engineering* Google, dalam bab tentang rekayasa rilis, membuat poin serupa dari praktik: rilis yang sering berarti lebih sedikit perubahan antarversi, sehingga pengujian dan pemecahan masalah menjadi lebih mudah. Topik ini bersandar pada kedua sumber itu, pada topik terkait perubahan lain dalam panduan ini, dan pada kosakata ITIL yang dipakai luas yang tidak dapat dipastikan panduan ini terhadap teks pemilik kerangka kerja. Perlakukan sumber-sumber itu sebagai kuat, spesifik, dan terbatas pada konteks yang dijelaskannya.

## Konsep inti

### Rilis dan deployment

Kedua istilah sering dikacaukan. Pembedaan umum, yang dipakai luas dalam manajemen layanan, adalah:

- **Rilis** adalah versi layanan atau komponen yang tersedia untuk dipakai. Ia adalah keputusan tentang apa yang akan diperoleh pengguna.
- **Deployment** adalah tindakan memindahkan versi ke lingkungan, seperti produksi.

Memisahkannya sangat kuat. Anda dapat men-deploy kode ke produksi tanpa menyalakannya bagi pengguna, dan merilisnya kemudian secara terkendali. Teknik seperti feature switch bersandar pada pemisahan ini (lihat artikel Wikipedia tentang feature toggle).

### Pengiriman berkelanjutan dan deployment berkelanjutan

Halaman DORA mendefinisikan **pengiriman berkelanjutan** sebagai kemampuan merilis perubahan dari semua jenis sesuai permintaan secara cepat, aman, dan berkelanjutan. Ia membedakannya dari **deployment berkelanjutan**, yang berarti men-deploy setiap perubahan ke produksi secepat mungkin. DORA mengatakan tim "can and should start with continuous delivery" meskipun mereka tidak pernah mengadopsi deployment berkelanjutan. Keputusan apakah akan merilis tetap keputusan bisnis; pengiriman berkelanjutan menjadikannya pilihan dan bukan proyek.

### Apa yang direkomendasikan riset

Halaman DORA mendaftar praktik yang mendukung pengiriman berkelanjutan:

| Praktik | Kata DORA |
|---|---|
| **Otomatisasi pengujian** | Rangkaian pengujian otomatis yang komprehensif dan andal, kebanyakan dibuat dan dipelihara pengembang |
| **Otomatisasi deployment** | Deployment sepenuhnya otomatis, tanpa intervensi manual |
| **Trunk-based development** | Kurang dari tiga cabang aktif, cabang berumur sangat pendek, periode kunci kode yang jarang |
| **Tim dan arsitektur yang longgar terkait** | Tim dapat menguji dan men-deploy sesuai permintaan tanpa mengorkestrasi dengan layanan lain |
| **Praktik lain** | Integrasi berkelanjutan, pengujian berkelanjutan, kendali versi untuk semua artefak produksi, manajemen data uji, pemantauan dan observabilitas, pemberitahuan proaktif, manajemen perubahan basis data, keamanan yang menyeluruh |

Halaman melaporkan bahwa pengiriman berkelanjutan dikaitkan dengan kualitas lebih tinggi (lebih sedikit waktu untuk pengerjaan ulang atau pekerjaan tak terencana), kelelahan lebih rendah, dan kesakitan deployment lebih kecil. Halaman juga mengatakan tim elite yang memenuhi target keandalan dalam laporan 2021 tiga kali lebih mungkin memiliki arsitektur yang longgar terkait dibandingkan performa rendah. Halaman tidak menyebut perkakas, target frekuensi deployment, atau lini masa implementasi, dan mencatat bahwa transformasi umumnya mengikuti "J-curve," dengan penurunan efisiensi seiring otomatisasi menambah kebutuhan pengujian dan utang teknis menumpuk.

### Pelajaran dari praktik rekayasa rilis

Bab rekayasa rilis dalam buku SRE menjelaskan pendekatan satu organisasi besar:

- **Swalayan.** Tim menjalankan proses rilis mereka sendiri. Rilis "truly automatic" dan hanya memerlukan keterlibatan engineer bila ada masalah.
- **Kecepatan tinggi.** Rilis yang sering berarti lebih sedikit perubahan antarversi, yang membuat pengujian dan pemecahan masalah lebih mudah.
- **Build hermetik.** Build bergantung pada versi perkakas dan pustaka yang diketahui, sehingga revisi yang sama memberi hasil identik.
- **Kebijakan yang ditegakkan.** Kendali akses menjaga persetujuan, pembuatan rilis, dan deployment. Hampir semua perubahan memerlukan tinjauan kode, dan setiap rilis menghasilkan laporan perubahan yang disertakan.

Bab juga menekankan konfigurasi di bawah kendali sumber dan tinjauan kode, dan menyarankan pengembang, site reliability engineer, dan release engineer berkolaborasi alih-alih melempar hasil "over the fence." Ia mengatakan organisasi harus menentukan kebijakan rilis bahkan ketika belum dapat mengotomatisasi atau menegakkannya, dan lebih murah menerapkan praktik yang baik sejak dini daripada memasangnya belakangan. Bab menjelaskan perkakas Google sendiri; lingkungan Anda akan memakai yang berbeda, jadi ambil prinsipnya dan bukan produknya.

### Lingkungan dan promosi

Rilis biasanya bergerak melalui serangkaian lingkungan, seperti pengembangan, pengujian, dan produksi. Setiap langkah memberi bukti. Praktik umum, selaras dengan riset di atas, adalah membangun sekali dan mempromosikan artefak yang sama, agar apa yang diuji adalah apa yang di-deploy. Penekanan bab SRE pada build identik dari revisi yang sama mengungkapkan gagasan yang sama.

### Rollout dan rollback

Bagaimana rilis sampai ke pengguna dapat bertahap. Bab SRE menjelaskan rollout yang disesuaikan dengan risiko, dari push otomatis per jam di pengembangan sampai rollout berhari-hari untuk infrastruktur sensitif, dan menyebut canary release, ketika sebagian kecil lalu lintas mendapat versi baru lebih dulu. Rollback berarti kembali ke versi sebelumnya, dan harus sama terlatihnya dengan rollout. Tim yang dapat membalik dengan cepat mampu men-deploy sering (lihat Topik 3.4 — Pemampuan Perubahan).

### Informasi rilis untuk dukungan

Staf dukungan dan pengguna perlu tahu apa yang berubah dan apa yang dilakukan jika ada yang salah. Catatan rilis, daftar masalah yang diketahui, dan kontak yang ditunjuk adalah minimum (lihat Topik 3.1 — Service Desk). Laporan rilis bab SRE tentang perubahan yang disertakan berfungsi sebagai sumber.

### Ukuran

Halaman DORA menyarankan mengukur lead time pendek untuk perubahan reguler dan darurat, laju kegagalan perubahan rendah, waktu pemulihan layanan pendek, dan frekuensi rilis yang mengirim prioritas tepat waktu. Sasaran utamanya adalah tidak ada yang bekerja di luar jam kerja untuk men-deploy. Untuk definisi dan peringatan tentang ukuran, lihat Topik 3.4 — Pemampuan Perubahan dan Topik 5.6 — Metrik dan Pengukuran.

## Praktik terbaik

1. **Pisahkan deployment dari rilis.** Deploy kode ke produksi dalam keadaan tidak aktif dan nyalakan bagi pengguna saat siap, memakai feature switch atau rollout bertahap. Ini mengurangi risiko deployment dan memberi bisnis kendali.
2. **Otomatisasi deployment.** Bidik tanpa langkah manual. Langkah manual lambat, bervariasi antarorang, dan menyebabkan insiden. Otomatisasi dalam peningkatan kecil, mulai dari langkah yang paling sering salah.
3. **Bangun sekali, promosikan artefaknya.** Hasilkan satu paket dan pindahkan melalui lingkungan, agar apa yang Anda uji adalah apa yang Anda jalankan. Catat versi mana ada di mana.
4. **Buat build dapat direproduksi.** Kunci versi perkakas dan pustaka agar revisi yang sama menghasilkan hasil yang sama. Ini mengikuti prinsip build hermetik bab SRE.
5. **Jaga cabang berumur pendek.** Panduan trunk-based DORA adalah kurang dari tiga cabang aktif dan cabang yang bergabung dalam sekitar sehari. Cabang panjang mengubah rilis menjadi peristiwa penggabungan.
6. **Uji secara otomatis, dan jaga pengujian cepat dan andal.** Bidik umpan balik dalam hitungan menit. Rangkaian pengujian yang goyah atau lambat membuat orang melewatinya.
7. **Rilis dalam batch kecil.** Rilis yang lebih kecil lebih mudah ditinjau, diuji, dan dibalik. Jika rilis besar, tanyakan bagaimana memecahnya.
8. **Rollout bertahap.** Mulai dengan sebagian kecil pengguna atau server, amati sinyalnya, dan perluas. Tentukan sebelumnya apa yang akan Anda amati dan siapa yang dapat menghentikan rollout.
9. **Latih rollback.** Ketahui cara kembali ke versi baik terakhir dan berlatihlah. Rollback yang belum pernah dicoba hanyalah harapan.
10. **Beri dukungan apa yang mereka butuhkan sebelum rilis.** Sediakan catatan rilis, masalah yang diketahui, dan kontak. Sertakan staf dukungan dalam persetujuan untuk perubahan yang memengaruhi pengguna (lihat Topik 3.1 — Service Desk).
11. **Simpan konfigurasi di kendali versi.** Perlakukan perubahan konfigurasi seperti kode, dengan tinjauan dan catatan. Pilih di mana tiap jenis pengaturan berada dan mengapa.
12. **Bidik deployment dalam jam kerja.** DORA menyebut ini sasaran utama. Jika deployment memerlukan malam hari, proses atau arsitektur perlu dikerjakan.

## Pertanyaan untuk dibahas bersama tim Anda

**Berapa lama, dan berapa banyak langkah yang dilibatkan, untuk membawa perubahan yang selesai ke produksi?**

Telusuri satu perubahan terbaru dari "siap" sampai "live." Daftar tiap langkah, siapa yang mengerjakan, dan berapa lama menunggu. Bedakan langkah manual dari yang otomatis. Tim sering terkejut betapa banyak langkah yang manual dan betapa lama penantian di antaranya. Fasilitator dapat menanyakan langkah mana yang paling banyak menyebabkan insiden. Pilih satu untuk diotomatisasi.

**Apa yang harus benar agar kita dapat merilis dalam jam kerja tanpa khawatir?**

Tanyakan apa yang ditakutkan tim tentang merilis. Jawaban lazim: tidak ada rollback yang teruji, pengujian lemah, dampak pada pengguna tidak jelas. Masing-masing adalah hal untuk dibangun. Daftar dan peringkat. Tanyakan langkah terkecil untuk yang pertama. Sasaran DORA bahwa tak seorang pun bekerja di luar jam kerja untuk men-deploy adalah target yang berguna untuk dibahas.

**Di mana kita membundel perubahan karena merilis menyakitkan, dan apa harga bundel itu bagi kita?**

Lihat isi rilis terbaru. Hitung perubahan di masing-masing. Tanyakan apa yang terjadi ketika bundel salah, dan berapa lama menemukan penyebabnya. Bahas apa yang akan menjadikan rilis satu perubahan sebagai jalur mudah. Sepakati langkah pertama, seperti merilis satu perubahan berisiko rendah sendirian.

**Bagaimana kita tahu rilis berfungsi setelah live?**

Tanyakan sinyal apa yang diamati tim pada jam pertama: kesalahan, kinerja, laporan pengguna. Jika jawabannya "kami menunggu keluhan," bahas pemantauan yang akan menunjukkan masalah dengan cepat. Tanyakan siapa yang mengamati dan apa yang akan mereka lakukan. Sepakati daftar periksa singkat untuk setelah rilis.

**Apa yang diketahui tim dukungan kita tentang rilis sebelum keluar?**

Tanyakan kepada service desk apa yang mereka ketahui tentang rilis terakhir dan kapan. Bandingkan dengan apa yang mereka butuhkan. Bahas serah terima sederhana, seperti catatan rilis dan kontak yang ditunjuk. Sertakan orang yang menjawab pertanyaan pengguna dalam perencanaan rilis berisiko.

**Apa yang menghalangi kita men-deploy tanpa periode pembekuan, dan apa harga periode pembekuan?**

Periode pembekuan umum di sekitar waktu puncak bisnis. Tanyakan berapa lama berlangsung dan apa yang ditundanya. Bahas apakah perubahan kecil yang teruji baik dapat berjalan selama periode itu dengan pengaman ekstra. Halaman DORA memperingatkan agar tidak menerapkan persetujuan yang sama pada semua perubahan tanpa memandang risiko atau waktu, jadi tanyakan apakah pembekuan terlalu tumpul.

## Dalam praktik: contoh ITIL agile

Sebuah universitas menjalankan sistem pendaftaran daring untuk 30.000 mahasiswa. Tim pengembang delapan orang merilis sekali per semester, dalam jendela akhir pekan sebelum pendaftaran dibuka. Setiap rilis membundel ratusan perubahan dan memerlukan lima belas orang, daftar periksa manual yang panjang, dan rencana panggilan. Rilis terakhir gagal pukul 2 pagi hari Minggu, dan tim menghabiskan empat belas jam mencari perubahan mana yang menyebabkannya.

Kepala tim mengusulkan perubahan pendekatan. Pertama, deployment menjadi sepenuhnya berskrip, dimulai dari langkah yang gagal terakhir kali. Kedua, tim menambahkan pengujian otomatis untuk jalur pendaftaran yang berjalan pada setiap perubahan dan memakan kurang dari sepuluh menit. Ketiga, fitur baru di-deploy dalam keadaan mati dan dinyalakan oleh feature switch setelah pemeriksaan. Keempat, langkah rollback ditulis dan dilatih di lingkungan uji. Kantor registrar menyetujui aturan bahwa tidak ada rilis ke produksi dalam tiga minggu puncak pendaftaran kecuali perbaikan untuk kesalahan yang terlihat pengguna.

Dalam satu semester, tim men-deploy setiap minggu di luar minggu puncak, dalam jam kerja, dengan catatan rilis dikirim ke helpdesk mahasiswa sehari sebelumnya. Beberapa rilis diperlambat oleh pengujian yang goyah dan satu feature switch tertinggal menyala secara keliru dan menyebabkan kebingungan singkat. Transformasi itu juga menabrak J-curve yang dijelaskan halaman DORA: selama dua bulan, pekerjaan pada pengujian dan skrip memperlambat pengiriman fitur. Tim terus maju, memperbaiki pengujian yang goyah, menambahkan langkah daftar periksa untuk menyingkirkan switch, dan menyepakati dengan registrar untuk meninjau aturan pembekuan tahun depan. Puncak pendaftaran semester berikutnya berlalu tanpa insiden terkait rilis.

## Empat perspektif

### Tim produk dan pengiriman

Tim pengiriman memiliki pipeline: pengujian, build, skrip deployment, dan rollback. Investasikan di dalamnya sebagai produk dengan pengguna. Rilis kecil, rilis sering, dan perlakukan setiap rilis sebagai bukti tentang pipeline. Libatkan dukungan dan operasi ketika perubahan memengaruhi mereka.

### Tim layanan dan operasi

Tim operasi diuntungkan oleh rilis yang lebih kecil dan lebih terduga, dan dapat membantu dengan menentukan apa yang harus benar sebelum rilis diterima: pemantauan, runbook, dan rollback. Beralih dari menjaga gerbang ke memampukan dengan menyediakan platform dan pemeriksaan yang dipakai tim pengiriman. Amati sinyal setelah rilis.

### Kepemimpinan dan tata kelola

Pemimpin memutuskan apakah tim dapat berinvestasi dalam pipeline dan menoleransi J-curve. Minta lead time, laju kegagalan perubahan, dan waktu pemulihan. Tahan godaan membekukan rilis sebagai tanggapan menyeluruh terhadap risiko, dan minta bukti bahwa rilis berisiko mendapat pengawasan lebih.

### Pelanggan dan pengguna

Pelanggan dan pengguna melihat perbaikan kecil yang sering dan lebih sedikit gangguan besar sekaligus. Harapkan pemberitahuan lebih awal tentang perubahan yang memengaruhi Anda dan cara untuk melaporkan masalah. Jika Anda punya periode puncak, beri tahu penyedia agar dapat merencanakan rollout bertahap di sekitarnya.

## Pola kegagalan umum

- **Rilis big-bang.** Ratusan perubahan keluar bersama. Sebaliknya, rilis dalam batch kecil dan pisahkan deployment dari rilis.
- **Deployment manual.** Langkah bervariasi menurut orang dan gagal pada malam hari. Sebaliknya, otomatisasi bertahap, mulai dari langkah paling berisiko.
- **Merilis lebih sering tanpa pengaman.** Laju kegagalan naik dan orang kelelahan, seperti diperingatkan DORA. Sebaliknya, investasikan pada pengujian, rollback, dan pemantauan lebih dulu.
- **Artefak berbeda di lingkungan berbeda.** Yang diuji bukan yang berjalan. Sebaliknya, bangun sekali dan promosikan artefak yang sama.
- **Cabang berumur panjang.** Penggabungan menjadi peristiwa. Sebaliknya, jaga cabang tetap pendek dan integrasikan secara berkelanjutan.
- **Rollback yang belum dicoba.** Rollback pertama terjadi saat gangguan. Sebaliknya, latih secara berkala.
- **Dukungan yang terakhir tahu.** Staf mengetahui perubahan dari pengguna. Sebaliknya, kirim catatan rilis dan kontak sebelum rilis.
- **Pembekuan menyeluruh.** Pembekuan yang sama berlaku untuk semua perubahan. Sebaliknya, biarkan perubahan berisiko rendah yang teruji baik lewat dengan pemeriksaan ekstra dan simpan pembekuan untuk yang berisiko.

## Model kematangan

| Dimensi | Memulai | Mengembangkan | Menstandarkan | Mengelola | Mengorkestrasi |
|---|---|---|---|---|---|
| Otomatisasi deployment | Deployment manual dan bervariasi | Beberapa deployment berskrip | Deployment diotomatisasi melalui pipeline umum | Kegagalan dan durasi deployment dilacak dan dikurangi | Pipeline dan praktik dibagikan dan diperbaiki lintas tim |
| Frekuensi dan ukuran rilis | Rilis jarang dan besar | Beberapa tim merilis dalam batch lebih kecil | Tim merilis dalam batch kecil dengan ritme yang diketahui | Frekuensi, lead time, dan ukuran diukur dan disetel | Ritme rilis dikoordinasikan lintas layanan dan pemasok |
| Keselamatan (pengujian, rollout, rollback) | Pengujian manual; rollback belum dicoba | Ada beberapa pengujian otomatis dan langkah rollback | Pengujian otomatis, rollout bertahap, dan rollback yang dilatih adalah standar | Laju kegagalan perubahan dan waktu pemulihan dilacak dan diperbaiki | Praktik keselamatan dibagikan dan diuji lintas tim |
| Kesiapan dukungan | Dukungan mengetahui rilis dari pengguna | Beberapa rilis punya catatan | Catatan rilis dan kontak adalah standar | Umpan balik dukungan atas rilis dikumpulkan dan ditindaklanjuti | Dukungan, pengiriman, dan pengguna merencanakan rilis bersama |

## Daftar periksa

- [ ] Kami dapat menyatakan perbedaan antara men-deploy dan merilis, dan kami memakainya.
- [ ] Deployment diotomatisasi tanpa langkah manual, atau langkah manual yang tersisa didaftar.
- [ ] Kami membangun sekali dan mempromosikan artefak yang sama melalui lingkungan.
- [ ] Pengujian otomatis berjalan pada setiap perubahan dan memberi umpan balik dalam hitungan menit.
- [ ] Cabang berumur pendek dan digabung ke trunk dengan sering.
- [ ] Rollback ada untuk setiap jenis rilis dan telah dilatih.
- [ ] Rollout bertahap di tempat risiko membenarkan, dengan sinyal ditentukan sebelumnya.
- [ ] Catatan rilis dan masalah yang diketahui sampai ke service desk sebelum rilis.
- [ ] Konfigurasi ada di kendali versi dan ditinjau.
- [ ] Kami melacak lead time, laju kegagalan perubahan, dan waktu pemulihan untuk tiap layanan.

## Prompt AI

**Tujuan: memetakan langkah dari "siap" sampai "live" dan menemukan apa yang diotomatisasi.**

```text
Help me map the path of a change from ready to live.

The steps in order, with who does each, whether it is manual or automated, and how long it typically waits or takes: [paste].
The last three releases and what went wrong, if anything: [paste facts].

Produce a table of steps and mark the manual ones. Rank the manual steps by how often they caused problems in the text, and suggest, for the top three, one small way to automate or check each. Do not invent durations or failure counts. Ask clarifying questions first if information is missing, mark assumptions, and list what you are unsure of.
```

**Tujuan: menulis catatan rilis untuk service desk dan pengguna.**

```text
Write a release note for [service].

What changed (plain words): [describe].
Who is affected and when: [describe].
What users will notice: [describe].
Known issues and workarounds: [list, or write "none known"].
How to roll back and who to contact: [describe].

Write two versions: a one-paragraph note for users and a half-page note for the service desk. Use only the facts above. Mark any statement that is an assumption and ask clarifying questions first if information is missing. List what you are unsure of.
```

**Tujuan: merencanakan rollout bertahap.**

```text
Plan a staged rollout of [change].

What it changes and who uses it: [describe].
How we can limit exposure (percentage of users, regions, servers, feature switch): [describe options available].
Signals we can watch: [list monitoring and user feedback sources].
Rollback method: [describe].

Propose stages, what to check at each stage, who can pause or stop, and what would trigger a rollback, leaving numeric thresholds as [to be agreed]. Do not invent monitoring that we do not have. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Tujuan: menyiapkan argumen untuk berinvestasi dalam otomatisasi rilis.**

```text
Help me prepare a short case for investing in release automation for [service].

What a release costs us today, in facts: [people involved, hours, incidents, delays; use real numbers only].
What we want to be able to do: [describe].
Known risks of the work: [for example a temporary slowdown while tests are written].

Write a one-page case with the problem, the proposed first steps (small and incremental), what we will measure (lead time, change fail rate, recovery time, with no targets that I did not give), the risks including a temporary dip in delivery, and what we ask for. Do not invent figures. Ask clarifying questions first, and list what you are unsure of.
```

## Keterampilan AI

- [release-notes](../../../../skills/release-notes/SKILL.md): gunakan untuk memberi tahu pengguna dan service desk apa yang diubah rilis.
- [changelog](../../../../skills/changelog/SKILL.md): gunakan untuk menyimpan catatan berjalan perubahan menurut versi.
- [test-driven-development](../../../../skills/test-driven-development/SKILL.md): gunakan untuk membangun pengujian otomatis yang membuat rilis sering menjadi aman.
- [shift-left-testing](../../../../skills/shift-left-testing/SKILL.md): gunakan untuk memindahkan pengujian lebih awal dalam pipeline agar masalah ditemukan lebih cepat.
- [agile-delivery](../../../../skills/agile-delivery/SKILL.md): gunakan untuk merencanakan rilis kecil yang sering dan pemeriksaan di sekitarnya.

## Sumber utama

- **Continuous delivery** (DORA, dora.dev): definisi program riset, praktik yang dianjurkan, temuan, dan jebakan.
- **Release Engineering** (*Site Reliability Engineering*, Google, sre.google): praktik satu organisasi tentang swalayan, build yang dapat direproduksi, dan kebijakan rilis yang ditegakkan.
- **Streamlining change approval** (DORA, dora.dev): panduan tentang bagaimana persetujuan cocok dengan pengiriman.
- **Continuous delivery** (Wikipedia): tinjauan praktik dan sejarahnya.

## Referensi

1. Continuous delivery — DORA, dora.dev — https://dora.dev/capabilities/continuous-delivery/
2. Release Engineering — Google SRE book, sre.google — https://sre.google/sre-book/release-engineering/
3. Streamlining change approval — DORA, dora.dev — https://dora.dev/capabilities/streamlining-change-approval/
4. Continuous delivery — Wikipedia — https://en.wikipedia.org/wiki/Continuous_delivery
5. Software deployment — Wikipedia — https://en.wikipedia.org/wiki/Software_deployment
6. Release management — Wikipedia — https://en.wikipedia.org/wiki/Release_management
7. Feature toggle — Wikipedia — https://en.wikipedia.org/wiki/Feature_toggle
8. Continuous integration — Wikipedia — https://en.wikipedia.org/wiki/Continuous_integration
9. Version control — Wikipedia — https://en.wikipedia.org/wiki/Version_control
