# Uhandisi wa Uaminifu wa Tovuti

**Uhandisi wa uaminifu wa tovuti huchukulia uendeshaji kama tatizo la uhandisi, ukitumia malengo ya kiwango cha huduma, bajeti za makosa, na kikomo cha kazi ya mkono inayojirudia ili kuweka huduma zikitegemewa huku zikibadilika kwa haraka.**

## Kwa nini hili ni muhimu

Mazoea mengi ya usimamizi wa huduma yalibuniwa kwa ulimwengu ambamo wafanyakazi wa uendeshaji waliendesha programu iliyoandikwa na wengine, na gharama ya kuendesha ilikua na ukubwa wa huduma. Uhandisi wa uaminifu wa tovuti (SRE) ni jibu la shirika moja kwa kinachotokea mfano huo unapofika ukubwa mkubwa sana: waombe wahandisi wa programu wabuni na kuendesha kazi ya uendeshaji, na ufanye mfumo ufanye kazi ambayo watu vinginevyo wangeifanya kwa mkono.

Kwa wasomaji wa mwongozo huu, SRE ni muhimu kwa sababu tatu. Inafanya mabadilishano kati ya kasi na kutegemewa kuwa wazi, kwa nambari ambazo timu za bidhaa na uendeshaji zinaweza kuzisoma. Inatoa wazo thabiti la kazi ya mkono kiasi gani ni nyingi mno. Na inaonyesha jinsi mazoea mengi ya ITIL, kama usimamizi wa matukio ya hitilafu, matatizo, mabadiliko, na uwezo, yanavyoweza kufanywa kwa istilahi za uhandisi. SRE si njia pekee ya kuyafanya haya, na inatokana na hali za kampuni kubwa sana ya mtandao, kwa hiyo kinachohamishika kinategemea hali yako.

Mada hii inategemea hasa sura tatu za kitabu cha Google *Site Reliability Engineering*, ikiongezewa na makala ya Wikipedia kuhusu SRE. Kitabu kinaeleza zoezi katika shirika moja na kutetea mbinu yake; makala ya Wikipedia yanatoa picha pana zaidi lakini nyembamba na hayataji ukosoaji wowote. Soma vyote viwili kama vyanzo vya mawazo ya kujaribu, si kiwango.

## Dhana kuu

### SRE ni nini

