# Rheoli Parhad Gwasanaeth

**Mae rheoli parhad gwasanaeth yn paratoi sefydliad i gadw ei wasanaethau pwysicaf i redeg, neu eu hadfer yn gyflym, ar ôl tarfu difrifol. Profir ei werth gan ymarferion yn unig, nid gan y cynllun ar y silff.**

## Pam mae hyn yn bwysig

Mae'r rhan fwyaf o ddigwyddiadau yn fach ac yn lleol. Nid yw ychydig: tân mewn canolfan ddata, rhanbarth cwmwl yn methu, ymosodiad ransomware, cyflenwr yn cwympo, pandemig, llifogydd. Mae'r digwyddiadau hyn yn bygwth gallu'r sefydliad i gyflawni o gwbl, ac mae eu trin yn gofyn am gynllunio nad yw rheoli digwyddiadau arferol yn ei gwmpasu. Mae gan dîm sydd wedi meddwl ymlaen llaw beth sydd bwysicaf a sut y bydd yn parhau siawns lawer gwell o ddod drwyddo.

Mae timau ystwyth yn cyfarfod â'r pwnc hwn â her benodol. Mae eu systemau'n newid yn wythnosol, felly mae cynllun parhad a ysgrifennir unwaith ac a ffeilir yn hen o fewn misoedd. Efallai nad yw camau adfer a oedd yn dibynnu ar weinydd neu sgript penodol yn ddilys mwyach. Yr ateb ystwyth yw nid rhoi'r gorau i gynllunio ond gwneud parhad yn rhan fyw o sut mae gwasanaethau'n cael eu hadeiladu a'u rhedeg: adfer wedi'i ddylunio i mewn, ei brofi'n aml, a'i gadw mewn rheoli fersiynau gyda'r cod.

Mae'r [erthygl Wikipedia ar gynllunio parhad busnes](https://en.wikipedia.org/wiki/Business_continuity_planning) (yn Saesneg) yn diffinio parhad busnes fel gallu sefydliad i barhau i gyflawni cynhyrchion neu wasanaethau ar lefelau derbyniol ar ôl tarfu, ac yn trin cynllunio parhad fel is-set o reoli risg. Dim ond tudalen ddatrys amwysedd yw tudalen "Disaster recovery" Wikipedia Saesneg, gyda hysbysiad bod erthygl lawn ei hangen, felly mae'r pwnc hwn yn defnyddio'r erthygl parhad busnes ar gyfer diffiniadau ac yn ychwanegu arweiniad ymarferol o bynciau eraill y canllaw, gan nodi lle mae'n arfer ac nid deunydd ffynhonnell a adroddir.

## Cysyniadau craidd

### Parhad, adfer a gwydnwch

Defnyddir termau'n llac, felly defnyddiwch hwy'n ofalus:

| Term | Ystyr, fel y'i defnyddir yn eang | Ffocws |
|---|---|---|
| **Parhad busnes (Business continuity)** | Y gallu i barhau i gyflawni cynhyrchion neu wasanaethau ar lefelau derbyniol ar ôl tarfu | Cadw'r sefydliad i fynd |
| **Cynllunio parhad busnes** | Creu systemau atal ac adfer ar gyfer bygythiadau i'r sefydliad | Y cynlluniau a'r trefniadau |
| **Adfer ar ôl trychineb TG (IT disaster recovery)** | Cynnal neu ailsefydlu seilwaith technoleg gwybodaeth hanfodol (y disgrifiad a roddir ar dudalen ddatrys amwysedd Wikipedia) | Y dechnoleg |
| **Parhad gwasanaeth (ITSM)** | Sicrhau y gellir adfer gwasanaethau TG i lefelau y cytunwyd arnynt ar ôl tarfu | Gwasanaethau TG o fewn y cynllun ehangach |

Mae'r erthygl Wikipedia yn dweud bod adfer ar ôl trychineb yn gorgyffwrdd â chynllunio parhad busnes, yn enwedig yn y cyfnod datrysiad, a bod parhad yn ganlyniad bwriadedig cyflawni'r ddau. Rheoli parhad gwasanaeth yw'r olwg gwasanaeth TG ar yr un nod.

### Dadansoddi effaith busnes

