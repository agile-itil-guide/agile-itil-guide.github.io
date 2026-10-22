# Usimamizi wa Matoleo na Upelekaji

**Usimamizi wa matoleo na upelekaji huingiza mabadiliko uzalishajini kwa usalama, na lengo katika mazingira ya agile ni kufanya kutoa kuwe kwa kawaida, kwa kiotomatiki, na kwa kutenguliwa kiasi kwamba kunaacha kuwa tukio.**

## Kwa nini hili ni muhimu

Mashirika mengi bado huchukulia toleo kama tukio kubwa lenye mvutano. Tarehe inawekwa, dirisha linahifadhiwa, watu wanabaki kuchelewa, na mafanikio yanapimwa kwa kama kitu kilivunjika. Mtindo huo huzalisha hatari ileile unayoiogopa: kadiri mabadiliko mengi yanavyofungwa pamoja katika toleo, ndivyo inavyokuwa vigumu zaidi kuelewa kilichoharibika na kurudisha nyuma kunakuwa na uchungu zaidi.

Programu ya utafiti ya DORA inaeleza mbadala. Ukurasa wake kuhusu utoaji endelevu unafafanua zoezi kama "uwezo wa kutoa mabadiliko ya aina zote kwa mahitaji kwa haraka, kwa usalama, na kwa uendelevu," na unaripoti kuwa kulifanya vizuri kunaboresha utendaji wa utoaji na upatikanaji, na kunahusishwa na uchovu mdogo na kuridhika zaidi kazini. Ukurasa pia unaonya kuwa kupeleka mara nyingi zaidi bila kubadilisha michakato na usanifu kunaelekea kuongeza viwango vya kushindwa na kuchosha timu. Funzo si "toa haraka zaidi" bali "jenga uwezo wa kutoa kwa usalama, kisha toa mara nyingi."

Kitabu cha Google *Site Reliability Engineering*, katika sura yake kuhusu uhandisi wa matoleo, kinatoa hoja kama hiyo kutoka zoezi: matoleo ya mara kwa mara yanamaanisha mabadiliko machache kati ya matoleo, kwa hiyo kujaribu na kutatua matatizo kunakuwa rahisi. Mada hii inachota vyanzo hivyo viwili, mada nyingine za mwongozo zinazohusu mabadiliko, na msamiati wa ITIL unaotumika kwa wingi ambao mwongozo huu haukuweza kuuhakiki dhidi ya maandishi ya mmiliki wa mfumo. Chukulia vyanzo kama vyenye nguvu, mahususi, na vilivyopunguzwa kwa mazingira inavyoeleza.

## Dhana kuu

### Toleo na upelekaji

Istilahi hizi mbili mara nyingi huchanganywa. Tofauti ya kawaida, inayotumika kwa wingi katika usimamizi wa huduma, ni:

- **Toleo (release)** ni toleo la huduma au kipengele kilichofanywa kipatikane kwa matumizi. Ni uamuzi kuhusu watumiaji watapata nini.
- **Upelekaji (deployment)** ni kitendo cha kuhamisha toleo hadi mazingira, kama uzalishaji.

Kuvitenganisha kuna nguvu. Unaweza kupeleka msimbo uzalishajini bila kuuwasha kwa watumiaji, na kuutoa baadaye kwa njia iliyodhibitiwa. Mbinu kama swichi za vipengele (feature switches) zinategemea utengano huu (tazama makala ya Wikipedia kuhusu feature toggles).

### Utoaji endelevu na upelekaji endelevu

Ukurasa wa DORA unafafanua **utoaji endelevu (continuous delivery)** kama uwezo wa kutoa mabadiliko ya aina zote kwa mahitaji kwa haraka, kwa usalama, na kwa uendelevu. Unautofautisha na **upelekaji endelevu (continuous deployment)**, unamaanisha kupeleka kila badiliko uzalishajini haraka iwezekanavyo. DORA inasema timu "zinaweza na zinapaswa kuanza na utoaji endelevu" hata kama hazitapokea upelekaji endelevu kamwe. Uamuzi wa kutoa unabaki uamuzi wa biashara; utoaji endelevu unaufanya kuwa chaguo badala ya mradi.