Utangulizi wa kitabu unafafanua SRE kama "kinachotokea unapomwomba mhandisi wa programu abuni timu ya uendeshaji." [Makala ya Wikipedia kuhusu uhandisi wa uaminifu wa tovuti](https://en.wikipedia.org/wiki/Site_reliability_engineering) yanaeleza kama nidhamu ndani ya uhandisi wa programu na msaada wa miundombinu ya TEHAMA inayofuatilia na kuboresha upatikanaji na utendaji wa programu iliyopelekwa na huduma kubwa, kwa kuzingatia otomatiki na miundombinu kama msimbo. Makala yanaita SRE utekelezaji mahususi wa DevOps, mwembamba zaidi katika wigo kwa sababu unazingatia kujenga mifumo inayotegemewa (tazama Mada 5.2 — DevOps). Kitabu kinaeleza DevOps kama seti pana ya kanuni ambazo SRE inazitekeleza kwa njia mahususi.

Kulingana na makala, zoezi la SRE la Google lilianza mwaka 2003 Benjamin Treynor Sloss alipojiunga na kuunda timu kutoka wahandisi saba wa uzalishaji; kufikia 2016 timu ilikuwa na SRE zaidi ya 1,000, na kampuni nyingine kubwa za mtandao zilikuwa zimepokea zoezi hilo. Utafiti wa 2020 wa wataalamu 572 ulipata timu za SRE katika asilimia 64 ya mashirika yenye wafanyakazi 10,000 au zaidi, asilimia 44 ya yale yenye 101 hadi 1,000, na asilimia 32 ya yale yenye 100 au chini. Mfululizo wa mikutano SREcon umefanyika kila mwaka tangu 2014.

### Tatizo ambalo SRE inashughulikia

Utangulizi unaeleza mfano wa jadi: wasanidi na wasimamizi wa mifumo wamegawanywa katika timu tofauti. Unataja aina mbili za gharama:

- **Gharama za moja kwa moja.** Usimamizi wa mabadiliko wa mkono na kushughulikia matukio ya mfumo huwa ghali, kwa sababu timu ya uendeshaji hukua na mzigo.
- **Gharama zisizo za moja kwa moja.** Timu zina misamiati, vichocheo, na dhana tofauti kuhusu hatari, jambo linalosababisha mgogoro juu ya matoleo. Uendeshaji huongeza malango ya uzinduzi, na wasanidi hujibu kwa njia za kuzunguka.

SRE inalenga kuepuka mgawanyiko huu kwa kuchukulia uendeshaji kama tatizo la uhandisi. Sura inasema ukubwa wa timu hukua polepole kuliko mfumo, kwa sababu uhandisi huzuia mzigo wa uendeshaji kukua sambamba na trafiki.

### Kanuni za msingi

Utangulizi unaorodhesha maeneo ambayo timu za SRE zinawajibika: upatikanaji, ucheleweshaji, utendaji, ufanisi, usimamizi wa mabadiliko, ufuatiliaji, mwitikio wa dharura, na upangaji wa uwezo. Makala ya Wikipedia yanaorodhesha mazoea makuu yanayojumuisha kuweka kazi inayojirudia kiotomatiki, kufafanua malengo ya kutegemewa kupitia viashiria vya kiwango cha huduma (SLI), malengo (SLO), na bajeti za makosa, kubuni mifumo kupunguza hatari, uonekanaji na ufuatiliaji, kusimamia toil, mchakato wa usimamizi wa matukio ya hitilafu uliojaribiwa, na upangaji wa uwezo, usimamizi wa matoleo, na uhandisi wa machafuko.

### Malengo ya kiwango cha huduma na bajeti za makosa

SRE inafunga kutegemewa na shabaha wazi (tazama Mada 3.7 — Usimamizi wa Kiwango cha Huduma kwa maelezo kamili). Kwa ufupi:

- Chagua viashiria vichache vinavyoakisi wanachojali watumiaji.
- Weka lengo ambalo halidai ukamilifu.
- Ruhusu **bajeti ya makosa**: nafasi kati ya ukamilifu na lengo.
- Tumia bajeti kuamua kasi ya matoleo: bajeti ikibaki, matoleo yanaendelea; ikiisha, matoleo hupunguzwa na juhudi huhamia kutegemewa.

Sura ya "Embracing Risk" inaeleza kwa nini: timu za bidhaa hupimwa kwa kasi na timu za kutegemewa kwa kutegemewa, jambo linalounda mvutano, na bajeti inawapa wote kipimo cha pamoja, cha kimalengo. Sura hiyo hiyo inasema gharama za kutegemewa hupanda kwa kasi na kwamba lengo ni kulinganisha hatari ya huduma na kile ambacho biashara itakubali (tazama Mada 3.11 — Upatikanaji, Uwezo, na Utendaji).

### Toil

Sura ya "Eliminating Toil" inafafanua **toil** kama kazi ya uendeshaji inayohusiana na kuendesha huduma ya uzalishaji, na inasema si tu kazi ambayo mtu hapendi na ni tofauti na mzigo wa ziada kama mikutano. Toil huelekea kuwa:

| Sifa | Maana |
|---|---|
| **Ya mkono** | Inahitaji juhudi ya binadamu mwenyewe, hata kama hati inaendesha hatua |
| **Inayojirudia** | Inafanywa mara kwa mara, si tatizo jipya |
| **Inayoweza kuwekwa kiotomatiki** | Mashine ingeweza kuifanya, au hitaji lingeweza kubuniwa liondoke |
| **Ya kimbinu** | Inayoendeshwa na kukatizwa na inayojibu, kama kujibu miito |
| **Isiyo na thamani ya kudumu** | Huduma iko katika hali ileile baadaye |
| **Inayokua sambamba na ukuaji** | Juhudi hupanda kulingana na ukubwa wa huduma, trafiki, au watumiaji |

Kitabu kinasema SRE hulenga kuweka toil chini ya asilimia 50 ya muda wao, huku angalau nusu ikitumika kwa kazi ya miradi ya uhandisi, na utangulizi unaweka kikomo cha asilimia 50 kwa kazi ya jumla ya "uendeshaji," ukirudisha ziada kwa timu za uendelezaji. Unasema toil nyingi mno husababisha kudumaa kwa taaluma, ari ndogo, na uchovu, hupunguza kasi ya kazi ya vipengele, na huchochea kuondoka kwa watu; "toil huwa sumu inapopatikana kwa wingi," ingawa kiasi kidogo kinaweza kutuliza na baadhi haiepukiki. Sura inatoa njia ya kukokotoa kiwango cha chini ambacho mwito wa dharura unalazimisha (kwa mfano kikomo cha chini cha asilimia 33 kwa ratiba ya watu sita chini ya dhana za mfano wake) na inaripoti kuwa kukatizwa kulikuwa chanzo kikubwa zaidi cha toil, kikifuatiwa na mwitikio wa mwito wa dharura kisha matoleo. Inafafanua kazi ya uhandisi kama mpya, inayohitaji uamuzi, inayozalisha uboreshaji wa kudumu, na inayofuata mkakati.

### Mwitikio wa dharura na ufuatiliaji

Utangulizi unasema ufuatiliaji haupaswi kuhitaji binadamu kutafsiri tahadhari: programu hutafsiri data na binadamu huarifiwa tu hatua inapohitajika (tazama Mada 3.10 — Ufuatiliaji na Usimamizi wa Matukio ya Mfumo). Unasema SRE walio kwenye mwito wa dharura wanapaswa kupokea matukio yasiyozidi takriban mawili kwa zamu. Unadai kuwa miongozo ya kazi (playbooks) hutoa uboreshaji wa takriban mara tatu katika wastani wa muda wa kurekebisha ikilinganishwa na kuboresha papo hapo. Ushughulikiaji wa matukio ya hitilafu hufuata mbinu ya amri ya tukio, na mapitio ya baada ya tukio hayana lawama na huandikwa kwa matukio yote makubwa ya hitilafu (tazama Mada 3.2 — Usimamizi wa Matukio ya Hitilafu).

### Usimamizi wa mabadiliko

Utangulizi unasema takriban asilimia 70 ya kukatika hutokana na mabadiliko kwa mfumo hai, na unapendekeza usambazaji wa taratibu, ugunduzi wa haraka wa matatizo, na kurudisha nyuma kwa usalama. Hili ni dai la kitabu chenyewe, kutoka uzoefu wa Google, na huenda lisishikilie kwa kila shirika. Ujumbe wake unalingana na mwongozo wa DORA kuhusu mabadiliko (tazama Mada 3.4 — Uwezeshaji wa Mabadiliko na Mada 3.5 — Usimamizi wa Matoleo na Upelekaji).

### SRE na ITIL

SRE inaweza kusomwa kama njia ya kihandisi ya kutekeleza mazoea kadhaa ya ITIL:

| Zoezi la ITIL | Mbinu ya SRE |
|---|---|
| Usimamizi wa matukio ya hitilafu | Majukumu ya amri ya tukio, rekodi hai ya tukio, mapitio ya baada ya tukio bila lawama |
| Usimamizi wa matatizo | Hatua za mapitio ya baada ya tukio katika orodha ya kazi, kuondoa toil kwenye chanzo |
| Uwezeshaji wa mabadiliko | Usambazaji wa taratibu, ugunduzi wa haraka, kurudisha nyuma kwa usalama, ukaguzi wa kiotomatiki |
| Usimamizi wa kiwango cha huduma | SLI, SLO, bajeti za makosa |
| Ufuatiliaji na usimamizi wa matukio ya mfumo | Tahadhari kwa dalili, ishara nne za dhahabu |
| Usimamizi wa uwezo | Upangaji wa uwezo kama kazi ya uhandisi, pamoja na majaribio ya mzigo |
| Uboreshaji endelevu | Kikomo cha toil, miradi ya uhandisi kama kazi kuu |

Ramani hii ni ya mwongozo huu, si ya vyanzo. Wala kitabu wala makala ya Wikipedia hayadai kutekeleza ITIL.

### Miundo ya upelekaji

Makala ya Wikipedia yanaeleza miundo sita ya kishirika kwa SRE: "Kitchen Sink," miundombinu, zana, bidhaa au programu, iliyopachikwa, na ushauri. Yanasema mchanganyiko ni wa kawaida katika mashirika makubwa, lakini yanaweka alama ya dai hilo kuhitaji nukuu. Muundo upi unakufaa unategemea ukubwa wako na idadi ya huduma.

### Mipaka na ukosoaji

Makala ya Wikipedia hayataji ukosoaji, gharama, wala njia za kushindwa, na kitabu kinaeleza mafanikio ya shirika moja. Mipaka ya kivitendo inajulikana vizuri kutoka uzoefu, na inatolewa hapa kama hivyo: SRE inahitaji wahandisi wanaoweza kuandika programu na walio tayari kufanya uendeshaji; kikomo cha asilimia 50 kinahitaji uungaji mkono wa menejimenti; bajeti za makosa zinafanya kazi tu ikiwa timu za bidhaa zinaziheshimu; na mbinu ni ngumu kunakili bila ukubwa na zana zilizoizalisha. Mashirika madogo yanaweza kupokea mawazo, kama malengo, bajeti, upimaji wa toil, na mapitio bila lawama, bila kuunda timu.

## Mazoea bora

1. **Chagua huduma moja na uweke lengo.** Chagua viashiria viwili hadi vinne vinavyoakisi uzoefu wa mtumiaji, weka lengo la kwanza lisilobana, na upime kwa miezi michache kabla ya kulibana.
2. **Kubaliana sera ya bajeti ya makosa.** Andika nini kinatokea bajeti inapokaribia kwisha na inapokwisha, na nani anaweza kupuuza. Ifanye kanuni ya pamoja ya bidhaa na uendeshaji.
3. **Pima toil.** Waombe watu kurekodi kiasi cha muda wao kinachoenda kwa kazi ya uendeshaji ya mkono, inayojirudia. Tumia sifa sita kuiainisha. Tazama vyanzo vikuu.
4. **Weka kikomo cha kazi ya mkono.** Weka dari ya toil, kama nusu ya muda wa mtu, na uipitie. Kikomo kinapozidiwa, rudisha kazi ya ziada kwa timu zinazomiliki sababu au punguza wigo.
5. **Weka toil kubwa zaidi kiotomatiki kwanza.** Chagua kipengee kinachogharimu muda mwingi zaidi na kinachojirudia zaidi, kiweke kiotomatiki kwa majaribio, na upime akiba. Pendelea kubuni hitaji liondoke kuliko kulifanya kiotomatiki.
6. **Linda muda wa uhandisi.** Panga kazi ya miradi kwa wahandisi wa uendeshaji kama kazi halisi yenye wamiliki na tarehe. Bila hiyo, toil hupanuka.
7. **Punguza kukatizwa.** Lenga matukio machache kwa kila zamu ya mwito wa dharura, rekebisha tahadhari ili miito iwe ya kuchukuliwa hatua, na urekebishe sababu zinazojirudia. Mwongozo wa kitabu ni matukio mawili kwa zamu kwa upeo.
8. **Andika miongozo ya kazi.** Kwa hitilafu za kawaida, andika hatua fupi, zilizojaribiwa za mwitikio. Kitabu kinadai zinaboresha muda wa kurekebisha ikilinganishwa na kuboresha papo hapo.
9. **Fanya mabadiliko kuwa ya taratibu na yanayoweza kurudishwa.** Sambaza hatua kwa hatua, gundua matatizo haraka, na urudishe nyuma kwa usalama. Kwa kuwa mabadiliko ndiyo sababu ya kawaida zaidi ya kukatika katika uzoefu wa kitabu, wekeza hapa kwanza.
10. **Endesha mapitio ya baada ya tukio bila lawama kwa matukio makubwa ya hitilafu,** ikijumuisha yaliyokaribia ambayo hayakuita. Geuza hatua kuwa vipengee vya orodha ya kazi.
11. **Anza na mawazo, si timu.** Mashirika madogo yanaweza kupokea malengo, bajeti, vipimo vya toil, na mapitio ya baada ya tukio kwa wafanyakazi waliopo kabla ya kuunda timu maalum.
12. **Chagua muundo wa kishirika kwa makusudi.** Ukiunda kazi ya SRE, amua kama inatoa zana, inapachikwa na timu za bidhaa, au inashauri, na upitie uchaguzi unapokua.

## Maswali ya kujadili na timu yako

**Ni huduma ipi tungeiwekea lengo kwanza, na lengo lingekuwa nini?**

Mwombe kila mtu ataje huduma na kiashiria kinachoakisi vizuri zaidi uzoefu wa mtumiaji. Linganisha. Tofauti zinaonyesha vipaumbele visivyo wazi. Mwezeshaji anaweza kuuliza nini kinatokea leo huduma inapokuwa polepole au haipatikani kuliko watumiaji wanavyotarajia. Kubaliana huduma ya kuanza nayo na cha kupima.

**Tungefanya nini tukitumia bajeti yetu yote ya makosa mwezi huu?**

Waombe timu na mwakilishi wa bidhaa waeleze hatua, nani anaamua, na nini kinalindwa. Timu nyingi hazijawahi kukubaliana. Jadili kama kusitisha matoleo ya hatari kungekubaliwa. Andika sera ya ukurasa mmoja.

**Ni kiasi gani cha wiki yetu ni toil, na vyanzo vitatu vikuu ni vipi?**

Waombe watu wakadirie kisha wahifadhi rekodi kwa wiki mbili. Linganisha makadirio na rekodi. Lengo ni kuona umbo la kazi, si kulaumu. Chagua chanzo kikubwa zaidi na uulize kama kinaweza kuondolewa kwa muundo.

**Ni kazi gani ya mkono inayojirudia ambayo hati au badiliko la muundo linaweza kuondoa?**

Orodhesha kazi ambazo watu huzichukia. Kwa kila moja, kadiria mara kwa mara na muda. Wagombea bora ni wa mara kwa mara, thabiti, na wa hatari ndogo. Uliza nini kingefanya otomatiki kuwa salama, kama mipaka na kumbukumbu. Chagua moja ya kuweka kiotomatiki.

**Kila zamu ya mwito wa dharura inapata matukio mangapi, na mangapi yanahitaji hatua?**

Hesabu kwa robo mwaka iliyopita. Kama idadi ni kubwa, jadili inatoka wapi. Utangulizi unapendekeza kulenga takriban matukio mawili kwa zamu. Chagua chanzo kimoja cha tahadhari cha kurekebisha.

**Tungepoteza nini na kupata nini tukiunda timu maalum ya kutegemewa?**

Omba maoni ya kweli. Faida zinaweza kuwa umakini na ujuzi; hasara zinaweza kuwa kitengo kipya au kutupa kazi ya uendeshaji. Jadili mbadala kama wahandisi waliopachikwa au ratiba ya kupokezana. Amua cha kujaribu kwa kiwango kidogo.

## Kwa vitendo: mfano wa agile ITIL

Msambazaji wa umeme wa kikanda anaendesha programu ya kuripoti kukatika kwa umeme na mfumo wa kutuma wafanyakazi wa uwandani. Timu iliyounganishwa ya watu kumi na nane inajenga na kuendesha yote mawili. Wafanyakazi wa uendeshaji katika timu hutumia muda wao mwingi kwa kazi ya mkono: kuanzisha upya kazi zilizokwama, kurekebisha mitiririko ya data, na kujibu miito. Mkuu wa kikundi anabainisha kuwa wana muda mdogo uliobaki wa kuboresha, na wawili kati yao wameomba kuhamia timu nyingine.

Kiongozi wa timu anapendekeza mbinu iliyovuviwa na SRE. Kwa programu ya kuripoti kukatika, timu inaweka viashiria viwili: sehemu ya mawasilisho ya ripoti yanayofanikiwa na muda wa kuonyesha uthibitisho. Inakubaliana lengo lisilobana na bajeti ya makosa ya kila mwezi na meneja wa huduma kwa wateja, na kuandika sera ya ukurasa mmoja: zaidi ya robo tatu ya bajeti inapotumika, matoleo ya hatari husubiri. Timu inawaomba wahandisi wahifadhi kumbukumbu ya toil kwa mwezi. Kumbukumbu inaonyesha theluthi moja ya muda wao inaenda kuanzisha upya kazi ya kuingiza data inayoshindwa na marekebisho ya mkono baada ya dhoruba, mahitaji yanapopanda. Wanaweka kikomo cha nusu ya muda wao kwa toil, wanaamua kurekebisha chanzo cha kazi ya kuingiza data kwanza, na kuweka kiotomatiki marekebisho ya dhoruba kwa hati yenye mipaka na kumbukumbu. Miito inarekebishwa ili dalili zinazoonekana kwa mtumiaji tu zimwite mhandisi aliye kwenye mwito wa dharura.

Miezi minne baadaye, toil inashuka hadi takriban theluthi ya muda wa timu, kazi ya kuingiza data haishindwi tena, na sera ya bajeti ya makosa imetumika mara moja, katika mwezi wenye kukatika kwa msambazaji, kuahirisha toleo la kipengele. Ugumu unabaki. Mfumo wa kutuma wafanyakazi bado hauna malengo, na meneja wa huduma kwa wateja ameshawishika mara mbili kupuuza sera ya bajeti kwa vipengele vya dharura. Kiongozi wa timu na meneja wanakubaliana kupitia kila kupuuza sera kila mwezi na kuweka malengo kwa mfumo wa kutuma wafanyakazi baadaye. Pia wanajifunza kuwa "kikomo" ni mwongozo, si ahadi: baada ya dhoruba kubwa, toil ilipanda zaidi ya nusu kwa wiki mbili, na wanalazimika kuamua nini cha kukata.

## Mitazamo minne

### Timu za bidhaa na utoaji

Timu za utoaji hushiriki katika kuweka malengo na kuheshimu bajeti. Jenga urahisi wa uendeshaji ndani ya vipengele, kubali kuwa toil hurudi kwa timu inayoisababisha, na usaidie kuweka kiotomatiki. Chukulia bajeti iliyotumika kama taarifa kuhusu huduma, si adhabu.

### Timu za huduma na uendeshaji

Timu za uendeshaji zinaweza kufanya kazi ya SRE au kupokea mawazo yake. Pima toil, linda muda wa uhandisi, na urudishe kazi inayojirudia kwenye chanzo chake. Tumia malengo kueleza kwa nini kazi fulani inapaswa kukataliwa.

### Uongozi na utawala

Viongozi lazima waunge mkono kikomo cha toil na kanuni ya bajeti ya makosa; bila uungaji mkono zinashindwa. Omba malengo na hali ya bajeti, si hesabu ya matukio ya hitilafu. Toa muda wa kazi ya uhandisi na uwe tayari kusema hapana kwa vipengele bajeti inapokwisha.

### Wateja na watumiaji

Wateja na watumiaji hunufaika na viwango wazi vya huduma na kupona kwa haraka mambo yanaposhindwa. Iambie timu kinachojalisha zaidi, ili malengo yaakisi uzoefu wako. Tarajia mazungumzo ya uaminifu kuhusu mabadilishano kati ya vipengele vipya na kutegemewa.

## Sababu za kawaida za kushindwa

- **Kunakili cheo.** Uendeshaji unapewa jina jipya na hakuna kinachobadilika. Badala yake, pokea malengo, bajeti, na vipimo vya toil kwanza.
- **Bajeti ya makosa ambayo hakuna anayeiheshimu.** Vipengele huipuuza kila mara. Badala yake, kubaliana kanuni na wamiliki wa bidhaa na upitie kila kupuuza.
- **Hakuna muda wa uhandisi.** Toil inajaza wiki. Badala yake, iwekee kikomo na ulinde muda wa miradi.
- **Kuweka kiotomatiki kitu kisicho sahihi.** Kazi ya nadra inawekwa kiotomatiki huku ya mara kwa mara ikibaki. Badala yake, panga kwa muda na mara kwa mara.
- **Shabaha za ukamilifu.** Malengo yanadai asilimia 100. Badala yake, weka shabaha zisizobana kutoka mahitaji ya watumiaji na ubane kwa data.
- **Timu ya kutegemewa kama jaa la taka.** Uendelezaji unaipelekea kazi yote ya uendeshaji. Badala yake, rudisha kazi ya ziada kwenye chanzo chake.
- **Kunakili ukubwa wa Google.** Mazoea yanayohitaji shirika kubwa yanapokelewa na dogo. Badala yake, chukua mawazo yanayofaa, kama malengo na mapitio ya baada ya tukio.
- **Kupuuza watu.** Mzigo wa mwito wa dharura unachosha watu. Badala yake, punguza matukio kwa zamu na ushiriki ratiba.

## Modeli ya ukomavu

| Nyanja | Kuanza | Kukua | Kusanifisha | Kusimamia | Kuratibu |
|---|---|---|---|---|---|
| Malengo na bajeti | Malengo ya kutegemewa si rasmi | Baadhi ya huduma zina malengo | Huduma muhimu zina malengo na sera ya bajeti ya makosa iliyokubaliwa | Bajeti huongoza matoleo na kupuuza sera kunapitiwa | Malengo na bajeti zimeoanishwa katika huduma tegemezi |
| Toil na otomatiki | Toil haipimwi | Baadhi ya timu hukadiria toil | Toil hupimwa na kuwekewa kikomo; kazi ya otomatiki imepangwa | Vyanzo vya toil na akiba hufuatiliwa na kupunguzwa | Otomatiki hushirikiwa na toil hupunguzwa katika timu |
| Mwitikio wa dharura | Mwitikio hubuniwa papo hapo | Baadhi ya miongozo ya kazi na ratiba zipo | Majukumu, miongozo ya kazi, na mapitio ya baada ya tukio bila lawama ni sanifu | Mzigo wa matukio na muda wa kurekebisha hupimwa na kuboreshwa | Mwitikio hufanyiwa mazoezi na kuratibiwa katika timu na wasambazaji |
| Mabadiliko na uwezo | Mabadiliko ni ya hatari na ya mkono | Baadhi ya usambazaji ni wa hatua | Usambazaji wa taratibu na upangaji wa uwezo ni wa kawaida | Kushindwa kwa mabadiliko na utabiri wa uwezo hupimwa | Mazoea ya mabadiliko na uwezo hushirikiwa katika shirika zima |

## Orodha hakiki

- [ ] Angalau huduma moja ina viashiria na lengo lisilobana, linalopimwa kwa muda.
- [ ] Sera ya bajeti ya makosa imekubaliwa na wamiliki wa bidhaa na kuandikwa.
- [ ] Toil inapimwa kwa fasili thabiti, na vyanzo vikuu vinajulikana.
- [ ] Dari ya toil ipo na inapitiwa.
- [ ] Muda wa miradi ya uhandisi umepangwa na kulindwa.
- [ ] Mzigo wa mwito wa dharura unapimwa, na miito inachukuliwa hatua.
- [ ] Miongozo ya kazi ipo kwa hitilafu za kawaida zaidi na imejaribiwa.
- [ ] Usambazaji ni wa taratibu na kurudisha nyuma kumejaribiwa.
- [ ] Matukio makubwa ya hitilafu na yaliyokaribia hupata mapitio ya baada ya tukio bila lawama na hatua zenye wamiliki.
- [ ] Tumechagua kwa makusudi jinsi kazi ya kutegemewa inavyopangwa.

## Maelekezo ya AI

**Madhumuni: kuainisha kazi yako kama toil, uhandisi, au mzigo wa ziada.**

```text
Here is a list of what our operations engineers did in the last two weeks, with the time spent on each: [paste real data].

Classify each item as toil, engineering work, or overhead, using these definitions. Toil: manual, repetitive, automatable, tactical, without enduring value, and growing linearly with the service. Engineering work: novel, requires judgment, produces permanent improvement. Overhead: administrative work not tied to running a service. Give a one-sentence reason from my text for each. Compute the share of time in each class from my numbers only, and list the three largest toil items. Mark items you could not classify. Do not invent time figures. List what you are unsure of.
```

**Madhumuni: kuandaa sera ya bajeti ya makosa.**

```text
Draft a one-page error budget policy for [service].

Objective and period: [for example, "99.9% of purchase requests succeed, per month"].
Release rhythm and who decides: [describe].
Customer and product concerns: [list].

Write sections: how the budget is calculated and shown, what happens at three stages of consumption (leave thresholds as [to be agreed]), who can override and how overrides are recorded, how the policy is reviewed, and what we do after an exhausted budget. Do not invent numbers. Ask clarifying questions first, and list what you are unsure of.
```

**Madhumuni: kuchagua kipengee cha toil cha kuweka kiotomatiki kwanza.**

```text
Here are our top toil items with how often each occurs, time per occurrence, risk if the automation fails, and whether the cause could be designed away: [paste].

Rank them by total time saved per month (computed from my numbers only). For the top three, say whether I should design the need away or automate it, and what safeguards the automation needs (tests, limits, logs). Do not invent numbers. Ask clarifying questions first, and list what you are unsure of.
```

**Madhumuni: kuandika kipengee cha mwongozo wa kazi.**

```text
Write a playbook entry for this recurring failure: [describe symptom and impact].

What I know about causes and fixes: [paste].
Who to escalate to: [role, or "unknown"].

Provide a short entry: how to confirm the failure, the first checks, the usual fix, how to confirm recovery, when to escalate, and what to record. Mark any step you inferred with [CHECK]. Ask clarifying questions first, and list what you are unsure of.
```

## Ujuzi wa AI

- [on-call-rotation](../../../../skills/on-call-rotation/SKILL.md): tumia kubuni ratiba ya haki yenye mipaka ya matukio kwa zamu.
- [runbook](../../../../skills/runbook/SKILL.md): tumia kuandika miongozo ya kazi inayoharakisha kurekebisha.
- [postmortem](../../../../skills/postmortem/SKILL.md): tumia kuendesha mapitio bila lawama na kufuatilia hatua.
- [chaos-testing](../../../../skills/chaos-testing/SKILL.md): tumia kujaribu kuwa miundo ya kutegemewa inafanya kazi kwa kusababisha hitilafu kwa usalama.
- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): tumia kupanga uwezo kama kazi ya uhandisi iliyofungwa na mahitaji.

