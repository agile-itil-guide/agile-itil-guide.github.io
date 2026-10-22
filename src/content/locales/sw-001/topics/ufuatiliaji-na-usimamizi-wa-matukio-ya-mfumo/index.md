# Ufuatiliaji na Usimamizi wa Matukio ya Mfumo

**Ufuatiliaji hukuambia kama huduma inafanya kazi jinsi watumiaji wanavyoipitia, na usimamizi mzuri wa matukio ya mfumo hugeuza mafuriko ya ishara kuwa idadi ndogo ya tahadhari ambazo mtu anaweza kuzielewa na kuzitendea.**

## Kwa nini hili ni muhimu

Huduma usiyoweza kuiona ni huduma usiyoweza kuiendesha. Bila ufuatiliaji, timu hujifunza kuhusu hitilafu kutoka kwa watumiaji, na kuhusu kuoza taratibu kutoka kwa hakuna. Kwa ufuatiliaji duni tatizo ni kinyume: tahadhari nyingi mno kiasi kwamba mhandisi aliye zamu anaacha kuziamini, na ile inayojalisha inapotea katika kelele. Ncha zote mbili zinagharimu usingizi, uaminifu, na muda.

Ufuatiliaji na usimamizi wa matukio ya mfumo pia huamua kasi ambayo tukio la hitilafu linaweza kupatikana na kurekebishwa. Kila kitu katika usimamizi wa matukio ya hitilafu kinategemea kujua kitu kimeharibika haraka na kuwa na taarifa ya kutosha kugundua kwa nini (tazama Mada 3.2 — Usimamizi wa Matukio ya Hitilafu). Timu za agile zinazotoa mara kwa mara zinahitaji hili zaidi, kwa sababu kila toleo ni nafasi ya kuvunja kitu na kila uamuzi wa kurudisha nyuma unategemea kuona athari.

Kitabu cha Google *Site Reliability Engineering* kina sura mbili zinazoshughulikia mada hii moja kwa moja: "Monitoring Distributed Systems" na "Practical Alerting from Time-Series Data." Zinaeleza zoezi la shirika moja na kutetea mbinu rahisi kwa makusudi, inayolenga watumiaji. Mada hii inazitumia kama chanzo kikuu, kwa sababu makala ya Wikipedia yaliyotumika kwa mwongozo huu yanatoa kidogo kuhusu zoezi hili. Msamiati wa ITIL hapa, kama tukio la mfumo (event), tahadhari (alert), na usimamizi wa matukio ya mfumo, umechukuliwa kutoka maelezo yaliyochapishwa kwa wingi ambayo mwongozo huu haukuweza kuyahakiki dhidi ya maandishi ya mmiliki wa mfumo. Soma sura za SRE kama chaguo moja lililoelezwa vizuri.

## Dhana kuu

### Ufuatiliaji

Sura ya SRE inafafanua **ufuatiliaji (monitoring)** kama kukusanya, kusindika, na kuonyesha data ya kiidadi ya wakati halisi kuhusu mfumo. Inasema ufuatiliaji unaunga mkono uchambuzi wa mienendo ya muda mrefu, ulinganisho katika majaribio, tahadhari, dashibodi, na kutatua matatizo kwa dharura baada ya tukio. Inasisitiza kuwa ufuatiliaji ni juhudi kubwa ya kihandisi na kwamba timu kwa kawaida humpa angalau mtu mmoja kazi hiyo.

### Matukio ya mfumo, tahadhari, na matukio ya hitilafu

Katika matumizi ya ITSM, **tukio la mfumo (event)** ni badiliko la hali lenye umuhimu kwa usimamizi wa huduma. Matukio mengi ni ya kutoa taarifa. Mengine yanaashiria onyo au ubaguzi. **Tahadhari (alert)** ni, kama sura ya SRE inavyosema, arifa kwa binadamu, inayowasilishwa kama tiketi, barua pepe, au ukurasa wa simu. **Tukio la hitilafu (incident)** ni usumbufu usiopangwa au kupungua kwa ubora (tazama Mada 3.2 — Usimamizi wa Matukio ya Hitilafu). Usimamizi wa matukio ya mfumo ni zoezi la kuamua ni matukio gani yanajalisha, nini cha kufanya kuhusu hayo, na nani ajulishwe. Mtiririko ni matukio hadi tahadhari hadi, wakati mwingine, matukio ya hitilafu.