### Utafiti unapendekeza nini

Ukurasa wa DORA unaorodhesha mazoea yanayounga mkono utoaji endelevu:

| Zoezi | DORA inasema nini |
|---|---|
| **Otomatiki ya majaribio** | Mfululizo wa majaribio ya kiotomatiki ulio kamili, wa kutegemewa, unaoundwa na kutunzwa zaidi na wasanidi |
| **Otomatiki ya upelekaji** | Upelekaji wa kiotomatiki kabisa, usiohitaji uingiliaji wa mkono |
| **Uundaji unaotegemea trunk** | Matawi chini ya matatu yanayofanya kazi, matawi ya muda mfupi sana, vipindi vya kufunga msimbo vya nadra |
| **Timu na usanifu zilizounganishwa kwa uhuru** | Timu zinaweza kujaribu na kupeleka kwa mahitaji bila kuratibu na huduma nyingine |
| **Mazoea mengine** | Uunganishaji endelevu, majaribio endelevu, udhibiti wa matoleo kwa vielelezo vyote vya uzalishaji, usimamizi wa data ya majaribio, ufuatiliaji na uonekanaji, taarifa za mapema, usimamizi wa mabadiliko ya hifadhidata, usalama kila mahali |

Ukurasa unaripoti kuwa utoaji endelevu unahusishwa na ubora wa juu (muda mdogo unaotumika kwa kurudia kazi au kazi isiyopangwa), uchovu mdogo, na maumivu madogo ya upelekaji. Pia unasema timu bora zinazotimiza malengo ya uaminifu katika ripoti ya 2021 zilikuwa na uwezekano mara tatu zaidi wa kuwa na usanifu uliounganishwa kwa uhuru kuliko wanaofanya vibaya. Haujataja zana, mzunguko wa upelekaji wa lengo, wala ratiba ya utekelezaji, na unabainisha kuwa mabadiliko kwa kawaida hufuata "J-curve," na kushuka kwa ufanisi kadiri otomatiki inavyoongeza mahitaji ya majaribio na deni la kiufundi linakusanyika.

### Masomo kutoka zoezi la uhandisi wa matoleo

Sura ya kitabu cha SRE kuhusu uhandisi wa matoleo inaeleza mbinu ya shirika moja kubwa:

- **Kujihudumia.** Timu huendesha michakato yao ya matoleo. Matoleo ni "kweli kiotomatiki" na yanahitaji ushiriki wa mhandisi tu matatizo yakitokea.
- **Kasi ya juu.** Matoleo ya mara kwa mara yanamaanisha mabadiliko machache kati ya matoleo, jambo linalofanya kujaribu na kutatua matatizo kuwe rahisi.
- **Ujenzi uliofungwa (hermetic builds).** Ujenzi unategemea matoleo yanayojulikana ya zana na maktaba, ili toleo lilelile la msimbo litoe matokeo yaleyale.
- **Sera zinazotekelezwa.** Udhibiti wa ufikiaji unadhibiti idhini, uundaji wa toleo, na upelekaji. Karibu mabadiliko yote yanahitaji mapitio ya msimbo, na kila toleo linazalisha ripoti ya mabadiliko yaliyojumuishwa.

Sura pia inasisitiza usanidi chini ya udhibiti wa chanzo na mapitio ya msimbo, na inapendekeza wasanidi, wahandisi wa uaminifu wa tovuti, na wahandisi wa matoleo washirikiane badala ya kurusha matokeo "juu ya uzio." Inasema mashirika yanapaswa kufafanua sera za matoleo hata kama bado hayawezi kuziweka kiotomatiki au kuzitekeleza, na kwamba ni nafuu kuweka mazoea mazuri mapema kuliko kuyarekebisha baadaye. Sura inaeleza zana za Google zenyewe; mazingira yako yatatumia nyingine, kwa hiyo chota kanuni na si bidhaa.

