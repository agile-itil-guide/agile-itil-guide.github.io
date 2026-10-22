# Uundaji wa Programu kwa Njia ya Lean

**Uundaji wa programu kwa njia ya lean hutumia mawazo ya lean ya kuondoa upotevu, kujifunza haraka na kuboresha mfumo mzima kwa kazi ya programu, na huzipa timu za huduma njia ya pamoja ya kuona mahali muda na juhudi hupotelea kutoka kwenye mtiririko wa ombi hadi thamani.**

## Kwa nini hili ni muhimu

Mbinu za agile zinakuambia utoe kwa hatua ndogo na ujifunze. Lean inauliza swali kali zaidi: muda unaenda wapi? Katika mashirika mengi ya huduma, muda wa kufanya kazi kwenye ombi ni sehemu ndogo ya muda uliopita. Salio ni kusubiri idhini, makabidhiano kati ya timu, kurudia kazi kwa sababu ya kasoro, na kazi ambayo hakuna aliyeitaka tangu mwanzo. Lean inakupa maneno na zana za kuona upotevu huo na kuuondoa.

Lean pia huweka mkazo kwenye mfumo mzima. Timu inayoharakisha sehemu yake yenyewe huku foleni kabla au baada yake ikikua haijaboresha chochote kwa mteja. Mtazamo huu unafaa usimamizi wa huduma vizuri. Huduma ni jumla ya timu nyingi, zana na wasambazaji, na kuchelewa popote ni kuchelewa kwa mtumiaji. Kanuni ya "boresha mzima" ni ukumbusho wa kudumu wa kutazama mtiririko wa mwanzo hadi mwisho.

Lean ni chanzo cha mengi yanayoonekana kwingineko katika mwongozo huu. Kanban inatumia mizizi ileile (tazama Mada 1.5 — Kanban), usimamizi wa mtiririko wa thamani unatumia ramani ya lean kwa kazi ya kidijitali (tazama Mada 5.4 — Usimamizi wa Mtiririko wa Thamani), na uboreshaji endelevu unaakisi tabia ya lean ya faida ndogo za mara kwa mara (tazama Mada 3.15 — Uboreshaji Endelevu). Mada hii inaeleza mawazo na jinsi ya kuyatumia bila kuyageuza kuwa misemo.

## Dhana kuu

### Lean inakotoka