### Ufuatiliaji wa kisanduku cheusi na cheupe

Sura inatofautisha aina mbili:

| Aina | Inafanya nini | Nguvu |
|---|---|---|
| **Kisanduku cheusi (Black-box)** | Hujaribu tabia inayoonekana nje, kama mtumiaji angeiona | Hugundua matatizo yanayotendeka; inafaa kuita |
| **Kisanduku cheupe (White-box)** | Hutumia vipimo vinavyotolewa na ndani ya mfumo, kama kumbukumbu au vishughulikiaji vya ndani | Hufichua matatizo yanayokaribia na hitilafu zilizofichwa na kujaribu tena; muhimu kwa kutatua matatizo |

Kitabu kinachanganya zote mbili. Uchunguzi wa kisanduku cheusi unakuambia kuwa malipo yanafeli; data ya kisanduku cheupe husaidia kugundua kwa nini.

### Dalili na visababishi

Sura inasema ufuatiliaji unapaswa kujibu maswali mawili: nini kimeharibika, na kwa nini. Inashauri kuzingatia tahadhari kwenye dalili, ambazo ni kile watumiaji wanachopitia, na kuita kwa visababishi tu pale vinapokuwa dhahiri na vinakaribia. Mashine moja kushindwa ni, kwa maneno yake katika sura ya tahadhari, haikubaliki kuarifiwa kuhusu hilo, kwa sababu ni kelele nyingi. Huu ndio moyo wa mbinu nzuri ya tahadhari: mwambie binadamu watumiaji wanapoumia au watakapoumia, si kila sehemu inapotikisika.

### Ishara nne za dhahabu

Sura inapendekeza ishara nne za kutazama kwa mfumo unaowakabili watumiaji:

- **Kuchelewa (Latency):** muda wa kuhudumia ombi. Fuatilia maombi yaliyoshindwa tofauti, kwa sababu "kosa la polepole ni baya zaidi kuliko kosa la haraka."
- **Trafiki (Traffic):** mahitaji kwenye mfumo.
- **Makosa (Errors):** maombi yaliyoshindwa, yawe ya wazi, ya kimya, au kwa sera.
- **Kujaa (Saturation):** huduma "imejaa" kiasi gani. Utendaji mara nyingi hushuka kabla ya matumizi ya 100%.

Hizi zinaoana kwa asili na viashiria vya kiwango cha huduma (tazama Mada 3.7 — Usimamizi wa Kiwango cha Huduma). Sura pia inaonya kuwa wastani huficha vitu vya nje vya polepole na inapendekeza kurekodi idadi ya maombi katika ndoo za kuchelewa ili kuona usambaaji.

### Nini hufanya tahadhari nzuri

Sura inatoa maswali ya kuuliza kabla ya kuandika tahadhari: je, inagundua hali ya dharura, inayoweza kutendewa, na inayoonekana na watumiaji; inaweza kupuuzwa kwa usalama; na je, jibu linaweza kuwekwa kiotomatiki? Miito inapaswa kuwa ya kutendewa, kuhitaji busara, na kuhusu matatizo mapya. Inasema tahadhari hazipaswi kamwe kuwaka kwa sababu tu "kitu kinaonekana ajabu kidogo." Miito ambayo majibu yake ni ya kukariri na ya kialgorithimu ni, kwa mtazamo wake, alama nyekundu inayoita otomatiki au ukarabati wa sababu ya msingi.

### Kuelekeza tahadhari

Sura ya tahadhari inaeleza kutuma tahadhari zinazostahili kuita kwa wafanyakazi walio zamu, zile zisizo kali sana kwa foleni za tiketi, na zilizobaki kwa dashibodi za hali. Inaeleza zana za kuelekeza, kuondoa nakala, na kuzuia tahadhari, na inabainisha kuwa tahadhari zinapaswa kusubiri muda wa chini kabla ya kuwaka kwa sababu zinaweza kutikisika. Inaonya kuwa "unaweza kutahadharisha tu kuhusu hitilafu ulizotarajia," ndiyo maana kuchanganya uchunguzi wa kisanduku cheusi na data ya kisanduku cheupe ni muhimu.

