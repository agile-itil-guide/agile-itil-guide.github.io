# Manajemen Pengetahuan

**Manajemen pengetahuan membuat apa yang diketahui orang tersedia bagi orang lain ketika mereka membutuhkannya, dan pendekatan yang berhasil bagi tim agile adalah menangkap pengetahuan sebagai hasil sampingan pekerjaan, menjaganya singkat dan dimiliki, serta memadukan tulisan dengan percakapan.**

## Mengapa ini penting

Setiap layanan bergantung pada pengetahuan: bagaimana ia bekerja, apa yang pernah salah, bagaimana memperbaikinya, dan mengapa ia dibangun demikian. Ketika pengetahuan itu hidup hanya di beberapa kepala, layanan menjadi rapuh. Liburan, pengunduran diri, atau malam buruk saat on-call dapat mengubah perbaikan sepuluh menit menjadi gangguan sepuluh jam. Manajemen pengetahuan adalah praktik memastikan orang yang perlu tahu dapat mencari tahu.

Tradisi agile condong pada percakapan dan perangkat lunak yang berfungsi daripada dokumentasi, dan para penulis Manifesto Agile telah dikritik karenanya (lihat Topik 1.1 — Manifesto Agile). Pembacaan yang adil adalah bahwa dokumentasi harus layak mendapat tempatnya. Manajemen pengetahuan memberi cara memutuskan apa yang layak: pengetahuan yang sering dipakai, mahal ditemukan kembali, atau dipegang terlalu sedikit orang. Untuk sisanya, percakapan dan pairing mungkin lebih berguna.

