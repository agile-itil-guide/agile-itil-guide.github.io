# Manifesto Agile

**Manifesto untuk Pengembangan Perangkat Lunak Agile adalah empat pernyataan nilai singkat yang memberi tahu tim apa yang harus diutamakan ketika dua hal baik saling bertarik, dan pilihan itu sama pentingnya untuk menjalankan layanan yang aktif seperti untuk membangunnya.**

## Mengapa ini penting

Manifesto Agile adalah akar dari hampir semua hal lain dalam panduan ini. Scrum, Kanban, Extreme Programming, dan DevOps semuanya adalah cara untuk mengamalkan nilai-nilai yang dinyatakannya. Jika Anda hanya mengenal praktiknya, Anda akan menyalin ritualnya dan melewatkan alasannya, dan ketika sebuah ritual berhenti berfungsi, Anda tidak punya pegangan untuk menentukan arah.

Manifesto ini penting bagi manajemen layanan TI (ITSM) karena alasan praktis. Sebagian besar tim yang menjalankan layanan saat ini juga membangunnya, dan kedua pekerjaan itu menarik ke arah yang berbeda. Membangun menghargai perubahan dan kecepatan. Menjalankan menghargai stabilitas dan keterprediksian. Manifesto tidak menghilangkan ketegangan itu, tetapi memberi tim cara bersama untuk membicarakannya: nilai mana yang kita utamakan di sini, dan apa harganya?

