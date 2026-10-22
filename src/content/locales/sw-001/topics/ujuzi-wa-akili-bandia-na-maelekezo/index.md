# Ujuzi wa Akili Bandia na Maelekezo

**Maelekezo mazuri humpa msaidizi wa AI nyenzo, kazi, na ukaguzi anaohitaji, na ujuzi mzuri hufunga maarifa hayo ili timu iyatumie tena, jambo linalofanya maelekezo na ujuzi wa AI katika mwongozo huu kuwa sehemu za kuanzia unazobadilisha na kuthibitisha.**

## Kwa nini hili ni muhimu

Kila mada katika mwongozo huu inaisha na maelekezo na ujuzi. Zipo kwa sababu kazi nyingi katika usimamizi wa huduma zinafaa msaidizi anayeweza kusoma rundo la tiketi, kuandaa mwongozo wa uendeshaji (runbook), au kugeuza maelezo kuwa mpango. Pia zipo kwa sababu ombi lisilo wazi kwa AI hutoa matokeo yasiyo wazi, na wakati mwingine yasiyo sahihi. Tofauti kati ya jibu muhimu na jibu linaloonekana kukubalika lakini tupu mara nyingi iko katika jinsi ombi liliandikwa na nyenzo gani ilikuja nalo.

Mada hii inaeleza jinsi ya kutumia maelekezo na ujuzi wa mwongozo, kwa nini yameandikwa yalivyo, na jinsi ya kuandika yako mwenyewe kwa timu yako. Inahusu tabia zaidi ya hila: kutoa nyenzo halisi, kusema unachotaka, kumwomba msaidizi aweke alama anachokijua au asichokijua, na kukagua kinachorudi. Inajengwa juu ya tahadhari katika mada iliyotangulia, inayoeleza mahali AI inasaidia na inapoweza kudhuru (tazama Mada 6.2 — Akili Bandia katika Usimamizi wa Huduma za TEHAMA).