Mae **dadansoddi effaith busnes (business impact analysis, BIA)**, yn ôl yr erthygl, yn ddull o ganfod a gwerthuso sut mae tarfu'n effeithio ar weithrediadau a gosod blaenoriaethau adfer. Mae ei amcanion yn cynnwys canfod gweithgareddau hanfodol a dibyniaethau, asesu effeithiau ariannol, gweithredol, enw da a chyfreithiol, pennu amcanion adfer, a hysbysu asesu risg. Ar gyfer gwasanaethau TG, mae'r BIA yn gofyn pa wasanaethau na all y sefydliad wneud hebddynt, ym mha drefn y mae'n rhaid iddynt ddod yn ôl, ac ar beth mae pob un yn dibynnu (gweler Pwnc 4.4 — Rheoli Cyfluniad am ddibyniaethau).

### Amcanion adfer

Mae'r erthygl yn diffinio dau derm allweddol:

- **Amcan amser adfer (recovery time objective, RTO):** yr amser derbyniol i adfer swyddogaeth.
- **Amcan pwynt adfer (recovery point objective, RPO):** y swm derbyniol o hwyrni data, mewn geiriau eraill faint o golled data sy'n oddefadwy.

Mae hefyd yn rhestru'r cyfnod uchaf goddefadwy o darfu. Nid yw'r erthygl yn rhoi dull ar gyfer dewis y gwerthoedd hyn ar gyfer sefydliad penodol, felly rhaid iddynt ddod o'r busnes: gofynnwch beth mae awr, diwrnod ac wythnos o doriad yn ei gostio, a pha ddata y gall y busnes fforddio ei golli. Mae eu gosod yn benderfyniad busnes gyda phris, wrth i gost bodloni amcan tynnach godi (gweler Pwnc 3.11 — Argaeledd, Capasiti a Pherfformiad).

### Cynlluniau

Mae cynllun parhad neu adfer yn disgrifio pwy sy'n gwneud beth, ym mha drefn, i adfer gwasanaethau hanfodol ar ôl tarfu. Dylai gwmpasu: sut a chan bwy y caiff y cynllun ei alw i rym, sut y hysbysir ac y casglir pobl, y dilyniant adfer ar gyfer gwasanaethau, ble y bydd adfer yn digwydd, o ble mae data'n dod, sut i gyfathrebu â chwsmeriaid a staff, a sut i ddychwelyd i normal. Dylai cynlluniau ar gyfer gwasanaethau TG gysylltu â llawlyfrau gweithredu ar gyfer y systemau unigol (gweler Pwnc 3.9 — Rheoli Gwybodaeth).

### Profi ac ymarferion

Mae'r erthygl yn dyfynnu llyfr Sefydliad Safonau Prydain yn 2008 sy'n disgrifio tri math o ymarfer: ymarfer **bwrdd (tabletop)** lle mae grŵp bach yn trafod un agwedd ar y cynllun, ymarfer **canolig** lle mae sawl tîm yn gweithio ar agweddau lluosog gyda phethau annisgwyl wedi'u sgriptio, ac ymarfer **cymhleth** sy'n ychwanegu actifadu dirybudd, gwagio gwirioneddol, a defnyddio safle adfer ar ôl trychineb. Mae'n disgrifio cynnal a chadw ar gylch blynyddol neu ddwywaith y flwyddyn, gan gynnwys profi atebion technegol a gweithdrefnau adfer, gyda chanfyddiadau'n dychwelyd i'r cyfnod dadansoddi. Ymarferion yw lle mae cynlluniau'n darganfod eu bod yn anghywir.

### Haenau adfer

Mae'r erthygl yn crybwyll saith haen adfer ar ôl trychineb SHARE (1992), a ddiweddarwyd yn ddiweddarach gan IBM i wyth haen (0 i 7). Nid yw'r ffynonellau a ddarllenwyd yma yn manylu ar yr haenau. Fel arfer cyffredinol, mae sefydliadau'n dosbarthu gwasanaethau i haenau yn ôl pa mor gyflym y mae'n rhaid eu hadfer, ac yn paru'r dull adfer a'r gost â'r haen.

### Safonau

Mae'r erthygl yn dyfynnu ISO 22301:2019, *Security and resilience, Business continuity management systems, Requirements*, a ddisodlodd argraffiad 2012 ac sy'n mynnu bod sefydliadau'n diffinio amcanion parhad, lefelau gwasanaeth derbyniol lleiaf, a chyfnod uchaf goddefadwy o darfu. Mae ISO 22313:2020 yn rhoi arweiniad ar ei ddefnyddio. Safonau ar gyfer system reoli y gall sefydliad ei mabwysiadu yw'r rhain; nid ydynt yn disodli cynllunio ymarferol. Gwiriwch destun y safon yn uniongyrchol os yw eich cwsmeriaid neu reoleiddwyr yn mynnu cydymffurfiaeth.