### Mazingira na kupandisha

Toleo kwa kawaida husogea kupitia mfululizo wa mazingira, kama uundaji, majaribio, na uzalishaji. Kila hatua inatoa ushahidi. Zoezi la kawaida, linalolingana na utafiti ulio juu, ni kujenga mara moja na kupandisha kipengele kilekile, ili kilichojaribiwa ndicho kinachopelekwa. Msisitizo wa sura ya SRE kuhusu ujenzi unaofanana kutoka toleo lilelile la msimbo unaeleza wazo hilohilo.

### Usambazaji wa toleo na kurudisha nyuma

Jinsi toleo linavyowafikia watumiaji linaweza kuwa la hatua kwa hatua. Sura ya SRE inaeleza usambazaji unaokwenda kwa kasi ya hatari, kutoka upelekaji wa kiotomatiki kila saa katika uundaji hadi usambazaji wa siku kadhaa kwa miundombinu nyeti, na inataja matoleo ya canary, ambapo sehemu ndogo ya trafiki hupata toleo jipya kwanza. Kurudisha nyuma kunamaanisha kurudi kwenye toleo la awali, na kunapaswa kuwa na mazoezi kama kusambaza. Timu zinazoweza kutengua haraka zinaweza kumudu kupeleka mara nyingi (tazama Mada 3.4 — Uwezeshaji wa Mabadiliko).

### Taarifa za toleo kwa msaada

Wafanyakazi wa msaada na watumiaji wanahitaji kujua nini kinabadilika na cha kufanya kikienda vibaya. Dokezo la toleo, orodha ya masuala yanayojulikana, na mtu wa mawasiliano aliyetajwa ndivyo kiwango cha chini (tazama Mada 3.1 — Dawati la Huduma). Ripoti ya sura ya SRE ya mabadiliko yaliyojumuishwa inatumika kama chanzo.

### Vipimo

Ukurasa wa DORA unapendekeza kupima nyakati fupi za kukamilisha kwa mabadiliko ya kawaida na ya dharura, viwango vya chini vya kushindwa kwa mabadiliko, muda mfupi wa kurejesha huduma, na mizunguko ya matoleo inayotoa vipaumbele kwa wakati. Lengo lake kuu ni kwamba hakuna anayefanya kazi nje ya saa za biashara kupeleka. Kwa fasili na tahadhari kuhusu vipimo, tazama Mada 3.4 — Uwezeshaji wa Mabadiliko na Mada 5.6 — Vipimo na Upimaji.

## Mazoea bora