Vyanzo ni vya kivitendo. Ujuzi wa mwongozo wenyewe `skills/prompt-engineering` unaeleza uandishi wa maelekezo kama zoezi la makusudi la kubuni na kurudia maagizo yanayopewa modeli ya lugha, ukichukulia maelekezo kama kipande kidogo cha programu kinachoandikwa, kujaribiwa kwa visa halisi, na kurekebishwa. Nyaraka za Claude Code zinaeleza jinsi ujuzi unavyopangwa kama saraka zenye faili ya `SKILL.md`. [Makala ya Wikipedia kuhusu modeli kubwa za lugha](https://en.wikipedia.org/wiki/Large_language_model) yanatoa usuli. Hakuna chanzo kilichosomwa kwa mwongozo huu kinachotoa ushahidi wa mbinu zipi za maelekezo hufanya kazi vizuri zaidi; chukulia mbinu hapa kama tabia za kujaribu.

## Dhana kuu

### Maelekezo, ujuzi, na vinatumika kwa nini

**Maelekezo (prompt)** ni agizo na nyenzo unazompa msaidizi wa AI kwa kazi moja. **Ujuzi (skill)**, katika muundo unaotumika katika folda ya `skills/` ya mwongozo huu, ni kifurushi kinachoweza kutumika tena cha maarifa kwa aina ya kazi: saraka yenye faili ya `SKILL.md` inayosema lini kuitumia na jinsi ya kufanya kazi. Katika nyaraka za Claude Code, ujuzi ni saraka yenye faili ya lazima ya `SKILL.md` ambayo sehemu yake ya mwanzo ina jina na maelezo, na mwili wake unatoa maagizo; msaidizi hutumia maelezo kuamua lini kutumia ujuzi, na hupakia mwili kamili tu unapotumika.

| | Maelekezo | Ujuzi |
|---|---|---|
| **Wigo** | Kazi moja, sasa | Aina ya kazi, inayotumika tena |
| **Huishi** | Katika mazungumzo au hati | Katika folda, kama `skills/` au saraka ya ujuzi ya mradi |
| **Hubadilishwa na** | Wewe, kila mara | Timu, kwa mapitio |
| **Bora kwa** | Uchambuzi mahususi wa nyenzo yako mwenyewe | Mbinu zinazorudiwa kama kuendesha tafakari ya nyuma |

### Jinsi maelekezo ya mwongozo yanavyojengwa

Maelekezo katika mwongozo huu yanafuata mfumo rahisi, ulioainishwa katika mwongozo wa mtindo:

1. **Madhumuni ya mstari mmoja kwa herufi nzito** yanasema maelekezo ni ya nini.
2. **Kizuizi cha msimbo** kina maandishi unayoweza kunakili na kubandika.
3. **Vishikilia nafasi katika mabano ya mraba** vinaonyesha unachopaswa kutoa, pamoja na kidokezo cha kitu cha kuweka hapo.
4. **Kazi** inayotaja pato linalotakiwa.
5. **Mipaka**: usibuni nambari, vyanzo, nukuu, au madai ya uzingatiaji; tumia nyenzo iliyobandikwa tu.
6. **Ombi la kuuliza kwanza** taarifa inapokosekana, na kuweka alama dhana.
7. **Ukaguzi wa mwisho**: "List what you are unsure of."

Sehemu hizi zipo kwa sababu. Vishikilia nafasi vinakulazimisha kuleta nyenzo halisi. Mpaka unamzuia msaidizi kujaza mapengo kwa ubunifu. Ombi la maswali ya kufafanua hubadilisha kubahatisha kwa mara moja kuwa mazungumzo mafupi. Mstari wa mwisho unamfanya msaidizi aashirie sehemu zake dhaifu, jambo linalokusaidia kuamua nini cha kukagua.

### Mifumo inayosaidia

Ujuzi wa `prompt-engineering` wa mwongozo unaorodhesha mbinu, ambazo mwongozo huu unazifupisha kwa maneno yake mwenyewe:

- **Kuwa mahususi kuhusu pato unalotaka,** kama jedwali lenye safu zilizotajwa, au orodha yenye nambari ya vipengee visivyozidi vitano, ili msaidizi asikisie umbo.
- **Toa mifano maagizo yanapokuwa na utata,** ukionyesha mfumo unaotaka katika sampuli fupi.
- **Toa muktadha ambao msaidizi hawezi kuujua,** kama istilahi zako, vikwazo, na hati husika, na useme asichopaswa kudhania.
- **Rudia dhidi ya visa halisi vya majaribio,** ukiendesha maelekezo kwa aina mbalimbali za pembejeo halisi na kurekebisha pale yanaposhindwa, badala ya kuyahukumu kwa mfano mmoja mzuri.

Maelekezo yaliyorekebishwa kwa pembejeo moja yanaweza kushindwa kwa nyingine. Ujuzi unatoa hoja kwamba pembejeo fupi, yenye maneno ya ajabu, au inayokosa sehemu inaweza kuvunja maelekezo yaliyoshughulikia mfano wa awali.

### Tabia za uthibitishaji

Kila pato linahitaji ukaguzi sawa na gharama ya kukosea. Tabia zinazosaidia:

- **Hakiki ukweli dhidi ya chanzo ulichobandika.** Mwombe msaidizi anukuu sehemu ya nyenzo yako inayounga mkono kila kauli.
- **Usikubali kamwe marejeo ambayo hujayaona.** Visa vilivyoelezwa katika mada iliyotangulia vinajumuisha nukuu za mahakama za kubuni; usivirudie.
- **Tenganisha msaidizi alichoona na alichodhania.** Maelekezo ya mwongozo yanaomba hili.
- **Jaribu hesabu mwenyewe,** au uombe hatua za kazi na uzikague.
- **Tumia macho ya pili kwa kila kitu kinachotoka timu,** kama jibu kwa mteja au sera.
- **Tunza rekodi za matumizi muhimu,** kama ilivyoelezwa katika Mada 6.2 — Akili Bandia katika Usimamizi wa Huduma za TEHAMA.

### Kulinda data

Kabla ya kubandika chochote kwenye maelekezo, uliza kina nini na kitaenda wapi. Ondoa data binafsi, vitambulisho vya siri, na maelezo ya siri ya kibiashara isipokuwa zana na masharti yake yameidhinishwa kwa hayo (tazama Mada 3.13 — Usimamizi wa Usalama wa Taarifa). Maelekezo ya mwongozo yanakuomba ufiche utambulisho, lakini wajibu ni wako. Ukiwa na shaka, eleza hali kwa maneno ya jumla.

### Ujuzi unaonekanaje

Kutoka nyaraka za Claude Code na ujuzi katika mwongozo huu, ujuzi ni saraka kama `skills/runbook/` yenye `SKILL.md`. Faili huanza na YAML frontmatter kati ya alama za `---`, yenye angalau `name` na `description`. Nyaraka zinasema maelezo yanamwambia msaidizi ujuzi unafanya nini na lini kuutumia, na zinapendekeza kuweka kisa kikuu cha matumizi kwanza. Mwili unatoa mbinu kwa markdown. Faili nyingine, kama hati za marejeo au hati za msimbo, zinaweza kukaa kando na kupakiwa inapohitajika; nyaraka zinashauri kuweka `SKILL.md` yenyewe fupi, chini ya mistari 500.

Ujuzi uliinakiliwa katika mwongozo huu unafuata umbo hilohilo. Maelezo yao yanaanza na "Use when asked to…", jambo linalofanya wazi lini kila moja inatumika.

### Ujuzi unaishi wapi

Nyaraka zinaeleza ujuzi wa kibinafsi katika saraka ya ujuzi ya nyumbani ya mtumiaji, ujuzi wa mradi katika saraka ya ujuzi ya hazina inayoweza kuwasilishwa na kushirikiwa na timu, na maeneo mengine kama programu jalizi. Kwa timu, folda ya mradi chini ya udhibiti wa matoleo ndipo mahali pa asili: ujuzi hupitiwa, hubadilishwa kupitia mchakato uleule kama kazi nyingine, na unapatikana kwa kila mtu.

### Kuandika ujuzi wa timu yako mwenyewe

Ujuzi wa timu unanasa zoezi ambalo timu inarudia na inataka lifanywe kwa uthabiti. Mifano kwa usimamizi wa huduma: jinsi ya kuandika mapitio ya baada ya tukio kwa mtindo wa nyumbani, jinsi ya kupanga kipaumbele cha aina fulani ya tiketi, jinsi ya kuandaa ombi la badiliko, jinsi ya kuendesha mapitio yako ya Ijumaa. Kuandika moja:

1. **Chagua kazi unayorudia** na ambayo ina njia nzuri inayojulikana ya kufanywa.
2. **Andika maelezo kwanza,** yakianza na "Tumia wakati…" na kisa kikuu cha matumizi, ili msaidizi na wenzako wajue lini inatumika.
3. **Andika mbinu** kama hatua fupi, pamoja na muundo wa pato, ukaguzi, na mambo ya kuepuka.
4. **Ongeza mifano** ya matokeo mazuri, yaliyoondolewa maelezo nyeti.
5. **Sema kisichopaswa kufanya,** kama kubuni takwimu au kutuma chochote bila mapitio.
6. **Jaribu kwa visa halisi** na urekebishe.
7. **Ipe mmiliki na tarehe ya mapitio,** kama hati nyingine yoyote ya pamoja.

### Ujuzi katika mwongozo huu

Folda ya `skills/` katika hazina hii ina nakala za ujuzi kutoka mkusanyiko wa skills-on-ai, ulioorodheshwa katika `skills/README.md`, na ujuzi mbili ulioandikwa kwa mwongozo huu: mmoja kwa wasomaji na mmoja kwa watunzaji. Kila mada inaunganisha na ujuzi wenye manufaa zaidi kwa mada yake, pamoja na sentensi kuhusu lini kutumia kila mmoja. Ujuzi uliinakiliwa ni wa jumla, si mahususi kwa maudhui ya mwongozo huu, kwa hiyo utumie kama sehemu za kuanzia na ubadilishe pato lake kwa muktadha wako.

### Mipaka

Hakuna chanzo kilichosomwa kwa mwongozo huu kinachopima mbinu yoyote ya maelekezo inafanya kazi vizuri kiasi gani, na zana za AI hubadilika haraka. Nyaraka za Claude Code zilizosomwa zilikuwa ndefu na zilisomwa kwa sehemu tu. Kinachofuata ni ushauri wa kivitendo uliodumu katika matumizi ya jumla, unaotolewa kama tabia za kujaribu na si dhamana.

## Mazoea bora

1. **Anza kutoka kazi halisi na nyenzo halisi.** Chagua kitu unachohitaji kifanyike, na ubandike ukweli halisi, si maelezo yake. Jaza kila kishikilia nafasi kwa mahususi.
2. **Eleza madhumuni kwa mstari mmoja.** Sema pato ni la nini na nani atalitumia. Husaidia msaidizi kuchagua kiwango sahihi cha undani.
3. **Bainisha pato.** Taja muundo, urefu, na mpangilio unaotaka. Omba jedwali unapotaka kulinganisha, orodha unapotaka hatua.
4. **Weka mipaka.** Sema msaidizi asichopaswa kufanya: kubuni nambari, vyanzo, au nukuu; kudhania ukweli ambao haukutolewa; kudai kuwa kanuni inatumika bila maandishi.
5. **Omba maswali ya kufafanua kwanza.** Mwambie msaidizi aulize anachohitaji kabla ya kujibu. Jibu kwa ufupi, kisha mwombe aendelee.
6. **Mwombe atenganishe ukweli na dhana.** Mfanye aweke alama alichochukua kutoka nyenzo yako na alichodhania. Maelekezo ya mwongozo huu yanaisha na "List what you are unsure of."
7. **Omba ushahidi.** Omba nukuu kutoka nyenzo yako zinazounga mkono kila dai, ili ukague haraka.
8. **Rudia.** Chukulia jibu la kwanza kama rasimu. Sema kilicho kosa na uombe marekebisho, au ubadilishe maelekezo na ujaribu tena.
9. **Jaribu maelekezo kwa visa kadhaa.** Kabla ya kutegemea maelekezo, yaendeshe kwa pembejeo tatu au nne halisi, ikijumuisha isiyo ya kawaida. Weka alama inaposhindwa.
10. **Linda data.** Ondoa maelezo binafsi na ya siri kabla ya kubandika. Tumia zana zilizoidhinishwa. Fuata sera ya shirika lako.
11. **Hakiki kabla ya kutumia.** Thibitisha ukweli, nambari, na marejeo. Mtu apitie kila kitu kinachoenda kwa wateja au kubadilisha mfumo.
12. **Shiriki kinachofanya kazi.** Weka maelekezo yanayoonekana kufaa, pamoja na maelezo yake, katika ujuzi wa timu au hati chini ya udhibiti wa matoleo, ukiwa na mmiliki.

## Maswali ya kujadili na timu yako

**Ni kazi gani tunazorudia ambazo msaidizi anaweza kusaidia, na tungehitaji kukagua nini?**

Mwombe kila mtu aorodheshe kazi, na aweke alama hatari pato likiwa si sahihi. Ziweke katika makundi ya hatari ndogo, wastani, na kubwa. Anza na ya hatari ndogo. Mwezeshaji anaweza kuuliza hatua ya ukaguzi ingekuwa nini. Chagua kazi moja kwa jaribio.

**Tunabandika nini kwenye zana za AI leo, na je, tunapaswa?**

Kuwa mwaminifu na usihukumu. Orodhesha mifano. Linganisha na sera ya data na zana zilizoidhinishwa. Kubaliana ukaguzi wa haraka ambao watu wanaweza kutumia kabla ya kubandika: "je, hiki kina data binafsi, siri, au maelezo ya siri?"

**Ni maelekezo gani ya mwongozo huu tungejaribu kwanza, na kwa nyenzo halisi gani?**

Pitieni maelekezo pamoja na mchague moja. Tambua nyenzo halisi ya kubandika, ondoa maelezo nyeti, na uendeshe. Linganisheni matokeo na mjadili nini cha kubadilisha kwenye maelekezo. Hii ni njia ya haraka ya kujifunza mfumo.

**Tungejuaje kwamba maelekezo yanafanya kazi?**

Omba seti ya majaribio: pembejeo chache halisi zenye pato zuri linalojulikana. Jadili jinsi ya kutoa alama kwa majibu na nani anaamua. Maelekezo bila seti ya majaribio ni matumaini. Kubaliana seti ndogo kwa maelekezo moja.

**Ni zoezi gani tunalorudia linalostahili kuwa ujuzi wa timu?**

Orodhesha wagombea: muundo wa mapitio, utaratibu wa kupanga kipaumbele, kiolezo cha ripoti. Chagua mmoja, na uandae maelezo na hatua pamoja. Amua nani atamiliki na lini utapitiwa.

**Tusingependa AI ifanye nini kwa kujitegemea kamwe?**

Orodhesha hatua: kutuma kwa wateja, kubadilisha uzalishaji, kuidhinisha ufikiaji, kuamua kipaumbele. Jadili kwa nini. Majibu ni mipaka ya kuandika katika maelekezo na ujuzi wako. Kubaliana orodha fupi.

## Kwa vitendo: mfano wa agile ITIL

Dawati la huduma la TEHAMA la hospitali ya kikanda lina wachambuzi kumi na wanne. Kiongozi wa dawati ameona kuwa wenzake hutumia msaidizi wa AI kwa njia tofauti: mmoja anabandika tiketi nzima, ikijumuisha majina ya wagonjwa, kwenye chatbot ya umma; mwingine anaandika maelekezo ya kina na kupata muhtasari muhimu; wengi hawautumii kabisa. Makala ya maarifa ya hivi karibuni, yaliyoandaliwa na msaidizi, yalikuwa na hatua ya utaratibu ambayo haikuwepo.

Kiongozi wa dawati anafanya kikao cha saa moja akitumia mbinu ya mwongozo huu. Anaanza na data: kikundi kinakubaliana kanuni kwamba hakuna maelezo ya mgonjwa wala vitambulisho vya siri vinavyoingia kwenye zana yoyote, na kwamba msaidizi aliyeidhinishwa, ambaye hospitali imemfanyia leseni kwa masharti yanayofaa, ndiye pekee anayetumika na maandishi ya tiketi. Anachagua kazi moja, kuandaa makala ya maarifa kutoka tiketi iliyotatuliwa, na kutumia mfumo kutoka maelekezo ya mwongozo huu: madhumuni ya mstari mmoja, kishikilia nafasi cha tiketi iliyofichwa utambulisho, maagizo ya kutumia maudhui ya tiketi tu, kuweka alama hatua yoyote iliyodhaniwa kwa lebo, na kuorodhesha asichokuwa na uhakika nacho. Wachambuzi wawili wanaendesha maelekezo kwa tiketi tano za zamani, na kikundi kinasoma matokeo pamoja. Maelekezo yanabuni hatua katika kisa kimoja; wanaongeza mstari wa kuomba nukuu kutoka tiketi kwa kila hatua.

Kiongozi wa dawati anaandika maelekezo yaliyoboreshwa kama ujuzi wa timu katika folda ya pamoja ya dawati, yenye maelezo yanayoanza na "Tumia wakati…", mmiliki, na tarehe ya mapitio, na kuongeza kanuni kwamba kila makala yaliyoandaliwa hukaguliwa na mchambuzi wa pili kabla ya kuchapishwa. Baada ya miezi miwili, idadi ya makala yanayoandaliwa kwa wiki imeongezeka mara mbili na wakaguzi wanapata makosa machache kuliko hapo awali. Baadhi ya masuala yanabaki. Wachambuzi wawili bado wanabandika maelezo kwenye zana ya umma wanaposhinikizwa, ujuzi unazalisha maneno rasmi kupita kiasi ambayo wachambuzi wanayaandika upya, na mkaguzi mmoja anakiri kusoma kwa haraka tu. Kiongozi wa dawati anarudia kanuni ya data katika kila mkutano wa timu, anaongeza mfano wa mtindo kwenye ujuzi, na kuwaomba wakaguzi waweke tiki kwenye orodha hakiki fupi.

## Mitazamo minne

### Timu za bidhaa na utoaji

Timu za utoaji hutumia wasaidizi kwa msimbo, majaribio, na nyaraka. Tumia tabia zilezile: nyenzo halisi, mipaka wazi, uthibitishaji, na mapitio. Weka siri nje ya maelekezo, na uhifadhi maelekezo na ujuzi muhimu pamoja na msimbo.

### Timu za huduma na uendeshaji

Timu za uendeshaji zinaweza kutumia maelekezo kuchambua tiketi, kuandaa miongozo ya uendeshaji, na kujiandaa kwa mapitio. Weka data binafsi nje, hakiki pato dhidi ya kumbukumbu na rekodi, na uandike ujuzi kwa taratibu ambazo timu inarudia, kama mapitio ya baada ya tukio na makabidhiano ya zamu.

### Uongozi na utawala

Viongozi huweka kanuni za nini kinaweza kutumika, na data gani, na nani anawajibika. Omba orodha ya matumizi, sera ya data, na ushahidi kutoka majaribio ya awali. Unga mkono muda kwa timu kuandika na kujaribu maelekezo na ujuzi, na uhakikishe kuwa ujuzi wa pamoja una wamiliki.

### Wateja na watumiaji

Wateja na watumiaji wanaweza kuona matokeo ya maelekezo na ujuzi katika majibu, makala, na muhtasari. Tarajia watoa huduma wayakague na kukuambia wanapotumia zana za kiotomatiki pale ni muhimu. Ripoti makosa, ambayo husaidia kuboresha nyenzo za msingi.

## Sababu za kawaida za kushindwa

- **Maombi yasiyo wazi.** Msaidizi anakisia. Badala yake, toa nyenzo, madhumuni, na pato unalotaka.
- **Kubandika data nyeti.** Maelezo binafsi au ya siri yanatoka shirika. Badala yake, yaondoe na utumie zana zilizoidhinishwa.
- **Kukubali maudhui ya kubuni.** Hatua, nambari, au marejeo ya kubuni yanatumika. Badala yake, weka mipaka, omba nukuu, na uthibitishe.
- **Kurekebisha kwa mfano mmoja.** Maelekezo yanafanya kazi mara moja na kushindwa kwingine. Badala yake, jaribu kwa pembejeo kadhaa halisi.
- **Ujuzi bila wamiliki.** Maelekezo ya pamoja yanapitwa na wakati. Badala yake, gawa mmiliki na tarehe ya mapitio, na uyaweke chini ya udhibiti wa matoleo.
- **Kuamini kupita kiasi maelekezo yaliyonakiliwa.** Maelekezo kutoka mtandaoni au mwongozo huu yanatumika bila kubadilishwa. Badala yake, yabadilishe kwa muktadha wako na ukague matokeo.
- **Hakuna jicho la pili.** Pato la AI linaenda moja kwa moja kwa wateja. Badala yake, mtu apitie kila kitu kinachotoka timu.
- **Kumchukulia msaidizi kama mamlaka.** Kujiamini kwake kunachukuliwa kama usahihi. Badala yake, uliza asichokuwa na uhakika nacho na ukague.

## Modeli ya ukomavu

| Nyanja | Kuanza | Kukua | Kusanifisha | Kusimamia | Kuratibu |
|---|---|---|---|---|---|
| Zoezi la maelekezo | Watu huandika maelekezo bila mpangilio | Baadhi ya watu hushiriki maelekezo | Timu hutumia mfumo wa pamoja wenye madhumuni, nyenzo, mipaka, na ukaguzi | Ubora wa maelekezo hujaribiwa kwa seti za visa halisi | Maelekezo huboreshwa katika timu kutokana na matokeo ya majaribio ya pamoja |
| Ujuzi | Hakuna ujuzi wa pamoja | Baadhi ya ujuzi wa kibinafsi upo | Ujuzi wa timu wenye wamiliki na tarehe za mapitio unaishi katika udhibiti wa matoleo | Matumizi na matokeo ya ujuzi hupitiwa | Ujuzi hushirikiwa na kutunzwa katika timu na washirika |
| Uthibitishaji na data | Pato linaaminika; data hubandikwa kwa uhuru | Baadhi ya ukaguzi na kanuni za data | Tabia za uthibitishaji na sera ya data ni za kawaida | Makosa na matukio ya data hufuatiliwa na kutendewa kazi | Uthibitishaji na zoezi la data huratibiwa katika shirika zima |
| Kujifunza | Kujifunza ni kwa mtu binafsi | Baadhi ya vidokezo hushirikiwa | Timu hufanya vikao vya mara kwa mara kuboresha maelekezo na ujuzi | Maboresho hufuatiliwa na kupimwa | Kujifunza kunaenea katika timu kila mara |

## Orodha hakiki

- [ ] Timu ina kanuni fupi ya data gani inaweza kwenda kwenye zana zipi za AI.
- [ ] Maelekezo tunayoyategemea yana madhumuni yaliyotajwa, nyenzo halisi, mipaka, na ombi la msaidizi asichokuwa na uhakika nacho.
- [ ] Kila maelekezo tunayoyategemea yamejaribiwa kwa angalau pembejeo tatu halisi.
- [ ] Pato linalotoka nje ya timu hupitiwa na mtu.
- [ ] Marejeo na nambari kutoka pato la AI hukaguliwa dhidi ya vyanzo.
- [ ] Maelekezo muhimu huhifadhiwa pamoja na maelezo mahali pa pamoja chini ya udhibiti wa matoleo.
- [ ] Ujuzi wa timu una maelezo wazi ya "Tumia wakati…", mmiliki, na tarehe ya mapitio.
- [ ] Timu imeorodhesha hatua ambazo AI kamwe isizichukue yenyewe.
- [ ] Wafanyakazi wanajua zana zipi zimeidhinishwa.
- [ ] Tunapitia maelekezo na ujuzi wetu angalau mara mbili kwa mwaka.

## Maelekezo ya AI

**Madhumuni: kuboresha maelekezo unayotumia tayari.**

```text
Here is a prompt I use: [paste it].
Here is an example of an input I give it, with sensitive details removed: [paste].
Here is what I got: [paste].
Here is what I wanted: [describe].

Diagnose why the output fell short, using only the text above. Suggest a revised prompt that: states the purpose, names the output format, sets boundaries (no invented facts, numbers, or sources), asks for clarifying questions first, requests quotes from the supplied material as evidence, and ends by asking you to list what you are unsure of. Keep placeholders in [square brackets]. Do not change the task. List what you are unsure of.
```

**Madhumuni: kugeuza kazi inayorudiwa kuwa rasimu ya ujuzi wa timu.**

```text
Help me draft a team skill in SKILL.md format for this task: [name and describe the task].

How we do it today, step by step: [paste].
What a good result looks like (an example with sensitive details removed): [paste].
What must never happen (for example inventing figures or sending without review): [list].

Write a SKILL.md with YAML frontmatter containing a name and a description that starts with "Use when" and puts the key use case first, then a body with the purpose, short method steps, output format, checks, and things to avoid. Keep it under 150 lines. Mark every item you added as an assumption. Ask clarifying questions first, and list what you are unsure of.
```

**Madhumuni: kujenga seti ndogo ya majaribio kwa maelekezo.**

```text
I have a prompt that [describe what it does]: [paste it].

Help me design a test set of 5 to 10 inputs: typical cases, an unusual case, a case with a missing field, and a case where the right answer is "not enough information." Tell me what to collect from real examples (with sensitive details removed), how to record the expected output, and how to score results (correct, partly correct, wrong, confidently wrong, correctly declined). Do not invent test content; give me the categories and what to look for. Ask clarifying questions first, and list what you are unsure of.
```

**Madhumuni: kukagua rasimu iliyoandikwa na AI dhidi ya chanzo chake.**

```text
Here is the source material: [paste].
Here is a draft produced by an AI tool from that material: [paste].

List every statement in the draft, say whether the source supports it (quote the supporting text), contradicts it, or does not mention it, and suggest edits to remove unsupported statements. Do not add facts of your own. Give a short summary of how reliable the draft is. List what you are unsure of.
```

## Ujuzi wa AI

- [prompt-engineering](../../../../skills/prompt-engineering/SKILL.md): tumia kuandika, kujaribu, na kuboresha maelekezo ili yatoe matokeo yanayotegemewa.
- [machine-learning-model-card](../../../../skills/machine-learning-model-card/SKILL.md): tumia kuandika modeli ni ya nini na mipaka yake ni ipi timu yako inapotegemea moja.
- [agile-coaching](../../../../skills/agile-coaching/SKILL.md): tumia unapomsaidia timu kujenga tabia kuhusu maelekezo na ujuzi kwa muda.
- [agile-itil-guide-skill](../../../../skills/agile-itil-guide-skill/SKILL.md): tumia kupata mada katika mwongozo huu, kuendesha mazungumzo ya timu kutoka maswali yake, au kubadilisha mojawapo ya maelekezo yake.
- [agile-itil-guide-maintainer-skill](../../../../skills/agile-itil-guide-maintainer-skill/SKILL.md): tumia unapoandika au kukagua mada, maelekezo, au kiungo cha ujuzi cha mwongozo huu.

## Vyanzo muhimu

- **Claude Code skills documentation** (code.claude.com): maelezo ya jinsi ujuzi unavyopangwa kama saraka zenye faili ya `SKILL.md`.
- **Prompt engineering** (`skills/prompt-engineering/SKILL.md` ya mwongozo huu): kauli fupi ya mbinu na hoja ya kujaribu maelekezo kwa pembejeo halisi.
- **Large language model** (Wikipedia): usuli wa jinsi mifumo hii inavyojengwa na inapoweza kushindwa.
- **AI Risk Management Framework** (NIST): mfumo wa hiari wa kusimamia hatari za AI, wenye manufaa kwa sera ya timu.

## Marejeo

1. Skills (Claude Code documentation) — Anthropic — https://code.claude.com/docs/en/skills
2. Large language model — Wikipedia — https://en.wikipedia.org/wiki/Large_language_model
3. Prompt engineering — Wikipedia — https://en.wikipedia.org/wiki/Prompt_engineering
4. AI Risk Management Framework — NIST — https://www.nist.gov/itl/ai-risk-management-framework
5. Hallucination (artificial intelligence) — Wikipedia — https://en.wikipedia.org/wiki/Hallucination_(artificial_intelligence)
6. Retrieval-augmented generation — Wikipedia — https://en.wikipedia.org/wiki/Retrieval-augmented_generation
7. Artificial intelligence — Wikipedia — https://en.wikipedia.org/wiki/Artificial_intelligence
8. Version control — Wikipedia — https://en.wikipedia.org/wiki/Version_control
9. Information security — Wikipedia — https://en.wikipedia.org/wiki/Information_security
