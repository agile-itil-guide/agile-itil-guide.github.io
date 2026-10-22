# Upatikanaji, Uwezo, na Utendaji

**Upatikanaji, uwezo, na utendaji ni mitazamo mitatu ya kama huduma ipo, ni kubwa vya kutosha, na ni ya haraka vya kutosha watumiaji wanapoihitaji, na mbinu ya agile ni kuchagua malengo kutoka mahitaji ya watumiaji, kuyawekea bei kwa uaminifu, na kuyajaribu kabla mahitaji hayajafika.**

## Kwa nini hili ni muhimu

Watumiaji hawatenganishi hivi vitatu. Huduma "iliyo juu" lakini ya polepole mno kutumika imewafelisha, na huduma ya haraka siku tulivu lakini inayoanguka kilele imewafelisha wakati wanapoihitaji zaidi. Timu zinazotazama upatikanaji, uwezo, na utendaji kando mara nyingi hukosa njia vinavyoingiliana: kuongeza uwezo hubadilisha gharama na ugumu, kufukuzia upatikanaji kamilifu hupunguza kasi unayoweza kubadilika, na kurekebisha kwa kasi kunaweza kupunguza uthabiti.

Timu za agile zinakabiliwa na toleo mahususi la tatizo hili. Hubadilisha huduma mara kwa mara, na kila badiliko linaweza kubadilisha utendaji au mahitaji ya rasilimali kwa njia ambazo hakuna aliyezijaribu. Pia huelekea kufanya kazi kwa upeo mfupi wa muda, kwa hiyo mahitaji ya uwezo yanayochukua miezi kupanga, kama vifaa, mikataba, au leseni, yanaweza kukosekana. Mazoea ya mada hii yanatoa njia ya kutazama mbele bila kurudi kwenye upangaji wa muda mrefu kwa ajili yake yenyewe.