### Parhad ystwyth

Mae arferion ystwyth a DevOps yn helpu parhad:

- Mae **seilwaith a chyfluniad fel cod** yn caniatáu ailadeiladu amgylcheddau o reoli fersiynau, sy'n gwneud adfer yn gyflymach ac yn brofadwy.
- Gall **piblinellau awtomataidd** ailddefnyddio gwasanaethau i safle adfer.
- Mae **rhyddhadau mynych** yn cadw'r tîm wedi'i ymarfer mewn defnyddio.
- Gellir trin **ymarferion rheolaidd** fel ffurf ar brofi yn yr ôl-groniad.

Maent hefyd yn creu risgiau: dibyniaeth drom ar un cyfrif cwmwl, system CI sydd ei hun yn bwynt methiant sengl, a chyfrinachau a gedwir lle na ellir eu cyrraedd mewn trychineb. Cynlluniwch ar gyfer yr offer y mae adfer ei hun yn dibynnu arnynt.

### Ffactorau dynol

Mae'r erthygl yn crybwyll yr achosion SARS 2002–2003 fel enghraifft o dimau wedi'u rhannu a'u cylchdroi, sy'n atgof bod parhad yn cynnwys pobl: sgiliau allweddol wedi'u lledaenu ar draws unigolion, gweithio o bell, cyfathrebu pan fo sianeli arferol yn methu, a gofal am staff dan straen.

### Terfynau'r ffynonellau

Nid yw'r erthygl yn rhoi dull ar gyfer gosod amcanion, dim arweiniad ar ba mor aml i brofi y tu hwnt i'r cylch cynnal a chadw blynyddol neu ddwywaith y flwyddyn, a dim argymhellion offer. Erthygl fusnes gyffredinol ydyw, nid un TG. Am fanylion adfer technegol, defnyddiwch ddogfennaeth eich platfformau eich hun a sgiliau'r canllaw ar gynllunio a phrofi adfer ar ôl trychineb.

## Arferion gorau

1. **Dechreuwch â dadansoddi effaith busnes.** Nodwch y gwasanaethau na all y sefydliad wneud hebddynt, cost eu colli dros amser, ac ar beth maent yn dibynnu. Gwnewch hynny gyda pherchnogion busnes, nid ar eu cyfer.
2. **Gosodwch amcanion adfer gyda'r busnes.** Ar gyfer pob gwasanaeth hanfodol, cytunwch ar amser adfer a phwynt adfer, a chofnodwch gost eu bodloni. Ailedrychwch pan fydd y busnes neu'r dechnoleg yn newid.
3. **Rhannwch eich gwasanaethau yn haenau.** Grwpiwch wasanaethau yn ôl pa mor gyflym y mae'n rhaid iddynt ddychwelyd, a chymhwyswch y dull adfer sy'n cyfateb i bob haen. Peidiwch â chymhwyso'r dull drutaf at bopeth.
4. **Ysgrifennwch gynllun byr y gall pobl ei ddefnyddio.** Nodwch sut i alw'r cynllun i rym, pwy sy'n penderfynu, pwy sy'n gwneud beth, sut i gyfathrebu, a threfn adfer. Cadwch ef i ychydig dudalennau gyda dolenni i lawlyfrau gweithredu.
5. **Cadwch gynlluniau gyda'r cod a'r amgylchedd.** Storiwch sgriptiau adfer, cyfluniad a llawlyfrau gweithredu mewn rheoli fersiynau a'u hadolygu pan fydd gwasanaethau'n newid. Bydd cynllun na chaiff ei ddiweddaru gyda'r system yn methu.
6. **Cynlluniwch ar gyfer yr offer y mae adfer yn dibynnu arnynt.** Gwnewch yn siŵr bod mynediad at y biblinell, y cyfrinachau, y ddogfennaeth a'r offer cyfathrebu yn goroesi colli'r systemau y maent yn eu cefnogi.
7. **Ymarferwch yn rheolaidd.** Dechreuwch gyda thrafodaethau bwrdd, symudwch at brofion technegol o adferiadau a methiannau drosodd, a rhedwch ymarferion mwy ar gyfer y gwasanaethau mwyaf hanfodol. Trefnwch hwy fel gwaith arall.
8. **Profwch adferiadau, nid copïau wrth gefn yn unig.** Profir copi wrth gefn trwy adfer ohono. Profwch fod data'n dod yn ôl, o fewn y pwynt adfer, a bod y gwasanaeth yn gweithio gydag ef (gweler y sgìl profi adfer ar ôl trychineb isod).
9. **Trinwch ganfyddiadau fel eitemau ôl-groniad.** Mae pob ymarfer yn cynhyrchu bylchau. Cofnodwch hwy gyda pherchnogion a dyddiadau, a gwiriwch eu bod wedi'u gwneud cyn yr ymarfer nesaf.
10. **Cynlluniwch gyfathrebu.** Penderfynwch pwy sy'n dweud wrth gwsmeriaid, staff, rheoleiddwyr a'r cyhoedd beth, a pharatowch dempledi. Cynhwyswch ffyrdd y tu allan i'r band o gyrraedd pobl os yw sianeli arferol i lawr (gweler y sgìl cyfathrebu argyfwng isod).
11. **Cynhwyswch gyflenwyr.** Gofynnwch i gyflenwyr hanfodol am eu trefniadau parhad eu hunain a'u cynnwys mewn ymarferion lle gallwch (gweler Pwnc 3.14 — Rheoli Cyflenwyr).
12. **Adolygwch yn flynyddol, ac ar ôl unrhyw ddigwyddiad difrifol neu newid mawr.** Diweddarwch y dadansoddiad, yr amcanion a'r cynlluniau pan fydd y busnes neu'r dechnoleg yn newid, nid ar galendr yn unig.