## Vyanzo muhimu

- **Introduction** (*Site Reliability Engineering*, Google, sre.google): fasili ya SRE, kikomo cha asilimia 50, kanuni za msingi, na mgawanyiko wa uendelezaji/uendeshaji unaolenga kuuepuka.
- **Eliminating Toil** (*Site Reliability Engineering*, Google, sre.google): fasili ya toil na sababu za kuiwekea kikomo.
- **Embracing Risk** (*Site Reliability Engineering*, Google, sre.google): uchumi wa kutegemewa na bajeti ya makosa.
- **Site reliability engineering** (Wikipedia): muhtasari mpana zaidi wa nidhamu, miundo ya upelekaji, utafiti wa upokeaji, na usomaji zaidi.

## Marejeo

1. Introduction — Google SRE book, sre.google — https://sre.google/sre-book/introduction/
2. Eliminating Toil — Google SRE book, sre.google — https://sre.google/sre-book/eliminating-toil/
3. Embracing Risk — Google SRE book, sre.google — https://sre.google/sre-book/embracing-risk/
4. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
5. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
6. Chaos engineering — Wikipedia — https://en.wikipedia.org/wiki/Chaos_engineering
7. Infrastructure as code — Wikipedia — https://en.wikipedia.org/wiki/Infrastructure_as_code
8. Observability (software) — Wikipedia — https://en.wikipedia.org/wiki/Observability_(software)
9. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