1. **Tenganisha upelekaji na toleo.** Peleka msimbo uzalishajini ukiwa umelala na uuwashe kwa watumiaji ukiwa tayari, ukitumia swichi za vipengele au usambazaji wa hatua kwa hatua. Hii inapunguza hatari ya upelekaji na kuipa biashara udhibiti.
2. **Weka upelekaji kiotomatiki.** Lenga kutokuwa na hatua za mkono. Hatua za mkono ni za polepole, hutofautiana kati ya watu, na husababisha matukio ya hitilafu. Weka kiotomatiki kwa nyongeza ndogo, ukianza na hatua zinazoenda vibaya zaidi.
3. **Jenga mara moja, pandisha kipengele.** Zalisha kifurushi kimoja na ukisogeze katika mazingira, ili ulichojaribu ndicho unachoendesha. Rekodi toleo gani liko wapi.
4. **Fanya ujenzi uweze kurudiwa.** Funga matoleo ya zana na maktaba ili toleo lilelile la msimbo litoe matokeo yaleyale. Hii inafuata kanuni ya sura ya SRE ya ujenzi uliofungwa.
5. **Weka matawi ya muda mfupi.** Mwongozo wa DORA wa trunk ni matawi chini ya matatu yanayofanya kazi na matawi yanayounganishwa ndani ya takriban siku moja. Matawi marefu hugeuza matoleo kuwa matukio ya kuunganisha.
6. **Jaribu kiotomatiki, na uweke majaribio kuwa ya haraka na ya kutegemewa.** Lenga maoni kwa dakika. Mfululizo wa majaribio usio thabiti au wa polepole hufanya watu waukwepe.
7. **Toa kwa makundi madogo.** Matoleo madogo ni rahisi kupitia, kujaribu na kutengua. Toleo likiwa kubwa, uliza jinsi ya kuligawanya.
8. **Sambaza kwa hatua.** Anza na sehemu ndogo ya watumiaji au seva, tazama ishara, kisha upanue. Bainisha mapema utakachotazama na nani anaweza kusimamisha usambazaji.
9. **Fanya mazoezi ya kurudisha nyuma.** Jua jinsi ya kurudi kwenye toleo la mwisho zuri na ulifanyie mazoezi. Kurudisha nyuma ambako hujawahi kujaribu ni matumaini.
10. **Wape msaada wanachohitaji kabla ya toleo.** Toa maelezo ya toleo, masuala yanayojulikana, na mtu wa mawasiliano. Jumuisha wafanyakazi wa msaada katika idhini ya mabadiliko yanayoathiri watumiaji (tazama Mada 3.1 — Dawati la Huduma).
11. **Weka usanidi kwenye udhibiti wa matoleo.** Chukulia mabadiliko ya usanidi kama msimbo, pamoja na mapitio na rekodi. Chagua kila aina ya mpangilio unaishi wapi na kwa nini.
12. **Lenga upelekaji katika saa za kazi.** DORA inalitaja hili kama lengo kuu. Kama upelekaji unahitaji usiku wa kuchelewa, mchakato au usanifu unahitaji kazi.

## Maswali ya kujadili na timu yako

**Inachukua muda gani, na hatua ngapi, kuingiza badiliko lililokamilika uzalishajini?**

Fuatilia badiliko moja la hivi karibuni kutoka "tayari" hadi "hai." Orodhesha kila hatua, nani anaifanya, na inasubiri muda gani. Tofautisha hatua za mkono na za kiotomatiki. Timu mara nyingi hushangazwa na hatua ngapi ni za mkono na kusubiri kati yake. Mwezeshaji anaweza kuuliza ni hatua gani imesababisha matukio mengi zaidi. Chagua moja ya kuweka kiotomatiki.

**Ni nini kingehitaji kuwa kweli ili tutoe wakati wa saa za kazi bila wasiwasi?**

Uliza timu inaogopa nini kuhusu kutoa. Majibu ya kawaida: hakuna kurudisha nyuma kulikojaribiwa, majaribio dhaifu, athari zisizo wazi kwa watumiaji. Kila moja ni kitu cha kujenga. Viorodheshe na uvipange. Uliza hatua ndogo zaidi kwa cha kwanza ni ipi. Lengo la DORA la kutokuwa na mtu anayefanya kazi nje ya saa za biashara kupeleka ni lengo lenye manufaa la kujadili.

**Tunaunganisha mabadiliko wapi kwa sababu kutoa kuna uchungu, na kuunganisha kunatugharimu nini?**

Tazama yaliyomo ya matoleo ya hivi karibuni. Hesabu mabadiliko katika kila moja. Uliza nini kilitokea kundi lilipoenda vibaya, na ilichukua muda gani kupata sababu. Jadili nini kingefanya matoleo ya badiliko moja kuwa njia rahisi. Kubaliana hatua ya kwanza, kama kutoa badiliko moja lenye hatari ndogo peke yake.

