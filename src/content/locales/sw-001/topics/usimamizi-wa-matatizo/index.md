# Usimamizi wa Matatizo

**Usimamizi wa matatizo hupata na kuondoa visababishi nyuma ya matukio ya hitilafu yanayojirudia, na umbo lake la agile ni mtiririko thabiti wa marekebisho madogo yanayotegemea ushahidi kwenye orodha ya kazi badala ya uchunguzi mkubwa wa nadra.**

## Kwa nini hili ni muhimu

Timu inayoshughulikia matukio ya hitilafu vizuri lakini haiondoi visababishi vyake iko kwenye kinu cha mazoezi. Kila kuzimika kunarekebishwa, hitilafu ileile inarudi, na wahandisi walio zamu wanachoka. Usimamizi wa matatizo ni zoezi linalotoka kwenye kinu hicho: linauliza kwa nini tukio lilitokea, kama litatokea tena, na nini kingeliizuia.

Timu za agile ziko katika nafasi nzuri ya kufanya hili. Zina orodha ya kazi ambamo marekebisho yanaweza kushindana na kipengele, zinafanya kazi kwa mizunguko mifupi inayofanya marekebisho madogo kuwa ya bei nafuu, na zina tafakari za nyuma ambapo mifumo inaweza kutambuliwa. Mara nyingi hukosa tabia ya kuunganisha matukio kwa kila mmoja na nidhamu ya kutafuta visababishi ipasavyo. Usimamizi wa matatizo hutoa yote mawili.