Penting juga untuk tahu apa yang bukan Manifesto. Ia bukan proses, bukan sertifikasi, dan bukan janji bahwa mengikutinya membuat proyek berhasil. [Artikel Wikipedia tentang pengembangan perangkat lunak agile](https://en.wikipedia.org/wiki/Agile_software_development) mencatat bahwa bukti manfaat metode agile terbatas dan belum meyakinkan. Perlakukan Manifesto sebagai kumpulan hipotesis yang beralasan baik untuk diuji dalam konteks Anda sendiri, bukan sebagai kitab suci.

## Konsep inti

### Asal-usulnya

Tujuh belas praktisi berkumpul di resor ski Snowbird di pegunungan Wasatch, Utah, pada 11 sampai 13 Februari 2001, dan menulis Manifesto bersama-sama. Menurut [catatan di agilemanifesto.org](https://agilemanifesto.org/history.html), mereka berasal dari metode seperti Extreme Programming, Scrum, dan Crystal, dan menginginkan alternatif bagi proses berat yang digerakkan dokumentasi. Nama "Light" sempat diusulkan dan Alistair Cockburn keberatan, lalu kelompok itu menyebut dirinya Agile Alliance.

Para penandatangannya adalah Kent Beck, Mike Beedle, Arie van Bennekum, Alistair Cockburn, Ward Cunningham, Martin Fowler, James Grenning, Jim Highsmith, Andrew Hunt, Ron Jeffries, Jon Kern, Brian Marick, Robert C. Martin, Steve Mellor, Ken Schwaber, Jeff Sutherland, dan Dave Thomas. Beberapa dari mereka sudah menciptakan metode yang mereka bawa: Beck dan Cunningham mengerjakan [Extreme Programming](https://en.wikipedia.org/wiki/Extreme_programming), dan Schwaber serta Sutherland mengerjakan [Scrum](https://en.wikipedia.org/wiki/Scrum_(software_development)).

Manifesto adalah reaksi terhadap cara kerja ketika tim merencanakan seluruh proyek di muka, membangun dalam fase panjang, dan baru belakangan tahu apakah hasilnya diinginkan. Gaya itu sering disebut [model air terjun](https://en.wikipedia.org/wiki/Waterfall_model). Para penulisnya tidak menemukan kerja iteratif (artikel Wikipedia menelusuri metode iteratif dan inkremental hingga 1957), tetapi mereka memberinya nama bersama dan pernyataan nilai yang singkat.

### Empat nilai

Manifesto menyatakan nilai-nilainya secara lengkap sebagai berikut. Pemberitahuan hak ciptanya mengizinkan penyalinan bebas dalam bentuk apa pun, tetapi hanya secara utuh, sehingga dikutip lengkap di sini:

> Kami sedang menemukan cara-cara yang lebih baik dalam mengembangkan perangkat lunak dengan melakukannya sendiri dan membantu orang lain melakukannya. Melalui pekerjaan ini kami sampai pada penghargaan terhadap:
>
> **Individu dan interaksi** lebih dari proses dan perkakas
> **Perangkat lunak yang berfungsi** lebih dari dokumentasi yang lengkap
> **Kolaborasi dengan pelanggan** lebih dari negosiasi kontrak
> **Menanggapi perubahan** lebih dari mengikuti rencana
>
> Artinya, meskipun ada nilai pada butir di sebelah kanan, kami lebih menghargai butir di sebelah kiri.

Tiga detail pada rumusannya mudah terlewat dan mengubah maknanya:

- **"Lebih dari" bukan "sebagai ganti".** Kalimat terakhir mengatakan butir di sebelah kanan tetap bernilai. Tim yang membuang semua dokumentasi atau semua perencanaan telah salah membaca Manifesto.
- **Ini preferensi untuk saat Anda harus memilih.** Nilai-nilai ini tidak memberi tahu apa yang harus dilakukan setiap hari. Nilai-nilai ini memberi tahu ke arah mana harus condong ketika sebuah proses, dokumen, kontrak, atau rencana menghalangi hasil yang lebih baik.
- **"Dengan melakukannya sendiri."** Kalimat pembuka mengatakan para penulis menemukan nilai-nilai ini lewat praktik. Klaimnya bersifat empiris, itulah sebabnya Anda diundang untuk mengujinya terhadap pengalaman Anda sendiri.

### Membaca setiap nilai untuk pekerjaan layanan

Nilai-nilai ini ditulis tentang pengembangan perangkat lunak. Berikut arti setiap nilai bagi tim yang juga menjalankan layanan.

| Nilai | Apa yang dicegahnya | Artinya dalam pekerjaan layanan |
|---|---|---|
| Individu dan interaksi lebih dari proses dan perkakas | Proses yang berhasil di atas kertas tetapi tak bisa diikuti siapa pun di bawah tekanan | Saat insiden besar, orang yang memahami sistem berbicara langsung. Proses insiden mendukung percakapan itu dan tidak menggantikannya. |
| Perangkat lunak yang berfungsi lebih dari dokumentasi yang lengkap | Dokumen yang menggambarkan sistem yang sudah tidak ada | Runbook yang diuji oleh engineer on-call yang memakainya lebih berharga daripada manual panjang yang tak pernah dibuka. |
| Kolaborasi dengan pelanggan lebih dari negosiasi kontrak | Berdebat soal perjanjian tingkat layanan (SLA) sementara kebutuhan nyata pelanggan tak terpenuhi | Tinjau tingkat layanan bersama pelanggan secara berkala, dan ubah ketika kebutuhan mereka berubah. |
| Menanggapi perubahan lebih dari mengikuti rencana | Membekukan rencana setelah situasi bergerak | Proses perubahan yang dapat menyetujui perubahan kecil berisiko rendah dalam hitungan menit memungkinkan tim menanggapi. Proses yang memperlakukan semua perubahan sama tidak bisa. |

### Dua belas prinsip

Manifesto disertai dua belas prinsip yang menguraikan nilai-nilainya. Prinsip-prinsip itu menjadi pokok bahasan topik berikutnya (lihat Topik 1.2 — Prinsip Agile). Bersama-sama, nilai dan prinsip kadang disebut pola pikir agile.

### Kritik yang perlu diketahui

Para pengkritik berpendapat bahwa Manifesto merusak disiplin rekayasa. Artikel Wikipedia mengutip Stephen Rakitin, yang dalam surat kepada *IEEE Computer* menyebut agile "satu lagi upaya untuk merusak disiplin rekayasa perangkat lunak," dan yang membaca "perangkat lunak yang berfungsi lebih dari dokumentasi yang lengkap" sebagai izin untuk melewatkan dokumentasi. Para pembelanya menjawab bahwa dokumentasi harus "cukup baik saja," frasa yang dipakai Scott Ambler, dan bahwa dokumentasi yang terlalu sedikit merugikan pemeliharaan dan berbagi pengetahuan.

Bagi tim layanan, kritik ini ada benarnya. Staf operasi mewarisi apa yang ditinggalkan tim pengiriman, dan dokumentasi yang tipis tampak sebagai respons insiden yang lambat dan serah terima yang panjang. Pembacaan yang adil terhadap Manifesto adalah bahwa dokumentasi harus layak mendapat tempatnya, bukan bahwa ia tidak punya tempat.

## Praktik terbaik

1. **Perlakukan nilai-nilai ini sebagai alat bantu keputusan, bukan seperangkat aturan.** Ketika tim berbeda pendapat, tanyakan nilai mana yang sedang bertegangan dan ke arah mana tim harus condong. Ini mengubah perdebatan soal preferensi menjadi percakapan tentang pertukaran.
2. **Baca kalimat yang mengikuti nilai-nilai itu.** Ingatkan tim sesering mungkin bahwa butir di sebelah kanan tetap bernilai. Tuliskan proses, dokumen, kontrak, dan rencana mana yang Anda pertahankan dan mengapa.
3. **Uji setiap nilai terhadap peristiwa terbaru.** Pilih insiden atau rilis nyata dan tanyakan bagaimana pekerjaan itu akan berjalan seandainya tim condong ke arah lain. Bukti dari pekerjaan Anda sendiri lebih meyakinkan daripada kutipan.
4. **Pertahankan dokumentasi, dan jaga agar tetap hidup.** Pilih dokumen singkat yang dipakai, diuji, dan dimiliki, seperti runbook dan deskripsi layanan, daripada dokumen panjang yang ditulis sekali. Hapus yang tak dibaca siapa pun.
5. **Jadikan kolaborasi dengan pelanggan sebagai rutinitas.** Adakan percakapan berkala dengan orang yang memakai layanan Anda, dan bawa apa yang Anda pelajari ke dalam backlog. Jangan menunggu tinjauan kontrak.
6. **Buat rencana yang mengantisipasi perubahan.** Rencanakan dalam cakrawala pendek dengan titik tinjauan yang jelas. Pertahankan arah jangka panjang, dan terima bahwa langkah menuju ke sana akan bergeser.
7. **Beri proses seorang pemilik dan biarkan berkembang.** Setiap proses dalam sistem manajemen layanan Anda sebaiknya punya pemilik yang ditunjuk dan cara bagi pemakainya untuk mengusulkan perubahan. Proses yang tak boleh diubah siapa pun akan dihindari.
8. **Gunakan nilai-nilai ini dalam perekrutan dan orientasi.** Jelaskan kepada staf baru dengan contoh dari tim Anda sendiri agar mereka melihat bagaimana nilai-nilai tampak dalam pilihan sehari-hari.
9. **Tinjau ulang nilai-nilai setelah Anda berkembang.** Organisasi yang lebih besar cenderung condong ke proses dan perkakas. Adakan percakapan berkala, mungkin dua kali setahun, yang menanyakan apakah keseimbangannya masih melayani pelanggan.
10. **Jangan jadikan Manifesto sebagai senjata.** Mengutip "individu lebih dari proses" untuk menepis kekhawatiran rekan soal audit atau keselamatan mengakhiri percakapan yang seharusnya baru dimulai. Gunakan untuk membuka diskusi, bukan untuk memenangkannya.

## Pertanyaan untuk dibahas bersama tim Anda

**Dari empat nilai itu, mana yang sudah diutamakan tim kita dalam praktik, dan mana yang hanya kita klaim?**

Mulailah dengan mendaftar keputusan terbaru: rilis yang tertunda karena administrasi, permintaan yang ditolak karena tidak ada dalam kontrak, rencana yang dipertahankan setelah tak masuk akal lagi. Cocokkan masing-masing dengan sebuah nilai. Tim sering menemukan jurang antara yang mereka katakan dan yang mereka lakukan, dan jurang itulah temuan yang berguna. Fasilitator sebaiknya menghindari menyalahkan dan menanyakan tekanan apa yang melahirkan setiap pilihan. Lanjutkan dengan menanyakan tekanan mana yang dapat diubah tim.

**Di mana proses dan perkakas kita membantu orang berbicara satu sama lain, dan di mana mereka menghalangi?**

Minta orang menyebut satu proses yang menghemat tenaga mereka dan satu yang menambah tenaga. Yang memakan tenaga sering kali proses yang baik tetapi diterapkan kaku, seperti alur tiket yang meminta empat persetujuan untuk perubahan sepele. Cari tempat orang menghindari perkakas dan memakai obrolan atau percakapan di lorong, karena itu biasanya tanda ketidakcocokan. Tutup dengan satu proses untuk disederhanakan bulan ini.

**Dokumentasi apa yang akan kita sesali jika hilang, dan apa yang bisa kita hapus besok?**

Pertanyaan ini menguji nilai "perangkat lunak yang berfungsi lebih dari dokumentasi yang lengkap" tanpa membawanya ke ekstrem. Tanyakan dokumen apa yang mereka pakai bulan lalu. Runbook, diagram arsitektur, dan deskripsi layanan untuk pelanggan sering muncul. Dokumen yang tak disebut siapa pun adalah kandidat untuk dihapus atau digabung. Ingatkan tim bahwa menghapus adalah sebuah keputusan, jadi tunjuk pemiliknya.

**Bagaimana pelanggan kita ikut membentuk layanan, dan bagaimana kita tahu itu cukup?**

Kumpulkan contoh masukan pelanggan yang mengubah keputusan. Jika daftarnya pendek, tanyakan mengapa. Penyebabnya biasanya struktural: manajer akun di tengah, tinjauan SLA setahun sekali, atau service desk yang mencatat keluhan tetapi tidak meneruskannya. Tanyakan langsung kepada pelanggan, jika bisa, apa yang akan mereka ubah. Arahan bagi fasilitator adalah mencari satu cara konkret untuk memperpendek jalur antara pelanggan dan tim.

**Apa yang diperlukan agar kita dapat menyetujui perubahan kecil berisiko rendah dalam satu jam, dan haruskah kita?**

Pertanyaan ini menghubungkan nilai keempat dengan kendali perubahan (lihat Topik 3.4 — Pemampuan Perubahan). Tanyakan apa yang kini memperlambat perubahan kecil: rapat mingguan, formulir risiko manual, pengujian yang belum ada. Tanyakan bukti apa yang akan membuat tim nyaman, seperti pengujian otomatis atau rollback cepat. Jangan mendorong ke jawaban "ya". Tujuannya menemukan apa yang menurut tim diperlukan, yang merupakan awal sebuah rencana.

**Jika regulator, auditor, atau pelanggan besar membaca Manifesto, apa yang akan mereka khawatirkan, dan apakah mereka benar?**

Beberapa kekhawatiran itu wajar. Auditor menginginkan bukti, dan pelanggan menginginkan komitmen. Ajak tim menanggapi kekhawatiran itu dengan serius dan menanyakan bukti serta komitmen ringan apa yang akan memuaskan mereka. Tim yang dapat menunjukkan bagaimana kerja agile menghasilkan jejak audit biasanya mendapat lebih banyak kebebasan, bukan lebih sedikit. Catat kekhawatiran itu untuk diskusi tata kelola di Topik 5.7 — Tata Kelola, Risiko, dan Kepatuhan.

## Dalam praktik: contoh ITIL agile

Sebuah toko ritel daring berukuran menengah memiliki tim platform beranggotakan delapan orang yang membangun dan menjalankan layanan checkout. Tim baru saja beralih dari rilis triwulanan ke mingguan, dan kini punya masalah: service desk mengeluh perubahan datang tanpa peringatan, dan tim platform mengeluh rapat persetujuan perubahan memakan seminggu untuk menyetujui perubahan yang sudah siap pada hari Senin.

Pemimpin tim menjalankan sesi satu jam dengan empat nilai sebagai kerangka. Mereka mendaftar peristiwa terbaru di dinding. Perbaikan kode diskon menunggu sembilan hari untuk persetujuan. Perubahan basis data disetujui dengan cepat dan menyebabkan gangguan. Sebuah runbook untuk kegagalan pembayaran ternyata menggambarkan sistem yang dipensiunkan tahun sebelumnya. Kelompok menempatkan setiap peristiwa pada sebuah nilai. Sebagian besar kasus keterlambatan masuk di bawah "proses dan perkakas lebih dari individu dan interaksi," artinya proses dijalankan demi proses itu sendiri. Gangguan itu masuk di bawah "menanggapi perubahan lebih dari mengikuti rencana," karena rapat persetujuan memperlakukan semua perubahan sama dan tidak mencermati yang berisiko.

Mereka menyepakati tiga perubahan. Pertama, perubahan yang cocok dengan daftar pendek pola berisiko rendah, dengan pengujian otomatis yang lulus dan rollback yang teruji, akan disetujui lebih dulu dan dicatat otomatis. Kedua, perubahan berisiko akan ditinjau oleh rekan sejawat dan perwakilan operasi dalam sehari. Ketiga, setiap runbook akan punya pemilik yang ditunjuk dan diperiksa setiap kali dipakai saat insiden.

Dua bulan kemudian pemimpin meninjau hasilnya bersama service desk. Perubahan yang disetujui lebih dulu mengalir cepat, dan service desk kini melihat setiap perubahan dalam umpan bersama. Satu masalah tersisa: dua dari pola yang disetujui lebih dulu digambar terlalu luas, dan sebuah insiden kecil menyusul. Tim mempersempit polanya dan mempertahankan pendekatannya. Mereka juga melihat bahwa umpan bersama bukan pengganti berbicara, sehingga kepala service desk bergabung dalam perencanaan mingguan tim platform.

## Empat perspektif

### Tim produk dan pengiriman

Bagi tim pengiriman, Manifesto adalah pengingat bahwa perangkat lunak yang berfungsi mencakup pengoperasian yang berfungsi. Fitur yang tak dapat dipantau, didukung, atau di-rollback belum selesai. Gunakan nilai-nilai ini untuk memperjuangkan pekerjaan operasional yang membuat rilis aman, dan undang staf operasi ke dalam perencanaan sejak dini.

### Tim layanan dan operasi

Staf operasi sering merasa Manifesto berbicara untuk para pengembang. Bacalah secara berbeda: nilai-nilainya berpihak pada orang yang saling berbicara, artefak yang diuji, dan tanggapan cepat terhadap perubahan, yang semuanya cocok dengan operasi yang baik. Bawa praktik ITIL ke meja sebagai pengalaman terkumpul tentang apa yang bisa salah, dan usulkan versi lebih ringan yang mempertahankan tujuannya.

### Kepemimpinan dan tata kelola

Pemimpin menetapkan kondisi yang membuat nilai-nilai ini berfungsi. Jika setiap rilis memerlukan lima tanda tangan, tim tak dapat mengutamakan menanggapi perubahan, sebanyak apa pun poster tergantung di dinding. Tanyakan kepada tim Anda di mana aturan Anda sendiri memperlambat mereka, dan bersiaplah mengubah aturan ketika tujuannya dapat dicapai dengan cara lain.

### Pelanggan dan pengguna

Pelanggan disebut dalam dua dari empat nilai. Bagi mereka, Manifesto menjanjikan kolaborasi, bukan sekadar pengiriman. Harapkan ditanya apa yang Anda butuhkan, sering melihat perubahan yang berfungsi, dan dapat mengubah pikiran. Sebagai imbalannya, tim memerlukan umpan balik dan keputusan tepat waktu dari Anda.

## Pola kegagalan umum

- **Memakai "lebih dari" sebagai "sebagai ganti".** Tim membuang dokumentasi, perencanaan, atau kontrak sepenuhnya lalu menderita. Sebaliknya, tentukan apa yang harus dicapai masing-masing dan pertahankan bentuk teringan yang mencapainya.
- **Menganggap nilai-nilai sebagai izin melewatkan disiplin.** "Kami agile" menjadi dalih untuk tanpa pengujian, tanpa catatan, dan tanpa serah terima. Sebaliknya, kaitkan setiap nilai dengan praktik konkret dan periksa bahwa praktik itu berjalan.
- **Melafalkan Manifesto tanpa mengujinya.** Slogan menggantikan pemikiran. Sebaliknya, tinjau peristiwa nyata terhadap nilai-nilai secara berkala.
- **Memakainya melawan rekan kerja.** Mengutip sebuah nilai untuk menepis kekhawatiran dari audit, keamanan, atau operasi merusak kepercayaan. Sebaliknya, tanyakan apa yang dilindungi kekhawatiran itu dan bagaimana memenuhinya secara ringan.
- **Mengadopsi praktik tanpa nilai-nilainya.** Rapat harian dan papan muncul, tetapi keputusan masih menunggu rantai persetujuan. Sebaliknya, tanyakan keputusan mana yang harus lebih dekat dengan orang yang mengerjakan.
- **Mengira Manifesto menjawab pertanyaan operasional.** Ia ditulis tentang pengembangan perangkat lunak pada 2001 dan sedikit bicara soal menjalankan layanan. Sebaliknya, gabungkan dengan praktik manajemen layanan dan sesuaikan keduanya.

## Model kematangan

| Dimensi | Memulai | Mengembangkan | Menstandarkan | Mengelola | Mengorkestrasi |
|---|---|---|---|---|---|
| Pemahaman bersama atas nilai-nilai | Beberapa orang telah membaca Manifesto | Beberapa tim membahasnya, dengan pembacaan yang berbeda-beda | Tim berbagi pembacaan tertulis yang singkat atas nilai-nilai untuk konteksnya | Tim memeriksa keputusan terbaru terhadap nilai-nilai dalam tinjauan berkala | Tim, pemasok, dan pelanggan memakai kosakata bersama tentang pertukaran |
| Keseimbangan proses dan manusia | Proses diikuti atau diabaikan, tergantung orangnya | Beberapa proses disederhanakan oleh tim masing-masing | Setiap proses punya pemilik dan jalur untuk permintaan perubahan | Gesekan proses diukur, misalnya waktu tunggu per perubahan | Proses disesuaikan lintas tim berdasarkan bukti bersama |
| Kolaborasi dengan pelanggan | Umpan balik datang lewat keluhan | Beberapa tim bertemu pelanggan secara berkala | Setiap layanan punya cara yang ditetapkan untuk mengumpulkan masukan pelanggan | Masukan pelanggan dilacak dan dikaitkan dengan perubahan yang dibuat | Pelanggan membantu menetapkan prioritas lintas layanan |
| Dokumentasi dan rencana | Dokumen jarang atau usang | Tim menyimpan dokumen yang mereka anggap berguna | Dokumen yang diwajibkan sedikit, dimiliki, dan ditinjau | Pemakaian dokumen diamati dan yang tak terpakai dihapus | Dokumentasi dihasilkan atau diverifikasi sebagai bagian dari pengiriman |

## Daftar periksa

- [ ] Setiap anggota tim telah membaca Manifesto dan dua belas prinsipnya satu kali.
- [ ] Tim dapat menyatakan setiap nilai dengan kata-katanya sendiri, dengan contoh dari pekerjaannya.
- [ ] Kami telah mendaftar proses, dokumen, kontrak, dan rencana mana yang kami pertahankan, dan mengapa.
- [ ] Setiap proses yang dipakai punya pemilik yang ditunjuk dan cara untuk mengusulkan perubahan.
- [ ] Runbook dan deskripsi layanan punya pemilik dan tanggal tinjauan.
- [ ] Kami mengadakan percakapan berkala dengan pelanggan setidaknya satu layanan.
- [ ] Kami telah meninjau setidaknya satu insiden atau rilis terbaru terhadap empat nilai.
- [ ] Aturan dari pimpinan yang memperlambat tim telah didaftar dan dibahas.
- [ ] Kami telah menuliskan bagaimana kami akan menunjukkan kepada auditor dan regulator apa yang kami lakukan.

## Prompt AI

**Tujuan: mengubah empat nilai menjadi bacaan singkat untuk tim Anda sendiri.**

```text
You are helping a team of [team size and type, e.g. "eight engineers who build and run a payments service"] write a plain-language reading of the four values of the Agile Manifesto for their own context.

Here are the four values as written:
- Individuals and interactions over processes and tools
- Working software over comprehensive documentation
- Customer collaboration over contract negotiation
- Responding to change over following a plan

Context about our team and work: [paste 3-5 sentences about what you build, what you run, who your customers are, and any rules you must follow, such as audit or safety rules].

For each value, write two or three sentences on what it could mean for us, and one example drawn only from the context above. Mark clearly any point where you are guessing. Ask me up to three clarifying questions first if the context is too thin. Do not invent statistics or quote sources. List what you are unsure of.
```

**Tujuan: meninjau peristiwa terbaru terhadap nilai-nilai.**

```text
Below is a short description of a recent event in our team (an incident, a release, or a delayed change). Help me review it against the four values of the Agile Manifesto.

Event: [paste a factual description of what happened, in order, without blaming anyone].

For each value, say whether the event shows the team leaning toward the value on the left, toward the item on the right, or neither, and explain your reasoning in two sentences. Then suggest up to three questions our team could discuss. Separate what you can see in the text from what you are assuming, and list what you are unsure of.
```

**Tujuan: bersiap menjawab kekhawatiran auditor tentang cara kerja agile.**

```text
I need to explain to an auditor how our agile team keeps adequate records. The auditor's concern is: [paste the concern, e.g. "no evidence of who approved changes"].

Our current practice is: [describe what you do now: tools, reviews, approvals, where records are kept].

List what evidence our current practice already produces, what gaps the auditor might notice, and three lightweight ways to close each gap without adding a heavy manual process. Do not state that any law, standard, or regulation requires something unless I have pasted its text above. List your assumptions and what you are unsure of at the end.
```

**Tujuan: merancang sesi tim satu jam tentang Manifesto.**

```text
Design a one-hour facilitated session for a team of [number] people on the Agile Manifesto. The team works on [services or products] and its biggest current frustration is [frustration].

Include: a five-minute opening, a 20-minute activity where the team matches recent real events to the four values, a 20-minute discussion of two or three of the six questions below, and a 10-minute close with one agreed action.

Questions available: [paste the questions you want to use from the "Questions to discuss" section].

Give a timed agenda, what the facilitator says, and what to watch for. Keep it practical and do not assume any tool. Ask clarifying questions if information is missing, and list what you are unsure of.
```

## Keterampilan AI

- [agile-principles](../../../../skills/agile-principles/SKILL.md): gunakan ketika Anda ingin memeriksa praktik tim atau keputusan proses terhadap prinsip-prinsip Manifesto.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): gunakan untuk menjalankan retrospektif yang meninjau peristiwa terbaru terhadap nilai-nilai dan berujung pada perubahan nyata.
- [agile-liftoff](../../../../skills/agile-liftoff/SKILL.md): gunakan saat memulai tim atau proyek baru dan Anda menginginkan pembacaan nilai-nilai yang dimiliki bersama sejak hari pertama.
- [agile-coaching](../../../../skills/agile-coaching/SKILL.md): gunakan ketika Anda membantu tim beralih dari menyalin ritual ke memahami alasannya.

## Sumber utama

- **Manifesto for Agile Software Development** (agilemanifesto.org): teks utama. Bacalah secara penuh; hanya butuh dua menit.
- **Principles behind the Agile Manifesto** (agilemanifesto.org): dua belas prinsip, pendamping paling berguna bagi nilai-nilainya.
- **History: The Agile Manifesto** (agilemanifesto.org): catatan singkat para penulis sendiri tentang pertemuan di Snowbird.
- **Agile software development** (Wikipedia): tinjauan luas dengan sejarah, metode, praktik, dan kritik, berguna sebagai peta untuk bacaan lanjutan.

## Referensi

1. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
2. Principles behind the Agile Manifesto — Beck et al., agilemanifesto.org — https://agilemanifesto.org/principles.html
3. History: The Agile Manifesto — Jim Highsmith for the Agile Alliance, agilemanifesto.org — https://agilemanifesto.org/history.html
4. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
5. Extreme programming — Wikipedia — https://en.wikipedia.org/wiki/Extreme_programming
6. Scrum (software development) — Wikipedia — https://en.wikipedia.org/wiki/Scrum_(software_development)
7. Waterfall model — Wikipedia — https://en.wikipedia.org/wiki/Waterfall_model
8. Manifesto for Agile Software Development — Wikipedia — https://en.wikipedia.org/wiki/Manifesto_for_Agile_Software_Development
9. Agile Alliance — Wikipedia — https://en.wikipedia.org/wiki/Agile_Alliance
10. Snowbird, Utah — Wikipedia — https://en.wikipedia.org/wiki/Snowbird,_Utah