**Tunajuaje toleo linafanya kazi likishakuwa hai?**

Uliza ni ishara gani timu inazitazama katika saa ya kwanza: makosa, utendaji, ripoti za watumiaji. Kama jibu ni "tunasubiri malalamiko," jadili ufuatiliaji ambao ungeonyesha tatizo haraka. Uliza nani anatazama na angefanya nini. Kubaliana orodha hakiki fupi ya baada ya toleo.

**Timu yetu ya msaada inajua nini kuhusu toleo kabla halijatoka?**

Waulize dawati la huduma walijifunza nini kuhusu toleo la mwisho na lini. Linganisha na walichohitaji. Jadili makabidhiano rahisi, kama dokezo la toleo na mtu wa mawasiliano aliyetajwa. Jumuisha watu wanaojibu maswali ya watumiaji katika upangaji wa matoleo yenye hatari.

**Ni nini kinatuzuia kupeleka bila kipindi cha kusimamisha, na kipindi cha kusimamisha kingegharimu nini?**

Vipindi vya kusimamisha ni vya kawaida karibu na nyakati za kilele za biashara. Uliza vinadumu muda gani na vinachelewesha nini. Jadili kama mabadiliko madogo, yaliyojaribiwa vizuri yangeweza kuendelea wakati wake kwa kinga za ziada. Ukurasa wa DORA unaonya dhidi ya kutumia idhini ileile kwa mabadiliko yote bila kujali hatari au wakati, kwa hiyo uliza kama kusimamisha ni butu mno.

## Kwa vitendo: mfano wa agile ITIL

Chuo kikuu kinaendesha mfumo wa usajili mtandaoni kwa wanafunzi 30,000. Timu ya uundaji ya watu wanane inatoa mara moja kwa muhula, katika dirisha la wikendi kabla ya usajili kufunguliwa. Kila toleo linafunga mamia ya mabadiliko na linahitaji watu kumi na tano, orodha ndefu ya mkono, na mpango wa simu. Toleo la mwisho lilishindwa saa 8 usiku Jumapili, na timu ilitumia saa kumi na nne kutafuta ni mabadiliko gani kati ya hayo yalisababisha.

Kiongozi wa timu anapendekeza badiliko la mbinu. Kwanza, upelekaji unakuwa wa maandishi ya kiotomatiki kabisa, ukianza na hatua zilizoshindwa mara ya mwisho. Pili, timu inaongeza majaribio ya kiotomatiki kwa njia ya usajili yanayoendeshwa kwa kila badiliko na kuchukua chini ya dakika kumi. Tatu, vipengele vipya vinapelekwa vikiwa vimezimwa na kuwashwa na swichi ya kipengele baada ya ukaguzi. Nne, hatua ya kurudisha nyuma inaandikwa na kufanyiwa mazoezi katika mazingira ya majaribio. Ofisi ya msajili inakubali sheria kwamba hakuna toleo linalokwenda uzalishajini katika wiki tatu za kilele cha usajili isipokuwa ni marekebisho ya hitilafu inayoonekana na watumiaji.

Ndani ya muhula, timu inapeleka kila wiki nje ya wiki za kilele, katika saa za kazi, huku maelezo ya toleo yakitumwa kwa dawati la wanafunzi siku moja kabla. Baadhi ya matoleo yanapunguzwa kasi na majaribio yasiyo thabiti na swichi moja ya kipengele iliachwa imewashwa kwa makosa na kusababisha mkanganyiko mfupi. Mabadiliko pia yanapata J-curve ambayo ukurasa wa DORA unaeleza: kwa miezi miwili, kazi ya majaribio na maandishi ya kiotomatiki inapunguza kasi ya utoaji wa vipengele. Timu inaendelea, inarekebisha majaribio yasiyo thabiti, inaongeza hatua ya orodha hakiki ya kuondoa swichi, na inakubaliana na msajili kupitia sheria ya kusimamisha mwaka ujao. Kilele cha usajili cha muhula kinapita bila tukio lolote la hitilafu linalohusiana na toleo.