## Cwestiynau i'w trafod gyda'ch tîm

**Pa un o'n gwasanaethau sy'n rhaid dod yn ôl yn gyntaf, a sut ydym ni'n gwybod?**

Gofynnwch i bob person raddio'r gwasanaethau yn nhrefn blaenoriaeth adfer. Cymharwch. Mae anghytundeb yn addysgiadol: mae'n dangos nad yw'r drefn erioed wedi'i chytuno â'r busnes. Gall yr hwylusydd ofyn beth fyddai'n ei gostio i'r sefydliad i bob un fod i lawr am awr, diwrnod ac wythnos. Ewch â'r cwestiwn at berchnogion busnes a chytunwch ar restr.

**Faint o ddata allem ni ei golli, ac a oes unrhyw un wedi cytuno i hynny?**

Gofynnwch pryd y cymerwyd copi wrth gefn olaf y data allweddol a pha mor aml. Cymharwch â'r hyn y byddai'r busnes yn ei oddef. Mae llawer o dimau'n canfod nad yw'r ateb yr hyn a dybiwyd ganddynt. Trafodwch beth fyddai pwynt adfer tynnach yn ei gostio. Cofnodwch y penderfyniad a phwy a'i gwnaeth.

**Pryd wnaethon ni adfer o gopi wrth gefn ddiwethaf, a beth ddigwyddodd?**

Gofynnwch am ddyddiad go iawn a chanlyniad go iawn. Os yw'r ateb yn "byth", dyna'r canfyddiad pwysicaf. Os gwnaed, gofynnwch beth aeth o'i le a beth a drwsiwyd. Cynlluniwch brawf adfer ar gyfer gwasanaeth hanfodol yn y mis nesaf.

**Beth sydd angen i ni ei adfer sy'n dibynnu ar y peth sydd wedi methu?**

Cerddwch drwy senario fel colli cyfrif cwmwl neu ganolfan ddata. Gofynnwch ble mae'r llawlyfrau gweithredu, cyfrinachau a'r biblinell yn byw. Mae dibyniaethau ar y system a fethodd yn gyffredin, fel llawlyfr gweithredu a storiwyd ar weinydd sydd i lawr. Rhestrwch hwy a chynlluniwch i symud neu gopïo pob un.

**Pwy sydd â'r awdurdod i ddatgan trychineb a dechrau'r cynllun?**

Gofynnwch i bobl pwy fyddai'n penderfynu, ac a ydynt yn gwybod. Mae oedi wrth alw cynllun i rym yn costio amser. Trafodwch reol glir a dirprwy. Gwiriwch sut y cyrhaeddir y person os yw sianeli arferol i lawr.

**Beth fyddem yn ei wneud pe na bai'r bobl sy'n gwybod fwyaf ar gael?**