### Weka rahisi

Sura inatetea mifumo rahisi, ya haraka badala ya "uchawi" unaojifunza vizingiti au kugundua sababu, na inabainisha kuwa madaraja changamano ya utegemezi yamepata mafanikio machache. Inasema kuweka kanuni zinazokamata matukio halisi rahisi, kuondoa tahadhari zinazotumika mara chache na ishara zisizotumika, na kuweka gharama za matengenezo zikikua polepole kuliko ukubwa wa huduma. Visa inavyoeleza, kama timu iliyozidiwa na tahadhari iliyolegeza lengo lake kwa muda na kuzima tahadhari za barua pepe kupata muda wa marekebisho ya kudumu, vinaonyesha utayari wa kuondoa kelele.

### Dashibodi na mitazamo ya muda mrefu

Sura inachukulia dashibodi kama mitazamo ya muhtasari iliyojengwa mapema ya vipimo vikuu vya huduma na inasema dashibodi ni bora kuliko tahadhari za barua pepe, ambazo inaziita za thamani ndogo sana. Pia inapendekeza kupitia mzunguko wa miito kwa muda, kwa mfano katika ripoti za robo mwaka, ili kuwaweka viongozi na taarifa ya mzigo wa miito. Hii inageuza ubora wa tahadhari kuwa kitu ambacho mameneja wanaweza kukiona (tazama Mada 1.2 — Kanuni za Agile kuhusu mwendo endelevu).

### Mipaka ya vyanzo

Sura za SRE hazitoi vizingiti zaidi ya mfano mmoja uliofanyiwa kazi, hazijadili miongozo ya uendeshaji wala mipaka ya mzigo wa zamu, na hazielezi jinsi ya kupitia na kustaafisha tahadhari kwa muda, kwa hiyo hayo ni mambo ya zoezi lako mwenyewe. Zinatoka shirika moja kubwa lenye rasilimali nyingi za kihandisi. Timu ndogo zinaweza kutumia kanuni kwa zana rahisi zaidi.

## Mazoea bora

1. **Fuatilia watumiaji wanachopitia.** Ongeza angalau uchunguzi mmoja wa kisanduku cheusi unaofanya kitendo halisi cha mtumiaji, kama kuingia au kuweka oda, na utahadharishe unapofeli.
2. **Tazama ishara nne za dhahabu.** Kwa kila huduma, fuatilia kuchelewa, trafiki, makosa, na kujaa. Ongeza vipimo vingine tu kama vinajibu swali ulilouliza.
3. **Tahadharisha kwa dalili.** Ita watumiaji wanapoumia au hivi karibuni watakapoumia. Chukulia hali za ndani, kama mashine moja iliyoshindwa, kama taarifa ya kipaumbele cha chini isipokuwa ni dhahiri na inakaribia.
4. **Fanya kila mwito uwe wa kutendewa.** Kabla ya kuunda tahadhari, andika mjibu anapaswa kufanya nini. Kama hakuna cha kufanya, si mwito.
5. **Elekeza kwa uharaka.** Tuma tahadhari za dharura kwa walio zamu, zisizo za dharura sana kwa foleni ya tiketi, na taarifa kwa dashibodi. Usitume tahadhari za barua pepe kwa watu watakaozipuuza.
6. **Tumia usambaaji, si wastani tu.** Tazama asilimia za juu kwa kuchelewa, au ndoo, ili vitu vya nje vya polepole vionekane.
7. **Weka muda wa chini.** Hitaji hali idumu kwa muda mfupi kabla ya kutahadharisha, kuepuka kutikisika. Rekebisha muda kwa data halisi.
8. **Staafisha tahadhari zenye kelele.** Pitia ni tahadhari zipi huwaka mara nyingi na hazikusababisha hatua. Ziondoe au zirekebishe. Sura ya SRE inachukulia majibu ya kukariri kama ishara ya otomatiki au ukarabati.
9. **Jaribu ufuatiliaji wako.** Vunja kitu kimakusudi katika mazingira ya majaribio na uhakiki tahadhari sahihi inawaka. Jumuisha mfumo wa ufuatiliaji wenyewe katika ukaguzi, ili kushindwa kwake kuonekana.
10. **Pitia mzigo wa miito.** Hesabu miito kwa zamu, usumbufu wa nje ya saa, na tahadhari za uongo kila robo mwaka. Shiriki matokeo na mameneja na uyatumie katika upangaji.
11. **Weka ufuatiliaji katika ufafanuzi wa kukamilika.** Kwa kila kipengele kipya, uliza ni ishara gani zinaonyesha kama kinafanya kazi na ni tahadhari gani, kama ipo, inahitaji (tazama Mada 3.5 — Usimamizi wa Matoleo na Upelekaji).
12. **Weka rahisi.** Pendelea kanuni chache zinazoeleweka kuliko mpango changamano. Ondoa ishara zisizotumika na upitie kanuni baada ya matukio ya hitilafu.