[Artikel Wikipedia tentang manajemen pengetahuan](https://en.wikipedia.org/wiki/Knowledge_management) luas dan menggambarkan bidang ini sebagai pemrosesan pengetahuan untuk mencapai tujuan organisasi, berbeda dari manajemen konten atau informasi. Ia mencatat sejarah, model, pendekatan, pendukung, penghalang, dan kritik, dan tidak mengatakan apa-apa yang spesifik tentang layanan TI. Topik ini memakai gagasan umum artikel dan menerapkannya pada tim layanan, menandai di mana ia menerapkan dan bukan melaporkan.

## Konsep inti

### Apa itu manajemen pengetahuan

Wikipedia menggambarkan manajemen pengetahuan (KM) sebagai mencakup proses untuk kesadaran organisasi, pembelajaran, kolaborasi, dan inovasi, memakai dan membagikan pengetahuan untuk mendukung tujuan organisasi. Ia mencatat bahwa praktik seperti magang, perpustakaan korporat, dan bimbingan jauh mendahului istilahnya. KM muncul sebagai disiplin pada awal 1990-an, dengan akademisi termasuk Ikujiro Nonaka, Hirotaka Takeuchi, Thomas H. Davenport, dan Baruch Lev membantu mengembangkan bidang ini. Artikel mengatakan ISO 9001:2015 menambahkan spesifikasi untuk "pengetahuan organisasi."

### Pengetahuan tasit dan eksplisit

Artikel membedakan dua bentuk. **Pengetahuan tasit** adalah yang terinternalisasi dan sering tidak diketahui secara sadar. **Pengetahuan eksplisit** dipegang secara sadar dan dapat dikomunikasikan dengan mudah. Model SECI Nonaka (sosialisasi, eksternalisasi, kombinasi, internalisasi), yang oleh artikel dinisbatkan pada buku Nonaka dan Takeuchi 1995, menjelaskan spiral di antara keduanya. Artikel juga mencatat bahwa peneliti kemudian menyebut pemisahan itu penyederhanaan berlebihan.

Bagi tim layanan, pembedaan itu praktis. Engineer berpengalaman sering bisa merasakan bahwa sebuah alarm mungkin hanya kebisingan atau bahwa rilis tertentu berisiko, dan tidak mudah menuliskan mengapa. Sebagian dari rasa itu dapat diubah menjadi runbook dan pemeriksaan; sebagian hanya dapat dibagi dengan bekerja bersama.

### Kodifikasi dan personalisasi

Mengikuti Hansen dan kolega (1999), artikel membedakan dua strategi. **Kodifikasi** menyimpan pengetahuan dalam repositori agar orang lain dapat memakainya ulang. **Personalisasi** membagikan pengetahuan lewat kontak langsung antarorang. Masing-masing cocok untuk pengetahuan berbeda:

| Strategi | Cocok untuk | Contoh dalam tim layanan |
|---|---|---|
| Kodifikasi | Tugas berulang yang dipahami baik | Runbook, catatan known error, deskripsi layanan, artikel cara-cara |
| Personalisasi | Hal kompleks, berubah, atau sarat penilaian | Pairing on-call, shadowing, komunitas praktik, diskusi desain |

Sebagian besar tim memerlukan keduanya. Basis pengetahuan berisi resep tidak mengajarkan penilaian, dan percakapan saja tidak berskala ke shift malam.

### Komunitas praktik

Artikel mendaftar komunitas praktik di antara perspektif tentang KM. Dalam organisasi layanan, mereka bisa sesederhana pertemuan informal berkala orang yang mengerjakan masalah serupa lintas tim, seperti engineer basis data atau analis desk. Mereka menyebarkan pengetahuan dan norma dan memberi orang tempat untuk bertanya.

### Apa yang ditangkap

Tidak semuanya layak dicatat. Kandidat yang berguna dalam tim layanan mencakup:

- **Cara memulihkan layanan:** runbook dan langkah pemulihan (lihat Topik 3.2 — Manajemen Insiden).
- **Known error dan workaround:** gejala, workaround, dan pemilik (lihat Topik 3.3 — Manajemen Masalah).
- **Deskripsi layanan:** apa yang dilakukan layanan, siapa pemiliknya, dan pada apa ia bergantung (lihat Topik 3.8 — Manajemen Katalog Layanan).
- **Keputusan dan alasannya:** mengapa desain dipilih, agar perubahan di masa depan tidak membatalkannya secara membabi buta.
- **Pelajaran dari insiden:** postmortem yang dapat dibaca orang lain.
- **Jawaban atas pertanyaan pengguna yang umum:** artikel singkat untuk service desk dan untuk swalayan.

### Pendukung dan penghalang

Artikel menyebut orang dan budaya, proses dan struktur, dan teknologi sebagai komponen inti. Ia mencatat bahwa motivasi mencakup inovasi, siklus pengembangan lebih pendek, dan memanfaatkan keahlian, dan bahwa organisasi memakai insentif seperti kewajiban menyerahkan konten, tetapi mengatakan tidak ada konsensus apakah insentif berhasil. Ia mendaftar penghalang seperti pengetahuan yang tidak berpindah, pendidikan yang tidak memadai, dan hilangnya pengetahuan ketika pekerja berpengalaman pergi. Bagi tim layanan, penghalang yang paling penting adalah tekanan waktu, kepemilikan konten yang tidak jelas, perkakas yang canggung dipakai, dan budaya yang menghargai heroisme daripada berbagi.

### Pengetahuan dalam aliran kerja

Prinsip praktis, yang dipakai luas di service desk, adalah menangkap pengetahuan sebagai bagian dari pekerjaan dan bukan sebagai tugas terpisah. Ketika analis menyelesaikan masalah baru, solusinya menjadi draf artikel sebelum tiket ditutup. Ketika engineer memperbaiki insiden, langkahnya masuk ke runbook. Ini mengubah tiap pekerjaan menjadi kontribusi kecil. Sumber yang dibaca untuk panduan ini tidak menjelaskan metode khusus untuk melakukannya, jadi perlakukan prinsip ini sebagai praktik umum untuk diuji, dan lihat apa yang berhasil dengan perkakas Anda.

### Kritik dan batasan

Artikel mencatat kritik: bahwa relevansi praktis riset KM akademik dipertanyakan, bahwa pembedaan tasit–eksplisit dikritik, bahwa efektivitas insentif diperdebatkan, dan bahwa melindungi pengetahuan membawa risiko seperti perlindungan berlebihan dan penyalahgunaan. Artikel tidak melaporkan bukti terukur tentang efektivitas atau laba atas investasi KM. Bagi tim layanan pelajarannya adalah ambisi sederhana: mulai dengan pengetahuan yang ketiadaannya telah merugikan, ukur apakah dipakai, dan buang yang tidak.

### Pengetahuan dan pembelajaran organisasi

Artikel mengatakan KM serupa dengan pembelajaran organisasi tetapi memberi penekanan lebih pada pengetahuan sebagai aset strategis dan pada berbagi informasi, dan bahwa KM memfasilitasi pembelajaran organisasi. Ini terhubung dengan pembelajaran agile (lihat Topik 1.10 — Pembelajaran Agile) dan dengan peningkatan berkelanjutan (lihat Topik 3.15 — Peningkatan Berkelanjutan).

## Praktik terbaik

1. **Mulai dengan pengetahuan yang ketiadaannya telah merugikan.** Daftar beberapa insiden atau penundaan terakhir yang disebabkan oleh pengetahuan yang hilang. Mulailah dari topik itu, bukan dari upaya mendokumentasikan segalanya.
2. **Tangkap pengetahuan pada saat bekerja.** Jadikan menulis catatan singkat bagian dari menutup insiden, permintaan, atau perubahan. Catatan kasar yang ditulis sekarang lebih berharga daripada artikel yang dipoles yang direncanakan untuk nanti.
3. **Jaga artikel singkat dan terstruktur.** Pakai bentuk yang konsisten: gejala, penyebab jika diketahui, langkah, kapan mengeskalasi, pemilik, tanggal tinjauan terakhir. Orang di bawah tekanan membaca judul dan langkah bernomor.
4. **Beri setiap artikel pemilik dan tanggal tinjauan.** Konten tanpa pemilik membusuk. Tunjukkan tanggal tinjauan pada artikel agar pembaca dapat menilai kepercayaan.
5. **Hapus dan gabungkan.** Pensiunkan artikel yang tak dipakai siapa pun dan gabungkan duplikat. Basis yang lebih kecil dan mutakhir lebih baik daripada yang besar dan usang.
6. **Buat mudah ditemukan.** Taruh pengetahuan di tempat orang sudah bekerja, uji pencarian dengan kueri nyata, dan tautkan artikel dari tiket, katalog layanan (ITIL mengejanya "service catalogue"), dan runbook.
7. **Uji runbook dengan memakainya.** Minta orang yang akan memakai runbook mengikutinya pada kasus uji. Perbaiki yang tidak jelas. Ini mengubah dokumen menjadi pengetahuan yang berfungsi.
8. **Berpasangan dan shadowing untuk yang tasit.** Minta orang yang kurang berpengalaman bekerja bersama yang berpengalaman pada insiden dan perubahan nyata. Rencanakan pairing, karena tidak akan terjadi ketika semua orang sibuk.
9. **Dukung komunitas praktik.** Beri orang waktu dan tempat untuk bertemu lintas tim. Biarkan topik datang dari anggota.
10. **Catat keputusan dan alasannya.** Simpan catatan singkat tentang keputusan desain dan proses yang signifikan dan mengapa dibuat. Ia mencegah penemuan ulang dan membantu pendatang baru.
11. **Bagikan pelajarannya.** Terbitkan postmortem dan ringkasan masalah secara luas, dalam bahasa sederhana, dan tanyakan kepada tim lain apa yang berlaku bagi mereka (lihat Topik 3.2 — Manajemen Insiden).
12. **Waspadai risiko pengetahuan.** Sekali per kuartal, daftar keterampilan dan sistem yang bergantung pada satu orang, dan rencanakan menyebarkannya. Perlakukan kepergian sebagai pemantik tinjauan.

## Pertanyaan untuk dibahas bersama tim Anda

**Apa yang tidak dapat kita lakukan jika satu orang yang disebut namanya tidak ada selama sebulan?**

Minta tim menyebut orang yang ketidakhadirannya akan merugikan dan mengapa. Daftar tugas yang bergantung pada mereka. Biasanya daftarnya panjang, dan tidak nyaman bagi orang yang disebut. Bingkai sebagai risiko bagi layanan, bukan penilaian. Fasilitator dapat menanyakan tugas mana yang paling mendesak untuk dibagikan dan bagaimana. Pilih satu untuk dimulai.

**Apa yang kita tuliskan, dan apakah ada yang membacanya?**

Minta tiga dokumen terakhir yang dipakai orang dan tiga terakhir yang mereka tulis. Bandingkan. Celahnya menunjukkan di mana upaya dokumentasi salah tempat. Tanyakan seperti apa versi berguna dari dokumen yang tak dibaca, atau apakah harus dihapus. Sepakati memensiunkan atau memperbaiki satu.

**Ketika kita memperbaiki sesuatu yang baru, ke mana pengetahuannya pergi?**

Telusuri masalah baru terakhir: siapa yang memperbaiki, siapa yang tahu caranya, dan di mana dicatat. Jika jawabannya "di tiket" atau "di kepala saya," bahas seperti apa jalur yang lebih baik. Sering kali kebiasaan kecil, seperti templat saat penutupan, membuat perbedaan. Coba satu selama sebulan.

**Pengetahuan mana yang paling baik dibagikan dengan bekerja bersama, bukan dengan menulis?**

Tanyakan di mana penilaian penting: membaca grafik, memutuskan kapan mengeskalasi, mengenal pelanggan. Bahas bagaimana pendatang baru mempelajarinya hari ini. Jawaban lazim adalah keberuntungan dan waktu. Rencanakan pengaturan yang disengaja, seperti shadowing on-call. Sepakati siapa berpasangan dengan siapa.

**Bagaimana kita tahu apakah artikel pengetahuan masih benar?**

Pilih satu artikel dan ujilah. Periksa pemilik, tanggal tinjauan, dan apakah langkahnya berfungsi. Banyak yang gagal ujian. Tanyakan siklus tinjauan apa yang realistis, dan siapa yang dapat memensiunkan artikel. Tujuannya tanda kepercayaan yang terlihat pada tiap artikel.

**Apa yang menghalangi kita membagikan apa yang kita ketahui?**

Kumpulkan jawaban jujur: tak ada waktu, takut tampak bodoh, tak ada tempat yang jelas, tak ada pengakuan. Artikel Wikipedia mencatat bahwa efektivitas insentif diperdebatkan, jadi hindari jawaban mudah. Tanyakan hambatan mana yang dapat diubah tim dan mana yang memerlukan manajemen. Berkomitmenlah pada satu perubahan yang terlihat.

## Dalam praktik: contoh ITIL agile

Tim informasi penumpang sebuah kereta api nasional beranggotakan empat belas orang menjalankan sistem di balik layar stasiun dan aplikasi jadwal. Engineer paling berpengalaman, yang membangun pengendali layar, mengumumkan pensiunnya dalam enam bulan. Tak ada orang lain yang memahami bagaimana pengendali menangani kegagalan, dan dokumentasinya adalah dokumen desain 200 halaman yang ditulis sepuluh tahun lalu.

Kepala tim mendaftar apa yang diketahui engineer itu yang tidak diketahui orang lain. Ia mendapat tiga kelompok: cara memulihkan pengendali setelah kegagalan (eksplisit dan berulang), mengapa perilaku aneh tertentu ada (sebagian tertulis, sebagian di ingatan), dan cara menilai kapan kesalahan serius (tasit). Untuk yang pertama, tim menulis runbook bersama engineer dan menguji masing-masing dengan meminta rekan mengikutinya pada unit uji. Untuk yang kedua, sepasang engineer mewawancarainya setiap minggu dan menulis catatan keputusan singkat di folder bersama, masing-masing dengan pemilik. Untuk yang ketiga, engineer yang kurang berpengalaman membayanginya pada setiap insiden on-call selama enam bulan, dan memimpin beberapa sementara ia menonton.

Di akhir enam bulan, tiga engineer dapat menangani kegagalan pengendali, dokumen 200 halaman diganti sebelas runbook singkat dan dua puluh catatan keputusan, dan tim punya sesi bulanan tempat satu orang menjelaskan sesuatu yang diketahuinya. Masalah tersisa. Dua runbook gagal ketika diuji pada versi perangkat keras berbeda dan harus ditulis ulang, dan penilaian tasit hanya sebagian berpindah: engineer yang membayangi mengatakan beberapa keputusan masih terasa seperti tebakan. Tim merencanakan putaran shadowing kedua dengan penerus engineer yang pensiun dan menyepakati meninjau runbook setiap kuartal.

## Empat perspektif

### Tim produk dan pengiriman

Tim pengiriman memegang banyak pengetahuan tentang bagaimana layanan dibangun. Tulis runbook dan catatan keputusan singkat sebagai bagian dari definisi selesai Anda, dan uji dengan orang yang akan memakainya. Bagikan alasan desain kepada operasi agar perubahan tidak membatalkannya.

### Tim layanan dan operasi

Tim operasi menghasilkan dan memakai banyak pengetahuan sehari-hari. Tangkap solusi saat Anda menutup tiket, jaga known error tetap mutakhir, dan minta kepada tim pengiriman apa yang Anda butuhkan. Buat artikel mudah ditemukan bagi desk dan untuk swalayan.

### Kepemimpinan dan tata kelola

Pemimpin membentuk apakah berbagi dihargai atau dihalangi. Artikel Wikipedia mengatakan insentif diperdebatkan, jadi fokuslah menyingkirkan hambatan: beri waktu, buat perkakas mudah, dan hargai orang yang membantu orang lain. Lacak risiko pengetahuan, seperti titik keahlian tunggal, seperti risiko layanan lainnya.

### Pelanggan dan pengguna

Pelanggan dan pengguna diuntungkan oleh jawaban yang jelas dan artikel swalayan. Beri tahu tim ketika artikel salah atau hilang. Tanyakan kepada penyedia bagaimana mereka belajar dari insiden dan bagaimana mereka membagikan apa yang dipelajari kepada Anda.

## Pola kegagalan umum

- **Mendokumentasikan segalanya.** Basis menjadi besar dan usang. Sebaliknya, mulai dengan pengetahuan yang ketiadaannya telah merugikan dan tambahkan seperlunya.
- **Menulis terpisah dari bekerja.** Penangkapan menjadi tugas sesudahnya. Sebaliknya, jadikan catatan singkat bagian dari menutup pekerjaan.
- **Tanpa pemilik.** Tak ada yang memperbarui artikel. Sebaliknya, tunjuk pemilik dan tanggal tinjauan untuk masing-masing.
- **Pencarian buruk.** Orang tidak dapat menemukan yang ada, sehingga menulis duplikat. Sebaliknya, uji pencarian dengan kueri nyata dan tautkan artikel dari tempat orang bekerja.
- **Mengabaikan yang tasit.** Semuanya diasumsikan dapat ditulis. Sebaliknya, rencanakan pairing, shadowing, dan komunitas praktik.
- **Runbook yang tak teruji.** Langkah gagal ketika dibutuhkan. Sebaliknya, minta pemakai mengikuti tiap runbook pada kasus uji.
- **Menimbun sebagai status.** Orang melindungi pengetahuan untuk melindungi posisi mereka. Sebaliknya, hargai berbagi dan sebarkan ketergantungan.
- **Mewajibkan konten.** Target kuantitas menghasilkan artikel tipis. Sebaliknya, fokus pada pemakaian dan kualitas, dan ingat bahwa efek insentif diperdebatkan.

## Model kematangan

| Dimensi | Memulai | Mengembangkan | Menstandarkan | Mengelola | Mengorkestrasi |
|---|---|---|---|---|---|
| Menangkap pengetahuan | Pengetahuan hidup di kepala dan obrolan | Beberapa tim menyimpan catatan dan runbook | Menangkap catatan adalah bagian dari menutup pekerjaan | Laju penangkapan dan kegunaan ditinjau | Penangkapan pengetahuan dibagikan lintas tim dan pemasok |
| Kualitas dan kepemilikan | Tanpa pemilik; konten membusuk | Beberapa artikel punya pemilik | Setiap artikel punya pemilik dan tanggal tinjauan | Akurasi dan pemakaian diukur; konten usang disingkirkan | Praktik kualitas dibagikan dan diperbaiki di seluruh organisasi |
| Kemudahan ditemukan dan dipakai | Pencarian buruk; orang saling bertanya | Sebagian konten tertaut dari tiket | Pengetahuan tertaut dari tiket, katalog, dan runbook | Pemakaian dan kegagalan pencarian diukur dan diperbaiki | Pengetahuan tersedia bagi pengguna, pemasok, dan mitra sebagaimana mestinya |
| Berbagi yang tasit | Berbagi terjadi kebetulan | Beberapa pairing dan shadowing terjadi | Pairing, shadowing, dan komunitas praktik direncanakan | Risiko pengetahuan dilacak dan dikurangi | Komunitas dan rotasi memindahkan pengetahuan lintas tim secara rutin |

## Daftar periksa

- [ ] Kami telah mendaftar pengetahuan yang ketiadaannya telah merugikan kami, dan memulai dari sana.
- [ ] Menutup insiden, permintaan, atau perubahan menyertakan catatan singkat bila ada yang baru.
- [ ] Artikel mengikuti struktur umum yang singkat dengan pemilik dan tanggal tinjauan.
- [ ] Runbook telah diuji oleh seseorang yang tidak menulisnya.
- [ ] Pencarian berfungsi untuk kueri nyata, dan artikel tertaut dari tiket dan katalog layanan.
- [ ] Artikel yang tak terpakai dan duplikat dipensiunkan.
- [ ] Kami punya rencana menyebarkan pengetahuan yang dipegang satu orang.
- [ ] Pairing atau shadowing direncanakan untuk pekerjaan yang sarat penilaian.
- [ ] Pelajaran dari insiden dibagikan di luar tim.
- [ ] Kami meninjau risiko pengetahuan setidaknya setiap kuartal.

## Prompt AI

**Tujuan: mengubah tiket yang telah selesai menjadi draf artikel pengetahuan.**

```text
Turn this resolved ticket into a draft knowledge article for service desk analysts.

The ticket (symptom, steps taken, resolution; remove personal data): [paste].

Write a short article with: a one-line symptom, likely cause (mark as "suspected" if the ticket does not say), numbered steps to check and fix, when to escalate and to whom (use [ROLE] if unknown), and a place for owner and review date. Use only what the ticket says. Mark any step that you inferred with [CHECK]. Ask clarifying questions first if information is missing, and list what you are unsure of.
```

**Tujuan: menemukan risiko pengetahuan dalam tim Anda.**

```text
Here is a list of the systems and tasks our team handles and who can do each: [paste as a table, one row per system or task, with the names or roles of people who can do it].

Using only this list, identify those that only one person can do, and those with two. Rank by how critical the task is, if I have marked it, otherwise leave unranked. For each single-person item, suggest one low-effort way to spread the knowledge (for example pairing or a tested runbook). Do not invent tasks or people. Ask clarifying questions first, and list what you are unsure of.
```

**Tujuan: meninjau kejelasan runbook sebelum mengujinya.**

```text
Here is a runbook: [paste].

Act as a tired on-call engineer who has not seen this system before. List every place where you would be unsure what to do, every term or tool not explained, and every step that assumes knowledge. Suggest clearer wording for each. Do not add technical steps that are not in the runbook; mark questions for the author as [ASK AUTHOR]. List what you are unsure of.
```

**Tujuan: merencanakan serah terima pengetahuan untuk seseorang yang akan pergi.**

```text
Help me plan a knowledge handover for [role] who leaves in [time].

What they own or do that others do not: [list].
Where it is written down now: [list, or write "nowhere"].
Who will take over, and their current experience: [describe].

Sort the items into: repeatable tasks to turn into tested runbooks, reasons and decisions to record as short notes, and judgment to share by shadowing or pairing. Propose a week-by-week plan, including testing each runbook with the successor. Do not invent items. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## Keterampilan AI

- [runbook](../../../../skills/runbook/SKILL.md): gunakan untuk menulis prosedur langkah demi langkah yang dapat diikuti orang lain di bawah tekanan.
- [postmortem](../../../../skills/postmortem/SKILL.md): gunakan untuk mencatat pelajaran dari insiden dalam bentuk yang dapat dibaca orang lain.
- [architecture-decision-record](../../../../skills/architecture-decision-record/SKILL.md): gunakan untuk mencatat mengapa keputusan desain dibuat.
- [decision-records](../../../../skills/decision-records/SKILL.md): gunakan untuk menyimpan catatan singkat keputusan penting non-arsitektural.
- [training-needs-analysis](../../../../skills/training-needs-analysis/SKILL.md): gunakan untuk menemukan celah keterampilan yang harus ditangani oleh berbagi pengetahuan.

## Sumber utama

- **Knowledge management** (Wikipedia): tinjauan luas tentang sejarah, model, pendekatan, dan kritik bidang ini.
- **Postmortem Culture: Learning from Failure** (*Site Reliability Engineering*, Google, sre.google): bagaimana satu organisasi membagikan pelajaran dari insiden.
- **Tacit knowledge** (Wikipedia): latar belakang pengetahuan yang sulit dituliskan.
- **Community of practice** (Wikipedia): latar belakang kelompok lintas tim yang membagikan pengetahuan.

## Referensi

1. Knowledge management — Wikipedia — https://en.wikipedia.org/wiki/Knowledge_management
2. Postmortem Culture: Learning from Failure — Google SRE book, sre.google — https://sre.google/sre-book/postmortem-culture/
3. Tacit knowledge — Wikipedia — https://en.wikipedia.org/wiki/Tacit_knowledge
4. Community of practice — Wikipedia — https://en.wikipedia.org/wiki/Community_of_practice
5. SECI model of knowledge dimensions — Wikipedia — https://en.wikipedia.org/wiki/SECI_model_of_knowledge_dimensions
6. Organizational learning — Wikipedia — https://en.wikipedia.org/wiki/Organizational_learning
7. Knowledge base — Wikipedia — https://en.wikipedia.org/wiki/Knowledge_base
8. Ikujiro Nonaka — Wikipedia — https://en.wikipedia.org/wiki/Ikujiro_Nonaka
9. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
