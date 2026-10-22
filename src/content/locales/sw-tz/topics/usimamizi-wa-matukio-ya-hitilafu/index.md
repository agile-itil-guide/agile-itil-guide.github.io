# Usimamizi wa Matukio ya Hitilafu

**Usimamizi wa matukio ya hitilafu hurejesha huduma iliyodhoofika kwa kasi kadiri inavyokuwa salama, na tabia ya agile inayoufanya ufanye kazi ni majukumu wazi chini ya shinikizo ikifuatiwa na mapitio yasiyo na lawama yanayogeuza kila tukio kuwa badiliko.**

## Kwa nini hili ni muhimu

Matukio ya hitilafu ni wakati huduma inahukumiwa. Watumiaji hawakumbuki miezi ya upatikanaji mzuri; wanakumbuka kuzimika na jinsi lilivyoshughulikiwa. Timu iliyojua mapema nani anafanya nini, inawasilianaje, na inaita msaada lini hurejesha huduma kwa haraka zaidi na kufanya makosa machache kuliko inayoboresha papo hapo.

Timu za agile zinazoendesha wanachojenga mara nyingi hushughulikia matukio kwa njia isiyo rasmi. Hii hufanya kazi hadi tukio liwe kubwa, livuke timu kadhaa, au litokee usiku. Hapo ukosefu wa majukumu na rekodi unaonekana: wahandisi hurundikana kwenye tatizo la kiufundi, hakuna anayewaambia wateja, na watu wawili hufanya mabadiliko yanayogongana. Zoezi la ITSM la usimamizi wa matukio ya hitilafu, pamoja na mazoea kutoka uhandisi wa uaminifu wa tovuti, linatoa njia zilizojaribiwa za kuzuia hilo.