## Maswali ya kujadili na timu yako

**Tulijuaje kuhusu matukio yetu matatu ya mwisho ya hitilafu?**

Orodhesha kila tukio na jinsi lilivyogunduliwa kwanza: tahadhari, mtumiaji, mwenzako. Kama mengi yalitoka kwa watumiaji, ufuatiliaji unakosa dalili zinazojalisha. Mwezeshaji anaweza kuuliza uchunguzi ungeonyesha nini. Chagua kitendo kimoja cha mtumiaji cha kufuatilia kwanza.

**Ni tahadhari zipi tunazipuuza, na kwa nini?**

Waulize wahandisi walio zamu tahadhari wanazozinyamazisha au kuziruka. Kila moja ni mgombea wa kurekebisha au kufuta. Uliza nini kinafanya watu waamini au wasiamini tahadhari. Jibu la wazi mara nyingi hufichua tahadhari zinazowaka kwa hali ambazo hakuna anayeweza kuzitendea. Kubaliana kustaafisha au kurekebisha tatu.

**Usiku mbaya zaidi tuliokuwa nao tukiwa zamu ulikuwa upi, na nini kingeufanya kuwa bora?**

Kusanya hadithi bila lawama. Tafuta mifumo: miito inayojirudia, tahadhari zisizo wazi, ukosefu wa miongozo ya uendeshaji, hakuna kupandisha. Kila mfumo ni uboreshaji. Uliza mabadiliko mawili gani yangesaidia zaidi. Lengo ni mzigo mwepesi na ishara iliyo wazi zaidi.

**Mfumo wetu wa ufuatiliaji ukishindwa, tungejuaje?**

Uliza nani anatazama mtazamaji. Timu nyingi hazina ukaguzi kwamba ufuatiliaji unafanya kazi. Jadili mpigo rahisi wa moyo au uchunguzi kutoka mfumo tofauti. Kubaliana ukaguzi mmoja wa kuongeza.

**Dashibodi zetu zinaonyesha nini, na nani anazitazama?**

Orodhesha dashibodi na uulize nani alitumia kila moja mwezi uliopita. Dashibodi zisizotumika ni msongamano; zenye manufaa husimulia hadithi kuhusu huduma. Uliza kila moja linajibu swali gani. Weka seti ndogo inayojibu maswali halisi.

**Tungejuaje kwamba toleo lilifanya mambo kuwa mabaya zaidi?**

Chagua toleo la hivi karibuni na uulize ishara gani ingeonyesha tatizo. Kama jibu ni "tungesikia kutoka kwa watumiaji," jadili ni ishara zipi za kutazama baada ya toleo na nani anawajibika. Swali hili linaunganisha ufuatiliaji na upelekaji. Andika orodha hakiki fupi ya baada ya toleo.

## Kwa vitendo: mfano wa agile ITIL

Mamlaka ya usafiri wa umma ya jiji inaendesha tovuti na programu ya kupanga safari inayotumiwa na watu 400,000 kwa siku. Timu ya jukwaa ya watu kumi inamiliki huduma ikiwa na ratiba ya zamu ya watu wanne. Timu ina mamia ya tahadhari: CPU kwenye kila seva, nafasi ya diski, urefu wa foleni, na hesabu za makosa. Wahandisi walio zamu hupokea miito 40 kwa wiki ya kawaida, mingi nje ya saa za kazi, na matukio mawili ya hitilafu katika robo mwaka iliyopita yaliripotiwa kwanza na watumiaji kwenye mitandao ya kijamii.