Kulingana na [makala ya Wikipedia kuhusu uzalishaji wa lean](https://en.wikipedia.org/wiki/Lean_manufacturing), lean ilikua kutoka [Mfumo wa Uzalishaji wa Toyota](https://en.wikipedia.org/wiki/Toyota_Production_System). Baada ya Vita vya Pili vya Dunia watengenezaji wa Kijapani walikuwa na fedha, nafasi au malighafi kidogo, na Taiichi Ohno na Shigeo Shingo walibuni upya mchakato wa Toyota kuzunguka viwanda vidogo na hifadhi ndogo, wakijenga juu ya mafundisho ya W. Edwards Deming. John Krafcik alibuni neno "lean" katika makala ya mwaka 1988, na James Womack na Daniel Jones walilifafanua rasmi katika kitabu chao cha mwaka 1996 *Lean Thinking*.

Neno "uundaji wa programu kwa njia ya lean" linatokana na kitabu cha mwaka 2003 *Lean Software Development: An Agile Toolkit* cha Mary na Tom Poppendieck, kulingana na [makala ya Wikipedia kuhusu uundaji wa programu kwa njia ya lean](https://en.wikipedia.org/wiki/Lean_software_development). Kitabu kinarekebisha kanuni za uzalishaji wa lean kwa programu na kulinganisha zana za lean na mazoea ya agile. Mazungumzo ya akina Poppendieck kwenye mikutano ya agile yalisaidia kuleta mawazo hayo katika jumuiya ya agile.

### Kanuni tano za fikra ya lean

Womack na Jones waliweka kanuni tano za fikra ya lean, kama makala ya uzalishaji yanavyozirekodi:

1. **Thamani:** fafanua thamani kutoka mtazamo wa mteja.
2. **Mtiririko wa thamani:** tambua mfululizo mzima wa hatua unaounda thamani hiyo, na uhoji hatua zisizoongeza chochote.
3. **Mtiririko:** fanya hatua zilizobaki zitiririke bila kukatizwa.
4. **Kuvuta:** wacha mahitaji ya mteja yavute kazi, badala ya kuisukuma.
5. **Ukamilifu:** endelea kuboresha, ili upotevu uendelee kuondolewa.

### Kanuni saba za programu

Makala ya Wikipedia kuhusu uundaji wa programu kwa njia ya lean yanaorodhesha kanuni saba za programu:

| Kanuni | Inaomba nini | Katika kazi ya huduma |
|---|---|---|
| **Ondoa upotevu** | Ondoa chochote kisichoongeza thamani kwa mteja | Acha idhini ambazo hazikatai kamwe, ripoti ambazo hakuna anayezisoma, na vipengele ambavyo hakuna anayevitumia |
| **Kuza kujifunza** | Fupisha mzunguko kutoka kujaribu kitu hadi kujifunza kilivyoenda | Toa mabadiliko madogo na uangalie watumiaji wanachofanya |
| **Amua kwa kuchelewa iwezekanavyo** | Chelewesha ahadi hadi uwe na ukweli, huku ukihifadhi chaguo wazi | Usiweke usanifu wa mustakabali kamili wa huduma kabla hujajua inavyotumika |
| **Toa kwa kasi iwezekanavyo** | Punguza muda kutoka wazo hadi thamani; utoaji wa haraka hukuruhusu kuona na kuchambua matokeo mapema | Fupisha njia ya mabadiliko madogo na maombi ya kawaida |
| **Wezesha timu** | Wacha watu wanaofanya kazi wafanye maamuzi kuihusu | Ipe dawati la huduma mamlaka ya kutatua matatizo ya kawaida bila kupandisha |
| **Jenga uadilifu ndani** | Jenga ubora wakati kazi inafanyika, badala ya kuukagua baadaye | Majaribio ya kiotomatiki, ufuatiliaji na miongozo wazi ya uendeshaji kama sehemu ya kazi |
| **Boresha mzima** | Boresha mtiririko wa mwanzo hadi mwisho, si utendaji wa sehemu moja | Pima muda kutoka ombi hadi utatuzi katika timu zote, si foleni ya kila timu peke yake |

Makala yanasema kanuni hizi hufanikiwa tu zinapotumika pamoja na kwa uamuzi mzuri kuhusu mazingira. Pia yanaita imani kwamba "haraka haraka haina baraka" ni hadithi, yakihoji kuwa utoaji wa haraka husaidia timu kuona na kuchambua matokeo mapema. Dai hilo ni mtazamo, si sheria: kasi bila ubora uliojengwa ndani hutoa upotevu, ndiyo maana "jenga uadilifu ndani" iko kando ya "toa kwa kasi iwezekanavyo."

### Upotevu katika kazi ya programu na huduma

Upotevu saba wa lean (unaoitwa *muda*) unatokana na orodha ya Shingo ya uzalishaji: hifadhi, uzalishaji kupita kiasi, usindikaji kupita kiasi, usafirishaji, mwendo wa ziada, kusubiri, na kasoro. Makala ya lean ya programu yanaupanga kwa programu hivi:

| Upotevu wa uzalishaji | Sawa na wake katika programu | Mfano katika timu ya huduma |
|---|---|---|
| Hifadhi | Kazi iliyokamilika sehemu | Orodha ndefu ya mabadiliko yaliyoanzishwa lakini hayajakamilika |
| Uzalishaji kupita kiasi | Vipengele vya ziada | Ripoti au huduma ambayo hakuna aliyeiomba |
| Usindikaji kupita kiasi | Michakato ya ziada | Idhini nne kwa badiliko lenye hatari ndogo |
| Usafirishaji | Kubadilisha kazi | Mhandisi anayevutwa kati ya matukio ya hitilafu na kazi ya mradi |
| Kusubiri | Kusubiri | Tiketi inayosubiri foleni ya timu nyingine |
| Mwendo | Makabidhiano | Ombi linalopita kwa watu watano |
| Kasoro | Kasoro | Hitilafu inayosababisha kurudia kazi na matukio yanayojirudia |

Istilahi za Kijapani *mura* (kutosawa) na *muri* (mzigo kupita kiasi) wakati mwingine huongezwa kwenye majadiliano ya upotevu. Makala ya Wikipedia yaliyotumika hapa yanaorodhesha upotevu saba tu, kwa hiyo tumia istilahi za ziada kwa uangalifu, na uzifafanue unapofanya hivyo.

### Ramani ya mtiririko wa thamani

Makala ya lean ya programu yanataja ramani ya mtiririko wa thamani (value stream mapping) kama mbinu ya kutafuta upotevu, huku upotevu ukiondolewa kwa raundi zinazorudiwa. Ramani inaonyesha kila hatua katika njia kutoka ombi hadi thamani iliyotolewa, pamoja na muda ambao kazi hutumia ikifanyiwa kazi na muda inaosubiri. Matokeo mara nyingi ni mshtuko: njia inayochukua wiki inaweza kuwa na saa chache za kazi halisi.

### Kuvuta, mtiririko, na kanban

Kanuni ya kuvuta ya lean ndiyo iliyo nyuma ya mipaka ya Kanban ya kazi inayoendelea. Makala ya programu yanaeleza uundaji wa wakati-unaofaa ambapo mteja anataja matokeo yanayohitajika na timu hupanga kazi zake yenyewe, ikivuta kazi kadiri uwezo unavyoruhusu. Kadi za Kanban ni umbo linaloonekana la kuvuta huko (tazama Mada 1.5 — Kanban).

### Kaizen: uboreshaji mdogo wa kila mara

Kaizen inamaanisha uboreshaji endelevu, wa nyongeza. Makala ya uzalishaji yanaifuatilia hadi timu za uboreshaji huko Toyota mwaka 1936. Katika timu ya huduma, inaonekana kama mabadiliko madogo yanayofanywa mara kwa mara na watu walio karibu zaidi na kazi, kama kiolezo kilichorekebishwa, ukaguzi mpya wa kiotomatiki, au makabidhiano wazi zaidi. Inatofautiana na programu kubwa za uboreshaji kwa kuwa haisubiri mzunguko wa bajeti kamwe.

### Mipaka ya lean

Makala yaliyotumika hayataji ukosoaji rasmi, lakini mipaka ya kivitendo inajulikana vizuri. Lean ilitokana na uzalishaji unaorudiwa, na kazi ya maarifa inatofautiana zaidi sana. Kuhesabu upotevu kunaweza kupunguza nafasi ambayo timu inahitaji kukabiliana na mshangao, kwa hiyo timu iliyojazwa kikamilifu ni polepole kuitikia tukio la hitilafu. Chukulia lean kama lenzi inayopata upotevu, na uhifadhi uwezo wa ziada pale mabadiliko ni makubwa (tazama Mada 3.11 — Upatikanaji, Uwezo, na Utendaji).

## Mazoea bora

1. **Fafanua thamani kutoka upande wa mteja.** Kwa kila huduma, andika mtumiaji anapata nini hasa na lini. Tumia hili kuhukumu kila hatua: je, inaongeza thamani kwa mtumiaji, au inahudumia mchakato wetu tu?
2. **Chora ramani ya mtiririko wa thamani kwa aina moja ya ombi halisi.** Chagua ombi au badiliko la kawaida, na ulifuatilie kutoka mawasiliano ya kwanza hadi utoaji. Rekodi muda wa kazi na muda wa kusubiri katika kila hatua. Ramani ghafi iliyochorwa kwa saa moja ina manufaa zaidi kuliko kamilifu iliyochorwa kwa robo mwaka.
3. **Taja upotevu unaoupata.** Tumia kategoria saba kama orodha ya ukaguzi: kazi iliyokamilika sehemu, vipengele vya ziada, mchakato wa ziada, kubadilisha kazi, kusubiri, makabidhiano, kasoro. Kuvitaja hufanya viwe rahisi kujadili bila kulaumu watu.
4. **Shambulia kusubiri kwa muda mrefu zaidi kwanza.** Ucheleweshaji mkubwa zaidi kwenye ramani kwa kawaida uko kati ya hatua, si ndani yake. Kuupunguza kwa kawaida ni bora kuliko kung'arisha hatua ambayo tayari ni ya haraka.
5. **Dhibiti kazi inayoendelea.** Kumaliza kazi ni haraka kuliko kuipapasa. Weka kikomo cha idadi ya vipengele vilivyo wazi kwa kila timu na uangalie kinachotokea kwa muda wa kila kimoja.
6. **Jenga ubora ndani.** Ongeza ukaguzi wakati wa kazi, kama majaribio ya kiotomatiki, mapitio ya wenzako na ufuatiliaji kabla ya toleo, ili kasoro zipatikane mapema. Kukagua mwishoni ni polepole na ghali zaidi.
7. **Chelewesha maamuzi ambayo bado huwezi kuyafanya vizuri.** Weka chaguo wazi hadi uwe na ukweli, lakini weka tarehe ambayo utaamua. Hii inaepuka ahadi za mapema kwa usanifu mbaya na kutoamua kusiko na mwisho.
8. **Wawezeshe watu walio karibu zaidi na kazi.** Wacha wachambuzi wa dawati la huduma, wahandisi walio zamu na wasanidi wafanye maamuzi ndani ya mipaka iliyo wazi. Taja mipaka, kama viwango vya matumizi au hatari, na uipitie baada ya matukio ya hitilafu.
9. **Tazama mzima, si sehemu.** Pima muda wa mwanzo hadi mwisho kutoka ombi hadi utatuzi, na uujadili na timu zote zinazohusika. Badiliko linalosaidia timu moja na kupunguza kasi ya nyingine si uboreshaji.
10. **Fanya uboreshaji uwe mdogo, wa mara kwa mara, na wa kienyeji.** Hamasisha kila timu kufanya uboreshaji mdogo mmoja kila wiki au mbili, na kushiriki ilichojifunza. Rekodi badiliko na matokeo yake.
11. **Hifadhi nafasi pale mabadiliko ni makubwa.** Usijaze kila saa ya timu iliyo zamu. Acha uwezo kwa mshangao, na uhukumu kwa jinsi timu inavyorejea haraka kitu kinapoharibika.
12. **Tumia lean pamoja na mazoea mengine.** Changanya ramani za mtiririko wa thamani na vipimo vya mtiririko kutoka Kanban, na usimamizi wa matatizo kwa kasoro zinazojirudia (tazama Mada 3.3 — Usimamizi wa Matatizo).

## Maswali ya kujadili na timu yako

**Kama tungefuata ombi moja la kawaida kuanzia mwanzo hadi mwisho, ni kiasi gani cha muda uliopita kingekuwa kazi halisi?**

Chagua ombi la kawaida na ukusanye tarehe za kila hatua. Weka alama muda ambao mtu alikuwa akilifanyia kazi na muda uliokaa kwenye foleni. Uwiano mara nyingi ni mshtuko. Waulize watu walitarajia kusubiri kuwa wapi, na kulikuwa wapi. Mwezeshaji apinge suluhisho mwanzoni na aiombe kundi likubaliane ramani inaonyesha nini.

**Ni upotevu gani kati ya saba tunauona mara nyingi zaidi katika kazi yetu ya kila siku?**

Wape watu orodha na uombe mfano wa hivi karibuni wa kila mmoja. Tarajia kazi iliyokamilika sehemu, kubadilisha kazi, kusubiri na makabidhiano kujitokeza mara nyingi. Uliza ni upi kati yake timu inaweza kuubadilisha peke yake na upi unahitaji timu nyingine au mameneja. Maliza kwa kuchagua upotevu mmoja wa kupunguza mwezi huu.

**Tunafanya nini ambacho wateja wetu hawangekikosa tukiacha?**

Orodhesha ripoti, mikutano, fomu na idhini. Kwa kila moja, uliza nani anaitumia na nini kinatokea ikiacha. Baadhi zitahitajika kwa ukaguzi au usalama, ambayo ni sababu nzuri. Nyingine zitabainika kuwa mazoea tu. Mpe mtu kazi ya kuhakiki kila kipengele chenye shaka kabla ya kukiondoa.

**Tunakagua ubora mwishoni badala ya kuujenga ndani wapi?**

Tazama michakato yenu ya toleo, mabadiliko na matukio ya hitilafu kutafuta ukaguzi wa mwisho wa mstari. Uliza kasoro gani ukaguzi huo hupata na zingeweza kupatikana mapema lini. Majibu ya kawaida yanajumuisha majaribio baada ya uundaji kuisha na mapitio ya nyaraka baada ya tukio. Chagua ukaguzi mmoja wa kuuhamisha mapema na ueleze mtajuaje kama ulisaidia.

**Nani anaweza kufanya maamuzi katika timu yetu bila kuuliza, na nani anapaswa?**

Waombe watu wataje maamuzi matano ya mwisho waliyotaka kufanya na hawakuweza, na kwa nini. Tafuta mifumo, kama viwango vya matumizi, idhini za mabadiliko, au maamuzi ya kipaumbele. Uliza nini kingefanya iwe salama kusogeza uamuzi mmoja wa hayo karibu na kazi, kama kizuizi cha usalama au mapitio ya baadaye. Usilazimishe jibu "ndiyo"; lengo ni kugundua watu wanachoamini kinahitajika.

**Kama kila kitu tunachofanya sasa kingeharakishwa, nini kingevunjika kwanza?**

Swali hili hujaribu "toa kwa kasi iwezekanavyo" na "jenga uadilifu ndani" pamoja. Uliza ni wapi mtiririko wa haraka zaidi ungezidisha timu, zana au mtu. Majibu ya kawaida ni majaribio, idhini na mzigo wa zamu. Chukulia majibu kama mambo yanayofuata ya kuboresha. Kumbuka kuwa lean inathamini mtiririko wa mfumo mzima, kwa hiyo kizuizi ndipo pa kuwekeza.

## Kwa vitendo: mfano wa agile ITIL

Idara ya TEHAMA ya mamlaka ya kitaifa ya kodi inaendesha huduma ya ndani kwa wafanyakazi kuomba ufikiaji wa programu. Ombi la kawaida huchukua takriban wiki tatu, na wafanyakazi wanalalamika kwa sauti kubwa. Timu ya watu watano inayotimiza maombi inaamini inafanya kazi kwa bidii na inashangazwa na malalamiko.

Meneja anaongoza kipindi cha ramani ya mtiririko wa thamani na timu, kikundi cha usalama na watumiaji wawili wa biashara. Kwa pamoja wanafuatilia maombi kumi ya hivi karibuni. Kila ombi hupita katika hatua nane: kuwasilisha fomu, idhini ya meneja wa moja kwa moja, idhini ya mmiliki wa data, mapitio ya usalama, ukaguzi wa leseni, kugawa tiketi, usakinishaji na uthibitisho. Ramani inaonyesha kuwa kazi halisi inachukua takriban saa moja, na karibu wiki tatu zote ni kusubiri kati ya hatua, hasa idhini mbili na mapitio ya usalama. Katika visa vitatu kati ya kumi, ombi lilirudishwa kwa mtumiaji kwa sababu ya sehemu iliyokosekana kwenye fomu.

Kundi linakubaliana mabadiliko matatu. Fomu inapata sehemu za lazima na mwongozo mfupi, jambo linaloondoa marejesho. Maombi ya orodha fupi ya programu za kawaida zenye hatari ndogo yanapata idhini moja kutoka kwa meneja wa moja kwa moja, huku mmiliki wa data akijulishwa. Kikundi cha usalama kinakubali kukagua sampuli ya maombi hayo kila wiki, badala ya kila ombi kabla ya usakinishaji. Baada ya miezi miwili, muda wa kawaida unashuka hadi takriban wiki moja. Ugumu unabaki: maombi ya programu nyeti bado yanachukua wiki tatu, na kikundi cha usalama kinabainisha kuwa kuchukua sampuli kulikamata maombi mawili yaliyopaswa kukataliwa. Wanarekebisha orodha ya programu zinazostahili idhini ya haraka, na kuamua kuipitia kila robo mwaka.

## Mitazamo minne

### Timu za bidhaa na utoaji

Timu za utoaji zinaweza kutumia lean kutazama zaidi ya mbio fupi au ubao wao wenyewe. Chora ramani ya njia kutoka wazo hadi mikononi mwa mtumiaji, ikijumuisha majaribio, mapitio ya usalama na idhini za toleo, na upate mahali kazi inaposubiri. Chukulia kazi isiyokamilika kama upotevu, na upendelee kumaliza kuliko kuanza.

### Timu za huduma na uendeshaji

Timu za uendeshaji huona upotevu kila siku: matukio ya hitilafu yanayojirudia, makabidhiano kati ya ngazi, na maombi yanayorudi. Tumia ramani kuonyesha mahali kazi inaposubiri, na utumie usimamizi wa matatizo kuondoa visababishi vya marudio. Tetea uwezo wa ziada kwa kuonyesha kinachotokea kwa mtiririko kila saa inapopangwa.

### Uongozi na utawala

Viongozi huunda mfumo unaozalisha upotevu mwingi: kanuni za idhini, mizunguko ya ufadhili na kuripoti. Uliza timu zako mahali kanuni hizo zinapogharimu muda mwingi zaidi na kila moja inalinda dhidi ya hatari gani. Uwe tayari kubadilisha udhibiti na ukaguzi mwepesi unaotimiza madhumuni yaleyale.

### Wateja na watumiaji

Wateja hufafanua thamani katika fikra ya lean, na huhisi upotevu kama kuchelewa. Tarajia kuulizwa unahitaji nini hasa na lini. Iambie timu ni sehemu gani ya huduma ni muhimu zaidi kwako, kwa kuwa hilo linaongoza juhudi zinakoelekezwa. Kwa upande wake, unaweza kutarajia kusubiri kwa muda mfupi na kutabirika zaidi.

## Sababu za kawaida za kushindwa

- **Kupunguza uwezo kwa jina la upotevu.** Timu hufanya kazi kwa mzigo kamili na haziwezi kuitikia mshangao. Badala yake, hifadhi nafasi pale mabadiliko ni makubwa na uhukumu kwa jinsi timu inavyorejea haraka.
- **Kuchora ramani bila kuchukua hatua.** Ramani ya mtiririko wa thamani inakwenda ukutani na hakuna kinachobadilika. Badala yake, chagua kusubiri kubwa zaidi na ukubaliane badiliko moja lenye mmiliki kabla kipindi hakijaisha.
- **Kuboresha timu moja.** Faida ya kienyeji huhamisha foleni kwingineko. Badala yake, pima muda wa mwanzo hadi mwisho na ukubaliane mabadiliko na timu zote kwenye mtiririko.
- **Kuondoa udhibiti bila kuuelewa.** Hatua iliyoonekana kama upotevu ilikuwa ikilinda dhidi ya hatari halisi. Badala yake, uliza kila hatua inalinda nini na uibadilishe na ukaguzi mwepesi pale unapoweza.
- **Kutumia maneno ya lean kama misemo.** Watu husema "upotevu" kupuuza kazi ya wenzao. Badala yake, tumia istilahi kuelezea mtiririko na uweke mazungumzo kuhusu mfumo.
- **Kusukuma kasi kuliko ubora.** Utoaji wa haraka hutoa kasoro na kurudia kazi zaidi. Badala yake, chukulia "jenga uadilifu ndani" kama sharti la kasi.
- **Kutumia nambari za uzalishaji kwa kazi ya maarifa.** Malengo ya kiwanda hayafai kazi inayobadilika. Badala yake, tumia lean kama njia ya kuona na kuuliza, na uweke vipimo kutokana na data yako mwenyewe.
- **Kuchukulia lean kama mradi wa mara moja.** Faida hufifia umakini unapohamia kwingine. Badala yake, fanya maboresho madogo kuwa sehemu ya utaratibu wa kila timu.

## Modeli ya ukomavu

| Nyanja | Kuanza | Kukua | Kusanifisha | Kusimamia | Kuratibu |
|---|---|---|---|---|---|
| Kuona upotevu | Upotevu unahisiwa lakini haujaelezwa | Baadhi ya timu huchora ramani ya kazi yao | Timu hutumia kategoria za upotevu zilizoshirikiwa na ramani za mtiririko wa thamani | Kusubiri na kurudia kazi hupimwa kando ya mtiririko wa thamani | Ramani na vipimo vinavuka timu na wasambazaji |
| Mtiririko na kuvuta | Kazi inasukumwa na kuanzishwa kwa wingi | Baadhi ya timu hudhibiti kazi inayoendelea | Kanuni za kuvuta na mipaka ni za kawaida | Vipimo vya mtiririko huongoza mabadiliko ya mipaka na sera | Mtiririko huratibiwa katika mkondo mzima |
| Kujenga ubora ndani | Ubora hukaguliwa mwishoni | Baadhi ya timu hujaribu mapema na kupitia kazi | Ukaguzi wa kiotomatiki na mapitio yaliyojengwa ndani ni ya kawaida | Viwango vya kasoro zinazotoroka hufuatiliwa na kupunguzwa | Mazoea ya ubora hushirikiwa na kuboreshwa katika timu |
| Uboreshaji endelevu | Uboreshaji hufuata migogoro | Baadhi ya timu hufanya mabadiliko madogo ya mara kwa mara | Kila timu ina utaratibu wa kawaida wa uboreshaji | Maboresho hufuatiliwa na athari yake hukaguliwa | Maboresho huenea kati ya timu na wasambazaji kama kawaida |

## Orodha hakiki

- [ ] Tumefafanua thamani inamaanisha nini kwa angalau huduma moja kutoka upande wa mtumiaji.
- [ ] Tumechora ramani ya mtiririko wa thamani kwa aina moja ya ombi la kawaida, pamoja na muda wa kazi na muda wa kusubiri.
- [ ] Timu inaweza kutaja upotevu saba na kutoa mfano wa hivi karibuni wa kila mmoja.
- [ ] Kazi inayoendelea imedhibitiwa, na kazi isiyokamilika inaonekana.
- [ ] Ukaguzi wa ubora hufanyika wakati wa kazi na vilevile mwishoni.
- [ ] Tumechagua angalau kusubiri kumoja kupunguza, na mmiliki na tarehe.
- [ ] Timu ina mipaka iliyo wazi kwa maamuzi inayoweza kufanya bila kuuliza.
- [ ] Tunapima muda wa mwanzo hadi mwisho kwa angalau mtiririko mmoja katika timu.
- [ ] Tunahifadhi uwezo wa ziada kwa mshangao pale mahitaji yanapobadilika.
- [ ] Kila timu hufanya na kurekodi uboreshaji mdogo kwa mdundo wa kawaida.

## Maelekezo ya AI

**Madhumuni: kuchambua mtiririko wa thamani kutoka nyakati unazozitoa.**

```text
Help me analyze a value stream for [type of request, e.g. "software access requests"].

Here are the steps in order, with who does each step, how long work was actually done on it, and how long the item waited before and after it. Use real numbers from a few recent cases: [paste as a table, with one row per step and one column per case].

Calculate, using only my numbers, the total elapsed time, the total working time, and the share of time spent waiting. Identify the three longest waits. For each wait, ask what the step protects against, and suggest one lighter alternative. Do not invent data. If numbers are missing, ask me first, mark assumptions, and list what you are unsure of.
```

**Madhumuni: kuainisha mifano ya upotevu kutoka kazi ya timu yako mwenyewe.**

```text
Here is a list of things that frustrate our team or customers: [paste 8-12 short, factual examples].

Classify each one under the seven wastes of lean software development: partially done work, extra features, extra process, task switching, waiting, handoffs, and defects. If an item does not fit any, say so. Give one sentence of reasoning per item based only on what I wrote. Then say which two categories seem most common in this list and suggest two questions the team should discuss. Mark assumptions, and list what you are unsure of.
```

**Madhumuni: kujaribu kama kuondoa udhibiti ni salama.**

```text
We are considering removing or simplifying this control: [describe the approval, report, or step].

What we believe it is for: [describe the purpose, or write "unknown"].
Who uses its output: [list people or teams, or write "unknown"].
Rules we know apply (audit, security, legal), with the actual text if you have it: [paste text, or write "none known"].

List the questions we should answer before changing it. Describe two lighter ways to meet its purpose, and a way to check after the change that nothing worse happened. Do not claim any law or standard applies unless I pasted its text. Mark assumptions, and list what you are unsure of.
```

**Madhumuni: kupanga warsha ya ramani ya mtiririko wa thamani.**

```text
Plan a 90-minute value stream mapping workshop for [number] people from [teams or roles]. We want to examine [request type or service].

Include: a timed agenda, who must attend, what data to bring (use only data we really have), how to draw the map step by step, how to mark working time and waiting time, and a closing step that records one agreed change with an owner and a date. Keep it free of any particular tool. Ask clarifying questions first if information is missing, and list what you are unsure of.
```

## Ujuzi wa AI

- [value-stream-map](../../../../skills/value-stream-map/SKILL.md): tumia kuchora ramani ya hatua, muda wa kazi na muda wa kusubiri wa ombi kutoka mwanzo hadi mwisho.
- [kaizen](../../../../skills/kaizen/SKILL.md): tumia kupanga maboresho madogo, endelevu upotevu unapopatikana.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md): tumia kuchambua jinsi kazi inavyosogea kati ya majukumu na kupata makabidhiano na ucheleweshaji.
- [kanban](../../../../skills/kanban/SKILL.md): tumia kutekeleza kuvuta na mipaka ya kazi inayoendelea kwenye mtiririko ulioupata ramani.
- [six-sigma](../../../../skills/six-sigma/SKILL.md): tumia pale kasoro na tofauti, si kusubiri tu, ndizo tatizo kuu na unahitaji mbinu inayotegemea data kuzipunguza.

## Vyanzo muhimu

- **Lean software development** (Wikipedia): kanuni saba, upangaji wa upotevu, na viungo vya usomaji zaidi.
- **Lean manufacturing** (Wikipedia): historia ya lean huko Toyota, upotevu, na kanuni tano za fikra ya lean.
- **Lean Software Development: An Agile Toolkit** (Mary na Tom Poppendieck, 2003): kitabu kilicholeta mawazo ya lean katika jumuiya ya agile.
- **Lean Thinking** (James Womack na Daniel Jones, 1996): kauli rasmi ya kanuni tano za lean.

## Marejeo

1. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
2. Lean manufacturing — Wikipedia — https://en.wikipedia.org/wiki/Lean_manufacturing
3. Toyota Production System — Wikipedia — https://en.wikipedia.org/wiki/Toyota_Production_System
4. Kaizen — Wikipedia — https://en.wikipedia.org/wiki/Kaizen
5. Value-stream mapping — Wikipedia — https://en.wikipedia.org/wiki/Value-stream_mapping
6. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
7. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
8. Muda (Japanese term) — Wikipedia — https://en.wikipedia.org/wiki/Muda_(Japanese_term)
