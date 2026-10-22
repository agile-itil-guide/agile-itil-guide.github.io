# Kanban

**Kanban husimamia kazi kama mtiririko: hufanya mtiririko wa kazi uonekane, hudhibiti kiasi kilicho katika utekelezaji, na hutumia vipimo vya mtiririko kuboresha, jambo linalofaa timu za huduma ambazo kazi yao hufika mfululizo na haiwezi kupangwa katika mizunguko iliyowekwa.**

## Kwa nini hili ni muhimu

Dawati la huduma, timu ya uendeshaji na timu ya jukwaa zote zinashiriki sifa moja: kazi hufika inapofika. Matukio ya hitilafu, maombi na mabadiliko madogo hufika kama mkondo, na timu haiwezi kupanga mwezi mzima wa mambo hayo mapema. Mifumo iliyojengwa kuzunguka mizunguko iliyowekwa, kama Scrum, inafaa kazi hii kwa marekebisho tu (tazama Mada 1.4 — Utabiri wa Utoaji na Vipimo vya Mipango). Kanban ilibuniwa kwa mtiririko, kwa hiyo inafaa kwa asili zaidi.

Kanban pia inazungumza lugha ya usimamizi wa huduma. Inauliza kazi inachukua muda gani, kiasi gani kinasubiri, na hatua ipi ni kizuizi, na haya ndiyo maswali nyuma ya viwango vya huduma, usimamizi wa foleni na upangaji wa uwezo. Timu inayofuatilia umri na muda wa mzunguko wa kazi yake inaweza kuzungumzia viwango vya huduma kwa data badala ya hisia.

Kanban ni rahisi kuanza na ni rahisi kwa kushangaza kuifanya vibaya. Ubao wenye safu si Kanban kama hakuna kinachodhibiti kazi inayoendelea na hakuna anayetumia vipimo. Mada hii inaeleza Kanban Guide inachoomba kwa timu, mbinu ilikotoka, na jinsi ya kuitumia kwa kazi ya huduma.

## Dhana kuu

### Kanban ni nini