Kiongozi wa timu na mhandisi wanapitia miezi mitatu ya miito. Wanagundua kuwa robo tatu ilikuwa kwa hali ambazo hazikuhitaji hatua au zilijitatua zenyewe. Wanakubaliana kufuata mbinu rahisi kutoka kitabu cha SRE: tahadharisha kuhusu watumiaji wanachopitia. Wanaongeza uchunguzi unaopanga safari ya kawaida kila dakika na kupima mafanikio na kasi, na wanabakiza seti ndogo ya tahadhari kuhusu kujaa kwa hifadhidata na foleni. Wanahamisha zilizobaki kwenye dashibodi na tiketi ya kila siku. Kila mwito uliobaki unapata kipengele kifupi cha mwongozo wa uendeshaji kinachosema cha kukagua.

Baada ya mwezi, miito inashuka hadi takriban mitano kwa wiki, na matukio mawili ya hitilafu yaliyofuata yote yaligunduliwa na uchunguzi kabla watumiaji hawajalalamika. Matatizo fulani yanabaki. Uchunguzi unafunika aina moja tu ya safari, na hitilafu iliyoathiri safari za baiskeli haikugunduliwa kwa siku moja. Mhandisi mmoja pia anaripoti kuwa uamuzi wa "kuhamisha kwenye dashibodi" ulificha tatizo la polepole la diski ambalo baadaye lilisababisha hitilafu. Timu inaongeza uchunguzi wa aina nyingine za safari, inaongeza mapitio ya kila siku ya dashibodi kwenye ratiba ya zamu, na kukubaliana kupitia mzigo wa miito kila robo mwaka.

## Mitazamo minne

### Timu za bidhaa na utoaji

Timu za utoaji zinajua programu inapaswa kufanya nini na mahali inapowezekana kufeli. Jenga ishara ndani ya msimbo: kumbukumbu zenye manufaa, vipimo, na ukaguzi wa afya. Bainisha uchunguzi kwa vitendo muhimu vya watumiaji, na uchukulie ufuatiliaji kama sehemu ya kukamilika. Shiriki katika mapitio ya tahadhari ili miito iakisi matatizo halisi.

### Timu za huduma na uendeshaji

Timu za uendeshaji hubeba pager na dashibodi. Weka tahadhari chache na za kutendewa, elekeza kwa uharaka, na ufuatilie mzigo wa miito. Rudisha tahadhari zenye kelele kwa timu zinazozimiliki, kwa ushahidi, na ushiriki unachojifunza kutoka matukio ya hitilafu kuhusu cha kutazama.

### Uongozi na utawala

Viongozi wanapaswa kuomba mzigo wa miito na data ya kugundua matukio, si tahadhari zaidi. Unga mkono muda wa kustaafisha kelele na kuongeza ishara zenye manufaa. Chukulia idadi inayoongezeka ya miito ya nje ya saa kama hatari kwa huduma na kwa watu.

### Wateja na watumiaji

Wateja na watumiaji hunufaika matatizo yanapopatikana kabla hawajayatambua. Ripoti matatizo kwa undani, kama ulichojaribu na lini, kwa kuwa hilo husaidia kurekebisha ufuatiliaji. Uliza watoa huduma wanagunduaje hitilafu na kwa kasi gani, na kama wanachapisha taarifa za hali.

## Sababu za kawaida za kushindwa

