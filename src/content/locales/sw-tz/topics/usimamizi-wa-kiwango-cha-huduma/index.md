# Usimamizi wa Kiwango cha Huduma

**Usimamizi wa kiwango cha huduma hugeuza mahitaji ya watumiaji kuwa malengo ambayo timu inaweza kuyapima na kuyatetea, na umbo lenye manufaa zaidi kwa timu za agile ni idadi ndogo ya malengo yanayolenga watumiaji pamoja na bajeti wazi ya kushindwa.**

## Kwa nini hili ni muhimu

Kila huduma ina kiwango cha ubora, iwe yeyote amekipima au la. Kisiposemwa, watumiaji hudhani kimoja na timu inadhani kingine, na pengo hugunduliwa wakati wa kuzimika. Usimamizi wa kiwango cha huduma ni zoezi la kutaja kiwango, kukipima, na kutenda kwa matokeo. Unaipa timu kitu cha kuongozwa nacho na kuwapa wateja kitu cha kutegemea.

Timu za agile mara nyingi hupinga viwango vya huduma kwa sababu huviunganisha na mikataba na adhabu. Hata hivyo timu ya agile inayotoa kila wiki inafanya uamuzi, ikijua au la, kuhusu hatari kiasi gani ya kuchukua na upatikanaji. Lengo wazi hufanya uamuzi huo kuwa dhahiri. Kitabu cha Google *Site Reliability Engineering*, katika sura yake kuhusu malengo ya kiwango cha huduma, kinaeleza jinsi ya kufanya hili kwa njia inayofaa timu zinazosonga haraka: chagua viashiria vichache vinavyojalisha watumiaji, weka malengo, na tumia nafasi kati ya ukamilifu na kinachokubalika, bajeti ya makosa, kuamua lini kutoa.