## Mitazamo minne

### Timu za bidhaa na utoaji

Timu za utoaji zinamiliki bomba: majaribio, ujenzi, maandishi ya upelekaji, na kurudisha nyuma. Wekeza ndani yake kama bidhaa yenye watumiaji. Toa kidogo, toa mara nyingi, na uchukulie kila toleo kama ushahidi kuhusu bomba. Shirikisha msaada na uendeshaji mabadiliko yanapowaathiri.

### Timu za huduma na uendeshaji

Timu za uendeshaji hunufaika na matoleo madogo, yanayotabirika zaidi, na zinaweza kusaidia kwa kufafanua nini lazima kiwe kweli kabla toleo kukubaliwa: ufuatiliaji, miongozo ya uendeshaji, na kurudisha nyuma. Hama kutoka kuwa mlinzi wa lango hadi kuwa mwezeshaji kwa kutoa jukwaa na ukaguzi ambao timu za utoaji wanatumia. Tazama ishara baada ya toleo.

### Uongozi na utawala

Viongozi huamua kama timu zinaweza kuwekeza katika bomba na kuvumilia J-curve. Omba muda wa kukamilisha, kiwango cha kushindwa kwa mabadiliko, na muda wa kurejea. Pinga kusimamisha matoleo kama jibu la jumla kwa hatari, na uombe badala yake ushahidi kwamba matoleo yenye hatari yanapata uchunguzi zaidi.

### Wateja na watumiaji

Wateja na watumiaji huona maboresho madogo ya mara kwa mara na usumbufu mkubwa mdogo wa mara moja. Tarajia taarifa ya mapema ya mabadiliko yanayokuathiri na njia ya kuripoti matatizo. Ukiwa na vipindi vya kilele, mwambie mtoa huduma ili aweze kupanga usambazaji wa hatua kwa hatua kuvizunguka.

## Sababu za kawaida za kushindwa

- **Matoleo makubwa ya mara moja.** Mamia ya mabadiliko yanatoka pamoja. Badala yake, toa kwa makundi madogo na utenganishe upelekaji na toleo.
- **Upelekaji wa mkono.** Hatua hutofautiana kwa mtu na kushindwa usiku. Badala yake, weka kiotomatiki kwa nyongeza, ukianza na hatua zenye hatari zaidi.
- **Kutoa mara nyingi zaidi bila kinga.** Viwango vya kushindwa vinapanda na watu wanachoka, kama DORA inavyoonya. Badala yake, wekeza katika majaribio, kurudisha nyuma na ufuatiliaji kwanza.
- **Vielelezo tofauti katika mazingira tofauti.** Kilichojaribiwa si kinachoendeshwa. Badala yake, jenga mara moja na upandishe kielelezo kilekile.
- **Matawi ya muda mrefu.** Kuunganisha kunakuwa matukio. Badala yake, weka matawi mafupi na uunganishe mfululizo.
- **Kurudisha nyuma ambako hakujajaribiwa.** Mara ya kwanza ya kurudisha nyuma hutokea wakati wa kuzimika. Badala yake, lifanyie mazoezi mara kwa mara.
- **Msaada ndio wa mwisho kujua.** Wafanyakazi hujifunza mabadiliko kutoka kwa watumiaji. Badala yake, tuma maelezo ya toleo na mtu wa mawasiliano kabla ya toleo.
- **Kusimamisha kwa jumla.** Kusimamisha kule kule kunatumika kwa mabadiliko yote. Badala yake, ruhusu mabadiliko yenye hatari ndogo, yaliyojaribiwa vizuri yapite kwa ukaguzi wa ziada na ubakize kusimamisha kwa yale yenye hatari.

## Modeli ya ukomavu