Dychmygwch staff allweddol na ellir eu cyrraedd. Gofynnwch pwy arall allai gyflawni'r adfer a beth fyddai ei angen arnynt. Mae'r cwestiwn hwn yn cysylltu parhad â rheoli gwybodaeth. Cynlluniwch un ffordd o ledaenu gwybodaeth hanfodol.

## Yn ymarferol: enghraifft o ITIL ystwyth

Mae cofrestrfa tir llywodraeth daleithiol yn rhedeg gwasanaeth ar-lein lle mae cyfreithwyr ac arolygwyr yn ffeilio trafodion eiddo. Mae tîm o ddeuddeg yn ei adeiladu ac yn ei redeg, gan ddefnyddio un rhanbarth darparwr cwmwl. Mae adolygiad parhad busnes yn canfod bod y gweinidogaeth yn dosbarthu'r gwasanaeth yn hanfodol, gyda disgwyliad y gellir ei adfer o fewn pedair awr, ac nad oes neb erioed wedi profi a yw hyn yn bosibl.

Mae'r tîm yn dechrau gydag ymarfer bwrdd. Y senario: mae'r rhanbarth cwmwl ddim ar gael am ddiwrnod. Maent yn darganfod bod y llawlyfrau gweithredu'n cael eu storio mewn wici a gynhelir yn yr un rhanbarth, mai dim ond rhan o'r amgylchedd y mae'r cod seilwaith yn ei gwmpasu, a bod copïau wrth gefn y gronfa ddata yn cael eu copïo i'r un rhanbarth. Mae'n troi allan i fod yn ddisgwyliad pedair awr y gweinidogaeth wedi'i ysgrifennu gan reolwr flynyddoedd yn ôl ac na chafodd ei gostio erioed. Mae'r tîm a pherchennog busnes y gweinidogaeth yn cyfarfod. Mae'r perchennog yn egluro beth fyddai toriad o ddiwrnod yn ei olygu i derfynau amser ffeilio, ac yn cytuno bod angen pedair awr ar ddiwrnodau ffeilio diwedd mis ond bod wyth awr yn dderbyniol ar adegau eraill.

Mae'r tîm yn copïo llawlyfrau gweithredu a chopïau wrth gefn i ail ranbarth, yn cwblhau'r cod seilwaith, ac yn ailadeiladu'r amgylchedd o god mewn rhanbarth prawf mewn ymarfer diwrnod cyfan. Mae'r ymgais gyntaf yn cymryd un awr ar ddeg, yn bennaf oherwydd camau llaw a chyfrinach goll. Ar ôl atgyweiriadau, mae'r ail ymgais yn cymryd pump. Erys rhai problemau. Mae'r targed diwedd mis o bedair awr yn dal allan o gyrraedd, nid oes gan y darparwr hunaniaeth y mae staff yn ei ddefnyddio i fewngofnodi drefniant adfer ei hun, ac mae'r tîm yn sylweddoli ei fod yn dibynnu ar gyflenwr nad yw erioed wedi gweld ei gynllun parhad. Mae'r tîm yn rhoi'r darparwr hunaniaeth a'r cwestiwn cyflenwr ar yr ôl-groniad, ac mae'r weinidogaeth yn cytuno i amser adfer hirach ar gyfer cyfnodau nad ydynt yn rhai brig tra bo'r gwaith yn parhau.

## Pedwar persbectif

### Timau cynnyrch a chyflawni

Mae timau cyflawni'n gwneud adfer yn bosibl neu'n amhosibl trwy ddylunio. Adeiladwch wasanaethau fel y gellir eu hailadeiladu o god, cadwch ddata wedi'i ailadrodd, ac ysgrifennwch gamau adfer fel rhan o orffenedig. Cymerwch ran mewn ymarferion a thrwsiwch y bylchau y maent yn eu canfod.

### Timau gwasanaeth a gweithrediadau

Mae timau gweithrediadau'n dal y cynlluniau ac yn rhedeg yr ymarferion. Cadwch gynlluniau'n fyr ac wedi'u clymu wrth lawlyfrau gweithredu, profwch adferiadau a methiannau drosodd, a gwnewch ddibyniaethau adfer yn weladwy. Olrheiniwch ganfyddiadau pob ymarfer nes eu cau.

### Arweinyddiaeth a llywodraethu