[Kanban Guide](https://kanbanguides.org/english/), ambayo toleo lake la sasa lina tarehe ya Mei 2025 na ambayo inawataja John Coleman na Daniel Vacanti miongoni mwa waandishi wake, inafafanua Kanban kama mkakati wa kuboresha mtiririko wa thamani kupitia mchakato. Inaeleza mtiririko kama mwendo wa thamani inayoweza kupatikana kupitia mfumo. Lengo ni usawa wa mambo matatu: ufanisi wa matokeo (effectiveness, kutoa wadau wanachotaka, wakati wanapotaka), ufanisi wa rasilimali (efficiency, kutumia rasilimali vizuri), na utabirika (predictability, kutabiri utoaji kwa kiwango kinachokubalika cha kutokuwa na uhakika). Mwongozo unasema unatumika kwa kazi ya maarifa katika tasnia yoyote.

Neno "kanban" ni la Kijapani na linamaanisha ubao wa ishara au bango. [Makala ya Wikipedia kuhusu Kanban katika uundaji](https://en.wikipedia.org/wiki/Kanban_(development)) yanasema mbinu hiyo inatokana na uzalishaji wa lean na [Mfumo wa Uzalishaji wa Toyota](https://en.wikipedia.org/wiki/Toyota_Production_System), kwa mfumo wa wakati-unaofaa ulioanza Toyota mwishoni mwa miaka ya 1940. Kitabu cha David J. Anderson cha mwaka 2010 kinafuatilia toleo la programu hadi mradi wa mwaka 2004 huko Microsoft na mradi wa 2006–2007 huko Corbis.

### Mazoea matatu

Kanban Guide inataja mazoea matatu. Timu inayofanya yote matatu, na kutumia vipimo vilivyo hapa chini, inafanya Kanban kwa maana ya mwongozo.

| Zoezi | Timu inafanya nini | Maelezo kwa timu za huduma |
|---|---|---|
| **Fafanua na uonyeshe mtiririko wa kazi** | Kubaliana Ufafanuzi wa Mtiririko wa Kazi (Definition of Workflow, DoW): kipengele cha kazi ni nini, kinaanzia na kuishia wapi, hali zilizo kati, jinsi kazi inayoendelea inavyodhibitiwa, sera za kusogeza kazi, na matarajio ya kiwango cha huduma (SLE). Yaonyeshe kwenye ubao. | DoW ya dawati la huduma inaweza kufafanua vipengele vya tukio la hitilafu, ombi na badiliko, vyenye hali na sera tofauti kwa kila kimoja |
| **Simamia kikamilifu vipengele katika mtiririko** | Dhibiti idadi ya vipengele vinavyoendelea, angalia vipengele vinavyozeeka, na fungua vipengele vilivyokwama. | Kikomo cha matukio ya hitilafu yaliyo wazi kwa kila mhandisi kinailazimisha timu kukamilisha au kukabidhi kazi kabla ya kuanza zaidi |
| **Boresha mtiririko wa kazi** | Badilisha DoW kwa muda ili kuboresha ufanisi wa matokeo, ufanisi wa rasilimali na utabirika, kwa vipindi vilivyowekwa au inapohitajika. | Mapitio ya DoW baada ya tukio kubwa la hitilafu yanaweza kubadilisha sera, mipaka au hali |

Mwongozo hauagizi muundo wa ubao wala mikutano yoyote. Timu ziko huru kuongeza mazoea, mradi mazoea ya msingi, vipimo, na lengo la kuboresha thamani yabaki.

### Mipaka ya kazi inayoendelea na kuvuta

Kudhibiti kazi inayoendelea (WIP) huunda kile mwongozo unachokiita mfumo wa kuvuta (pull system): kazi mpya huanza tu pale kuna uwezo kwa ajili yake. Makala ya Wikipedia yanatoa mfano wa hatua ya "kupeleka" yenye kikomo cha tano. Hatua ikijaa, hakuna kinachoweza kuingia hadi kitu kikamilike, kwa hiyo kizuizi kinaonekana na watu wanaweza kusaidia kukiondoa. Bila mipaka ubao ni picha tu ya fujo.

### Vipimo vinne vya mtiririko

Mwongozo unaorodhesha vipimo vinne ambavyo timu inayotumia Kanban hufuatilia:

- **Kazi inayoendelea (WIP):** idadi ya vipengele vilivyoanzishwa lakini havijakamilika.
- **Kiwango cha kukamilisha (throughput):** idadi ya vipengele vilivyokamilika katika kipindi fulani.
- **Umri wa kipengele cha kazi (work item age):** kipengele ambacho hakijakamilika kimekuwa kikiendelea kwa muda gani.
- **Muda wa mzunguko (cycle time):** kipengele kilichokamilika kilichukua muda gani kutoka kuanza hadi kumaliza.

Mwongozo unasema timu zinaweza kubadilisha majina ya hivi na zinapaswa kuongeza vipimo vingine pale vinapofaa, na kwamba vipimo ni muhimu tu vinapofahamisha mazoea matatu. Matarajio ya kiwango cha huduma ni utabiri wa kipengele kinapaswa kuchukua muda gani, kwa msingi wa nyakati za mzunguko za zamani. Si ahadi, na yanatofautiana na makubaliano ya kiwango cha huduma (SLA) yanayojadiliwa na mteja. Tazama Mada 3.7 — Usimamizi wa Kiwango cha Huduma.

### Maandiko mapana ya Kanban

Waandishi wengine wameeleza mbinu hii kwa upana zaidi. Makala ya Wikipedia yanaorodhesha kazi ya Don Reinertsen kuhusu mtiririko, *Personal Kanban* ya Jim Benson na Tonianne DeMaria Barry, *Kanban From the Inside* ya Mike Burrows, na *Scrumban* ya Corey Ladas, iliyopendekeza Kanban kama njia ya kuboresha Scrum. Baadhi ya vyanzo hivi vinaorodhesha mazoea zaidi ya yale matatu ya mwongozo, kama kufanya sera ziwe wazi, kutekeleza mizunguko ya maoni, na kuboresha kwa ushirikiano. Yachukulie kama nyongeza zenye manufaa, si mahitaji ya mwongozo.

Makala ya Wikipedia yana lebo inayobainisha kuwa mchangiaji mkuu anaweza kuwa na uhusiano wa karibu na mada, kwa hiyo hakiki madai yake dhidi ya vyanzo vya msingi.

### Kanban haisemi nini

Kanban si mpango wa mradi, seti ya majukumu, wala mchakato wa matoleo. Haikuambii jinsi ya kubuni huduma au kuendesha tukio la hitilafu. Inakupa njia ya kuona na kusimamia mtiririko, na inakutegemea ulete maudhui ya kazi yako. Hiyo pia ndiyo nguvu yake: unaweza kuanza na mchakato ulio nao na kuuboresha kwa hatua ndogo (tazama Mada 3.15 — Uboreshaji Endelevu).

## Mazoea bora

1. **Anza na unachofanya sasa.** Chora mtiririko halisi wa kazi, pamoja na hali ambazo kazi hupitia kweli, ikiwemo kusubiri. Usichore mchakato unaotamani kuwa nao. Unaweza kuboresha tu unachokiona.
2. **Fafanua kipengele cha kazi ni nini.** Amua kama matukio ya hitilafu, maombi na mabadiliko ni aina moja ya kipengele au kadhaa, na upe kila moja mwanzo na mwisho ulio wazi. Fasili zilizochanganyika hufanya vipimo visiwe na maana.
3. **Weka mipaka ya WIP na uishikilie.** Anza na kikomo kinachohisiwa kuwa kigumu kidogo, kama vipengele moja au viwili kwa kila mtu, na urekebishe kutokana na uzoefu. Kikomo kinachovunjwa kila mara hakitoi taarifa, kwa hiyo jadili kila ukiukaji.
4. **Fanya sera ziwe wazi.** Andika kwenye ubao kipengele kinaweza kuhamia hali inayofuata lini, nani anaweza kukivuta, na nini kinahesabiwa kama kimezuiliwa. Sera zinazoonekana hupunguza mabishano na kufanya kupokea wafanyakazi wapya kuwa rahisi.
5. **Tazama umri wa kipengele cha kazi, si muda wa mzunguko tu.** Muda wa mzunguko unajulikana tu baada ya kipengele kukamilika, ilhali umri unaonyesha shida huku bado kuna muda wa kuchukua hatua. Pitia vipengele vya zamani zaidi kila siku.
6. **Tumia matarajio ya kiwango cha huduma yanayotokana na historia.** Chukua nyakati za mzunguko za vipengele vya hivi karibuni vilivyokamilika na sema, kwa mfano, kuwa vipengele vingi vya aina fulani hukamilika ndani ya idadi fulani ya siku. Yasasishe data inapobadilika. Usiahidi wateja nambari ambayo hujaipima.
7. **Chukulia kazi ya haraka kama ubaguzi ulio wazi.** Matukio ya dharura yatapita foleni. Bainisha sera, kama njia yenye kikomo chake, ili ubaguzi uonekane na usiharibu mtiririko kimya kimya (tazama Mada 3.2 — Usimamizi wa Matukio ya Hitilafu).
8. **Tafuta kizuizi na kisaidie.** Hatua inapokuwa imejaa kila mara, uliza kama inahitaji uwezo zaidi, sera iliyobadilishwa, au mtiririko tofauti wa juu. Kuhamisha watu kwenye kizuizi kwa kawaida ni bora kuliko kusukuma kazi zaidi ndani yake.
9. **Fanya mapitio kwa mdundo wa kawaida.** Mwongozo unaruhusu uboreshaji kwa vipindi vilivyowekwa au inapohitajika. Mapitio mafupi ya kila wiki ya vipimo na uangalizi wa kila mwezi wa DoW hufanya kazi kwa timu nyingi.
10. **Unganisha ubao na shirika lingine.** Fanya ubao uonekane kwa wateja na timu jirani. Kubaliana jinsi vipengele vinavyovuka kati ya mbao, kama kutoka dawati la huduma hadi timu ya uundaji.
11. **Tumia vipimo kwa ajili ya kujifunza.** Tumia nambari kuuliza maswali, si kupanga watu kwa nafasi. Data ya mtiririko inapogeuka kuwa lengo, timu huidanganya (tazama Mada 5.6 — Vipimo na Upimaji).
12. **Changanya na mifumo mingine kwa makusudi.** Kama timu inatumia matukio ya Scrum kwa upangaji na Kanban kwa mtiririko, sema kila moja ni ya nini, na uhakikishe mchanganyiko unapunguza mkanganyiko (tazama Mada 1.8 — Kupanua Agile kwa kuratibu timu kadhaa).

## Maswali ya kujadili na timu yako

**Kama tungechora mtiririko wetu halisi wa kazi, pamoja na kusubiri, ungeonekanaje?**

Mwombe kila mtu achore njia ya kipengele kimoja cha hivi karibuni, kisha changanya michoro ukutani. Tofauti kati ya michoro zinaonyesha hatua zilizofichika na makabidhiano yasiyo rasmi. Tarajia mshangao: idhini ambazo hakuna aliyezitaja, vipengele vinavyosubiri timu nyingine, na mizunguko ya kurudia kazi. Fuatilia kwa kuweka alama kwenye kusubiri kwa muda mrefu zaidi kuwili.

**Ni kazi kiasi gani inayoendelea kwa kila mmoja wetu sasa hivi, na kiasi gani kati yake kinasubiri?**

Hesabu vipengele vilivyo wazi kwa kila mtu na uweke alama ni vipi vimezuiliwa au visivyofanyiwa kazi. Timu nyingi hugundua kuwa vipengele vingi vinasubiri na vichache vinafanyiwa kazi. Uliza kila mtu hufanya nini anapozuiliwa, na kama kuanza kipengele kipya ndilo jibu la kawaida. Lengo ni kujadili kwa nini kuanza kunalipwa na kumaliza hakulipwi.

**Kipengele cha zamani zaidi kwenye ubao wetu ni kipi, na kwa nini bado kipo?**

Chagua vipengele vitatu vya zamani zaidi na ufuatilie kilichotokea. Majibu ya kawaida ni mmiliki asiye wazi, utegemezi kwa timu nyingine, au kipengele ambacho hakuna anayetaka kukifuta. Uliza kama kipengele kinapaswa kukamilishwa, kufutwa, au kupandishwa. Mwezeshaji anaweza kuuliza ni sera gani ingekikamata kipengele mapema.

**Tunaahidi nini kwa wateja wetu kuhusu mambo yanachukua muda gani, na nambari zetu wenyewe zinasema nini?**

Linganisha viwango vya huduma vilivyokubaliwa na nyakati halisi za mzunguko za vipengele vilivyokamilika. Kama huna data, ikusanye kwa mwezi kwanza. Jadili pengo lolote waziwazi. Uliza kama lengo libadilike, au njia ya kufanya kazi ibadilike. Kumbuka kuwa matarajio ya kiwango cha huduma yanayotokana na data ni utabiri, ilhali SLA ni makubaliano.

**Kazi ya haraka inapofika, nini kinatokea kwa kila kitu kingine?**

Pitia tukio la mwisho la dharura na uone vipengele gani vilikwama. Uliza kama timu ina sera ya kazi ya haraka, na kama yeyote anajua inashughulikia vipengele vingapi vya haraka kwa mwezi. Timu mara nyingi hugundua kuwa kazi ya haraka ni ya kawaida, si ubaguzi, na kwamba sera inahitaji kulingana na hilo. Fuatilia kwa kukubaliana kikomo cha vipengele vya haraka.

**Ni vipimo vipi vyetu tungevithamini vya kutosha kuegemeza uamuzi juu yake, na vipi tungepuuza?**

Waombe watu wapange vipimo vilivyopo kwa kiasi wanachoviamini na kwa nini. Kutoamini mara nyingi hutokana na fasili zisizo thabiti za vipengele au mapengo ya data. Usiligeuze kuwa mabishano kuhusu watu; zingatia ubora wa data. Maliza kwa kuchagua kipimo kimoja cha kuboresha mwezi ujao.

## Kwa vitendo: mfano wa agile ITIL

Dawati la huduma ya TEHAMA la chuo kikuu lina wachambuzi wanane wanaoshughulikia matukio ya hitilafu na maombi kutoka kwa wanafunzi na wafanyakazi. Timu ina zana ya tiketi yenye foleni, lakini bila mipaka, na kila mchambuzi ana kati ya tiketi 20 na 40 zilizo wazi. Wateja wanalalamika kwamba tiketi zinaonekana kupotea, na meneja wa dawati hawezi kusema ombi la kawaida huchukua muda gani.

Meneja na wachambuzi wanajenga ubao unaoakisi zana: mpya, zilizochambuliwa, zinazoendelea, zinazosubiri mteja, zinazosubiri timu nyingine, na zilizotatuliwa. Wanakubaliana kikomo cha vipengele nane vinavyoendelea kwa kila mchambuzi na sheria kwamba tiketi zinazosubiri wengine lazima zitaje mtu anayewajibika kwa hatua inayofuata. Wanatenga njia moja kwa matukio ya dharura, yenye kikomo cha mawili. Kwa mwezi mmoja, wanakusanya tu data ya muda wa mzunguko na umri.

Baada ya mwezi, data inaonyesha kuwa maombi mengi yanatatuliwa ndani ya siku chache lakini mkia mrefu unasubiri wiki, hasa "inasubiri timu nyingine." Timu inaweka matarajio ya kiwango cha huduma kutokana na data na kuanza mapitio ya kila siku ya vipengele vya zamani zaidi. Tiketi kadhaa zilizosubiri kwa muda mrefu zinafungwa au kupandishwa katika wiki ya kwanza. Tatizo linabaki: timu ya mtandao, inayomiliki tiketi nyingi zinazosubiri, haina ubao wake na dawati haliwezi kuona foleni yake. Meneja wa dawati anapanga mazungumzo ya kila wiki na kiongozi wa timu ya mtandao, na timu hizi mbili zinaanza kujadili kushiriki mwonekano wa vipengele vinavyovuka kati yao.

## Mitazamo minne

### Timu za bidhaa na utoaji

Timu za utoaji zinaweza kutumia Kanban kuona mahali kazi inaposubiri kati ya usanifu, ujenzi, majaribio na toleo. Mipaka ya kazi inayoendelea hupunguza idadi ya mabadiliko yasiyokamilika, na data ya mtiririko inaweza kuonyesha mahali mchakato wa matoleo unahitaji uangalifu. Chukulia maombi kutoka uendeshaji kama vipengele katika mtiririko ule ule, vyenye sera yake.

### Timu za huduma na uendeshaji

Timu za uendeshaji ndizo makazi ya asili ya Kanban. Onyesha matukio ya hitilafu, maombi na mabadiliko katika hali zake yenyewe, weka mipaka, na utazame uzee. Tumia data ya muda wa mzunguko kuweka matarajio ya kweli na wateja, na utumie hali za kuzuiliwa na kusubiri kuanzisha mazungumzo na timu nyingine.

### Uongozi na utawala

Viongozi hunufaika na vipimo vya mtiririko kama picha ya uaminifu zaidi kuliko ripoti za hali. Omba muda wa mzunguko, kiwango cha kukamilisha na umri kwa aina ya kazi, na uulize timu ilibadilisha nini kwa sababu yake. Epuka kulenga nambari za mtu mmoja mmoja, jambo linalozalisha udanganyifu. Unga mkono mipaka ya kazi inayoendelea hata wadau wanapotaka vianze zaidi.

### Wateja na watumiaji

Wateja hunufaika kwa utabiri ulio wazi zaidi na maombi machache yanayopotea. Iombe timu matarajio ya kiwango cha huduma kwa aina ya ombi lako, na utarajie yategemee historia. Ombi lako likiwa la dharura, tarajia kuulizwa kwa nini, kwa sababu timu lazima ilinde mtiririko wa wengine.

## Sababu za kawaida za kushindwa

- **Ubao usio na mipaka.** Ubao unaonyesha fujo lakini haupunguzi. Badala yake, weka na utekeleze mipaka ya kazi inayoendelea, na upitie kila ukiukaji.
- **Fasili zilizochanganyika za vipengele.** Matukio ya hitilafu, miradi na kazi ndogo hushiriki seti moja ya safu, na vipimo havina maana. Badala yake, bainisha aina za vipengele zenye hali na sera tofauti.
- **Kupuuza uzee.** Vipengele vya zamani hukaa bila kuonekana hadi mteja anapolalamika. Badala yake, pitia vipengele vya zamani zaidi kila siku na uamue kuhusu kila kimoja.
- **Kugeuza vipimo kuwa malengo.** Timu hugawanya au kufunga vipengele ili kuboresha nambari. Badala yake, tumia vipimo kuuliza maswali na uvipitie na timu.
- **Njia za dharura zilizofichika.** Kazi ya haraka hupita mipaka bila alama. Badala yake, ipe kazi ya haraka njia inayoonekana, kikomo na sera.
- **Kunakili muundo wa ubao.** Timu hupokea safu za timu nyingine bila kuelewa mtiririko wake yenyewe. Badala yake, chora mtiririko halisi kwanza.
- **Kuchukulia Kanban kama zana ya kuripoti.** Mameneja hutumia ubao kutazama watu na si kuboresha mtiririko. Badala yake, itumie kama zana ya timu ya kuamua cha kufanya kinachofuata.
- **Kutoboresha mtiririko kamwe.** Ubao unabaki uleule kwa miaka. Badala yake, fanya mapitio ya kawaida ya Ufafanuzi wa Mtiririko wa Kazi na uubadilishe data inapohitaji.

## Modeli ya ukomavu

| Nyanja | Kuanza | Kukua | Kusanifisha | Kusimamia | Kuratibu |
|---|---|---|---|---|---|
| Kuonyesha mtiririko wa kazi | Kazi iko kwenye sanduku za barua za watu binafsi na vichwani | Baadhi ya timu zina mbao zinazoonyesha hali zao | Timu zinashiriki Ufafanuzi wa Mtiririko wa Kazi wenye aina za vipengele na sera | Ubao hupitiwa na kusahihishwa dhidi ya kinachotokea kweli | Mbao katika timu zinaonyesha vipengele na makabidhiano ya timu mbalimbali |
| Kudhibiti kazi inayoendelea | Hakuna mipaka; watu huanza zaidi ya wanavyomaliza | Baadhi ya timu huweka mipaka isiyo rasmi | Mipaka huwekwa na ukiukaji hujadiliwa | Mipaka hurekebishwa kutokana na data ya mtiririko | Mipaka na uwezo husawazishwa katika timu na wasambazaji |
| Vipimo vya mtiririko | Vipimo vichache hukusanywa | Baadhi ya timu hurekodi muda wa mzunguko au kiwango cha kukamilisha | Vipimo vinne hukusanywa kwa uthabiti | Vipimo hupitiwa na kutumika kuweka matarajio ya kiwango cha huduma | Data ya mtiririko hushirikiwa katika timu na kutumika kupanga uwezo pamoja |
| Uboreshaji | Mabadiliko hufuata migogoro | Timu hurekebisha ubao mara kwa mara | Timu hupitia mtiririko wa kazi kwa mdundo wa kawaida | Mabadiliko huunganishwa na vipimo na matokeo hukaguliwa | Maboresho huenea kati ya timu bila mwelekeo wa kati |

## Orodha hakiki

- [ ] Tumechora mtiririko wetu halisi wa kazi, pamoja na kusubiri na makabidhiano.
- [ ] Vipengele vyetu vya kazi vimefafanuliwa, na mwanzo na mwisho ulio wazi kwa kila aina.
- [ ] Mipaka ya kazi inayoendelea ipo na kila ukiukaji hujadiliwa.
- [ ] Sera za kusogeza na kuzuia vipengele zimeandikwa kwenye ubao au karibu nao.
- [ ] Tunafuatilia muda wa mzunguko, kiwango cha kukamilisha, kazi inayoendelea na umri wa kipengele cha kazi.
- [ ] Tunapitia vipengele vya zamani zaidi kila siku au angalau kila wiki.
- [ ] Tuna matarajio ya kiwango cha huduma yanayotokana na historia yetu wenyewe.
- [ ] Kazi ya haraka ina njia, kikomo na sera yake inayoonekana.
- [ ] Ufafanuzi wa Mtiririko wa Kazi hupitiwa kwa mdundo wa kawaida.
- [ ] Timu jirani na wateja wanaweza kuona vipengele vinavyowahusu.

## Maelekezo ya AI

**Madhumuni: kueleza mtiririko wako halisi wa kazi na kupata mahali kazi inaposubiri.**

```text
You are helping me map the real workflow of a team that handles [type of work, e.g. "service desk incidents and requests"].

Here are the states a typical item goes through, as best I can describe them: [paste the steps in order, including waits and handovers].
Here is what happened to three recent items, with dates for each state change: [paste three short timelines, using only real data].

Draw the workflow as a simple text diagram. Identify where each item waited longest, using only the dates I provided. Suggest three questions I should ask the team about those waits. Do not invent numbers. If the data are too thin, ask me for more first, mark your assumptions, and list what you are unsure of.
```

**Madhumuni: kuandika rasimu ya Ufafanuzi wa Mtiririko wa Kazi kwa timu.**

```text
Help me write a first Definition of Workflow for [team name and what it does].

Item types we handle: [list them, e.g. incidents, requests, changes].
States an item can be in: [list, or write "unknown"].
Current policies for starting, finishing, and blocking items: [paste, or write "none written"].
Roughly how many items each person has open at a time: [number, or "unknown"].

Produce a draft with: the item types, start and finish points, states, a proposed WIP limit approach, policies for moving items, a policy for urgent work, and how a service level expectation would be set from our own history. Mark every proposal that is a guess. Do not state any numbers I have not given you. Ask me clarifying questions first, and list what you are unsure of.
```

**Madhumuni: kuchambua data ya mtiririko kutoka mfumo wako wa tiketi.**

```text
Below are the start and finish dates of [number] items our team completed recently, and the start dates of [number] items still open: [paste as a table, real data only].

Calculate the cycle time of each completed item and the current age of each open item. Describe the spread: what most items take, what the slowest take, and which open items are older than most finished items. Do not extrapolate beyond the data. Suggest two questions to ask the team about the oldest items. Tell me what extra data would make the analysis more reliable, and list what you are unsure of.
```

**Madhumuni: kupanga mapitio ya ubao na timu.**

```text
Plan a 30-minute weekly flow review for a team of [number] people that uses a Kanban board for [type of work].

Our measures: [list which of work in progress, throughput, cycle time, and work item age you track].
Current frustration: [describe in one or two sentences].

Include a timed agenda, five questions to ask about the measures and the oldest items, and a closing step that records at most two changes with owners. Keep it free of any particular tool. Ask clarifying questions first if information is missing, and list what you are unsure of.
```

## Ujuzi wa AI

- [kanban](../../../../skills/kanban/SKILL.md): tumia kubuni au kupitia ubao, mipaka ya kazi inayoendelea na sera za timu ya huduma au uendeshaji.
- [scrumban](../../../../skills/scrumban/SKILL.md): tumia timu inapotaka matukio ya upangaji ya Scrum pamoja na usimamizi wa mtiririko wa Kanban.
- [value-stream-map](../../../../skills/value-stream-map/SKILL.md): tumia kuchora ramani ya jinsi kazi inavyosogea kati ya timu na mahali inaposubiri kabla ya kubuni ubao.
- [kaizen](../../../../skills/kaizen/SKILL.md): tumia kupanga maboresho madogo ya mtiririko wa kazi baada ya mapitio ya mtiririko.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md): tumia kuelewa ni aina gani za kazi zinafika na kwa kiasi gani kabla ya kuweka mipaka na uwezo.

## Vyanzo muhimu

- **The Kanban Guide** (John Coleman na Daniel Vacanti na wengine, kanbanguides.org): ufafanuzi mfupi na wenye mamlaka wa mazoea matatu na vipimo vinne.
- **Kanban (development)** (Wikipedia): muhtasari wa historia na mazoea mapana zaidi, wenye nukuu za vitabu vikuu.
- **Kanban: Successful Evolutionary Change for Your Technology Business** (David J. Anderson, 2010): maelezo ya jinsi Kanban ilivyotumiwa kwa kazi ya programu.
- **Toyota Production System** (Wikipedia): usuli kuhusu asili ya kanban katika uzalishaji wa lean.

## Marejeo

1. The Kanban Guide — John Coleman, Daniel Vacanti, and contributors, kanbanguides.org — https://kanbanguides.org/english/
2. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
3. Kanban — Wikipedia — https://en.wikipedia.org/wiki/Kanban
4. Toyota Production System — Wikipedia — https://en.wikipedia.org/wiki/Toyota_Production_System
5. Theory of constraints — Wikipedia — https://en.wikipedia.org/wiki/Theory_of_constraints
6. Scrumban — Wikipedia — https://en.wikipedia.org/wiki/Scrumban
7. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
8. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