Kitabu cha Google *Site Reliability Engineering*, katika sura yake "Embracing Risk," ni chanzo kilicho wazi kuhusu uchumi wa upatikanaji: kinasema mbinu yake haikusudii uaminifu wa 100%, kwa sababu zaidi ya kiwango fulani kuongeza uthabiti kunapunguza kasi ya kuendeleza vipengele vipya, na gharama za uaminifu zinapanda kwa kasi. [Makala ya Wikipedia kuhusu upangaji wa uwezo](https://en.wikipedia.org/wiki/Capacity_planning) yanatoa fasili na mikakati ya jumla. Yote mawili ni ya sehemu, na msamiati wa ITIL unaotumika hapa unatoka maelezo yaliyochapishwa kwa wingi ambayo mwongozo huu haukuweza kuyahakiki dhidi ya maandishi ya mmiliki wa mfumo.

## Dhana kuu

### Upatikanaji

**Upatikanaji (availability)** ni uwezo wa huduma kufanya watumiaji wanachohitaji wanapokihitaji. Njia ya kawaida ya kuueleza ni kama asilimia katika kipindi. Sura ya SRE inabainisha njia mbili za kuupima. Kwa mfumo mmoja, upatikanaji unategemea muda: 99.99% inaruhusu takriban dakika 52.56 za kutopatikana bila kupangwa kwa mwaka. Kwa huduma zilizosambazwa ambazo ziko juu kwa sehemu wakati wote, ni bora kupimwa kama kiwango cha mafanikio ya maombi katika dirisha linalosogea; mfano wa sura ni huduma yenye maombi milioni 2.5 kwa siku na lengo la 99.99%, inayoruhusu hadi makosa 250. Sura inazingatia kutopatikana bila kupangwa. Kutopatikana kwa kupangwa kunahitaji makubaliano yake na watumiaji.

### Bei ya kila tisa ya ziada

Sura inasema gharama za uaminifu hupanda bila mstari: tisa moja ya ziada inaweza kugharimu mara 100 ya ongezeko la awali, ikijumuisha rasilimali za ziada na gharama ya fursa ya wahandisi kutojenga vipengele vinavyowakabili watumiaji. Inatoa kielelezo: kuongeza upatikanaji kutoka 99.9% hadi 99.99% kwa huduma yenye mapato ya dola milioni 1 kunastahili takriban dola 900 za thamani, kwa hiyo uwekezaji unalipa tu ikiwa tisa ya ziada inagharimu chini ya hiyo. Nambari ni mfano wa chanzo, na zako lazima zitokane na mapato au thamani yako. Kanuni inabaki: chagua upatikanaji ambao watumiaji wanahitaji, na uweke bei ya chochote zaidi yake.

### Uvumilivu wa hatari

Sura inaeleza kufanya kazi na wamiliki wa bidhaa kugeuza malengo ya biashara kuwa malengo wazi. Mambo ni pamoja na upatikanaji unaohitajika, umbo la hitilafu (kiwango cha chini cha makosa kisichoisha dhidi ya kuzimika kamili mara chache, huku kufichuliwa kwa data kukiwa kali hasa), gharama, na vipimo vingine kama kuchelewa. Inabainisha kuwa miundombinu inayohudumia wateja wengi inaweza kutolewa kwa viwango vya huduma vilivyofafanuliwa wazi, ili kila mteja achague kiwango cha bei nafuu zaidi kinachokidhi mahitaji yake.

### Bajeti za makosa

Sura inaeleza bajeti ya makosa kama kipimo cha pamoja, cha kiuhalisia kati ya timu za bidhaa, zinazopimwa kwa kasi, na timu za uaminifu, zinazopimwa kwa uaminifu. Bajeti ikiwa imebaki, matoleo yanaendelea. Ikiisha, matoleo yanapunguza kasi na juhudi zinahamia kwenye uaminifu (tazama Mada 3.7 — Usimamizi wa Kiwango cha Huduma).

### Uwezo

Makala ya Wikipedia yanafafanua upangaji wa uwezo kama kuamua uwezo wa uzalishaji ambao shirika linahitaji kukidhi mahitaji yanayobadilika, na yanasema katika TEHAMA ni kisawe cha usimamizi wa uwezo: kukadiria hifadhi, vifaa, programu, na rasilimali za muunganisho zinazohitajika katika kipindi cha baadaye. Makala yanatofautisha **uwezo wa usanifu (design capacity)**, kiwango cha juu zaidi kinachowezekana, na **uwezo halisi (effective capacity)**, matokeo baada ya vikwazo. Kivitendo, panga kwa uwezo halisi, ambao daima ni chini ya kiwango cha usanifu.

### Mikakati ya uwezo

Makala yanaeleza mikakati minne ya kuongeza uwezo:

| Mkakati | Maana yake | Maridhiano |
|---|---|---|
| **Kuongoza (Lead)** | Ongeza uwezo kabla ya mahitaji | Huduma nzuri na muda mfupi wa kusubiri, lakini hatari ikiwa mahitaji hayatabiriki |
| **Kuchelewa (Lag)** | Ongeza uwezo tu baada ya kufanya kazi kwa kiwango kamili au zaidi | Hatari ndogo ya kujenga kupita kiasi, lakini inaweza kupoteza wateja |
| **Kulinganisha (Match)** | Ongeza uwezo kwa nyongeza ndogo mahitaji yanapobadilika | Wenye usawa, unahitaji ufuatiliaji mzuri |
| **Marekebisho (Adjustment)** | Ongeza au punguza uwezo kwa kiasi kidogo au kikubwa mahitaji au usanifu vinapobadilika | Unaobadilika, unahitaji upatikanaji wa haraka wa rasilimali |

Makala yanaeleza upangaji wa muda mfupi, wa kati, na mrefu (wa kiuendeshaji, kimbinu, na kimkakati), kuanzia siku hadi miaka. Katika mazingira ya wingu, "kulinganisha" na "marekebisho" mara nyingi ni rahisi kwa sababu rasilimali zinaweza kuongezwa haraka, lakini gharama na mikataba bado vinahitaji upangaji (tazama Mada 4.5 — Usimamizi wa Fedha za TEHAMA na FinOps).

### Utendaji

**Utendaji (performance)** ni jinsi huduma inavyojibu kwa haraka na kwa ubora. Sura ya kitabu cha SRE kuhusu ufuatiliaji inapendekeza kupima kuchelewa, trafiki, makosa, na kujaa, na inaonya kuwa wastani huficha vitu vya nje vya polepole (tazama Mada 3.10 — Ufuatiliaji na Usimamizi wa Matukio ya Mfumo). Kujaa, huduma "imejaa" kiasi gani, huunganisha utendaji na uwezo: sura inabainisha kuwa utendaji mara nyingi hushuka kabla ya matumizi ya 100%.

### Jinsi vitatu vinavyoingiliana

- Uwezo zaidi unaweza kuongeza upatikanaji na utendaji, kwa gharama.
- Malengo ya juu ya upatikanaji kwa kawaida yanahitaji ziada, ambayo ni uwezo wa ziada.
- Kurekebisha kwa utendaji wa kilele kunaweza kupunguza nafasi ya kushindwa.
- Mabadiliko ya huduma hubadilisha vitatu vyote, ndiyo maana majaribio ni muhimu.

Nidhamu yenye manufaa ni kueleza malengo pamoja kwa kila huduma: inapaswa kupatikana kiasi gani, iwe ya haraka kiasi gani, na ibebe mzigo kiasi gani.

### Mahitaji na utabiri

Uwezo unategemea mahitaji. Mahitaji hutoka kwa watumiaji na kwa biashara: kampeni za masoko, vilele vya msimu, wateja wapya. Biashara inajua zaidi kuhusu siku zijazo kuliko TEHAMA, kwa hiyo uliza. Panga kwa vipindi badala ya nambari moja, na upitie utabiri mara kwa mara (tazama ujuzi wa demand forecasting hapa chini).

### Majaribio

Madai ya uwezo na utendaji ni dhana hadi yajaribiwe. Majaribio ya mzigo na utendaji hutumia mahitaji ya kweli kuona jinsi huduma inavyotenda, na majaribio ya machafuko huleta hitilafu kuona kama upatikanaji unashikilia. Haya yanaweza kuwa sehemu ya bomba la utoaji.

### Mipaka ya vyanzo

Makala ya Wikipedia kuhusu upangaji wa uwezo hayataji usimamizi wa uwezo wa ITIL wala kuchambua uhusiano kati ya uwezo, utendaji, na upatikanaji, na sehemu yake ya mali imewekwa alama ya kukosa nukuu. Sura ya SRE inaeleza mazoea ya shirika kubwa sana lenye uchumi tofauti. Yatumie kwa kanuni, si kwa nambari.

## Mazoea bora

1. **Eleza malengo ya upatikanaji, utendaji, na mzigo pamoja.** Kwa kila huduma, andika inapaswa kupatikana kiasi gani, kujibu kwa kasi gani, na kubeba mzigo kiasi gani. Yaegemeze kwenye mahitaji ya watumiaji na yakubaliane na mmiliki wa huduma na wateja.
2. **Weka bei malengo.** Kadiria kiwango cha ziada cha upatikanaji au kasi kinagharimu nini, kwa fedha na vipengele vilivyocheleweshwa. Kilinganishe na watumiaji na biashara watakachopata. Tumia takwimu zako mwenyewe, si mfano wa kitabu.
3. **Pima upatikanaji kwa njia inayolingana na huduma.** Kwa huduma ambazo ziko juu kwa sehemu wakati wote, tumia kiwango cha mafanikio katika dirisha linalosogea kama sura ya SRE inavyofanya. Kwa mifumo rahisi, tumia vipimo vya muda. Hesabu kutopatikana kwa kupangwa na bila kupangwa tofauti.
4. **Panga kwa uwezo halisi.** Kadiria huduma inaweza kubeba nini baada ya vikwazo halisi kama mzigo wa ziada, kushindwa kwa vipengele, na matengenezo. Weka ukingo.
5. **Chagua mkakati wa uwezo kwa makusudi.** Amua kama kuongoza, kuchelewa, au kulinganisha kwa kila rasilimali, kwa msingi wa muda wa kusubiri, gharama ya upungufu, na gharama ya kujenga kupita kiasi. Andika uchaguzi na uupitie.
6. **Uliza biashara kuhusu mahitaji.** Kutana na viongozi wa masoko, mauzo, na uendeshaji kwa mzunguko wa kawaida kujifunza kuhusu kampeni, uzinduzi, na vilele vya msimu. Rekodi mzigo unaotarajiwa kwa vipindi.
7. **Tazama kujaa.** Fuatilia rasilimali kuu zimejaa kiasi gani na weka tahadhari mapema kabla ya hatua ambapo utendaji unashuka. Jua kiwango ambacho huduma yako inaanza kupunguza kasi.
8. **Jaribu kabla ya kilele.** Endesha majaribio ya mzigo na utendaji yanayofanana na trafiki halisi, kabla ya vilele vinavyojulikana na baada ya mabadiliko makubwa. Rekebisha utakachopata ukiwa na muda.
9. **Jaribu kushindwa, si mzigo tu.** Fanya mazoezi ya kupoteza kipengele, eneo, au msambazaji katika mazingira salama na uone kama upatikanaji unashikilia (tazama ujuzi wa chaos testing hapa chini).
10. **Jumuisha uwezo katika kazi ya mabadiliko na matoleo.** Uliza katika usanifu na mapitio kama badiliko linabadilisha mahitaji ya rasilimali. Ongeza ukaguzi wa utendaji kwenye bomba kwa njia zinazojalisha (tazama Mada 3.5 — Usimamizi wa Matoleo na Upelekaji).
11. **Tumia bajeti ya makosa kutatua maridhiano.** Bajeti ikiwepo, itumie kwa mabadiliko. Ikiisha, tumia juhudi kwa uaminifu na uwezo. Pitia kanuni na utoaji na uendeshaji pamoja.
12. **Pitia utabiri dhidi ya uhalisia.** Kila robo mwaka, linganisha mahitaji yaliyotabiriwa na halisi na urekebishe mbinu yako. Chukulia mshangao kama taarifa.

## Maswali ya kujadili na timu yako

**Watumiaji wetu wanahitaji nini hasa katika upatikanaji, kasi, na uwezo, na nani aliamua?**

Omba malengo ya sasa na yalikotoka. Mara nyingi yaliwekwa zamani, au na timu bila kuuliza watumiaji. Waulize watumiaji na wateja nini kinauma zaidi. Jadili kama malengo yanalingana. Mwezeshaji anaweza kuuliza nini kingetokea kama lengo lingekuwa hatua moja chini, na hilo lingeachia nini.

**Tisa inayofuata inatugharimu nini?**

Chagua huduma yenye lengo la juu la upatikanaji. Kadiria kuongeza au kupunguza kwa hatua moja kungegharimu nini, kwa fedha na kazi iliyocheleweshwa. Linganisha na thamani kwa watumiaji. Mfano wa sura ya SRE unaonyesha jinsi hesabu inavyoweza kugeuka haraka dhidi ya lengo la juu zaidi. Fanya hesabu kwa nambari zako na urekodi dhana.

**Kilele cha mahitaji kinachofuata tunachojua ni kipi, na tumefanya nini kujiandaa?**

Orodhesha vilele vinavyojulikana: kampeni, tarehe ya mwisho, msongamano wa msimu. Kwa kila kimoja, uliza nani anajua mzigo unaotarajiwa na kama huduma imejaribiwa katika kiwango hicho. Mara nyingi hakuna aliyeuliza. Kubaliana mtu wa kukusanya nambari na tarehe ya jaribio.

**Huduma yetu iko karibu zaidi na kujaa wapi, na nini kinatokea inapofika huko?**

Uliza rasilimali inayotumiwa zaidi. Tazama mwelekeo. Uliza huduma inafanya nini kwenye kikomo hicho: inapunguza kasi, inatoa makosa, au inashindwa. Kama hakuna anayejua, ijaribu. Chagua kizingiti cha kutenda na tahadhari kwa hicho.

**Ni mabadiliko yapi ya hivi karibuni yaliyoathiri utendaji au uwezo, na je, tulijua mapema?**

Pitia mabadiliko ya hivi karibuni na uulize utendaji ulikaguliwa vipi. Kama haukukaguliwa, jadili ukaguzi mwepesi ungekuwa nini. Chaguo za kawaida ni jaribio kwenye njia muhimu au toleo la canary pamoja na ufuatiliaji. Kubaliana moja kwa toleo lijalo.

**Kama kipengele kimoja kingeshindwa sasa hivi, nini kingetokea kwa upatikanaji?**

Chukua huduma kuu na ufuatilie hitilafu ya hifadhidata, eneo, au msambazaji. Uliza usanifu unadhani nini na nini kimejaribiwa. Mapengo kati ya dhana na ushahidi ni hatari. Panga jaribio moja la hitilafu lililodhibitiwa katika mazingira salama.

## Kwa vitendo: mfano wa agile ITIL

Mamlaka ya kitaifa ya pensheni inaendesha huduma ya mtandaoni ambapo wananchi hukagua stahiki zao na kuwasilisha fomu. Huduma ina mwaka tulivu isipokuwa wiki baada ya taarifa za kila mwaka kutumwa, wakati trafiki inapanda hadi mara kadhaa ya kiwango cha kawaida. Mwaka uliopita huduma ilipunguza kasi hadi watumiaji wengi wakakata tamaa, na kituo cha simu kilizidiwa. Timu ya jukwaa ya watu tisa na meneja wa uendeshaji wanataka kuepuka kurudiwa.

Timu inaanza kwa kuuliza ofisi ya mawasiliano mzigo unaotarajiwa. Ofisi inasema taarifa zitatumwa katika makundi mawili na kutoa tarehe, lakini si nambari. Timu inakadiria kipindi kutoka data ya mwaka uliopita na kuweka lengo: ukurasa wa fomu lazima ujibu ndani ya muda unaokubalika kwa kilele kinachotarajiwa, na huduma lazima ibaki inapatikana kupitia makundi yote mawili. Wanaendesha jaribio la mzigo kwenye nakala ya uzalishaji na kugundua kuwa hifadhidata ndiyo rasilimali ya kwanza kujaa, chini sana ya kilele kilichotabiriwa. Wanachagua mkakati wa "kuongoza" kwa hifadhidata, kwa kuwa muda wa kuongeza uwezo ni mrefu, na mkakati wa "kulinganisha" kwa seva za wavuti, ambazo zinaweza kuongezwa kwa dakika. Jaribio la hitilafu linaonyesha kupoteza nodi moja ya hifadhidata kunapunguza uwezo kwa nusu, jambo lisilokubalika kwenye kilele, kwa hiyo wanaongeza nodi ya akiba.

Kwenye kilele, huduma inabaki juu na nyakati za majibu zinashikilia katika kundi la kwanza. Katika kundi la pili kipengele cha kuthibitisha malipo ambacho hakuna aliyekijaribu kinapunguza kasi chini ya mzigo, na baadhi ya watumiaji wanaona ucheleweshaji. Timu haikujua kikomo cha utegemezi huu na haikuambiwa kuwa kundi la pili lingekuwa kubwa zaidi. Wanaongeza kipengele kwenye jaribio la mzigo linalofuata, wanaiomba ofisi ya mawasiliano ujazo wa kila kundi mapema zaidi, na kukubaliana kupitia mchakato wa utabiri katika robo mwaka ijayo.

## Mitazamo minne

### Timu za bidhaa na utoaji

Timu za utoaji huathiri vyote vitatu kupitia usanifu na mabadiliko. Jumuisha utendaji na uwezo katika mapitio ya usanifu na katika bomba. Waambie uendeshaji kuhusu mabadiliko yanayobadilisha mzigo, na uiulize biashara kuhusu mahitaji yanayotarajiwa.

### Timu za huduma na uendeshaji

Timu za uendeshaji kwa kawaida hubeba ufuatiliaji na mipango ya uwezo. Fuatilia kujaa na mwelekeo, weka mtazamo wa muda wa kusubiri wa rasilimali, na ulete ushahidi kwenye upangaji. Isaidie biashara kuelewa kila kiwango cha upatikanaji kinagharimu nini.

### Uongozi na utawala

Viongozi huweka bei wanayotaka kulipa kwa uaminifu na kasi. Omba malengo yanayolingana na mahitaji ya watumiaji, pamoja na gharama, na ukubali kuwa upatikanaji kamilifu si lengo la busara. Unga mkono majaribio kabla ya vilele vinavyojulikana na bajeti ya uthabiti pale inapojalisha.

### Wateja na watumiaji

Wateja na watumiaji huhisi matokeo. Mwambie mtoa huduma unapotarajia mzigo wa ziada, kama kampeni au tarehe ya mwisho, na nini kinajalisha zaidi kwako katika kasi na upatikanaji. Ripoti ucheleweshaji pamoja na kuzimika, kwa kuwa yote ni hitilafu kwa upande wako.

## Sababu za kawaida za kushindwa

- **Malengo kutoka mazoea.** "Tisa tano" inadaiwa bila kuuliza kwa nini. Badala yake, pata malengo kutoka mahitaji ya watumiaji na uyawekee bei.
- **Vilele vya mshangao.** Biashara inajua kuhusu kampeni na TEHAMA haijui. Badala yake, kutana kwa mzunguko wa kawaida na urekodi mzigo unaotarajiwa.
- **Wastani kwa utendaji.** Vitu vya nje vya polepole havionekani. Badala yake, tazama asilimia za juu na kujaa.
- **Uwezo unaongezwa tu baada ya shida.** Mkakati wa kuchelewa unatumika kwa bahati mbaya. Badala yake, chagua mkakati kwa makusudi, kwa msingi wa muda wa kusubiri.
- **Uthabiti usiojaribiwa.** Ziada ipo kwenye karatasi. Badala yake, jaribu kushindwa kwa vipengele katika mazingira salama.
- **Mabadiliko bila ukaguzi wa utendaji.** Toleo linapunguza kasi. Badala yake, ongeza ukaguzi kwenye bomba kwa njia zinazojalisha.
- **Kusahau utegemezi.** Kipengele cha mhusika wa tatu kinazuia huduma nzima. Badala yake, orodhesha utegemezi na uujaribu.
- **Kuchukulia utabiri kama uliowekwa.** Mipango hupuuza kosa. Badala yake, tumia vipindi na ulinganishe utabiri na uhalisia.

## Modeli ya ukomavu

| Nyanja | Kuanza | Kukua | Kusanifisha | Kusimamia | Kuratibu |
|---|---|---|---|---|---|
| Malengo na gharama | Malengo si rasmi au yamenakiliwa | Baadhi ya huduma zina malengo yaliyotajwa | Huduma zina malengo yaliyokubaliwa ya upatikanaji, utendaji, na mzigo yenye gharama zinazojulikana | Malengo na gharama hupitiwa dhidi ya matokeo | Malengo huwekwa kwa pamoja na wateja na wasambazaji na kurekebishwa kwa ushahidi |
| Upangaji wa mahitaji na uwezo | Uwezo unaongezwa baada ya shida | Baadhi ya timu hutabiri vilele vinavyojulikana | Mahitaji hukusanywa kutoka biashara kwa mzunguko, yenye mkakati ulioelezwa wa uwezo | Usahihi wa utabiri hufuatiliwa na mbinu huboreshwa | Upangaji unaratibiwa katika timu, wasambazaji, na biashara |
| Majaribio | Majaribio machache ya mzigo au kushindwa | Baadhi ya majaribio kabla ya matukio makubwa | Majaribio ya mzigo na kushindwa ni ya kawaida kwa huduma muhimu | Matokeo ya majaribio huendesha maboresho yanayofuatiliwa | Majaribio hushirikiwa na kuratibiwa katika huduma zinazotegemeana |
| Ufuatiliaji na mwitikio | Matatizo yanagunduliwa kwa kuchelewa | Baadhi ya kujaa kunafuatiliwa | Kujaa, kuchelewa, na makosa hufuatiliwa kwa tahadhari kabla ya mipaka | Mienendo na vizingiti hurekebishwa kutoka data | Ishara na majibu huratibiwa katika timu na wasambazaji |

## Orodha hakiki

- [ ] Kila huduma ina malengo yaliyotajwa ya upatikanaji, utendaji, na mzigo, pamoja na chanzo chake.
- [ ] Tumekadiria kiwango kinachofuata cha upatikanaji kingegharimu nini.
- [ ] Tunajua upatikanaji unapimwaje kwa kila huduma, na nini kinahesabiwa kuwa kutopatikana.
- [ ] Tumechagua mkakati wa uwezo kwa kila rasilimali kuu.
- [ ] Tunakutana na biashara mara kwa mara kujifunza kuhusu mahitaji yanayotarajiwa.
- [ ] Kujaa kwa rasilimali kuu kunafuatiliwa kwa tahadhari kabla ya mipaka.
- [ ] Majaribio ya mzigo yamefanyika kabla ya kilele cha mwisho kinachojulikana.
- [ ] Hitilafu ya angalau kipengele kimoja kikuu imejaribiwa katika mazingira salama.
- [ ] Mabadiliko yanayoathiri utendaji au uwezo yanawekwa alama katika mapitio.
- [ ] Utabiri hulinganishwa na mahitaji halisi kila robo mwaka.

## Maelekezo ya AI

**Madhumuni: kugeuza data iliyopimwa kuwa mtazamo wa nafasi ya uwezo.**

```text
Here are the measurements for [resource, e.g. "database CPU"] for [service] over [period]: [paste real values or summary figures such as daily peak and average].
Known limit at which performance degrades, if you know it: [paste, or write "unknown"].
Expected demand change: [describe, with source].

Using only my data, describe the trend and how much headroom there appears to be at the observed peak, in plain words. Show how headroom would change if demand grew by the amounts I gave. Do not invent limits or growth rates. Say what extra data would make the analysis more reliable, and list what you are unsure of.
```

**Madhumuni: kuweka bei lengo la juu la upatikanaji.**

```text
Help me compare the cost and value of raising the availability target for [service] from [current target] to [proposed target].

What the service is worth, with source (revenue, cost of an outage, or other value; use only figures I provide): [paste].
What the extra availability would require (redundancy, staff, tools), with cost estimates I have: [paste, or write "unknown"].
Current measured availability: [paste].

Calculate the allowed unplanned downtime or error count at each target using only the numbers I gave, show the difference, and compare with the value and cost figures if I provided them. State your assumptions. Do not invent costs or revenue. Ask clarifying questions first, and list what you are unsure of.
```

**Madhumuni: kupanga jaribio la mzigo kabla ya kilele kinachojulikana.**

```text
Plan a load test for [service] before this event: [describe the peak, with date and source of the expected load].

Architecture, in brief: [describe components, dependencies, and suppliers].
Expected load range, with the source: [paste].
Test environment available: [describe].

Give a plan with: goals, what to measure (latency distribution, errors, saturation), scenarios to run, how to ramp up, what to do with results, and risks to production or to suppliers (for example agreements that need to be made before testing). Do not invent figures. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Madhumuni: kubuni jaribio la kushindwa.**

```text
Help me design a controlled failure test for [service].

What I want to learn: [for example whether availability holds if one database node fails].
Environment for the test: [describe, e.g. a production-like test environment].
Safeguards available: [monitoring, rollback, people on hand].

Describe a step-by-step test plan: hypothesis, what to break and how, what to observe, who is present, what stops the test, and how to record what happened. Keep it away from production unless I say it is safe. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## Ujuzi wa AI

- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): tumia kukadiria rasilimali ambazo huduma inahitaji kwa muda na kuchagua mkakati wa kuziongeza.
- [demand-forecasting](../../../../skills/demand-forecasting/SKILL.md): tumia kukadiria mzigo wa baadaye kama kipindi kutoka data ya zamani na mipango ya biashara.
- [load-testing](../../../../skills/load-testing/SKILL.md): tumia kubuni majaribio yanayotumia mahitaji ya kweli kabla ya kilele.
- [performance-testing](../../../../skills/performance-testing/SKILL.md): tumia kukagua kasi na matumizi ya rasilimali kwenye njia muhimu kama sehemu ya utoaji.
- [chaos-testing](../../../../skills/chaos-testing/SKILL.md): tumia kujaribu kama upatikanaji unashikilia vipengele vinaposhindwa.