Mae arweinwyr yn gosod yr amcanion ac yn talu amdanynt. Gofynnwch am y dadansoddiad effaith busnes a'r amcanion adfer, deallwch beth maent yn ei gostio, a mynychwch ymarfer. Derbyniwch y bydd rhai gwasanaethau'n cymryd mwy o amser i'w hadfer, a gwnewch y penderfyniad yn fwriadol.

### Cwsmeriaid a defnyddwyr

Mae cwsmeriaid a defnyddwyr yn dibynnu ar y gwasanaeth yn parhau neu'n dychwelyd. Dywedwch wrth y darparwr pa mor hir y gallwch fod hebddo a pha ddata na allwch ei golli. Gofynnwch am eu trefniadau parhad a beth ddylech ei wneud mewn trychineb, fel ffordd arall o gyflwyno gwaith brys.

## Dulliau methu cyffredin

- **Cynllun nad oes neb wedi'i brofi.** Y prawf cyntaf yw'r trychineb. Yn lle hynny, dechreuwch gydag ymarferion bwrdd a symud ymlaen i adferiadau technegol.
- **Amcanion nad oes neb wedi cytuno arnynt.** Ysgrifennwyd yr amser adfer gan rywun a adawodd. Yn lle hynny, gosodwch amser a phwynt adfer gyda pherchnogion busnes a chofnodwch y gost.
- **Copïau wrth gefn byth wedi'u hadfer.** Mae copïau wrth gefn yn bodoli, ond mae adfer yn methu. Yn lle hynny, profwch adferiadau ar amserlen a mesurwch yr amser.
- **Mae adfer yn dibynnu ar yr hyn a fethodd.** Mae llawlyfrau gweithredu, cyfrinachau ac offer yn eistedd yn y system a fethodd. Yn lle hynny, mapiwch ddibyniaethau adfer a chadwch gopïau mewn mannau eraill.
- **Un haen ar gyfer popeth.** Mae pob gwasanaeth yn cael y driniaeth ddrutaf, neu ddim un. Yn lle hynny, rhannwch wasanaethau yn haenau yn ôl angen.
- **Cynlluniau wedi dyddio.** Mae systemau'n newid ac nid yw cynlluniau. Yn lle hynny, cadwch gynlluniau gyda'r cod a'u hadolygu pan fydd gwasanaethau'n newid.
- **Anwybyddu pobl.** Mae cynlluniau'n tybio bod y staff arferol ar gael. Yn lle hynny, cynlluniwch ar gyfer absenoldeb ac ar gyfer cyfathrebu pan fo sianeli i lawr.
- **Anwybyddu cyflenwyr.** Nid oes gan ddibyniaethau hanfodol drefniadau parhad. Yn lle hynny, gofynnwch i gyflenwyr a'u cynnwys mewn ymarferion.

## Model aeddfedrwydd

| Dimensiwn | Cychwyn | Datblygu | Safoni | Rheoli | Cydlynu |
|---|---|---|---|---|---|
| Dadansoddi effaith ac amcanion | Tybir gwasanaethau hanfodol | Mae gan rai gwasanaethau nodau adfer bras | Mae gan wasanaethau hanfodol amser a phwynt adfer y cytunwyd arnynt, gyda chostau | Adolygir amcanion yn erbyn canlyniadau ymarferion a newid busnes | Alinir amcanion â chwsmeriaid, cyflenwyr a rheoleiddwyr |
| Cynlluniau a dylunio adfer | Mae adfer yn fyrfyfyr | Mae gan rai gwasanaethau nodiadau adfer | Mae cynlluniau a chod adfer yn bodoli ar gyfer gwasanaethau hanfodol ac yn cael eu cadw gyda'r system | Mesurir cyfredoldeb cynlluniau ac amser adfer a'u gwella | Cydlynir adfer ar draws gwasanaethau, timau a chyflenwyr |
| Ymarferion a phrofi | Ychydig o brofi neu ddim | Profir rhai adferiadau | Mae profion bwrdd a thechnegol yn digwydd ar amserlen | Olrheinir canfyddiadau hyd at eu cau a thiwnir profion i risg | Mae ymarferion yn cynnwys cyflenwyr ac yn ymestyn ar draws sefydliadau |
| Cyfathrebu a phobl | Mae cyfathrebu'n ad hoc | Mae rhai rhestrau cyswllt yn bodoli | Mae cynlluniau'n cwmpasu pwy sy'n dweud wrth bwy, gyda llwybrau y tu allan i'r band a dirprwyon | Mesurir a chaeir bylchau cyfathrebu a staffio | Ymarferir cyfathrebu gyda chwsmeriaid, cyflenwyr a rheoleiddwyr |