- **Kutahadharisha kuhusu kila kitu.** Pager inalia mfululizo na uaminifu unapotea. Badala yake, ita kwa dalili na utume zilizobaki kwa tiketi au dashibodi.
- **Kufuatilia mifumo, si watumiaji.** Mashine zote ni kijani huku watumiaji hawawezi kuingia. Badala yake, ongeza uchunguzi wa kisanduku cheusi wa vitendo halisi vya watumiaji.
- **Hakuna hatua iliyoambatishwa.** Miito inafika bila cha kufanya. Badala yake, hitaji kila mwito uwe na jibu lililoelezwa, au uondoe.
- **Wastani tu.** Kundi la watumiaji linateseka huku wastani unaonekana sawa. Badala yake, tazama asilimia za juu au usambaaji.
- **Kanuni changamano, za werevu.** Vizingiti vilivyojifunza na miti ya utegemezi huwachanganya wajibu. Badala yake, pendelea kanuni rahisi, zinazoeleweka.
- **Ufuatiliaji usiotazamwa.** Mfumo wa ufuatiliaji unashindwa kimya. Badala yake, uukague kwa mapigo ya moyo na majaribio.
- **Majibu ya kukariri.** Watu hurudia marekebisho yaleyale baada ya kila mwito. Badala yake, weka jibu kiotomatiki au urekebishe sababu.
- **Kupuuza mzigo wa miito.** Miito ya usiku inachukuliwa kama kawaida. Badala yake, ipime na uipitie, na uchukulie mzigo mkubwa kama hatari.

## Modeli ya ukomavu

| Nyanja | Kuanza | Kukua | Kusanifisha | Kusimamia | Kuratibu |
|---|---|---|---|---|---|
| Uonekanaji wa uzoefu wa mtumiaji | Watumiaji huripoti matatizo mengi | Baadhi ya huduma zina uchunguzi au vipimo vya vitendo vya watumiaji | Vitendo muhimu vya watumiaji vinachunguzwa na ishara za dhahabu zinafuatiliwa kwa kila huduma | Muda wa kugundua na ufunikaji hupimwa na mapengo hurekebishwa | Ufuatiliaji unashirikiwa katika timu, wasambazaji, na wateja |
| Ubora wa tahadhari | Tahadhari nyingi, hatua kidogo | Baadhi ya timu hupunguza tahadhari | Miito inatokana na dalili, inatendeka, na inaelekezwa kwa uharaka | Usahihi wa tahadhari na kelele hupimwa na kupitiwa | Usanifu wa tahadhari unaboreshwa katika timu kutokana na ushahidi wa pamoja |
| Mwitikio na otomatiki | Majibu ni ya papo hapo | Baadhi ya miongozo ya uendeshaji ipo | Miito inaunganisha na miongozo ya uendeshaji, na majibu ya kukariri yanawekwa kiotomatiki | Muda wa kujibu na matumizi ya otomatiki hupimwa | Majibu yanaratibiwa katika timu na wasambazaji |
| Watu na mzigo | Mzigo wa miito haufuatiliwi | Baadhi ya timu huhesabu miito | Mzigo wa miito hupitiwa kila robo mwaka | Mzigo husawazishwa na kupunguzwa kutokana na data | Mzigo na kujifunza vinashirikiwa katika timu na kuakisiwa katika upangaji |

## Orodha hakiki

- [ ] Kila huduma muhimu ina angalau uchunguzi mmoja wa kitendo halisi cha mtumiaji.
- [ ] Tunafuatilia kuchelewa, trafiki, makosa, na kujaa kwa kila huduma.
- [ ] Kila mwito una jibu lililoandikwa na unahusu hali inayoonekana na watumiaji au inayokaribia.
- [ ] Tahadhari zinaelekezwa kwa uharaka kwa waliopo zamu, tiketi, au dashibodi.
- [ ] Asilimia za juu au usambaaji vinaonekana kwa kuchelewa.
- [ ] Tunapitia ni tahadhari zipi huwaka mara nyingi na kustaafisha zile zisizoleta hatua.
- [ ] Mfumo wa ufuatiliaji wenyewe unakaguliwa.
- [ ] Mzigo wa miito (miito kwa zamu, usumbufu wa nje ya saa) hupitiwa kila robo mwaka.
- [ ] Vipengele vipya vinajumuisha ufuatiliaji katika ufafanuzi wa kukamilika.
- [ ] Baada ya kila toleo, mtu anakagua ishara dhidi ya orodha fupi.

## Maelekezo ya AI

**Madhumuni: kupitia orodha ya tahadhari kwa kelele na uwezo wa kutendewa.**

```text
Here is a list of our alerts with how often each fired in the last [period], and what happened after (acted on, ignored, resolved by itself): [paste as a table; use real data].

Using only my data, group the alerts into: fired often with no action; fired and led to action; rarely fired. For each of the first group, suggest a question to ask its owner (for example whether it can be removed, routed to a ticket, or turned into a symptom-based alert). Do not invent frequencies or outcomes. Tell me what additional data would help, and list what you are unsure of.
```

