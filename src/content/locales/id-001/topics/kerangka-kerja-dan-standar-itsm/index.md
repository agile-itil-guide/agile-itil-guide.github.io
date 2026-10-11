# Kerangka Kerja dan Standar ITSM

**Manajemen layanan TI punya banyak kerangka kerja dan standar yang tumpang tindih, dan keterampilan yang berguna adalah mengetahui untuk apa masing-masing: panduan untuk dipelajari, standar yang dapat Anda disertifikasi terhadapnya, atau model tata kelola yang memberi tahu apa yang dikendalikan.**

## Mengapa ini penting

Tanyakan kepada lima orang apa arti "kami mengikuti praktik terbaik ITSM" dan Anda mungkin mendapat lima jawaban: ITIL, ISO/IEC 20000, COBIT, FitSM, atau "apa pun yang dilakukan perkakas vendor." Istilah-istilah itu dipakai longgar, dan perbedaannya penting. Pelanggan yang meminta sertifikasi ISO/IEC 20000 tidak dapat dipuaskan dengan pelatihan ITIL. Auditor yang bertanya tentang kendali COBIT tidak akan terbantu oleh peta proses service desk.

Bagi tim agile, pertanyaannya praktis: mana dari ini yang harus kita hadapi, dan mana yang dapat kita perlakukan sebagai sumber gagasan? Banyak tim terkejut mengetahui bahwa ITIL, yang paling dikenal, adalah panduan yang individunya dapat disertifikasi dan bukan standar untuk organisasi. Yang lain terkejut bahwa standar ITSM utama baru-baru ini menambahkan panduan tentang cara kerja agile dan DevOps.