| Nyanja | Kuanza | Kukua | Kusanifisha | Kusimamia | Kuratibu |
|---|---|---|---|---|---|
| Otomatiki ya upelekaji | Upelekaji ni wa mkono na hutofautiana | Baadhi ya upelekaji una maandishi ya kiotomatiki | Upelekaji umewekwa kiotomatiki kupitia bomba la pamoja | Kushindwa kwa upelekaji na muda hufuatiliwa na kupunguzwa | Mabomba na mazoea hushirikiwa na kuboreshwa katika timu |
| Mzunguko na ukubwa wa toleo | Matoleo ni ya nadra na makubwa | Baadhi ya timu hutoa kwa makundi madogo | Timu hutoa kwa makundi madogo kwa mdundo unaojulikana | Mzunguko, muda wa kukamilisha na ukubwa hupimwa na kurekebishwa | Midundo ya matoleo huratibiwa katika huduma na wasambazaji |
| Usalama (majaribio, usambazaji, kurudisha nyuma) | Majaribio ni ya mkono; kurudisha nyuma hakujajaribiwa | Baadhi ya majaribio ya kiotomatiki na hatua za kurudisha nyuma zipo | Majaribio ya kiotomatiki, usambazaji wa hatua na kurudisha nyuma kulikofanyiwa mazoezi ni kawaida | Kiwango cha kushindwa kwa mabadiliko na muda wa kurejea hufuatiliwa na kuboreshwa | Mazoea ya usalama hushirikiwa na kujaribiwa katika timu |
| Utayari wa msaada | Msaada hujifunza matoleo kutoka kwa watumiaji | Baadhi ya matoleo yana maelezo | Maelezo ya toleo na mawasiliano ni kawaida | Maoni ya msaada kuhusu matoleo hukusanywa na kutendewa kazi | Msaada, utoaji na watumiaji hupanga matoleo pamoja |

## Orodha hakiki

- [ ] Tunaweza kueleza tofauti kati ya kupeleka na kutoa, na tunaitumia.
- [ ] Upelekaji umewekwa kiotomatiki bila hatua za mkono, au hatua za mkono zilizobaki zimeorodheshwa.
- [ ] Tunajenga mara moja na kupandisha kielelezo kilekile katika mazingira.
- [ ] Majaribio ya kiotomatiki huendeshwa kwa kila badiliko na kutoa maoni kwa dakika.
- [ ] Matawi ni ya muda mfupi na huunganishwa kwenye trunk mara kwa mara.
- [ ] Kurudisha nyuma kupo kwa kila aina ya toleo na kumefanyiwa mazoezi.
- [ ] Usambazaji ni wa hatua pale hatari inapohalalisha, ishara zikibainishwa mapema.
- [ ] Maelezo ya toleo na masuala yanayojulikana hufika kwa dawati la huduma kabla ya toleo.
- [ ] Usanidi uko kwenye udhibiti wa matoleo na hupitiwa.
- [ ] Tunafuatilia muda wa kukamilisha, kiwango cha kushindwa kwa mabadiliko, na muda wa kurejea kwa kila huduma.

## Maelekezo ya AI

**Madhumuni: kuchora ramani ya hatua kutoka "tayari" hadi "hai" na kupata cha kuweka kiotomatiki.**

```text
Help me map the path of a change from ready to live.

The steps in order, with who does each, whether it is manual or automated, and how long it typically waits or takes: [paste].
The last three releases and what went wrong, if anything: [paste facts].

Produce a table of steps and mark the manual ones. Rank the manual steps by how often they caused problems in the text, and suggest, for the top three, one small way to automate or check each. Do not invent durations or failure counts. Ask clarifying questions first if information is missing, mark assumptions, and list what you are unsure of.
```

**Madhumuni: kuandika dokezo la toleo kwa dawati la huduma na watumiaji.**