## Rhestr wirio

- [ ] Rydym wedi nodi ein gwasanaethau hanfodol gyda pherchnogion busnes.
- [ ] Mae gan bob gwasanaeth hanfodol amser adfer a phwynt adfer y cytunwyd arnynt, gyda'r gost yn hysbys.
- [ ] Mae gwasanaethau wedi'u grwpio'n haenau sy'n cyfateb i'w hanghenion adfer.
- [ ] Mae cynllun adfer byr yn bodoli, gyda phwy all ei alw i rym a sut i'w cyrraedd.
- [ ] Mae cod adfer, cyfluniad a llawlyfrau gweithredu mewn rheoli fersiynau ac yn cael eu hadolygu gyda newidiadau.
- [ ] Mae llawlyfrau gweithredu, cyfrinachau ac offer sydd eu hangen i adfer yn goroesi colli'r amgylchedd cynradd.
- [ ] Profwyd adfer o gopi wrth gefn ar gyfer pob gwasanaeth hanfodol yn y flwyddyn ddiwethaf.
- [ ] Cynhaliwyd ymarfer bwrdd yn y flwyddyn ddiwethaf, ac olrheinir canfyddiadau.
- [ ] Mae templedi cyfathrebu a llwybrau y tu allan i'r band yn bodoli.
- [ ] Gofynnwyd i gyflenwyr hanfodol am eu trefniadau parhad eu hunain.

## Anogwyr AI

**Pwrpas: drafftio'r cwestiynau ar gyfer dadansoddi effaith busnes.**

```text
Helpwch fi i baratoi dadansoddiad effaith busnes ar gyfer y gwasanaethau hyn: [rhestrwch wasanaethau].

Am y sefydliad: [disgrifiwch y sector a phwy sy'n dibynnu ar y gwasanaethau].
Cyfnodau brig neu derfynau amser: [rhestrwch, neu ysgrifennwch "anhysbys"].
Rheolau neu gontractau sy'n gosod gofynion adfer, gyda thestun ffynhonnell: [gludwch, neu ysgrifennwch "dim yn hysbys"].

Ysgrifennwch, ar gyfer pob gwasanaeth, set fer o gwestiynau i'w rhoi i berchnogion busnes am effaith toriad ar ôl awr, diwrnod ac wythnos (ariannol, gweithredol, enw da, cyfreithiol), pa golled data fyddai'n oddefadwy, ar beth mae'r gwasanaeth yn dibynnu, a pha ddatrysiadau dros dro sy'n bodoli. Peidiwch â dyfeisio effeithiau na rhifau. Gofynnwch gwestiynau eglurhaol yn gyntaf, a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

**Pwrpas: cynllunio ymarfer bwrdd.**

```text
Dyluniwch ymarfer bwrdd 90 munud ar gyfer [nifer] o bobl o [timau] ar y senario hwn: [disgrifiwch, er enghraifft "mae ein rhanbarth cwmwl ddim ar gael am 24 awr"].

Gwasanaethau o fewn cwmpas: [rhestrwch].
Cynlluniau a llawlyfrau gweithredu presennol: [disgrifiwch, neu ysgrifennwch "dim"].

Rhowch gynllun amseredig gyda: y senario wedi'i ryddhau mewn tri cham, anogwyr ar gyfer pob rôl, cwestiynau ar ddibyniaethau adfer (ble mae llawlyfrau gweithredu, cyfrinachau ac offer yn byw), penderfyniadau y mae'n rhaid eu gwneud a phwy sy'n eu gwneud, a cham cau sy'n cofnodi bylchau gyda pherchnogion a dyddiadau. Peidiwch â defnyddio mynediad cynhyrchu go iawn. Gofynnwch gwestiynau eglurhaol yn gyntaf, nodwch ragdybiaethau, a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

**Pwrpas: troi nodiadau ymarfer yn rhestr bylchau.**