Topik ini membandingkan kerangka kerja dan standar utama, memakai [artikel Wikipedia tentang manajemen layanan TI](https://en.wikipedia.org/wiki/IT_service_management), [ISO/IEC 20000](https://en.wikipedia.org/wiki/ISO/IEC_20000), [COBIT](https://en.wikipedia.org/wiki/COBIT), dan [FitSM](https://en.wikipedia.org/wiki/FitSM). Artikel-artikel itu bervariasi kualitasnya, dan beberapa memuat penanda pemeliharaan. Di tempat mereka lemah, topik ini mengatakannya. Periksa publikasi pemiliknya sendiri sebelum Anda mengandalkan rincian apa pun untuk kontrak atau audit.

## Konsep inti

### Tiga jenis hal

Nama-nama dalam topik ini terbagi menjadi tiga kelompok. Memisahkannya menghindari banyak percakapan yang membingungkan.

| Jenis | Apa yang diberikannya | Contoh yang disebut dalam artikel Wikipedia tentang ITSM |
|---|---|---|
| **Panduan (kerangka kerja atau pustaka)** | Gagasan dan praktik yang dijelaskan untuk diadaptasi | ITIL, Microsoft Operations Framework, Application Services Library, Business Information Services Library |
| **Standar yang dapat disertifikasi** | Persyaratan yang terhadapnya organisasi dapat diaudit dan disertifikasi | ISO/IEC 20000 |
| **Model tata kelola atau kapabilitas** | Cara mengarahkan, mengendalikan, atau menilai TI | COBIT, CMMI, TOGAF |

FitSM berada di antara dua yang pertama, seperti dijelaskan di bawah.

### ITIL

ITIL adalah panduan tentang ITSM dan manajemen aset TI. Sertifikasi untuk individu, dan tidak ada penilaian independen atas kepatuhan organisasi terhadap ITIL (lihat Topik 2.2 — ITIL). Ia adalah sumber kosakata yang paling banyak dipakai.

### ISO/IEC 20000

ISO/IEC 20000 adalah standar internasional untuk manajemen layanan TI. Menurut Wikipedia, Bagian 1 menetapkan persyaratan untuk sistem manajemen layanan yang mencakup perencanaan, pengiriman, dan perbaikan layanan. Ia dikembangkan dari BS 15000, yang dibuat BSI Group, dan pertama kali diterbitkan pada Desember 2005. Pembaruan menyusul: Bagian 1 pada Juni 2011 dan revisi kedua, ISO/IEC 20000-1:2018, dirilis pada 15 Juli 2018, setelah itu organisasi bersertifikat mendapat masa transisi tiga tahun. Edisi 2018 memiliki sepuluh klausul yang mengikuti struktur tingkat tinggi ISO.

Standar ini punya banyak bagian. Artikel mendaftar, antara lain: panduan menerapkan sistem manajemen layanan (Bagian 2); panduan cakupan dan penerapan (Bagian 3); panduan implementasi (Bagian 5); persyaratan untuk badan sertifikasi (Bagian 6); konsep dan kosakata (Bagian 10); dan spesifikasi teknis tentang hubungan dengan ITIL 4 (Bagian 11). Artikel juga mendaftar bagian yang baru diterbitkan, dari 2023 sampai 2025, dengan panduan tentang integrasi dan manajemen layanan (SIAM), agile dan DevOps, serta keberlanjutan. Wikipedia tidak mengatakan nomor bagian mana yang mencakup topik mana, jadi periksa katalog ISO sebelum Anda mengutip salah satunya.

Organisasi dapat disertifikasi, dan individu dapat memperoleh kualifikasi dari badan seperti APMG-International, EXIN, dan PECB. Artikel melaporkan bahwa survei ISO 2024 menghitung 27.332 sertifikat, 24.056 di antaranya di Tiongkok. Itu menunjukkan betapa tidak meratanya sertifikasi tersebar di berbagai negara, jadi jangan berasumsi pelanggan di tempat lain akan memintanya.

Wikipedia mengatakan standar ini semula dikembangkan untuk mencerminkan praktik terbaik ITIL, tetapi menandai klaim itu "citation needed." Perlakukan hubungannya sebagai dekat tetapi tidak identik. Artikel juga mengatakan standar ini mendukung kerangka kerja lain seperti Microsoft Operations Framework dan bagian dari COBIT.

### COBIT

COBIT, menurut Wikipedia, adalah kerangka kerja yang dibuat ISACA untuk manajemen dan tata kelola TI. Ia menghubungkan tujuan bisnis dengan tujuan TI dan mendefinisikan tanggung jawab bagi tim bisnis dan TI. Artikel menjelaskan lima area proses: Evaluate, Direct and Monitor; Align, Plan and Organize; Build, Acquire and Implement; Deliver, Service and Support; dan Monitor, Evaluate and Assess. Artikel memberi tanggal berikut: pertama dirilis pada 1996, versi 5 pada 2012, dan mengatakan ISACA menawarkan sertifikasi pada COBIT 2019 dan COBIT 5. Artikel mengaitkan COBIT dengan ITIL, ISO 27000, CMMI, TOGAF, dan PMBOK Guide dari Project Management Institute.

Artikel itu sendiri memuat penanda pemeliharaan tentang sumber primer dan kutipan yang hilang, dan satu klaim, bahwa kerangka kerja membantu perusahaan mematuhi hukum dan menjadi lebih agile, bersandar pada satu sumber. Pakai publikasi COBIT sendiri sebagai otoritas.

### FitSM

FitSM adalah keluarga standar ringan. Wikipedia mengatakan ia tumbuh dari FedSM, proyek yang didanai UE untuk memperbaiki manajemen layanan dalam e-infrastruktur federasi, dan bahwa hasil kerja yang direvisi diterbitkan dengan nama FitSM mulai Mei 2013. FitSM-1 memuat sekitar 85 persyaratan yang dapat diaudit yang mencakup persyaratan umum dan 14 proses, dan jauh lebih pendek daripada ISO/IEC 20000 Bagian 1 meskipun serupa dalam cakupan dan gaya. Semua bagian diterbitkan di bawah lisensi Creative Commons. Organisasi tidak dapat disertifikasi sebagai sesuai FitSM, meskipun kesesuaian dapat diaudit, dan skema sertifikasi personel dimulai pada 2013.

FitSM berguna bagi tim kecil yang menginginkan kumpulan persyaratan singkat. Artikel tidak menyatakan versi terkini atau status kelompok pemeliharanya, jadi verifikasi sebelum mengandalkannya.

### Nama lain

Artikel ITSM juga mendaftar yang berikut. Panduan ini tidak membahasnya lebih lanjut.

- **CMMI:** model untuk membangun, mengelola, dan memperbaiki layanan dan proses.
- **TOGAF:** kerangka kerja yang menghubungkan tujuan bisnis dengan sasaran arsitektur.
- **Microsoft Operations Framework:** panduan manajemen layanan berbasis teknologi Microsoft.
- **Application Services Library dan Business Information Services Library:** kerangka kerja untuk manajemen aplikasi dan manajemen informasi.
- **USM:** sistem berbasis prinsip yang diadopsi pemerintah Belanda.

Artikel menambahkan bahwa kerangka kerja ITSM telah memanfaatkan ISO 9000, ISO/IEC 27000, dan CMMI. Manajemen keamanan punya keluarga standarnya sendiri (lihat Topik 3.13 — Manajemen Keamanan Informasi).

### Agile dan DevOps dalam standar

Artikel ISO/IEC 20000 mendaftar bagian standar terbaru dengan panduan tentang agile dan DevOps. Ini patut dicatat karena menunjukkan bahwa badan standar memperlakukan cara kerja agile sebagai sesuatu yang harus diakomodasi sistem manajemen layanan. Artikel tidak memberi rincian isinya, jadi baca standarnya sendiri bila Anda memerlukannya. Sementara itu, ITIL 4 menggambarkan dirinya selaras dengan agile, DevOps, dan lean (lihat Topik 2.2 — ITIL), dan artikel Wikipedia tentang ITSM sama sekali tidak menyebut agile. Sumber berbeda dalam seberapa jauh mereka telah menyusul.

### Memilih

Tidak ada satu kerangka kerja yang benar. Cara memilih yang masuk akal adalah menanyakan apa yang Anda butuhkan:

| Jika Anda membutuhkan… | Pertimbangkan… |
|---|---|
| Kosakata bersama dan gagasan untuk praktik | ITIL |
| Sertifikasi sistem manajemen layanan Anda untuk pelanggan atau tender | ISO/IEC 20000 |
| Kumpulan persyaratan singkat yang dapat diaudit untuk tim kecil | FitSM |
| Tata kelola dan kendali TI di perusahaan, terkait tujuan bisnis | COBIT |
| Penilaian kapabilitas proses | CMMI |

Tabel ini adalah ringkasan panduan, bukan rekomendasi dari pemilik kerangka kerja mana pun.

## Praktik terbaik

1. **Mulai dari pertanyaan yang perlu Anda jawab.** Tuliskan apa yang Anda butuhkan: kosakata, sertifikasi, kendali, atau penilaian. Pilih kerangka kerja yang menjawabnya, dan bukan yang pemasarannya terbaik.
2. **Pelajari perbedaan antara panduan dan standar.** Ajarkan tim bahwa sertifikasi ITIL untuk individu, sertifikasi ISO/IEC 20000 untuk organisasi, dan COBIT adalah model tata kelola. Banyak kebingungan kontrak dan audit bermula di sini.
3. **Cari tahu apa yang sebenarnya disyaratkan pelanggan dan regulator.** Minta klausul atau persyaratan yang persis. Sering kali permintaannya "kerangka kerja yang diakui," dan deskripsi singkat dan jujur tentang praktik Anda sudah cukup.
4. **Pakai teks standar, bukan ringkasan, untuk kepatuhan.** Ketika Anda mengklaim kesesuaian, bekerjalah dari standar ISO atau publikasi pemilik kerangka kerja. Ringkasan, termasuk yang ini, hanya untuk orientasi.
5. **Petakan praktik Anda sekali, bukan empat kali.** Jika Anda harus memenuhi lebih dari satu kerangka kerja, buat satu deskripsi praktik Anda dan petakan ke masing-masing, alih-alih menulis dokumen terpisah.
6. **Jaga sistem sekecil mungkin.** ISO/IEC 20000 meminta sistem manajemen layanan dan catatan. Penuhi tiap persyaratan dengan pendekatan teringan yang berfungsi, dan otomatisasi bukti dari perkakas Anda.
7. **Perhatikan cakupan.** Sertifikat mencakup cakupan yang dinyatakan. Pilih cakupan yang mencerminkan layanan dan tim nyata, dan jangan mengecualikan bagian yang membuat sertifikat sulit.
8. **Periksa panduan agile dan DevOps dalam standar yang Anda pakai.** Di tempat standar punya panduan tentang agile dan DevOps, bacalah sebelum berdebat dengan auditor tentang bagaimana tim agile dapat memenuhi suatu persyaratan.
9. **Pertimbangkan opsi yang lebih ringan untuk tim kecil.** FitSM atau subset ITIL mungkin lebih cocok untuk tim kecil daripada sistem tersertifikasi penuh. Catat apa yang Anda lepaskan, seperti sertifikasi eksternal.
10. **Jaga keamanan dan manajemen layanan tetap selaras.** Jika Anda memakai ISO/IEC 27001 untuk keamanan informasi, bagikan catatan dan tinjauan dengan sistem manajemen layanan Anda untuk menghindari pekerjaan ganda (lihat Topik 3.13 — Manajemen Keamanan Informasi).
11. **Dokumentasikan penyesuaian Anda.** Catat bagian kerangka kerja mana yang Anda pakai, mana yang tidak, dan mengapa. Ini melindungi Anda dalam audit dan membantu staf baru.
12. **Tinjau tahunan.** Standar dan kerangka kerja berubah. Tunjuk seseorang untuk mengikuti pembaruan dan melaporkan apa yang penting bagi tim Anda (lihat Topik 6.4 — Jalur Belajar dan Sertifikasi).

## Pertanyaan untuk dibahas bersama tim Anda

**Kerangka kerja atau standar mana yang wajib kita pakai, dan mana yang kita pakai karena kebiasaan?**

Daftar apa yang sebenarnya disyaratkan pelanggan, kontrak, regulator, dan manajer, dengan dokumen yang menyatakannya. Lalu daftar apa yang dipakai tim tanpa persyaratan. Kedua daftar sering berbeda lebih dari yang diduga. Fasilitator dapat menanyakan siapa yang pertama memperkenalkan masing-masing dan mengapa. Lanjutkan dengan menemukan redaksi persis persyaratan apa pun yang menggerakkan pekerjaan.

**Jika pelanggan bertanya apakah kita "bersertifikat ITIL," apa yang akan kita jawab?**

Latih jawaban jujur: individu dapat disertifikasi, organisasi tidak, dan inilah yang kami lakukan. Bandingkan jawaban. Sebagian akan mengklaim berlebihan. Bahas apa yang mungkin dibutuhkan pelanggan dan bukti apa yang dapat memenuhinya, seperti sertifikasi ISO/IEC 20000 atau deskripsi praktik. Sepakati satu kalimat yang dapat dipakai semua orang.

**Berapa biayanya bagi kita untuk disertifikasi ISO/IEC 20000, dan apa yang akan kita peroleh?**

Tanyakan pelanggan atau pasar mana yang akan menghargainya dan apa yang harus diubah tim. Jangan menebak biaya; kumpulkan penawaran nyata atau tanyakan kepada rekan yang pernah melakukannya. Daftar manfaat yang dapat Anda jelaskan: label yang diakui, sistem yang disiplin, akses ke tender. Putuskan apakah akan menyelidiki lebih lanjut.

**Dari mana catatan kita untuk audit berasal, dan dapatkah perkakas kita menghasilkannya secara otomatis?**

Daftar catatan yang diminta auditor dan dari mana masing-masing berasal. Banyak yang dapat berasal dari kendali versi, perkakas tiket, dan pemantauan jika dikonfigurasi dengan hal ini dalam pikiran. Tanyakan catatan mana yang dibuat dengan tangan dan mengapa. Pilih satu untuk diotomatisasi.

**Bagaimana praktik agile kita cocok dengan apa yang diharapkan standar, dan di mana celahnya?**

Ambil persyaratan yang dipedulikan auditor Anda, seperti otorisasi perubahan, dan jelaskan bagaimana tim agile memenuhinya. Di tempat standar punya panduan tentang agile dan DevOps, bacalah teks yang relevan bersama-sama. Catat celah dalam bukti, bukan dalam maksud.

**Siapa yang mengikuti perubahan dalam kerangka kerja ini untuk kita?**

Tanyakan siapa yang membaca pengumuman dari pemilik kerangka kerja dan badan standar. Jawaban yang sering adalah "tak ada." Putuskan siapa yang akan, bagaimana mereka akan melapor, dan kapan. Fasilitator dapat menyarankan catatan singkat sekali per kuartal yang mendaftar apa yang berubah dan apakah penting.

## Dalam praktik: contoh ITIL agile

Perusahaan perangkat lunak berisi 120 orang menjual produk penjadwalan yang di-host kepada rumah sakit dan universitas. Tender pelanggan universitas besar mensyaratkan "sistem manajemen layanan TI yang tersertifikasi." Para pendiri mengira kepala dukungan mereka yang terlatih ITIL sudah cukup. Kepala dukungan menjelaskan bahwa sertifikasi ITIL berlaku untuk individu, dan tender kemungkinan besar bermaksud ISO/IEC 20000.

Kepala operasi menyelidiki. Ia membaca redaksi tender, yang menyebut ISO/IEC 20000-1, dan bertanya kepada pelanggan cakupan apa yang mereka harapkan. Ia membaca daftar isi standar dan membandingkan sepuluh klausulnya dengan catatan yang sudah dimiliki perusahaan, yang kebanyakan berasal dari perkakas tiket, riwayat perubahan, dan tinjauan insiden. Ia menemukan bahwa banyak bukti sudah ada, tetapi tidak ada kebijakan manajemen layanan yang terdokumentasi, tidak ada tinjauan pemasok formal, dan tidak ada tinjauan manajemen. Ia juga menemukan bahwa standar kini punya bagian tentang panduan agile dan DevOps, yang membantunya menjelaskan rilis mingguan perusahaan kepada calon auditor.

Perusahaan memutuskan mengejar sertifikasi hanya untuk produk yang di-host, dengan sekumpulan dokumen sederhana dan tinjauan manajemen triwulanan. Ia merencanakan sekitar setahun kerja. Tidak semuanya mulus. Dua engineer menolak catatan tambahan dan seorang pemasok menolak menyediakan laporan tinjauan layanan formal. Kepala operasi mengganti sebagian catatan manual dengan ekspor dari perkakas perusahaan, dan menegosiasikan pengaturan tinjauan yang lebih ringan dengan pemasok. Perusahaan memenangkan tender, dan memutuskan meninjau pada audit pengawasan berikutnya apakah sistem membantu atau menghambat rilis mingguan.

## Empat perspektif

### Tim produk dan pengiriman

Tim pengiriman bertemu kerangka kerja ini sebagai persyaratan dari pelanggan dan auditor. Pelajari persyaratan mana yang berlaku, dan tanyakan bukti apa yang dapat diterima. Banyak persyaratan dapat dipenuhi dari perkakas yang sudah Anda pakai. Tawarkan menjelaskan proses rilis Anda dalam bahasa standar.

### Tim layanan dan operasi

Tim operasi biasanya memikul sistem manajemen. Jaga catatan tetap berguna, dengan tujuan yang dinyatakan untuk masing-masing. Waspadai persyaratan yang saling menggandakan antarkerangka kerja, dan petakan sekali. Bagikan rencana dengan tim pengiriman agar catatan menjadi hasil sampingan pekerjaan dan bukan tugas terpisah.

### Kepemimpinan dan tata kelola

Pemimpin memutuskan kerangka kerja mana yang diadopsi dan seberapa banyak berinvestasi dalam sertifikasi. Tanyakan apa kasus bisnisnya, dan apa yang sebenarnya disyaratkan pelanggan. Waspadalah membeli sertifikasi sebagai label. Pastikan sistem membantu organisasi memperbaiki diri, dan seseorang memilikinya.

### Pelanggan dan pengguna

Pelanggan yang meminta sertifikasi sering menginginkan jaminan. Tanyakan kepada penyedia standar dan cakupan mana yang dicakup sertifikat mereka, dan apa yang berada di luarnya. Sertifikat adalah bukti sistem manajemen, bukan jaminan hasil individual mana pun.

## Pola kegagalan umum

- **Mencampuradukkan sertifikasi individu dan organisasi.** Tim mengklaim "bersertifikat ITIL" untuk perusahaan. Sebaliknya, nyatakan dengan tepat apa yang disertifikasi dan oleh siapa.
- **Mengejar sertifikasi sebagai label.** Sistem ada untuk audit, bukan untuk perbaikan. Sebaliknya, buat catatan berguna bagi tim lebih dulu.
- **Menggandakan dokumen antarkerangka kerja.** Setiap standar mendapat map sendiri. Sebaliknya, jelaskan praktik Anda sekali dan petakan.
- **Mempersempit cakupan untuk menghindari bagian sulit.** Sertifikat mengecualikan layanan yang dipedulikan pelanggan. Sebaliknya, pilih cakupan yang mencerminkan layanan nyata.
- **Mengandalkan ringkasan.** Klaim kesesuaian didasarkan pada posting blog. Sebaliknya, bekerjalah dari teks standar atau pemilik kerangka kerja.
- **Mengabaikan panduan agile.** Tim berdebat dengan auditor tanpa membaca bagian standar yang membahas agile dan DevOps. Sebaliknya, bacalah dan siapkan contoh.
- **Dokumentasi berlebihan.** Sistem tumbuh lebih banyak catatan daripada yang dibaca siapa pun. Sebaliknya, kaitkan tiap catatan dengan tujuan dan otomatisasi bukti.
- **Melupakan perubahan.** Standar bergerak maju dan tim tidak menyadarinya. Sebaliknya, tunjuk seseorang untuk mengikuti pembaruan.

## Model kematangan

| Dimensi | Memulai | Mengembangkan | Menstandarkan | Mengelola | Mengorkestrasi |
|---|---|---|---|---|---|
| Pemahaman tentang kerangka kerja | Nama dipakai longgar | Beberapa staf dapat mengatakan untuk apa tiap kerangka kerja | Tim berbagi deskripsi singkat dan akurat tentang kerangka kerja yang dipakai | Pemakaian kerangka kerja ditinjau terhadap persyaratan dan hasil | Tim, pelanggan, dan pemasok berbagi pemahaman yang akurat |
| Persyaratan dan cakupan | Persyaratan diasumsikan | Beberapa persyaratan ditelusuri ke dokumen | Persyaratan dan cakupan didokumentasikan | Kepatuhan dan cakupan ditinjau dan celah dilacak | Persyaratan diselaraskan dengan mitra dan pelanggan |
| Bukti | Bukti dirakit dengan tangan untuk setiap permintaan | Beberapa catatan dihasilkan dari perkakas | Bukti sebagian besar berasal dari perkakas dan dijelaskan secara konsisten | Kualitas bukti diukur dan diperbaiki | Bukti dibagikan dengan auditor dan mitra secara otomatis |
| Kemutakhiran | Perubahan kerangka kerja tidak disadari | Beberapa orang mengikuti pengumuman | Seseorang yang ditunjuk melaporkan perubahan pada selang tetap | Perubahan dinilai dan ditindaklanjuti | Perubahan diantisipasi dan ditangani bersama mitra |

## Daftar periksa

- [ ] Kami dapat menyatakan kerangka kerja dan standar mana yang sebenarnya disyaratkan pelanggan, kontrak, atau regulator.
- [ ] Kami tahu mana yang panduan, mana standar yang dapat disertifikasi, dan mana model tata kelola.
- [ ] Klaim kami tentang sertifikasi akurat dan menyebut cakupan.
- [ ] Kami bekerja dari teks standar atau pemilik untuk setiap klaim kepatuhan.
- [ ] Praktik kami dijelaskan sekali dan dipetakan ke tiap kerangka kerja yang harus kami penuhi.
- [ ] Bukti untuk audit sebagian besar berasal dari perkakas kami.
- [ ] Kami telah membaca panduan agile dan DevOps dalam standar yang berlaku bagi kami.
- [ ] Seseorang ditunjuk untuk mengikuti pembaruan dan melaporkannya.
- [ ] Keputusan penyesuaian kami dituliskan.
- [ ] Kami telah meninjau apakah cakupan kami cocok dengan layanan nyata.

## Prompt AI

**Tujuan: memetakan persyaratan pelanggan ke teks kerangka kerja yang mendukungnya.**

```text
A customer or auditor has made this requirement: [paste the exact wording and where it appeared, for example a tender clause].

Here is the text of the relevant standard or framework, which I have copied from the owner's publication: [paste only text you are entitled to use; keep it short].

Using only the pasted text, say what the requirement appears to ask for, what is unclear, and what questions I should put to the customer. Do not describe the contents of any standard that I have not pasted. Do not say whether we comply. Ask clarifying questions first, and list what you are unsure of.
```

**Tujuan: menjelaskan praktik Anda sekali agar dapat dipetakan ke beberapa kerangka kerja.**

```text
Help me write a single plain-language description of how we handle [practice, e.g. "changes to production"].

How it works today, in steps, with the tools and records involved: [paste].
Frameworks we need to map it to: [list names; I will paste the relevant requirement text for each].

Produce a description in short numbered steps, then a table with one row per step and one column per framework showing which pasted requirement the step seems to address (only from my pasted text). Mark gaps as questions, not conclusions. Do not claim conformance. Ask clarifying questions first, and list what you are unsure of.
```

**Tujuan: bersiap menjawab "apakah Anda bersertifikat ITIL?" dengan jujur.**

```text
Write a short, honest reply to a customer who asks whether our company is "ITIL certified."

Facts I have verified from official sources: [paste, for example that certification in ITIL applies to individuals; and list the certifications our staff hold].
What we actually do: [describe our practice in a few sentences].
Other certifications we hold or are considering: [list].

The reply should be polite, accurate, under 150 words, and avoid overclaiming. Offer evidence we could share. Use only the facts I gave. Ask clarifying questions first if anything is missing, and list what you are unsure of.
```

**Tujuan: merencanakan bukti yang mungkin diminta audit manajemen layanan.**

```text
We expect an audit of our service management against [standard name and edition].

The records we produce today, and the tool each comes from: [list].
The requirement areas I know of, with the wording I have from the standard: [paste, or write "not yet read"].

Create a table of likely evidence by requirement area (from my pasted text only), the record we already have, the gap, and whether the record could come from a tool automatically. Do not invent requirements. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## Keterampilan AI

- [enterprise-architecture](../../../../skills/enterprise-architecture/SKILL.md): gunakan untuk menempatkan kerangka kerja manajemen layanan dalam gambaran arsitektur dan tata kelola perusahaan yang lebih luas.
- [legal-compliance-audit](../../../../skills/legal-compliance-audit/SKILL.md): gunakan untuk merencanakan persiapan audit terhadap standar atau persyaratan kontrak.
- [compliance-testing](../../../../skills/compliance-testing/SKILL.md): gunakan untuk merancang pemeriksaan yang menghasilkan bukti kesesuaian secara otomatis.
- [vendor-management](../../../../skills/vendor-management/SKILL.md): gunakan ketika cakupan sertifikasi bergantung pada pemasok dan Anda perlu merencanakan tinjauan pemasok.
- [project-management-body-of-knowledge](../../../../skills/project-management-body-of-knowledge/SKILL.md): gunakan ketika kerangka kerja seperti COBIT atau PMBOK Guide bertemu kantor proyek Anda.

## Sumber utama

- **ISO/IEC 20000-1** (International Organization for Standardization): standar itu sendiri; baca cakupan dan judul klausulnya di katalog ISO sebelum membuat klaim.
- **ISO/IEC 20000** (Wikipedia): sejarah, bagian, dan lanskap sertifikasi standar, dengan kutipan.
- **COBIT** (ISACA, dan Wikipedia): publikasi ISACA sendiri otoritatif; artikel Wikipedia memberi sejarah dan struktur tetapi bersumber lemah.
- **FitSM** (Wikipedia dan proyek FitSM): alternatif singkat berlisensi bebas; periksa halaman proyek untuk versi terkini.

## Referensi

1. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
2. ISO/IEC 20000 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_20000
3. COBIT — Wikipedia — https://en.wikipedia.org/wiki/COBIT
4. FitSM — Wikipedia — https://en.wikipedia.org/wiki/FitSM
5. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
6. CMMI — Wikipedia — https://en.wikipedia.org/wiki/CMMI
7. TOGAF — Wikipedia — https://en.wikipedia.org/wiki/TOGAF
8. ISACA — Wikipedia — https://en.wikipedia.org/wiki/ISACA
9. ISO/IEC 27001 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_27001
10. Microsoft Operations Framework — Wikipedia — https://en.wikipedia.org/wiki/Microsoft_Operations_Framework