```text
Write a release note for [service].

What changed (plain words): [describe].
Who is affected and when: [describe].
What users will notice: [describe].
Known issues and workarounds: [list, or write "none known"].
How to roll back and who to contact: [describe].

Write two versions: a one-paragraph note for users and a half-page note for the service desk. Use only the facts above. Mark any statement that is an assumption and ask clarifying questions first if information is missing. List what you are unsure of.
```

**Madhumuni: kupanga usambazaji wa hatua kwa hatua.**

```text
Plan a staged rollout of [change].

What it changes and who uses it: [describe].
How we can limit exposure (percentage of users, regions, servers, feature switch): [describe options available].
Signals we can watch: [list monitoring and user feedback sources].
Rollback method: [describe].

Propose stages, what to check at each stage, who can pause or stop, and what would trigger a rollback, leaving numeric thresholds as [to be agreed]. Do not invent monitoring that we do not have. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Madhumuni: kuandaa hoja ya kuwekeza katika otomatiki ya matoleo.**

```text
Help me prepare a short case for investing in release automation for [service].

What a release costs us today, in facts: [people involved, hours, incidents, delays; use real numbers only].
What we want to be able to do: [describe].
Known risks of the work: [for example a temporary slowdown while tests are written].

Write a one-page case with the problem, the proposed first steps (small and incremental), what we will measure (lead time, change fail rate, recovery time, with no targets that I did not give), the risks including a temporary dip in delivery, and what we ask for. Do not invent figures. Ask clarifying questions first, and list what you are unsure of.
```

## Ujuzi wa AI

- [release-notes](../../../../skills/release-notes/SKILL.md): tumia kuwaambia watumiaji na dawati la huduma toleo linabadilisha nini.
- [changelog](../../../../skills/changelog/SKILL.md): tumia kutunza rekodi endelevu ya mabadiliko kwa toleo.
- [test-driven-development](../../../../skills/test-driven-development/SKILL.md): tumia kujenga majaribio ya kiotomatiki yanayofanya matoleo ya mara kwa mara kuwa salama.
- [shift-left-testing](../../../../skills/shift-left-testing/SKILL.md): tumia kuhamisha majaribio mapema katika bomba ili matatizo yapatikane mapema.
- [agile-delivery](../../../../skills/agile-delivery/SKILL.md): tumia kupanga matoleo madogo, ya mara kwa mara na ukaguzi unaozunguka.

## Vyanzo muhimu

- **Continuous delivery** (DORA, dora.dev): fasili ya programu ya utafiti, mazoea yanayopendekezwa, matokeo na mitego.
- **Release Engineering** (*Site Reliability Engineering*, Google, sre.google): zoezi la shirika moja la kujihudumia, ujenzi unaoweza kurudiwa, na sera ya matoleo inayotekelezwa.
- **Streamlining change approval** (DORA, dora.dev): mwongozo wa jinsi idhini inavyofaa ndani ya utoaji.
- **Continuous delivery** (Wikipedia): muhtasari wa zoezi na historia yake.

## Marejeo

1. Continuous delivery — DORA, dora.dev — https://dora.dev/capabilities/continuous-delivery/
2. Release Engineering — Google SRE book, sre.google — https://sre.google/sre-book/release-engineering/
3. Streamlining change approval — DORA, dora.dev — https://dora.dev/capabilities/streamlining-change-approval/
4. Continuous delivery — Wikipedia — https://en.wikipedia.org/wiki/Continuous_delivery
5. Software deployment — Wikipedia — https://en.wikipedia.org/wiki/Software_deployment
6. Release management — Wikipedia — https://en.wikipedia.org/wiki/Release_management
7. Feature toggle — Wikipedia — https://en.wikipedia.org/wiki/Feature_toggle
8. Continuous integration — Wikipedia — https://en.wikipedia.org/wiki/Continuous_integration
9. Version control — Wikipedia — https://en.wikipedia.org/wiki/Version_control