Mada hii inachanganya sura hiyo na [makala ya Wikipedia kuhusu makubaliano ya kiwango cha huduma](https://en.wikipedia.org/wiki/Service-level_agreement) kwa fasili za makubaliano, na msamiati wa ITIL unaotumika kwa wingi ambao mwongozo huu haukuweza kuuhakiki dhidi ya maandishi ya mmiliki wa mfumo. Sura ya SRE inaakisi zoezi la shirika moja na inatetea mbinu mahususi; isome kama chaguo lililoelezwa vizuri, si kanuni ya wote.

## Dhana kuu

### Kiashiria, lengo, makubaliano

Sura ya SRE inatofautisha istilahi tatu ambazo mara nyingi huchanganywa:

| Istilahi | Maana | Mfano |
|---|---|---|
| **Kiashiria cha kiwango cha huduma (SLI)** | Kipimo cha kiidadi kilichofafanuliwa kwa uangalifu cha kipengele fulani cha kiwango cha huduma | Sehemu ya maombi yaliyoundwa vizuri yanayofanikiwa |
| **Lengo la kiwango cha huduma (SLO)** | Thamani lengwa au kipindi kwa SLI | Angalau 99.9% ya maombi yanafanikiwa kwa mwezi |
| **Makubaliano ya kiwango cha huduma (SLA)** | Mkataba wazi au wa kimya na watumiaji unaojumuisha matokeo ya kutimiza au kukosa malengo, mara nyingi ya kifedha | Marejesho ya fedha kama upatikanaji unashuka chini ya kiwango kilichotajwa |

Jaribio la sura la kutofautisha SLA na SLO ni kama kuna matokeo ya wazi. Kama hakuna, ni SLO. Nambari za mfano kwenye jedwali ni vielelezo, si mapendekezo.

Makala ya Wikipedia yanaeleza SLA kama makubaliano, kwa kawaida mkataba unaofunga, kati ya mtoa huduma na mteja yanayofafanua vipengele vya huduma kama ubora, upatikanaji, na majukumu. Yanaorodhesha yaliyomo ya kawaida: maelezo ya huduma, viwango vya utendaji, ufuatiliaji na kuripoti, jinsi masuala yanavyoripotiwa, muda wa kujibu na kutatua, na matokeo ya kutotimiza. Yanataja vipimo vya kawaida kama wastani wa muda kati ya hitilafu, wastani wa muda wa kutengeneza, muda wa kupatikana, utatuzi wa simu ya kwanza, na muda wa kukamilisha. Yanabainisha kuwa mashirika makubwa mara nyingi hutumia SLA za ndani kati ya vitengo. Yanaeleza aina kwa wigo: kutegemea mteja, kutegemea huduma, na ngazi nyingi.

### Kuchagua viashiria

Sura ya SRE inashauri kuchagua viashiria vichache vinavyoakisi kile watumiaji wanachojali, si kila kipimo unachoweza kufuatilia. Mifumo inayowakabili watumiaji kwa kawaida huzingatia upatikanaji, kuchelewa, na kiwango cha kupitisha. Mifumo ya hifadhi huongeza uimara, na mifumo yote inapaswa kufuatilia usahihi. Inapendekeza kuwa kupima upande wa mteja kunaweza kukamata matatizo ambayo vipimo vya upande wa seva vinakosa. Matokeo ya kivitendo kwa timu za huduma: anza na uzoefu wa mtumiaji, kama "naweza kuweka miadi na inachukua sekunde chache," kisha utafute kiashiria kinachokaribia hilo.

### Wastani huficha maumivu

Sura inahoji dhidi ya kutegemea wastani: "Vipimo vingi vinafikiriwa vizuri zaidi kama usambaaji badala ya wastani." Asilimia za juu, kama ya 99 au 99.9, zinaonyesha hali mbaya zaidi zinazowezekana, ilhali kati inaonyesha hali ya kawaida. Wastani unaweza kuficha mkia mrefu wa maombi ya polepole. Kama kipimo chako ni wastani, watumiaji wachache wanaweza kuwa na wakati mbaya sana bila nambari kusogea.

### Kuchagua malengo

Mwongozo wa sura kuhusu malengo ni wa moja kwa moja na wenye manufaa:

- **Anza kutoka kwa watumiaji.** "Anza kwa kufikiria (au kugundua!) watumiaji wako wanajali nini, si unachoweza kupima."
- **Usiegemee utendaji wa sasa.** Kuchagua lengo kwa msingi wa unachofikia sasa kunaweza kufunga juhudi za kishujaa.
- **Weka rahisi.** Muunganisho changamano huficha mabadiliko na ni vigumu zaidi kuufikiria.
- **Epuka vya mwisho kabisa.** Ahadi za upatikanaji "daima" si za kweli.
- **Kuwa na SLO chache iwezekanavyo.** Kila moja inapaswa kustahili kutetewa katika mjadala wa vipaumbele.
- **Ukamilifu unaweza kusubiri.** Ni bora kuanza na lengo legevu unalolikaza kuliko lile linalolazimika kulegezwa baadaye.

### Bajeti za makosa

Sura inasema kuhitaji uzingatiaji wa 100% si wa kweli na hupunguza kasi ya uvumbuzi. Badala yake, timu huruhusu **bajeti ya makosa (error budget)**: kiwango ambacho SLO inaweza kukosekana, kinachofuatiliwa kila siku, wiki, au mwezi. Bajeti hufahamisha maamuzi kuhusu matoleo. Pale bajeti nyingi imebaki, timu inaweza kuchukua hatari zaidi na mabadiliko; ikiwa karibu imeisha, timu inapunguza kasi ya mabadiliko na kuwekeza katika uaminifu. Hii inazipa timu za agile na uendeshaji njia ya pamoja, ya kidijitali ya kubishana kuhusu kasi dhidi ya uthabiti, badala ya kubishana kwa mamlaka.

### Kuweka matarajio

Sura inabainisha kuwa kuchapisha SLO kunaweka matarajio ya watumiaji. Timu zinaweza kuweka ukingo wa usalama kwa lengo la ndani lililo kali zaidi. Pia inaonya dhidi ya kupita lengo, kwa kuwa watumiaji hutegemea utendaji wowote wanaouona. Huduma ikiwa bora zaidi kuliko lengo lake lililotajwa, watumiaji watajenga juu ya hilo, na lengo halimlindi timu tena.

### Mzunguko wa udhibiti

Sura inaeleza SLI na SLO kama msingi wa mzunguko wa udhibiti: fuatilia SLI, zilinganishe na SLO, amua kama hatua inahitajika, tafuta hatua gani itatimiza lengo, na ichukue. Bila SLO, timu haiwezi kujua kama au lini itende (tazama Mada 3.10 — Ufuatiliaji na Usimamizi wa Matukio ya Mfumo).

### Makubaliano ya ndani na ya nje

SLA ni kati ya mtoa huduma na mteja. Ndani ya mtoa huduma, timu zinategemeana na wasambazaji. Makala ya Wikipedia yanataja kuwa SLA zinaweza kuungwa mkono na makubaliano ya kiwango cha uendeshaji (OLA) lakini hayayaeleza. Katika msamiati wa ITIL, OLA ni makubaliano kati ya timu za ndani yanayounga mkono SLA, na mkataba wa kuunga mkono (underpinning contract) ni sawa na huo kwa msambazaji wa nje. Vyanzo vilivyosomwa hapa havithibitishi fasili hizo, kwa hiyo vihakiki dhidi ya machapisho ya ITIL. Hoja ya kivitendo ni kwamba ahadi kwa mteja ni nzuri tu kama ahadi zilizo nyuma yake (tazama Mada 3.14 — Usimamizi wa Wasambazaji).

### Matarajio ya kiwango cha huduma katika Kanban

Katika Kanban, **matarajio ya kiwango cha huduma (service level expectation)** ni utabiri wa kipengele cha kazi kinapaswa kuchukua muda gani, kwa msingi wa nyakati za mzunguko za zamani (tazama Mada 1.5 — Kanban). Si makubaliano, lakini yanatumika kwa madhumuni sawa kwa vipengele vya kazi, na yanaweza kulisha malengo ya maombi na matukio ya hitilafu.

## Mazoea bora

1. **Anza na watumiaji wanachohitaji.** Uliza watumiaji na wateja ni nini kinajalisha zaidi na nini kinauma kikishindwa. Kiandike kwa maneno yao kabla ya kuchagua kipimo.
2. **Chagua viashiria vichache.** Kwa kila huduma, chagua viashiria viwili hadi vinne vinavyoakisi uzoefu wa mtumiaji, kama kiwango cha mafanikio na kasi. Pinga kuongeza zaidi hadi utumie hivi.
3. **Tumia asilimia kwa kasi.** Pima ncha ya polepole ya usambaaji, si wastani tu, ili watumiaji wenye uzoefu mbaya waonekane.
4. **Weka malengo legevu kwanza, kisha ukaze.** Anza na lengo unaloweza kulitimiza na kulitetea, na ulikaze ukiwa na data na kujiamini. Hii inafuata ushauri wa sura kwamba ukamilifu unaweza kusubiri.
5. **Usinakili utendaji wa sasa.** Kama huduma yako ni bora sasa, usiweke lengo katika kiwango hicho isipokuwa watumiaji wanalihitaji. Lengo legevu zaidi linatoa nafasi ya mabadiliko na kuepuka juhudi za kishujaa.
6. **Kubaliana bajeti ya makosa na uitumie.** Bainisha kushindwa kiasi gani kunakubalika katika kipindi, na uache bajeti iliyobaki iongoze maamuzi ya matoleo. Ipitie katika mkutano wa kawaida na utoaji na uendeshaji pamoja.
7. **Andika makubaliano kwa lugha rahisi.** SLA inapaswa kusema kinachotolewa, kinavyopimwa, jinsi matatizo yanavyoripotiwa, kinachotokea malengo yakikosekana, na lini inapitiwa. Epuka istilahi ambazo mwanasheria au mhandisi tu anaweza kuzisoma.
8. **Tenganisha malengo na makubaliano.** Weka malengo ya ndani yaliyo makali kuliko makubaliano unayosaini. Ukingo unakupa nafasi ya kuitikia kabla hujadaiwa chochote.
9. **Jua ahadi yako inategemea nini.** Orodhesha timu na wasambazaji ambao kiwango chako cha huduma kinawategemea, na uhakikishe ahadi zao zinaunga mkono zako.
10. **Ripoti kwa umbo ambalo wateja wanaweza kulitumia.** Shiriki matokeo mara kwa mara, pamoja na maoni mafupi kuhusu kilichotokea na unachofanya. Epuka dashibodi zisizo na maoni.
11. **Pitia malengo na wateja.** Angalau kila mwaka, uliza kama viwango bado vinalingana na wateja wanachohitaji na unachoweza kutoa. Vibadilishe jibu likiwa hapana.
12. **Usitumie viwango vya huduma kuadhibu watu.** Vitumie kuanzisha mazungumzo na maamuzi. Lengo linalotumika kama fimbo litadanganywa (tazama Mada 5.6 — Vipimo na Upimaji).

## Maswali ya kujadili na timu yako

**Siku nzuri inaonekanaje kwa watumiaji wetu, na tungejuaje?**

Iombe timu ieleze, kwa maneno ya mtumiaji, uzoefu mzuri wa huduma ni upi. Kisha uliza tunapima nini kinacholingana na hilo. Mara nyingi vipimo tulivyo navyo vinaeleza mifumo yetu na si uzoefu wa mtumiaji. Mwezeshaji anaweza kuuliza kama tungetambua kundi la watumiaji likiwa na siku mbaya. Chagua kiashiria kimoja cha kuongeza au kubadilisha.

**Je, tuna nambari tunayoiahidi au kuilenga, na nani aliikubali?**

Orodhesha malengo yaliyopo, rasmi au yasiyo rasmi. Kwa kila moja, uliza nani aliyeliweka, lini, na kwa msingi gani. Malengo mengi hubainika kuwekwa kwa mazoea au na mtu aliyeondoka. Jadili yapi yathibitishwe, yabadilishwe, au yaachwe. Kubaliana nani anamiliki kila moja.

**Tunaweza kumudu kushindwa kiasi gani, na tungefanya nini na nafasi hiyo?**

Anzisha wazo la bajeti ya makosa. Uliza watumiaji wangevumilia kiwango gani cha kutopatikana na timu ingefanya nini na nafasi, kama matoleo ya haraka zaidi. Lengo ni kuona maridhiano katika nambari. Usitarajie majibu sahihi; omba makadirio ya kwanza ya kujaribu.

**Wastani wetu unaficha uzoefu mbaya wapi?**

Tazama kipimo kimoja kinachoripoti wastani. Uliza asilimia moja ya polepole zaidi ya watumiaji hupitia nini. Kama hujui, jadili jinsi ya kupata. Mara nyingi kundi dogo la watumiaji au wakati fulani wa siku una uzoefu mbaya zaidi sana. Panga kutazama asilimia moja kwa mwezi.

**Tunategemea nini ambacho hatujauliza kuhusu?**

Orodhesha huduma, wasambazaji na timu ambazo huduma yako inazitegemea. Kwa kila moja, uliza wameahidi nini na ungejuaje wamekosa. Utegemezi mwingi hauna kiwango kilichotajwa. Chagua muhimu zaidi na ufungue mazungumzo.

**Lengo lilibadilika lini mara ya mwisho, na nini kilichochea?**

Omba badiliko la mwisho. Kama lilikuwa zamani, uliza nini kimebadilika katika mahitaji ya watumiaji au uwezo wa timu tangu hapo. Jadili mapitio ya kawaida. Vichocheo vizuri ni mahitaji mapya ya watumiaji, matukio ya hitilafu yaliyofichua lengo lisilo la kweli, au badiliko la usanifu.

## Kwa vitendo: mfano wa agile ITIL

Mwendeshaji wa bahati nasibu ya kitaifa anaendesha huduma ya kununua tiketi mtandaoni. Timu ya watu kumi na wawili inaijenga na kuiendesha. Biashara ina kanuni isiyo rasmi kwamba huduma lazima "iwe juu kila wakati," huku timu ikitoa mara mbili kwa wiki na imekuwa na kuzimika kwa muda mfupi mara nne kwa mwaka. Baada ya wikendi mbaya, mfadhili mkuu anadai "upatikanaji wa 100%," na kiongozi wa timu anahofia hili litamaliza matoleo ya mara kwa mara.

Kiongozi wa timu na mfadhili wanafanya warsha na mkuu wa huduma kwa wateja. Wanauliza nini kinajalisha kwa wachezaji. Jibu ni kwamba wachezaji lazima waweze kununua tiketi katika saa kabla ya droo kufungwa; nje ya saa hiyo huduma inaweza kuwa chini kwa dakika bila madhara. Wanafafanua kiashiria: sehemu ya majaribio ya ununuzi yanayofanikiwa katika saa mbili kabla ya kila droo kufungwa. Wanaweka lengo ambalo timu inaamini inaweza kulitimiza, chini kidogo ya utendaji wake wa hivi karibuni, na kukubaliana bajeti ya makosa kwa kila mwezi. Pia wanakubaliana kuwa bajeti ikiwa karibu imeisha, matoleo yanayogusa ununuzi yanasimama hadi mwezi unaofuata, na timu inawekeza katika uaminifu.

Miezi mitatu baadaye bajeti inatumiwa kabisa mara moja, katika mwezi wenye hitilafu ya mtoa huduma wa malipo, na timu inasimamisha matoleo yenye hatari kwa wiki mbili bila mgogoro. Lengo linaipa timu na mfadhili njia ya pamoja ya kuzungumza. Ugumu fulani unabaki. Ahadi ya mtoa huduma wa malipo mwenyewe ni dhaifu kuliko lengo la timu, kwa hiyo ahadi ya timu inategemea msambazaji ambaye hajaikubali. Kipimo pia kinapuuza ukurasa wa malipo wa polepole ambao watumiaji wanalalamikia, kwa sababu kinahesabu mafanikio tu. Timu inaongeza kiashiria cha kasi kwenye asilimia ya 99 na kufungua mazungumzo na mtoa huduma kuhusu viwango vyake vya huduma.

## Mitazamo minne

### Timu za bidhaa na utoaji

Timu za utoaji zinapaswa kusaidia kuchagua viashiria na kutumia bajeti ya makosa katika upangaji. Jenga upimaji ndani ya huduma ili nambari ziwe za kutegemewa. Chukulia bajeti iliyoisha kama sababu ya kufanya kazi kwenye uaminifu, si adhabu.

### Timu za huduma na uendeshaji

Timu za uendeshaji kwa kawaida huendesha ufuatiliaji na kuripoti viwango. Weka seti ya vipimo ndogo, vionyeshe pamoja na maoni, na ulete data kwenye mazungumzo ya upangaji. Tunza orodha ya huduma yako inategemea nini na uhakikishe ahadi zinaendana.

### Uongozi na utawala

Viongozi na wafadhili huweka matarajio. Epuka kuomba ukamilifu; uliza watumiaji wanahitaji nini na maridhiano yanagharimu nini. Unga mkono matumizi ya bajeti ya makosa kama kanuni ya pamoja, na uhakikishe inatumika kwa maombi yako mwenyewe pia. Pitia viwango vya huduma na wateja kwa ratiba.

### Wateja na watumiaji

Wateja na watumiaji hunufaika kiwango cha huduma kinapotajwa na kutimizwa. Sema kinachojalisha kwako, ikijumuisha lini. Omba ripoti kwa umbo unaloweza kulielewa, na umwambie mtoa huduma kiwango kilichotajwa kisipofaa mahitaji yako tena.

## Sababu za kawaida za kushindwa

- **Vipimo vingi mno.** Hakuna anayejua kipi kinajalisha. Badala yake, chagua vichache vinavyoakisi uzoefu wa mtumiaji.
- **Wastani tu.** Kundi la watumiaji linateseka huku wastani unaonekana sawa. Badala yake, jumuisha kipimo cha asilimia ya juu.
- **Malengo yaliyonakiliwa kutoka utendaji wa sasa.** Timu inafungwa kwenye ushujaa. Badala yake, weka malengo kutoka mahitaji ya watumiaji na ukaze kwa data.
- **Kudai 100%.** Matoleo yanasimama na uvumbuzi unapungua kasi. Badala yake, kubaliana bajeti ya makosa na kanuni ya kuitumia.
- **Ahadi usizoweza kuziunga mkono.** Kiwango cha huduma kinategemea wasambazaji ambao hawajakubali. Badala yake, hakiki utegemezi na uoanishe ahadi.
- **Makubaliano ambayo hakuna anayesoma.** Masharti yako katika lugha ya kisheria. Badala yake, andika kwa lugha rahisi na upitie na wateja.
- **Dashibodi zisizo na maoni.** Nambari zinaripotiwa bila maana. Badala yake, ongeza maelezo mafupi ya kilichotokea na kitakachobadilika.
- **Kuadhibu kukosa.** Watu huficha matatizo. Badala yake, tumia kukosa kuchochea maamuzi na kujifunza.

## Modeli ya ukomavu

| Nyanja | Kuanza | Kukua | Kusanifisha | Kusimamia | Kuratibu |
|---|---|---|---|---|---|
| Kufafanua viwango | Viwango vinadhaniwa au si rasmi | Baadhi ya huduma zina malengo yaliyotajwa | Kila huduma ina viashiria na malengo yanayotegemea watumiaji yenye wamiliki | Malengo hupitiwa dhidi ya mahitaji ya watumiaji na data | Viwango huwekwa kwa pamoja na wateja na wasambazaji |
| Kupima | Vipimo ni bila mpangilio | Baadhi ya viashiria hupimwa | Viashiria hupimwa kwa kutegemewa, ikijumuisha asilimia | Ubora wa kupima hupitiwa na mapengo hurekebishwa | Upimaji hushirikiwa na kuthibitishwa katika timu na wasambazaji |
| Kutumia bajeti za makosa | Kushindwa hakupangwi | Baadhi ya timu hujadili kushindwa kunakokubalika | Bajeti huongoza maamuzi ya matoleo kwenye huduma muhimu | Matumizi ya bajeti hupitiwa na kanuni hurekebishwa | Bajeti huratibiwa katika huduma zinazotegemeana |
| Makubaliano na utegemezi | Ahadi si rasmi | Baadhi ya makubaliano yapo | Makubaliano yako kwa lugha rahisi, yakiwa na utegemezi unaojulikana | Makubaliano na ahadi za wasambazaji hukaguliwa dhidi ya matokeo | Makubaliano huunda mnyororo thabiti katika timu, wasambazaji na wateja |

## Orodha hakiki

- [ ] Kwa kila huduma, tumeeleza kwa maneno ya watumiaji hali nzuri inaonekanaje.
- [ ] Kila huduma ina viashiria viwili hadi vinne vinavyoakisi uzoefu wa mtumiaji.
- [ ] Angalau kipimo kimoja cha kasi kinatumia asilimia ya juu, si wastani tu.
- [ ] Malengo huwekwa kutoka mahitaji ya watumiaji, si utendaji wa sasa tu.
- [ ] Bajeti ya makosa ipo na inaongoza maamuzi ya matoleo kwa angalau huduma moja.
- [ ] Makubaliano yameandikwa kwa lugha rahisi na kupitiwa na wateja.
- [ ] Utegemezi kwa timu na wasambazaji wengine umeorodheshwa pamoja na ahadi zao.
- [ ] Matokeo huripotiwa mara kwa mara pamoja na maoni.
- [ ] Malengo hupitiwa angalau mara moja kwa mwaka.
- [ ] Data ya kiwango cha huduma hutumika katika upangaji na si kama fimbo.

## Maelekezo ya AI

**Madhumuni: kugeuza mahitaji ya watumiaji kuwa viashiria na malengo ya kuzingatiwa.**

```text
Help me move from user needs to indicators and objectives for [service].

What users do with the service and what matters to them (in their words, with any feedback or complaints): [paste].
Measurements we can already collect: [list].
Rules or contracts that set levels, with the source text: [paste, or write "none known"].

Propose two to four candidate indicators that reflect the user experience, say how each would be measured with the data I listed, and suggest how to express an objective for each, leaving numeric targets as [to be agreed with users and data]. Mark any indicator we cannot measure yet. Do not invent targets or performance figures. Ask clarifying questions first, and list what you are unsure of.
```

**Madhumuni: kuchambua kama wastani unaficha uzoefu mbaya.**

```text
Here are response times (or other measurements) for [service] over [period]: [paste a column of real values, or summary figures such as median, 90th, 99th percentile if you have them].

Using only my data, compute or describe the average, the median, and the high percentiles if the data allows. Explain in plain words what the gap between the average and the high percentiles suggests for users. Suggest one indicator and one question to ask. Do not invent data, and say if the data is too thin. List what you are unsure of.
```

**Madhumuni: kuandika rasimu ya muhtasari wa makubaliano ya kiwango cha huduma kwa lugha rahisi.**

```text
Draft an outline for a service level agreement for [service] between [provider] and [customer].

What we provide: [describe].
Measures and targets already agreed or being proposed: [paste, or write "to be agreed"].
Support hours and contacts: [describe].
Dependencies on suppliers: [list].
Terms we must include because of contract or law, with source text: [paste, or write "none known"].

Produce an outline with plain-language sections: service description, hours, measures and how they are measured, how to report a problem, response and resolution expectations (marked [to be agreed]), what happens if targets are missed, reporting, review date. Do not invent legal terms. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Madhumuni: kupanga sera ya bajeti ya makosa.**

```text
Help me draft an error budget policy for [service].

Objective and period: [for example, "success rate of purchase attempts in the two hours before a draw closes, measured monthly"].
Current performance if known: [paste, or write "unknown"].
Release rhythm: [describe].
Who decides, and who is affected: [roles].

Draft a one-page policy: how the budget is calculated from the objective, how its use is tracked and shown, what happens at three stages of consumption (use [to be agreed] for thresholds), who may override and how, and how the policy is reviewed. Do not invent numbers. Ask clarifying questions first, and list what you are unsure of.
```

## Ujuzi wa AI

- [service-level-agreement](../../../../skills/service-level-agreement/SKILL.md): tumia kuandika rasimu au kupitia makubaliano kwa lugha rahisi.
- [software-engineering-metrics](../../../../skills/software-engineering-metrics/SKILL.md): tumia kuchagua na kutafsiri vipimo vya utoaji na utendaji wa huduma.
- [key-risk-indicators](../../../../skills/key-risk-indicators/SKILL.md): tumia kuchagua viashiria vya tahadhari ya mapema vinavyoonyesha kiwango cha huduma kiko hatarini.
- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): tumia kuhakiki kwamba uwezo unaunga mkono viwango unavyoviahidi.
- [vendor-management](../../../../skills/vendor-management/SKILL.md): tumia kuoanisha ahadi za wasambazaji na viwango unavyotoa.

## Vyanzo muhimu

- **Service Level Objectives** (*Site Reliability Engineering*, Google, sre.google): maelezo ya umma yaliyo wazi zaidi ya viashiria, malengo, makubaliano, asilimia, na bajeti za makosa.
- **Service-level agreement** (Wikipedia): fasili, yaliyomo ya kawaida, aina, na historia ya SLA.
- **DORA's software delivery performance metrics** (dora.dev): vipimo vinavyohusiana vya kasi na uthabiti wa utoaji.
- **Quality of service** (Wikipedia): usuli kuhusu jinsi ubora wa huduma unavyoelezwa na kupimwa.

## Marejeo

1. Service Level Objectives — Google SRE book, sre.google — https://sre.google/sre-book/service-level-objectives/
2. Service-level agreement — Wikipedia — https://en.wikipedia.org/wiki/Service-level_agreement
3. DORA's software delivery performance metrics — DORA, dora.dev — https://dora.dev/guides/dora-metrics-four-keys/
4. Quality of service — Wikipedia — https://en.wikipedia.org/wiki/Quality_of_service
5. Percentile — Wikipedia — https://en.wikipedia.org/wiki/Percentile
6. Service-level objective — Wikipedia — https://en.wikipedia.org/wiki/Service-level_objective
7. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
8. Goodhart's law — Wikipedia — https://en.wikipedia.org/wiki/Goodhart%27s_law
9. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