## Vyanzo muhimu

- **Embracing Risk** (*Site Reliability Engineering*, Google, sre.google): uchumi wa upatikanaji, upimaji unaotegemea maombi, na bajeti ya makosa.
- **Capacity planning** (Wikipedia): fasili na mikakati ya kuongoza, kuchelewa, kulinganisha, na marekebisho.
- **Monitoring Distributed Systems** (*Site Reliability Engineering*, Google, sre.google): ishara za dhahabu ikiwemo kujaa.
- **High availability** (Wikipedia): usuli kuhusu kubuni mifumo kwa uendeshaji endelevu.

## Marejeo

1. Embracing Risk — Google SRE book, sre.google — https://sre.google/sre-book/embracing-risk/
2. Capacity planning — Wikipedia — https://en.wikipedia.org/wiki/Capacity_planning
3. Monitoring Distributed Systems — Google SRE book, sre.google — https://sre.google/sre-book/monitoring-distributed-systems/
4. Service Level Objectives — Google SRE book, sre.google — https://sre.google/sre-book/service-level-objectives/
5. High availability — Wikipedia — https://en.wikipedia.org/wiki/High_availability
6. Scalability — Wikipedia — https://en.wikipedia.org/wiki/Scalability
7. Load testing — Wikipedia — https://en.wikipedia.org/wiki/Load_testing
8. Chaos engineering — Wikipedia — https://en.wikipedia.org/wiki/Chaos_engineering
9. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