**Madhumuni: kufafanua uchunguzi kwa safari ya mtumiaji.**

```text
Help me define a black-box probe for this user action in [service]: [describe, for example "a user searches for a journey and receives results"].

What counts as success: [describe].
What is too slow: [say "unknown" or describe in words, not numbers].
What systems the action touches: [list].

Describe the steps the probe should perform, what it should record (success, time taken, and where it failed), what alert condition to propose (leave thresholds as [to be agreed]), and what a responder would check first. Mark assumptions. Do not invent system details. Ask clarifying questions first, and list what you are unsure of.
```

**Madhumuni: kuandika sehemu ya jibu kwa tahadhari.**

```text
For this alert, write a short response entry for on-call staff.

Alert name and condition: [paste].
What it means for users: [describe].
What I know to check first: [list].
Who to escalate to: [role, or write "unknown"].

Write: what the alert means, the first three checks, how to tell whether users are affected, when to escalate, and a note on whether the response could be automated. Use only my information; mark anything you added as [CHECK]. Ask clarifying questions first, and list what you are unsure of.
```

**Madhumuni: kuandaa mapitio ya robo mwaka ya mzigo wa miito.**

```text
Help me prepare a quarterly pager load review for [team].

Data for the quarter (pages by week, out-of-hours pages, pages with no action, incidents detected by monitoring versus by users): [paste real figures].
Context: [describe changes in the period].

Summarize the data in plain language, using only my figures. Highlight trends and outliers as questions, not conclusions. Suggest three questions for the team and one for management. Do not invent causes. If the data is incomplete, say what to collect. List what you are unsure of.
```

## Ujuzi wa AI

- [runbook](../../../../skills/runbook/SKILL.md): tumia kuandika jibu linaloambatana na kila mwito.
- [on-call-rotation](../../../../skills/on-call-rotation/SKILL.md): tumia kubuni ratiba ya haki ya zamu na kupanga jinsi mzigo wa miito unavyoshirikiwa na kupitiwa.
- [software-engineering-metrics](../../../../skills/software-engineering-metrics/SKILL.md): tumia kuchagua na kutafsiri vipimo vya utendaji wa huduma na utoaji.
- [performance-testing](../../../../skills/performance-testing/SKILL.md): tumia kukagua kuchelewa na kujaa chini ya mzigo kabla matatizo hayajawafikia watumiaji.
- [chaos-testing](../../../../skills/chaos-testing/SKILL.md): tumia kujaribu kwamba hitilafu zinagunduliwa na kushughulikiwa kwa kuzisababisha kimakusudi katika mazingira salama.

## Vyanzo muhimu

- **Monitoring Distributed Systems** (*Site Reliability Engineering*, Google, sre.google): fasili, ishara nne za dhahabu, dalili dhidi ya visababishi, na ushauri kuhusu tahadhari rahisi.
- **Practical Alerting from Time-Series Data** (*Site Reliability Engineering*, Google, sre.google): jinsi kanuni za tahadhari, uelekezaji, na kutikisika zinavyofanya kazi kivitendo.
- **Service Level Objectives** (*Site Reliability Engineering*, Google, sre.google): kiungo kati ya viashiria, malengo, na tahadhari.
- **IT service management** (Wikipedia): nafasi ya ufuatiliaji na matukio ya hitilafu katika ITSM.

## Marejeo

1. Monitoring Distributed Systems — Google SRE book, sre.google — https://sre.google/sre-book/monitoring-distributed-systems/
2. Practical Alerting from Time-Series Data — Google SRE book, sre.google — https://sre.google/sre-book/practical-alerting/
3. Service Level Objectives — Google SRE book, sre.google — https://sre.google/sre-book/service-level-objectives/
4. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
5. Network monitoring — Wikipedia — https://en.wikipedia.org/wiki/Network_monitoring
6. Observability (software) — Wikipedia — https://en.wikipedia.org/wiki/Observability_(software)
7. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
8. Alarm fatigue — Wikipedia — https://en.wikipedia.org/wiki/Alarm_fatigue
9. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