[Makala ya Wikipedia kuhusu uchambuzi wa sababu ya msingi (root cause analysis)](https://en.wikipedia.org/wiki/Root_cause_analysis) ndicho chanzo kikuu kilichosomwa kwa mada hii, kwa sababu Wikipedia ya Kiingereza haina makala yenye jina "Problem management" kwenye anwani iliyokaguliwa. Makala hayo yanaeleza uchambuzi wa sababu ya msingi (RCA) kama mbinu ya kutatua matatizo inayotumika katika uendeshaji wa TEHAMA na nyanja nyingine, na yana lebo za matengenezo za nukuu zinazokosekana. Msamiati wa ITIL unaotumika hapa, kama kosa linalojulikana na suluhisho la muda, unatoka maelezo yaliyochapishwa kwa wingi ya zoezi, ambayo mwongozo huu haukuweza kuyahakiki dhidi ya maandishi ya mmiliki wa mfumo. Soma machapisho ya sasa ya mmiliki fasili kamili zinapojalisha (tazama Mada 2.2 — ITIL).

## Dhana kuu

### Tukio la hitilafu, tatizo, kosa linalojulikana

Istilahi tatu hutumika pamoja, na tofauti ni muhimu:

| Istilahi | Maana, kama inavyotumika kwa wingi katika ITSM | Mfano |
|---|---|---|
| **Tukio la hitilafu (Incident)** | Usumbufu usiopangwa wa huduma au kupungua kwa ubora wake | Ukurasa wa kuweka miadi umezimika kwa dakika ishirini |
| **Tatizo (Problem)** | Sababu ya msingi, au inayoshukiwa, ya tukio moja au zaidi | Uvujaji wa kumbukumbu katika huduma ya miadi |
| **Kosa linalojulikana (Known error)** | Tatizo ambalo sababu yake imetambuliwa, kwa kawaida pamoja na suluhisho la muda lililorekodiwa | Uvujaji wa kumbukumbu unaeleweka; kuanzisha upya huduma kila usiku kunazuia kuzimika hadi urekebishwe |

**Suluhisho la muda (workaround)** ni njia ya kupunguza au kuepuka athari ya tukio au tatizo bila kuondoa sababu yake. Usimamizi wa matatizo ni kuhusu kuondoa sababu, na usimamizi wa matukio ya hitilafu ni kuhusu kurejesha huduma (tazama Mada 3.2 — Usimamizi wa Matukio ya Hitilafu).

### Tendaji na ya kuzuia

Makala ya uchambuzi wa sababu ya msingi yanatofautisha mbinu tendaji na za kuzuia kwa maneno ya jumla. Kazi tendaji hutibu dalili haraka. Kazi ya kuzuia inalenga kuzuia matatizo na kuweka usahihi wa utambuzi mbele ya kasi. Katika zoezi la ITSM, zote mbili zipo: usimamizi wa matatizo tendaji huchunguza matatizo baada ya matukio, na wa kuzuia hutafuta mifumo na udhaifu kabla haujasababisha matukio.

### Sababu ya msingi ni nini

Makala yanafafanua sababu ya msingi kwa jaribio la kivitendo: kipengele ni sababu ya msingi ya tatizo kama kukiondoa kunazuia tatizo kujirudia. Yanatofautisha sababu ya msingi na vipengele vingine vya kisababishi. Hii ni kanuni yenye manufaa. Ukiondoa kipengele na tatizo bado linaweza kurudi, umepata mchangiaji, si msingi.

Makala pia yanaonya kuhusu mipaka. Yanasema kuwa data ya ufuatiliaji inayokosekana, ujazo mkubwa mno wa matukio, sababu nyingi za msingi, na wachunguzi wanaosimama kwenye msingi wa juujuu vyote vinachanganya uchambuzi. Katika TEHAMA, yanabainisha, RCA mara nyingi hukosa miti ya hitilafu au vipimo vya usanifu, kwa hiyo "hakuna sababu ya msingi" imekuwa msemo wa kawaida. Kwa mifumo changamano, tarajia visababishi kadhaa vinavyochangia na si mhusika mmoja.

### Kanuni za uchambuzi wa sababu ya msingi

Makala yanaorodhesha hatua za jumla:

1. Eleza tatizo kwa uwazi.
2. Jenga mfuatano wa matukio kutoka uendeshaji wa kawaida hadi kushindwa.
3. Tenganisha sababu ya msingi na vipengele vingine vya kisababishi.
4. Chora grafu ya kisababishi inayounganisha sababu ya msingi na tatizo.

Yanaongeza kuwa wachunguzi wanapaswa kutazama kinga zilizoshindwa au zilizokosekana (uchambuzi wa vizuizi), kuepuka upendeleo katika mistari ya uchunguzi, kuamua hatua za kurekebisha, na kupitia kama hatua hizo zilikuwa na ufanisi.

### Mbinu

Makala yanasema kuwa, kulingana na ISO/IEC 31010, RCA inaweza kutumia kwa nini tano (five whys), uchambuzi wa njia za kushindwa na athari zake (FMEA), uchambuzi wa mti wa hitilafu, michoro ya Ishikawa (mifupa ya samaki), na uchambuzi wa Pareto. Yanampa Kaoru Ishikawa sifa kwa mchoro wa kisababishi unaobeba jina lake. Pia yanaita mbinu za mifupa ya samaki na kwa nini tano "hazina ukali wa kutosha," maoni ambayo hayaungi mkono na chanzo. Usomaji wa kivitendo: mbinu rahisi ni mwanzo mzuri wa majadiliano ya timu, na hitilafu changamano au zenye hatari kubwa zinaweza kuhitaji zile zenye ukali zaidi.

| Mbinu | Inafanya nini | Inasaidia lini |
|---|---|---|
| **Kwa nini tano (Five whys)** | Huuliza "kwa nini" mara kwa mara kuhama kutoka dalili kuelekea sababu | Majadiliano ya haraka ya ngazi ya timu kuhusu minyororo rahisi ya sababu |
| **Mchoro wa Ishikawa (mifupa ya samaki)** | Hugawa visababishi vinavyowezekana kwa kategoria | Kutafakari visababishi vingi vinavyowezekana |
| **Uchambuzi wa Pareto** | Hupanga visababishi kwa mzunguko au athari | Kuchagua tatizo gani linalojirudia la kushughulikia kwanza |
| **Uchambuzi wa mti wa hitilafu** | Huchora mchanganyiko wa hitilafu unaoongoza kwenye matokeo | Hitilafu za usalama au changamano |
| **FMEA** | Hutazama mbele jinsi sehemu zinavyoweza kushindwa na athari yake | Mapitio ya usanifu ya kuzuia |

### Hatua madhubuti za kurekebisha

Makala yanasema hatua za kurekebisha zinazoongeza makaratasi au mafunzo tu zina ufanisi mdogo. Kivitendo hili linapendekeza kupendelea hatua zinazobadilisha mfumo: weka ukaguzi kiotomatiki, ondoa njia ya kushindwa, ongeza kinga, boresha ufuatiliaji. Hatua kama "wakumbushe wahandisi wawe makini" ni dhaifu.

### Kanuni ya kutokuwa na lawama

Uchunguzi wa matatizo unashiriki kanuni ya kutokuwa na lawama iliyoelezwa kwa postmortem katika kitabu cha SRE cha Google: bainisha visababishi vinavyochangia bila kulaumu watu binafsi, kwa kuwa watu wanaweza kufundishwa na mifumo inaweza kurekebishwa (tazama Mada 3.2 — Usimamizi wa Matukio ya Hitilafu). Uchunguzi unaopata "kosa la binadamu" na kusimama kwa kawaida umesimama mapema mno. Uliza nini kilifanya kosa liwezekane na nini kingefanya liwe gumu zaidi.

### Usimamizi wa matatizo katika mtiririko wa agile

Mbinu ya kivitendo ya agile inaonekana hivi:

- Matukio ya hitilafu na postmortem huunda matatizo ya kuzingatiwa.
- Mapitio mafupi, ya kawaida huweka pamoja matukio yanayojirudia na kupanga matatizo kwa athari na mzunguko.
- Matatizo yaliyochaguliwa huingia kwenye orodha ya kazi kama vipengele vya kawaida, yenye mmiliki, dhana, na kikomo cha muda cha uchunguzi.
- Suluhisho za muda hurekodiwa kama makosa yanayojulikana ili dawati la huduma na wahandisi walio zamu waweze kuyatumia (tazama Mada 3.9 — Usimamizi wa Maarifa).
- Marekebisho ni madogo na yaliyojaribiwa, yanatolewa kwa njia ya kawaida, na kukaguliwa baadaye kuona kama matukio yalikoma.

## Mazoea bora

1. **Unganisha matukio na matatizo.** Rekodi ni matukio gani yanaonekana kuwa na sababu ileile. Bila viungo huwezi kuona mfumo, na bila mfumo huwezi kutetea marekebisho.
2. **Pitia matukio kutafuta mifumo kwa ratiba.** Mara moja kwa mwezi, weka pamoja matukio ya hivi karibuni kwa huduma na sababu inayowezekana na uchague machache ya juu. Tumia fikra ya Pareto: visababishi vichache kwa kawaida vinahusika na sehemu kubwa ya maumivu.
3. **Chukulia matatizo kama vipengele vya orodha ya kazi.** Peana kila tatizo lililochaguliwa mmiliki, kauli, na kikomo cha muda cha uchunguzi, na liache lishindane na kazi nyingine. Foleni tofauti ya "matatizo" ambayo hakuna anayeipanga ni makaburi.
4. **Anza na kauli wazi ya tatizo.** Andika kinachotokea, wapi, mara ngapi, na athari ni nini, ukitumia ukweli. Kauli zisizo wazi husababisha marekebisho yasiyo wazi.
5. **Jenga mfuatano wa matukio.** Kusanya kumbukumbu, mabadiliko na matukio kutoka uendeshaji wa kawaida hadi kushindwa. Makala yanaorodhesha mfuatano wa matukio kama hatua ya msingi, na mshangao mwingi unatokana na mabadiliko ambayo hakuna aliyeyaunganisha.
6. **Uliza sababu ambayo, ikiondolewa, inazuia kujirudia.** Tumia jaribio la makala. Timu inapopendekeza sababu, uliza kama kuiondoa kungezuia tatizo kurudi.
7. **Tarajia zaidi ya sababu moja.** Tafuta vipengele vinavyochangia katika usanifu, ufuatiliaji, mchakato na maarifa ya watu. Usisimame kwenye ya kwanza yenye mantiki.
8. **Chagua mbinu zinazofaa tatizo.** Tumia kwa nini tano au mifupa ya samaki kwa majadiliano ya haraka ya timu, na zana zenye ukali zaidi kwa hitilafu mbaya au changamano.
9. **Pendelea hatua zinazobadilisha mfumo.** Pendelea otomatiki, kinga na ufuatiliaji bora kuliko vikumbusho na mafunzo. Rekodi athari inayotarajiwa ili uweze kuihakiki.
10. **Rekodi suluhisho za muda kama makosa yanayojulikana.** Andika dalili inaonekanaje, suluhisho la muda, na nani anamiliki marekebisho. Shiriki rekodi na dawati la huduma na wafanyakazi walio zamu.
11. **Hakiki kwamba marekebisho yalifanya kazi.** Baada ya marekebisho, tazama kujirudia kwa kipindi kilichokubaliwa na uripoti matokeo. Marekebisho ambayo hayakaguliwi kamwe ni matumaini.
12. **Shiriki unachopata.** Chapisha muhtasari mfupi wa matatizo na marekebisho ili timu nyingine zitambue mifumo inayofanana.

## Maswali ya kujadili na timu yako

**Ni tukio gani la hitilafu linaendelea kurudi, na tunadhani nini kinalisababisha?**

Waombe watu wataje tukio ambalo wamelichoka zaidi. Linganisha majibu. Kisha uliza kila mtu anaamini sababu ni nini, na anajuaje. Imani mara nyingi hutofautiana, jambo linaloonyesha jinsi ushahidi wa pamoja ulivyo mdogo. Mwezeshaji anaweza kuuliza data gani ingetatua. Chagua moja ya kuchunguza kwa kikomo cha muda.

**Tunajuaje kama matukio mawili yana sababu ileile?**

Tazama jinsi matukio yanavyorekodiwa na uulize kama yeyote anaweza kupata matukio yanayohusiana kwa haraka. Majibu ya kawaida ni maandishi huru, kumbukumbu, au bahati. Uliza badiliko gani dogo la rekodi lingesaidia, kama sehemu ya huduma na sababu inayowezekana. Kubaliana moja.

**Tunafanya nini tunapopata "kosa la binadamu" katika mapitio?**

Omba mfano wa hivi karibuni. Swali ni kama mapitio yalisimama hapo. Jadili nini katika mfumo kilifanya kosa liwezekane: maelekezo yasiyo wazi, zana inayochanganya, shinikizo la muda. Linganisha na wazo kwamba huwezi kurekebisha watu, lakini unaweza kurekebisha mifumo. Kubaliana swali la kuuliza kila mara, kama "Nini kilifanya hili liwe rahisi kufanya?"

**Ni hatua gani kutoka mapitio ya zamani zilizobadilisha mfumo kweli, na zipi ziliongeza kikumbusho tu?**

Orodhesha hatua kutoka mapitio matano ya mwisho na uweke alama kila moja kama badiliko la mfumo au kikumbusho. Makala yanasema vikumbusho na makaratasi vina ufanisi mdogo. Uliza kwa nini vikumbusho ni vya kawaida sana: ni vya haraka, vya bei nafuu, na vinahisi kama hatua. Chagua kikumbusho kimoja cha kukibadilisha na marekebisho yenye nguvu zaidi.

**Tuna suluhisho za muda zisizoandikwa wapi?**

Waulize wahandisi walio zamu na wachambuzi wa dawati ni mbinu gani wanazotumia. Kila suluhisho la muda lisiloandikwa ni hatari. Zirekodi kama makosa yanayojulikana pamoja na dalili, suluhisho, na mmiliki. Mwezeshaji anaweza kuuliza nani anafaidika na kila rekodi. Tengeneza orodha fupi wiki hii.

**Tungejuaje kwamba marekebisho yamefanya kazi?**

Chagua marekebisho ya hivi karibuni na uulize ni ushahidi gani uliyaonyesha. Kama jibu ni "hakuna malalamiko zaidi," uliza ulisubiri muda gani na ulipima nini. Jadili ukaguzi rahisi: tazama dalili mahususi kwa kipindi kilichowekwa. Kubaliana kurekodi ukaguzi na kila marekebisho.

## Kwa vitendo: mfano wa agile ITIL

Kampuni ya ukubwa wa kati ya usafirishaji inaendesha huduma ya kupanga njia inayotumiwa na madereva na wasambazaji wake. Timu ya jukwaa ya watu tisa imeshughulikia tukio lilelile takriban kila wiki mbili: hesabu za njia zinaisha muda kwa dakika kumi hadi kumi na tano asubuhi kisha zinarudi. Kila mara, mhandisi aliye zamu anaanzisha upya mchakato wa mfanyakazi, na tukio linafungwa. Wasambazaji wanalalamika kwamba upangaji wa asubuhi hauwezi kutegemewa.

Kiongozi wa timu anaanza mapitio ya kila mwezi ya matukio, akiyaweka pamoja kwa huduma na sababu inayowezekana. Kuisha muda kwa asubuhi kunaongoza orodha. Anaandika kauli ya tatizo kutoka rekodi za matukio: kuisha muda hutokea siku za kazi kati ya saa 7:00 na 7:30, kunadumu dakika kumi hadi kumi na tano, na kunaathiri wasambazaji wote. Timu inajenga mfuatano wa matukio unaojumuisha uingizaji wa data uliopangwa saa 7:00 na badiliko la hivi karibuni lililoongeza ukubwa wa uingizaji. Mjadala wa kwa nini tano unapendekeza uingizaji unajaza hifadhidata. Wanajaribu marekebisho dhahiri, kuongeza uwezo, lakini matukio yanaendelea kwa kiwango cha chini, kwa hiyo wanahitimisha kuwa uwezo ulikuwa mchangiaji na si msingi.

Kuangalia mara ya pili kunapata kwamba uingizaji unafunga jedwali ambalo hesabu za njia pia zinalisoma. Timu inahamisha uingizaji kwenye nakala tofauti na kuongeza tahadhari ya kusubiri kufuli. Wanarekodi kuanzisha upya kama kosa linalojulikana pamoja na dalili na suluhisho la muda hadi marekebisho yawe hai, na wanakubaliana kutazama dalili kwa wiki sita. Matukio yanakoma. Masuala fulani yanabaki: uingizaji mwingine kutoka kwa mshirika bado unaendeshwa wakati wa kilele, na timu bado haijamshawishi mshirika kubadilisha ratiba yake. Wanaweka ratiba ya mshirika kwenye ajenda ya upangaji inayofuata, na kubakiza tahadhari ya kufuli.

## Mitazamo minne

### Timu za bidhaa na utoaji

Timu za utoaji zina maarifa ya kurekebisha visababishi. Chukua matatizo ya juu kwenye orodha yako ya kazi, na uyachukulie kama kazi inayopata uaminifu. Ongeza ufuatiliaji na majaribio ambayo yangefichua sababu, na uandike kosa linalojulikana kwa lugha ambayo dawati linaweza kuitumia.

### Timu za huduma na uendeshaji

Timu za uendeshaji huona matukio na kutunza rekodi. Unganisha matukio, endesha mapitio ya kila mwezi, na urekodi suluhisho za muda kama makosa yanayojulikana. Sukuma ushahidi kwa timu za utoaji kwa namna inayotetea hoja, ukiwa na mzunguko, athari na mfuatano wa matukio.

### Uongozi na utawala

Viongozi huamua kama kurekebisha matatizo kunapata muda. Omba matatizo ya juu yanayojirudia na nini kinafanywa kuhusu hayo. Pinga kuhesabu matukio yaliyofungwa kama kipimo cha mafanikio, kwa kuwa kinalipa ukarabati. Unga mkono marekebisho yanayochukua juhudi lakini yanaondoa maumivu.

### Wateja na watumiaji

Wateja na watumiaji hunufaika kushindwa kunakojirudia kunapokoma. Ripoti matatizo yanayojirudia pamoja na tarehe na athari, kwa kuwa mifumo husaidia timu. Uliza watoa huduma wamefanya nini kuhusu visababishi vya kuzimika kunakojirudia, na utarajie jibu zaidi ya "tuliianzisha upya."

## Sababu za kawaida za kushindwa

- **Ukarabati bila kuondoa.** Matukio yanafungwa na kurudi. Badala yake, unganisha marudio na tatizo na urekebishe sababu.
- **Foleni ya matatizo ambayo hakuna anayeipanga.** Matatizo yanasubiri milele. Badala yake, weka matatizo yaliyochaguliwa kwenye orodha ya kazi yenye wamiliki na vikomo vya muda.
- **Kusimama kwenye kosa la binadamu.** Mapitio yanaishia kwa mtu wa kulaumu. Badala yake, uliza nini kilifanya kosa liwezekane na urekebishe mfumo.
- **Hatua dhaifu.** Vikumbusho na mafunzo vinachukua nafasi ya mabadiliko ya mfumo. Badala yake, pendelea otomatiki, kinga na ufuatiliaji bora.
- **Kutafuta sababu moja ya msingi.** Timu inasisitiza mhusika mmoja. Badala yake, kubali visababishi kadhaa vinavyochangia na ushughulikie vyenye ufanisi zaidi.
- **Hakuna ukaguzi kwamba marekebisho yalifanya kazi.** Tatizo linafungwa toleo linapotoka. Badala yake, bainisha njia ya kuona kama dalili inarudi.
- **Suluhisho za muda zisizoandikwa.** Maarifa yanaishi kwa watu binafsi. Badala yake, rekodi makosa yanayojulikana na uyashiriki.
- **Kuabudu mbinu.** Timu hubishana kuhusu mbinu. Badala yake, chagua mbinu zinazofaa tatizo na utumie juhudi kwenye ushahidi.

## Modeli ya ukomavu

| Nyanja | Kuanza | Kukua | Kusanifisha | Kusimamia | Kuratibu |
|---|---|---|---|---|---|
| Kuunganisha na kuweka kipaumbele | Matukio hayajaunganishwa | Baadhi ya timu hubainisha marudio | Matukio yanaunganishwa na matatizo na kupitiwa kutafuta mifumo kwa ratiba | Matatizo hupangwa kwa athari na mzunguko uliopimwa | Vipaumbele vya matatizo hushirikiwa katika timu na wasambazaji |
| Uchunguzi | Uchunguzi si rasmi | Baadhi ya timu hutumia mbinu rahisi | Mbinu iliyoandikwa yenye mfuatano wa matukio na ushahidi hutumika | Ubora na muda wa uchunguzi hupitiwa | Uchunguzi unavuka timu na wasambazaji kwa data ya pamoja |
| Hatua za kurekebisha | Marekebisho ni bila mpangilio au vikumbusho | Baadhi ya marekebisho hubadilisha mfumo | Hatua huchaguliwa kwa athari, zikiwa na wamiliki na tarehe | Athari hukaguliwa na marudio hupimwa | Marekebisho huenea kwa mifumo inayofanana katika shirika zima |
| Makosa yanayojulikana na maarifa | Suluhisho za muda hazijaandikwa | Baadhi hurekodiwa na watu binafsi | Makosa yanayojulikana yanarekodiwa na kushirikiwa na dawati na waliopo zamu | Matumizi na usahihi wa makosa yanayojulikana hufuatiliwa | Makosa yanayojulikana hushirikiwa na watumiaji, wasambazaji na washirika |

## Orodha hakiki

- [ ] Matukio yanayoonekana kushiriki sababu yameunganishwa.
- [ ] Mapitio ya kawaida huweka pamoja matukio na kuchagua matatizo ya juu yanayojirudia.
- [ ] Matatizo yaliyochaguliwa yako kwenye orodha ya kazi yenye wamiliki na vikomo vya muda.
- [ ] Kila tatizo lina kauli iliyoandikwa yenye ukweli.
- [ ] Mfuatano wa matukio unajengwa kwa kila uchunguzi.
- [ ] Mapitio yanauliza nini katika mfumo kiliruhusu kosa lolote la binadamu.
- [ ] Hatua zinapendelea mabadiliko ya mfumo kuliko vikumbusho, athari inayotarajiwa ikirekodiwa.
- [ ] Suluhisho za muda zinarekodiwa kama makosa yanayojulikana na kushirikiwa na dawati na wafanyakazi walio zamu.
- [ ] Kila marekebisho yana ukaguzi wa kujirudia kwa kipindi kilichokubaliwa.
- [ ] Muhtasari wa matatizo na marekebisho unashirikiwa na timu nyingine.

## Maelekezo ya AI

**Madhumuni: kupata matukio yanayojirudia na matatizo ya kuzingatiwa katika rekodi zako.**

```text
Below are descriptions of [number] incidents from the last [period], with dates and the service affected: [paste anonymized descriptions, one per line].

Group the incidents that look as if they might share a cause, based only on what is written. For each group, list the incidents, give a one-sentence description of the common symptom, and say how confident you are and why (low, medium, high). List incidents that do not fit any group. Do not guess at technical causes beyond the text. Suggest three questions for the team to ask to test each group. List what you are unsure of.
```

**Madhumuni: kuandika kauli wazi ya tatizo kutoka kwa ushahidi.**

```text
Help me write a problem statement.

What we observe, with dates and counts: [paste facts].
What is affected and who is affected: [describe].
What we know about when it started and what changed around then: [paste, or write "unknown"].
What we have already tried: [paste].

Write a problem statement of three to five sentences that describes what happens, where, how often, and the impact, without naming a cause. Then list the facts we still need and where to find them. Mark anything that is an assumption. Do not suggest causes as facts. List what you are unsure of.
```

**Madhumuni: kuandaa kikao cha kwa nini tano na kurekodi mnyororo wa hoja.**

```text
Help me prepare a five whys discussion for this problem: [paste the problem statement].

Facts we have: [list evidence such as logs, timelines, and changes].

Prepare: a first "why" question grounded in the evidence, a template where each answer records the evidence for it, and a reminder to branch when there is more than one possible answer. Warn me against stopping at human error. After the session I will paste the notes: do not invent answers yourself. Ask clarifying questions first, and list what you are unsure of.
```

**Madhumuni: kutathmini kama hatua za kurekebisha zilizopendekezwa zinabadilisha mfumo.**

```text
Here are the actions proposed after our review: [paste a list].

For each, say whether it changes the system (for example automates a check, removes a failure mode, adds a safeguard, improves monitoring) or relies on people remembering or on training, and give one sentence of reasoning from the text only. For each reminder-type action, suggest a stronger alternative as a question for the team. Suggest how we could check whether each action worked, without inventing numbers. List what you are unsure of.
```

## Ujuzi wa AI

- [root-cause-analysis](../../../../skills/root-cause-analysis/SKILL.md): tumia kuongoza uchunguzi kutoka kauli wazi ya tatizo hadi sababu iliyojaribiwa.
- [fishbone-diagram](../../../../skills/fishbone-diagram/SKILL.md): tumia kutafakari visababishi vinavyowezekana kwa kategoria na timu.
- [cause-and-effect-diagram](../../../../skills/cause-and-effect-diagram/SKILL.md): tumia kuweka wazi jinsi visababishi na athari zinavyounganishwa katika hitilafu tata.
- [postmortem](../../../../skills/postmortem/SKILL.md): tumia kuendesha mapitio yanayotambua matatizo ya kuzingatiwa.
- [six-sigma](../../../../skills/six-sigma/SKILL.md): tumia unapohitaji mbinu zinazotegemea data kuchambua tofauti au kasoro zinazojirudia.

## Vyanzo muhimu

- **Root cause analysis** (Wikipedia): muhtasari wa jumla wa mbinu, kanuni na mipaka, ukiwa na ISO/IEC 31010 iliyoorodheshwa kwa mbinu.
- **Postmortem Culture: Learning from Failure** (*Site Reliability Engineering*, Google, sre.google): mbinu isiyo na lawama ya kujifunza kutoka hitilafu.
- **Managing Incidents** (*Site Reliability Engineering*, Google, sre.google): jinsi kushughulikia matukio kunavyolisha uchambuzi wa baadaye.
- **Ishikawa diagram** na **Five whys** (Wikipedia): usuli kuhusu mbinu mbili rahisi za kawaida.

## Marejeo

1. Root cause analysis — Wikipedia — https://en.wikipedia.org/wiki/Root_cause_analysis
2. Postmortem Culture: Learning from Failure — Google SRE book, sre.google — https://sre.google/sre-book/postmortem-culture/
3. Managing Incidents — Google SRE book, sre.google — https://sre.google/sre-book/managing-incidents/
4. Five whys — Wikipedia — https://en.wikipedia.org/wiki/Five_whys
5. Ishikawa diagram — Wikipedia — https://en.wikipedia.org/wiki/Ishikawa_diagram
6. Failure mode and effects analysis — Wikipedia — https://en.wikipedia.org/wiki/Failure_mode_and_effects_analysis
7. Fault tree analysis — Wikipedia — https://en.wikipedia.org/wiki/Fault_tree_analysis
8. Pareto analysis — Wikipedia — https://en.wikipedia.org/wiki/Pareto_analysis
9. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
10. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