[Makala ya Wikipedia kuhusu usimamizi wa matukio](https://en.wikipedia.org/wiki/Incident_management) yanafunika nyanja kadhaa, kuanzia mwitikio wa dharura hadi usalama wa kompyuta. Kwa usimamizi wa huduma za TEHAMA yanasema lengo ni kurejesha huduma ya kawaida ndani ya kiwango cha huduma kilichokubaliwa haraka iwezekanavyo, yananukuu ITIL 2011 katika kufafanua tukio la hitilafu kama usumbufu usiopangwa wa huduma ya TEHAMA au kupungua kwa ubora wake, na yanaorodhesha changamoto tatu: kelele za tahadhari, utatuzi mrefu wa matatizo, na ugumu wa kutabiri kuzimika. Kwa undani, mada hii inategemea sana sura mbili za kitabu cha Google *Site Reliability Engineering*, zinazoeleza mbinu ya uongozi wa tukio na postmortem zisizo na lawama kutoka zoezi katika shirika moja kubwa. Zichukulie sura hizo kama mbinu moja iliyoandikwa vizuri, si pekee.

## Dhana kuu

### Tukio la hitilafu ni nini

**Tukio la hitilafu** (incident), katika matumizi ya ITSM, ni usumbufu usiopangwa wa huduma au kupungua kwa ubora wake. Makala ya ITSM pia yanajumuisha usumbufu "unaowezekana." Tukio la hitilafu si sawa na **tatizo**, ambalo ni sababu ya msingi, wala **ombi la huduma**, ambalo ni ombi la kawaida (tazama Mada 3.3 — Usimamizi wa Matatizo na Mada 3.6 — Usimamizi wa Maombi ya Huduma). Kuviweka vitatu hivi tofauti ni muhimu kwa sababu kila kimoja kinasimamiwa kwa lengo tofauti: kurejesha huduma, kuondoa visababishi, na kutimiza mahitaji ya kawaida.

### Lengo: rejesha huduma, hifadhi ushahidi

Lengo la kwanza la usimamizi wa matukio ya hitilafu ni kurejesha huduma. Sura ya SRE kuhusu kusimamia matukio inaongeza la pili: kuhifadhi ushahidi unaohitajika kupata sababu ya msingi baadaye. Mazoea bora ya sura yenyewe yanasema kuweka kipaumbele kurejesha huduma na kuhifadhi ushahidi, kwa roho hiyo. Kurekebisha sababu kunaweza kuja baadaye, katika usimamizi wa matatizo.

### Kwa nini matukio yasiyosimamiwa yanakwenda vibaya

Sura ya SRE, iliyoandikwa na Andrew Stribblehill, inatumia mfano mrefu wa mhandisi aliye zamu ambaye kuzimika kwake kunakua kuwa kushindwa kabisa. Inataja hatari tatu za matukio yasiyosimamiwa:

- **Mkazo mkali kwenye tatizo la kiufundi.** Wahandisi waliozama kwenye marekebisho hupoteza mtazamo wa kupunguza madhara na picha pana.
- **Mawasiliano duni.** Hakuna anayejua wengine wanafanya nini, na wadau wanabaki bila taarifa.
- **Kufanya kazi kivyako (freelancing).** Mabadiliko yasiyoratibiwa, kama upelekaji wa dakika za mwisho, huzidisha hali.

### Majukumu chini ya shinikizo

Sura inaegemeza mbinu yake kwenye Incident Command System, iliyotoka kwenye mwitikio wa dharura (makala ya Wikipedia kuhusu usimamizi wa matukio pia yanaitaja). Mawazo yake makuu:

| Jukumu | Linafanya nini |
|---|---|
| **Kamanda wa tukio (Incident commander)** | Hushikilia hali ya ngazi ya juu, hupanga mwitikio, huondoa vizuizi, na hushikilia jukumu lolote ambalo halijakabidhiwa |
| **Kiongozi wa uendeshaji (Operations lead)** | Hutumia zana kwenye tatizo; timu ya uendeshaji pekee ndiyo hubadilisha mfumo wakati wa tukio |
| **Kiongozi wa mawasiliano (Communications lead)** | Ni sura ya umma ya mwitikio; hutoa taarifa za mara kwa mara na kuweka hati ya tukio ikiwa ya kisasa |
| **Kiongozi wa upangaji (Planning lead)** | Hushughulikia masuala ya muda mrefu kama kuweka hitilafu, kupanga makabidhiano, na kufuatilia tofauti na hali ya kawaida ili mabadiliko yaweze kurudishwa |

Sura inaita kanuni hiyo mgawanyo wa kujirudia wa majukumu. Majukumu wazi huwapa watu uhuru, kwa sababu hawalazimiki kuwashuku wenzao, na mtu aliyezidiwa huomba wafanyakazi zaidi na kukabidhi sehemu za kazi. Makabidhiano kati ya makamanda ni ya wazi na yanakubaliwa.

### Hati hai ya tukio

Sura inasema wajibu muhimu zaidi wa kamanda ni kutunza hati hai ya hali ya tukio, ikiwezekana inayohaririwa na watu kadhaa kwa wakati mmoja. Inaweza kuwa na fujo lakini lazima ibaki na manufaa, na taarifa muhimu karibu na juu, na inahifadhiwa kwa uchambuzi wa baadaye. Kituo cha pamoja au chumba halisi hutumika kama kituo cha amri.

### Wakati wa kutangaza tukio

Sura inapendekeza kutangaza tukio mapema, si saa nyingi ndani ya tatizo linalozidi kuwa baya. Inapendekeza kuchukulia tukio kama tukio la hitilafu kama timu ya pili lazima ihusishwe kulirekebisha, kama kuzimika kunaonekana kwa wateja, au kama bado halijatatuliwa baada ya saa moja ya uchambuzi wa umakini. Hizi ni kanuni za jumla za shirika moja. Vizingiti vyako vinapaswa kuakisi huduma na watumiaji wako.

### Kipaumbele na ukali

Vyanzo vilivyosomwa kwa mwongozo huu havifafanui viwango vya kipaumbele au ukali, na makala ya Wikipedia hayataji yoyote. Kivitendo, timu hufafanua viwango kutokana na athari kwa watumiaji na uharaka wa hitaji, na kuamua mapema nani anaitwa kwa kila kiwango. Weka mpango mfupi, wenye mifano, na uuhakiki kwa kuutumia kwa matukio ya zamani.

### Mawasiliano

Mawasiliano yana hadhira mbili. Wajibu wanahitaji kujua hali na nani anafanya nini. Wadau na watumiaji wanahitaji kujua kinachoathirika, kinachofanywa, na lini kutarajia taarifa inayofuata. Kiongozi wa mawasiliano katika sura ya SRE anahudumia hadhira ya pili na kutunza kumbukumbu kwa ya kwanza. Kwa kuzimika kunakowakabili umma, mpango wa mawasiliano katika mgogoro unafaa (tazama ujuzi wa crisis communication hapa chini).

### Postmortem zisizo na lawama

Sura ya SRE kuhusu utamaduni wa postmortem inaweka nusu ya kujifunza. Postmortem hurekodi tukio, athari yake, kupunguza madhara, visababishi vya msingi, na hatua za kufuatilia. Malengo yake ni kuandika tukio, kuelewa visababishi vyote vinavyochangia, na kuweka hatua madhubuti za kuzuia. Haina lawama: inabainisha visababishi vinavyochangia bila kulaumu watu binafsi au timu, na inadhani kila mtu "alikuwa na nia njema na alifanya jambo sahihi kwa taarifa aliyokuwa nayo." Kwa maneno ya sura, "Huwezi 'kurekebisha' watu, lakini unaweza kurekebisha mifumo na michakato."

Sura inapendekeza kufafanua vichocheo vya postmortem mapema, kama kuzimika kunakoonekana na watumiaji zaidi ya kizingiti, upotevu wowote wa data, uingiliaji wa mtu wa zamu kama kurudisha nyuma, muda wa utatuzi zaidi ya kizingiti, au kushindwa kwa ufuatiliaji. Pia inasema "Postmortem isiyopitiwa ni kama haikuwahi kuwepo," na hivyo inapendekeza vikao vya kawaida vya mapitio na hazina ya pamoja. Inaeleza shughuli za kujenga utamaduni kama jarida la kila mwezi, vilabu vya kusoma, na "Wheel of Misfortune" ambamo matukio ya zamani huigizwa tena.

### Matukio makubwa

Mazoea mengi ya ITSM hufafanua **tukio kubwa** (major incident) kama linalohitaji mwitikio rasmi zaidi kuliko kawaida. Vyanzo vilivyosomwa hapa haviyafafanui, kwa hiyo fanya hivyo kwa maneno yako: kwa mfano, tukio linaloathiri watumiaji wengi au huduma muhimu na linalohitaji mwitikio ulioratibiwa katika timu. Kinachojalisha ni kwamba watu wanajua mapema nini kinabadilika: nani anaamuru, nani anaitwa, taarifa zinatoka mara ngapi.

### Matukio na utoaji endelevu

Matukio mara nyingi hutokana na mabadiliko ya hivi karibuni. Timu za agile ziko katika nafasi nzuri ya kujifunza kutoka hayo kwa sababu zinatoa mara kwa mara na zina mizunguko mifupi ya maoni. Kujifunza kunahitaji njia: hatua za postmortem huingia kwenye orodha ya kazi zikiwa na wamiliki na tarehe, na matukio yanayojirudia huenda kwa usimamizi wa matatizo. Bila njia hiyo, kushughulikia matukio kunakuwa utaratibu wa ukarabati.

## Mazoea bora

1. **Amua mapema nini kinahesabiwa kuwa tukio la hitilafu.** Andika fasili fupi na mifano, na upunguze kizingiti cha kutangaza. Kanuni ya sura ya SRE ni kutangaza mapema timu ya pili inapohitajika, wateja wanapoweza kuona tatizo, au saa moja ya uchambuzi haijalitatua.
2. **Bainisha viwango vichache vya ukali vyenye mifano.** Vifungamanishe na athari kwa watumiaji, na useme nani anaitwa kwa kila kiwango. Jaribu mpango kwa matukio ya zamani na urekebishe.
3. **Gawa majukumu mwanzoni mwa kila tukio.** Taja kamanda wa tukio, kiongozi wa uendeshaji, na kiongozi wa mawasiliano. Katika timu ndogo mtu mmoja anaweza kushikilia jukumu zaidi ya moja; sema hivyo kwa sauti.
4. **Tenganisha kurekebisha na kuratibu.** Watu wanaobadilisha mfumo hawapaswi pia kujibu maswali. Mwache kamanda aratibu na kiongozi wa mawasiliano ajulishe.
5. **Weka rekodi hai.** Tumia hati moja ya pamoja au kituo chenye alama za muda, maamuzi, na mabadiliko yaliyofanywa. Inaunga mkono makabidhiano na kuipa postmortem malighafi yake.
6. **Ruhusu mabadiliko yaliyoidhinishwa tu.** Sura ya SRE inasema timu ya uendeshaji pekee ndiyo ibadilishe mfumo wakati wa tukio. Taja nani anaweza kubadilisha nini, na uwaombe wengine wazungumze na kamanda.
7. **Wasiliana kwa ratiba.** Kubaliana muda wa taarifa kwa kila ukali na uushike, hata pale hakuna jipya. Ukimya huzaa wasiwasi na maswali yanayojirudia.
8. **Kabidhi waziwazi.** Kamanda au mjibu anapobadilishwa, sema kwa sauti na mtu mwingine akubali. Makabidhiano yasiyo wazi hupoteza muktadha.
9. **Fanya mazoezi.** Endesha mchakato wa tukio kwa matukio madogo na mazoezi, ili majukumu yazoeleke kabla ya kuzimika kubwa. Zungusha watu katika majukumu.
10. **Fanya postmortem isiyo na lawama vichocheo vyako vinapotimizwa.** Iandike na wanaohusika, zingatia visababishi vinavyochangia na marekebisho ya mfumo, na uishiriki kwa upana (tazama ujuzi wa postmortem hapa chini).
11. **Geuza hatua kuwa vipengele vya orodha ya kazi.** Peana kila ufuatiliaji mmiliki na tarehe, na uzipitie kwenye mkutano wa kawaida. Postmortem isiyopitiwa haileti badiliko.
12. **Lisha ushahidi kwa usimamizi wa matatizo.** Unganisha matukio yanayojirudia na rekodi ya tatizo, ili visababishi viondolewe na si kukarabatiwa tu (tazama Mada 3.3 — Usimamizi wa Matatizo).

## Maswali ya kujadili na timu yako

**Tunafanya nini katika dakika kumi za kwanza za tukio la hitilafu, na nani anaamua?**

Pitia tukio kubwa la mwisho dakika kwa dakika. Bainisha nani alichukua uongozi, nani aliwasiliana, na nani alibadilisha nini. Timu nyingi hugundua kuwa majukumu yalidhaniwa na hayakukubaliwa. Mwezeshaji anaweza kuuliza nini kingetokea kama kiongozi wa kawaida angekuwa mbali. Fuatilia kwa kukubaliana jinsi majukumu yatakavyogawiwa wakati ujao.

**Tunaliita kitu tukio la hitilafu lini, na tunasubiri lini?**

Kusanya mifano ya matukio yaliyotangazwa kwa kuchelewa. Uliza nini kiliwazuia watu: kutotaka kuwasumbua wengine, kutokuwa na uhakika, au hofu ya lawama. Linganisha na vichocheo vya sura ya SRE. Kubaliana kizingiti na njia ya kutangaza tukio bila fujo.

**Watumiaji wetu wanajuaje kinachoendelea wakati wa kuzimika, na mara ngapi?**

Tazama kuzimika kwa mwisho kutoka upande wa mtumiaji. Uliza nani aliwaambia, waliambiwa nini, na pengo lilikuwa la muda gani. Mara nyingi jibu ni ukimya mrefu ukifuatiwa na dokezo fupi. Uliza nani anapaswa kumiliki mawasiliano na ujumbe wa kwanza unapaswa kusema nini. Kubaliana kiolezo na mdundo wa taarifa.

**Postmortem yetu ya mwisho ilibadilisha nini, na tunajuaje?**

Omba hatua, wamiliki, na hali. Kama hakuna iliyokamilika, uliza kwa nini: hakuna mmiliki, hakuna muda, au thamani isiyo wazi. Gundua kama postmortem zinasomwa na yeyote nje ya timu. Kubaliana kikao cha kawaida cha kupitia hatua zilizo wazi.

**Je, watu wanajisikia salama kusema walichokosea?**

Swali hili hujaribu kutokuwa na lawama. Waombe watu waeleze wangejisikiaje kuandika kuhusu kosa lao wenyewe kwenye postmortem. Sikiliza hofu ya matokeo na mifano ya lawama ilipotokea. Usidai uwazi; uliza timu na viongozi wangehitaji kufanya nini kuifanya iwe salama. Chagua hatua moja inayoonekana.

**Tunafanya mazoezi vipi, na lini mara ya mwisho?**

Uliza kama timu imeendesha zoezi au tukio la kuigiza, na ilijifunza nini. Kama kamwe, jadili mwanzo mdogo, kama kurudia tukio la zamani kwa saa moja. Sura ya SRE inataja kufanya mazoezi ya mchakato kwa mabadiliko ya kawaida na mazoezi ya urejeshaji baada ya maafa. Panga moja kwa robo mwaka ijayo.

## Kwa vitendo: mfano wa agile ITIL

Lango la wateja la kampuni ya umeme ya mkoa linawawezesha kaya kuripoti kukatika kwa umeme na kutazama ankara. Timu ya watu kumi na mmoja inalijenga na kuliendesha, ikiwa na ratiba ya zamu ya watu wanne. Wakati wa dhoruba, msongamano wa ripoti unaongezeka, lango linapunguza kasi, kisha linafeli. Mhandisi aliye zamu anajaribu kuanzisha upya hifadhidata, mhandisi wa pili kwa wakati mmoja anapeleka marekebisho ya usanidi, na wa tatu anarudisha nyuma toleo la awali. Lango linarudi baada ya saa tatu, na kituo cha simu, ambacho hakijaambiwa kamwe, kilipokea maelfu ya simu za hasira.

Katika postmortem timu inaona hatari tatu kutoka sura ya SRE: kila mtu alizingatia marekebisho ya kiufundi, hakuna aliyewasiliana, na mabadiliko yaligongana. Wanaandika mchakato wa tukio wa ukurasa mmoja. Yeyote anaweza kutangaza tukio, na timu ya pili kuhusika, kuonekana kwa wateja, au saa moja bila maendeleo kunamaanisha lazima watangaze. Mhandisi aliye zamu anakuwa kiongozi wa uendeshaji, na ratiba inataja kamanda wa tukio na kiongozi wa mawasiliano kutoka timu pana. Kiongozi wa uendeshaji pekee ndiye anayebadilisha uzalishaji. Kiongozi wa mawasiliano anatuma taarifa kila dakika 30 kwa kituo cha simu na chumba cha udhibiti. Kituo cha pamoja kinashikilia kumbukumbu hai.

Dhoruba inayofuata, lango linapunguza kasi tena, tukio linatangazwa ndani ya dakika kumi, na huduma inarejeshwa ndani ya dakika 70 huku taarifa zikienda kituo cha simu muda wote. Matatizo yanabaki. Ratiba ya makamanda ina mapengo siku za sikukuu, na timu inagundua kuwa utegemezi mmoja, mtoa huduma wa ujumbe mfupi, hana mtu wa kuwasiliana naye wa kupandisha. Postmortem inazalisha hatua mbili zenye wamiliki: kukamilisha ratiba kwa mbadala, na kukubaliana njia ya kupandisha na mtoa huduma. Timu inapanga kurudia tukio la dhoruba kwa wanachama wapya wa ratiba.

## Mitazamo minne

### Timu za bidhaa na utoaji

Timu za utoaji husababisha na kurekebisha matukio mengi. Jiunge na ratiba ya zamu au toa msaada wa moja kwa moja kwake, na uchukulie hatua za postmortem kama vipengele vya orodha ya kazi. Jenga njia za kugundua na kurudisha nyuma matatizo ndani ya matoleo yako. Shiriki katika mazoezi ili majukumu yazoeleke.

### Timu za huduma na uendeshaji

Timu za uendeshaji zinamiliki mchakato. Uweke mfupi na uliozoeleka, wape watu mamlaka ya kutenda, na utunze rekodi ambazo wengine wanaweza kuzitumia. Shiriki ulichojifunza na timu za utoaji, na usukume masomo kwenye usimamizi wa matatizo na upangaji.

### Uongozi na utawala

Viongozi huweka utamaduni. Omba postmortem na uzisome, sifu watu wanaoripoti matatizo, na ukatae kutafuta mtu wa kulaumu. Linda muda wa kufanya mazoezi na kukamilisha hatua. Amua nani anaweza kutumia fedha au kuitisha kiwango cha juu zaidi cha mwitikio.

### Wateja na watumiaji

Wateja na watumiaji wanahitaji taarifa za wakati, za uaminifu na njia wazi ya kuripoti matatizo. Mwulize mtoa huduma wako unachoweza kutarajia wakati wa kuzimika na utaambiwaje. Postmortem inaposhirikiwa nawe, isome kwa kile ambacho mtoa huduma atabadilisha.

## Sababu za kawaida za kushindwa

- **Hakuna majukumu.** Kila mtu anafanya kazi kwenye marekebisho ya kiufundi na hakuna anayeratibu au kuwasiliana. Badala yake, taja kamanda wa tukio, kiongozi wa uendeshaji, na kiongozi wa mawasiliano kila mara.
- **Kutangaza kwa kuchelewa.** Watu husubiri hadi tatizo liwe baya. Badala yake, weka vizingiti vya chini, wazi na ufanye kutangaza kuwe kawaida.
- **Kufanya kazi kivyako.** Watu kadhaa hubadilisha mfumo kwa wakati mmoja. Badala yake, ruhusu mabadiliko kupitia kiongozi wa uendeshaji tu.
- **Ukimya.** Watumiaji na wadau hawasikii chochote. Badala yake, kubaliana muda wa taarifa na kiolezo.
- **Lawama.** Postmortem inatafuta mtu mwenye kosa. Badala yake, uliza nini katika mfumo kiliruhusu kosa na urekebishe hicho.
- **Postmortem zisizokwenda popote.** Hatua hazina wamiliki. Badala yake, ziweke kwenye orodha ya kazi na tarehe na uzipitie mara kwa mara.
- **Kutofanya mazoezi kamwe.** Mara ya kwanza mchakato unapotumika ni tukio kubwa. Badala yake, jizoeze kwa matukio madogo na mazoezi.
- **Kuchukulia ukarabati kama utatuzi.** Tukio lilelile linarudi. Badala yake, unganisha marudio na usimamizi wa matatizo na urekebishe sababu.

## Modeli ya ukomavu

| Nyanja | Kuanza | Kukua | Kusanifisha | Kusimamia | Kuratibu |
|---|---|---|---|---|---|
| Kugundua na kutangaza | Matukio yanagunduliwa kupitia malalamiko ya watumiaji | Tahadhari fulani zipo na baadhi ya matukio hutangazwa | Vizingiti vilivyoandikwa na mpango rahisi wa ukali hutumika kwa uthabiti | Muda wa kugundua na wa kutangaza hufuatiliwa na kupunguzwa | Kugundua na kutangaza hushirikiwa katika timu na wasambazaji |
| Mwitikio na majukumu | Wajibu wanaboresha papo hapo | Baadhi ya timu hutaja kiongozi | Majukumu, makabidhiano na rekodi hai ni ya kawaida | Nyakati za mwitikio na utendaji wa majukumu hupitiwa | Mwitikio unaratibiwa katika timu na wasambazaji, kwa mazoezi ya pamoja |
| Mawasiliano | Taarifa ni bila mpangilio | Taarifa fulani huenda kwa hadhira fulani | Mdundo wa taarifa na violezo vipo kwa kila ukali | Wakati wa mawasiliano hupimwa na watumiaji huulizwa | Mawasiliano huratibiwa na wateja na washirika |
| Kujifunza | Mapitio hufuata matukio mabaya zaidi tu | Baadhi ya postmortem huandikwa | Postmortem zisizo na lawama hufuata vichocheo vilivyofafanuliwa, hatua zikifuatiliwa | Kukamilika kwa hatua na marudio hupimwa | Masomo hushirikiwa katika timu na kulisha mabadiliko ya shirika zima |

## Orodha hakiki

- [ ] Tuna fasili fupi ya tukio la hitilafu pamoja na mifano.
- [ ] Tuna mpango mdogo wa ukali wenye mifano ya athari kwa watumiaji na orodha za kuita.
- [ ] Kila tukio huanza kwa kutaja kamanda wa tukio, kiongozi wa uendeshaji, na kiongozi wa mawasiliano.
- [ ] Rekodi hai hutunzwa kwa kila tukio.
- [ ] Kiongozi wa uendeshaji aliyetajwa pekee ndiye anayebadilisha uzalishaji wakati wa tukio.
- [ ] Muda wa taarifa umekubaliwa kwa kila ukali.
- [ ] Vichocheo vya postmortem vimeandikwa.
- [ ] Postmortem hazina lawama, zinashirikiwa, na zinapitiwa.
- [ ] Kila hatua ya postmortem ina mmiliki na tarehe, na hatua zilizo wazi hupitiwa.
- [ ] Tumefanya mazoezi ya mchakato katika miezi sita iliyopita.

## Maelekezo ya AI

**Madhumuni: kuandika rasimu ya mchakato wa tukio wa ukurasa mmoja kutoka zoezi lako la sasa.**

```text
Help me draft a one-page incident process for a team of [number] people who run [service].

How we handle incidents today: [describe in a few sentences].
Our on-call arrangement: [describe].
Who needs to be told during an incident: [list audiences].
Rules we must follow (contracts, regulations), with source text if you have it: [paste, or write "none known"].

Produce a short process with: what counts as an incident, a simple severity scheme with user-impact examples (leave numeric thresholds as [to be agreed]), the roles and what each does, how to communicate, and when to hold a postmortem. Mark every item that is an assumption. Do not invent obligations. Ask clarifying questions first, and list what you are unsure of.
```

**Madhumuni: kugeuza kumbukumbu ya tukio kuwa rasimu ya postmortem isiyo na lawama.**

```text
Below is the log of an incident: [paste timestamps, messages, and actions; remove personal data].
Impact as we know it: [describe users affected and for how long, using only facts].

Draft a blameless postmortem with: summary, impact, timeline, how it was detected, how it was mitigated, contributing causes (separate known from suspected), what went well, what went badly, and proposed actions with a suggested type (prevent, detect, respond) but no owners or dates. Describe actions of people neutrally, as roles. Do not invent facts or causes. Mark gaps with [UNKNOWN], and list what you are unsure of.
```

**Madhumuni: kuandika taarifa ya hali ya tukio kwa wadau wasio wa kiufundi.**

```text
Write a status update for stakeholders who are not technical about this incident.

Facts: what is affected: [describe]; since when: [time]; what we know about the cause: [what is known, or "not yet known"]; what we are doing: [describe]; when the next update will come: [time].

Write under 120 words in plain language. State what we know and what we do not, without guessing at the cause or the time of recovery. Do not promise a resolution time unless I gave one. Offer two versions: one for customers and one for internal staff. List what you are unsure of.
```

**Madhumuni: kubuni zoezi dogo la tukio.**

```text
Design a 60-minute incident exercise for [number] people who run [service].

Scenario basis: [describe a past incident or a plausible failure, using only facts you want to use].
Roles to practice: incident commander, operations lead, communications lead.
Constraints: [for example no use of production systems].

Give a timed plan: briefing, the scenario released in three stages, prompts for each role, and a short review with questions on roles, communication, and records. Do not use real production access. Ask clarifying questions first if information is missing, mark assumptions, and list what you are unsure of.
```

## Ujuzi wa AI

- [incident-response-plan](../../../../skills/incident-response-plan/SKILL.md): tumia kuandika mpango unaoweka majukumu, vizingiti na mawasiliano kwa timu yako.
- [postmortem](../../../../skills/postmortem/SKILL.md): tumia kuendesha mapitio yasiyo na lawama na kurekodi hatua baada ya tukio.
- [runbook](../../../../skills/runbook/SKILL.md): tumia kugeuza marekebisho yanayojulikana kuwa taratibu fupi kwa mjibu.
- [on-call-rotation](../../../../skills/on-call-rotation/SKILL.md): tumia kubuni ratiba ya haki ya zamu yenye mbadala na makabidhiano.
- [crisis-communication-plan](../../../../skills/crisis-communication-plan/SKILL.md): tumia kupanga unachowaambia watumiaji, wafanyakazi na umma wakati wa kuzimika kubwa.

## Vyanzo muhimu

- **Managing Incidents** (Andrew Stribblehill, katika *Site Reliability Engineering*, Google, sre.google): maelezo ya umma yaliyo wazi zaidi ya uongozi wa tukio kwa timu za huduma.
- **Postmortem Culture: Learning from Failure** (*Site Reliability Engineering*, Google, sre.google): hoja ya postmortem zisizo na lawama, pamoja na vichocheo na mawazo ya kujenga utamaduni.
- **Incident management** (Wikipedia): muhtasari wa nyanja nyingi wenye sehemu kuhusu usimamizi wa huduma za TEHAMA.
- **IT service management** (Wikipedia): ufafanuzi wa tukio la hitilafu na nafasi ya kushughulikia matukio katika dawati la huduma.

## Marejeo

1. Managing Incidents — Andrew Stribblehill, Google SRE book, sre.google — https://sre.google/sre-book/managing-incidents/
2. Postmortem Culture: Learning from Failure — Google SRE book, sre.google — https://sre.google/sre-book/postmortem-culture/
3. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
4. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
5. Incident Command System — Wikipedia — https://en.wikipedia.org/wiki/Incident_Command_System
6. Root cause analysis — Wikipedia — https://en.wikipedia.org/wiki/Root_cause_analysis
7. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
8. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
9. Computer security incident management — Wikipedia — https://en.wikipedia.org/wiki/Computer_security_incident_management