```text
Isod mae'r nodiadau o ymarfer parhad: [gludwch beth ddigwyddodd, beth aeth o'i le, beth ddywedodd pobl].

Rhestrwch y bylchau a ganfuwyd, wedi'u grwpio fel: cynllun (beth oedd ar goll neu'n aneglur), technoleg (beth fethodd neu oedd yn araf), pobl (pwy oedd ar goll neu'n ansicr), a dibyniaethau (yr hyn yr oedd adfer yn dibynnu arno oedd ei hun ddim ar gael). Ar gyfer pob bwlch, awgrymwch deitl eitem ôl-groniad a chwestiwn am flaenoriaeth. Defnyddiwch y nodiadau yn unig. Peidiwch â dyfeisio achosion. Rhestrwch yr hyn nad ydych yn siŵr ohono.
```

**Pwrpas: ysgrifennu amlinelliad cynllun adfer byr ar gyfer un gwasanaeth.**

```text
Helpwch fi i amlinellu cynllun adfer ar gyfer [gwasanaeth].

Beth mae'n ei wneud a phwy sy'n dibynnu arno: [disgrifiwch].
Amser adfer a phwynt adfer y cytunwyd arnynt, os o gwbl: [gludwch, neu ysgrifennwch "heb eu cytuno"].
Ble mae'n rhedeg, ble mae data a chopïau wrth gefn yn cael eu cadw: [disgrifiwch].
Dibyniaethau (gwasanaethau eraill, cyflenwyr, hunaniaeth, rhwydweithiau): [rhestrwch].
Pobl all ei adfer: [rolau].

Ysgrifennwch amlinelliad cynllun o ddim mwy na dwy dudalen: sut y caiff ei alw i rym, pwy sy'n penderfynu, cyfathrebu, trefn camau adfer (gyda dolenni i lawlyfrau gweithredu fel [DOLEN]), tystiolaeth brofi sydd ei hangen, a sut i ddychwelyd i normal. Marciwch bob eitem sy'n rhagdybiaeth. Peidiwch â dyfeisio amseroedd adfer. Gofynnwch gwestiynau eglurhaol yn gyntaf, a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

## Sgiliau AI

- [business-continuity-plan](../../../../skills/business-continuity-plan/SKILL.md): defnyddiwch i ysgrifennu'r cynllun lefel sefydliad ar gyfer cadw swyddogaethau hanfodol i fynd.
- [disaster-recovery-plan](../../../../skills/disaster-recovery-plan/SKILL.md): defnyddiwch i gynllunio adfer technegol gwasanaethau TG.
- [disaster-recovery-testing](../../../../skills/disaster-recovery-testing/SKILL.md): defnyddiwch i ddylunio profion adfer a methu drosodd.
- [crisis-communication-plan](../../../../skills/crisis-communication-plan/SKILL.md): defnyddiwch i gynllunio'r hyn rydych yn ei ddweud wrth gwsmeriaid, staff a'r cyhoedd yn ystod tarfu.
- [risk-register](../../../../skills/risk-register/SKILL.md): defnyddiwch i gofnodi risgiau parhad a sut y cânt eu rheoli.

(Mae'r sgiliau eu hunain wedi'u hysgrifennu yn Saesneg.)

## Prif ffynonellau

- **Business continuity planning** (Wikipedia): diffiniadau o barhad, dadansoddi effaith busnes, amcanion adfer, ymarferion a safonau.
- **ISO 22301** (International Organization for Standardization): y safon gofynion ar gyfer systemau rheoli parhad busnes; darllenwch y safon ar gyfer honiadau cydymffurfio.
- **Incident management** (Wikipedia): y trosolwg aml-faes sy'n gosod parhad wrth ochr ymateb i ddigwyddiadau.
- **Embracing Risk** (*Site Reliability Engineering*, Google, sre.google): economeg dibynadwyedd sy'n fframio amcanion adfer.

Mae'r ffynonellau hyn yn Saesneg.

## Cyfeiriadau

1. Business continuity planning — Wikipedia — https://en.wikipedia.org/wiki/Business_continuity_planning
2. Disaster recovery — Wikipedia (disambiguation page) — https://en.wikipedia.org/wiki/Disaster_recovery
3. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
4. Embracing Risk — Google SRE book, sre.google — https://sre.google/sre-book/embracing-risk/
5. ISO 22301 — Wikipedia — https://en.wikipedia.org/wiki/ISO_22301
6. Risk management — Wikipedia — https://en.wikipedia.org/wiki/Risk_management
7. Backup — Wikipedia — https://en.wikipedia.org/wiki/Backup
8. Infrastructure as code — Wikipedia — https://en.wikipedia.org/wiki/Infrastructure_as_code
