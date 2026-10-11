# Rheoli Rhyddhau a Defnyddio

**Mae rheoli rhyddhau a defnyddio yn cael newidiadau i gynhyrchu'n ddiogel, a'r nod mewn lleoliad ystwyth yw gwneud rhyddhau mor arferol, awtomataidd a dadwneudadwy fel ei fod yn peidio â bod yn ddigwyddiad.**

## Pam mae hyn yn bwysig

Mae llawer o sefydliadau'n dal i drin rhyddhad fel achlysur mawr, tyn. Gosodir dyddiad, archebir ffenestr, mae pobl yn aros yn hwyr, a mesurir llwyddiant gan a dorrodd unrhyw beth. Mae'r patrwm hwnnw'n cynhyrchu'n union y risg y mae'n ei hofni: po fwyaf o newidiadau a fwndelir mewn rhyddhad, anoddaf yw deall beth aeth o'i le a mwyaf poenus yw dadwneud.

Mae rhaglen ymchwil DORA yn disgrifio'r dewis arall. Mae ei thudalen ar gyflawni parhaus yn diffinio'r arfer fel "the ability to release changes of all kinds on demand quickly, safely, and sustainably", ac yn adrodd bod ei wneud yn dda yn gwella perfformiad cyflawni ac argaeledd, ac yn gysylltiedig â llai o ludded a boddhad swydd uwch. Mae ei thudalen hefyd yn rhybuddio bod defnyddio'n amlach heb newid prosesau a phensaernïaeth yn tueddu i godi cyfraddau methu a llosgi timau allan. Y wers yw nid "rhyddhewch yn gyflymach" ond "adeiladwch y gallu i ryddhau'n ddiogel, ac yna rhyddhewch yn aml".

Mae llyfr *Site Reliability Engineering* Google, yn ei bennod ar beirianneg rhyddhau, yn gwneud pwynt tebyg o ymarfer: mae rhyddhadau mynych yn golygu llai o newidiadau rhwng fersiynau, felly mae profi a datrys problemau yn dod yn haws. Mae'r pwnc hwn yn tynnu ar y ddwy ffynhonnell honno, ar bynciau eraill y canllaw sy'n ymwneud â newid, ac ar eirfa ITIL a ddefnyddir yn eang na allai'r canllaw hwn ei chadarnhau yn erbyn testun perchennog y fframwaith. Triniwch y ffynonellau fel rhai cryf, penodol, ac wedi'u cyfyngu i'r cyd-destunau y maent yn eu disgrifio.

## Cysyniadau craidd

### Rhyddhau a defnyddio

Mae'r ddau derm yn aml yn cael eu drysu. Gwahaniaeth cyffredin, a ddefnyddir yn eang mewn rheoli gwasanaethau, yw:

- **Rhyddhad (release)** yw fersiwn o wasanaeth neu gydran a wneir ar gael i'w defnyddio. Mae'n benderfyniad ynglŷn â'r hyn y bydd defnyddwyr yn ei gael.
- **Defnyddio (deployment)** yw'r weithred o symud fersiwn i amgylchedd, fel cynhyrchu.

Mae eu gwahanu yn bwerus. Gallwch ddefnyddio cod i gynhyrchu heb ei droi ymlaen i ddefnyddwyr, a'i ryddhau'n ddiweddarach mewn ffordd reoledig. Mae technegau fel switshis nodwedd yn dibynnu ar y gwahaniad hwn (gweler erthygl Wikipedia ar feature toggles).

### Cyflawni parhaus a defnyddio parhaus

Mae tudalen DORA yn diffinio **cyflawni parhaus (continuous delivery)** fel y gallu i ryddhau newidiadau o bob math ar alw yn gyflym, yn ddiogel ac yn gynaliadwy. Mae'n ei wahaniaethu oddi wrth **ddefnyddio parhaus (continuous deployment)**, sy'n golygu defnyddio pob newid i gynhyrchu cyn gynted â phosibl. Mae DORA yn dweud "can and should start with continuous delivery" hyd yn oed os na fyddant byth yn mabwysiadu defnyddio parhaus. Mae'r penderfyniad a ddylid rhyddhau yn parhau'n benderfyniad busnes; mae cyflawni parhaus yn ei wneud yn ddewis yn hytrach na phrosiect.

### Beth mae'r ymchwil yn ei argymell

Mae tudalen DORA yn rhestru arferion sy'n cefnogi cyflawni parhaus:

| Arfer | Beth mae DORA yn ei ddweud |
|---|---|
| **Awtomeiddio profion** | Cyfresi profion awtomataidd cynhwysfawr, dibynadwy, a grëir ac a gynhelir yn bennaf gan ddatblygwyr |
| **Awtomeiddio defnyddio** | Defnyddiau wedi'u hawtomeiddio'n llawn, heb angen ymyriad â llaw |
| **Datblygu seiliedig ar foncyff (trunk-based)** | Llai na thair cangen weithredol, canghennau byrhoedlog iawn, cyfnodau cloi cod prin |
| **Timau a phensaernïaeth wedi'u cyplysu'n llac** | Gall timau brofi a defnyddio ar alw heb drefnu gyda gwasanaethau eraill |
| **Arferion eraill** | Integreiddio parhaus, profi parhaus, rheoli fersiynau ar gyfer pob arteffact cynhyrchu, rheoli data prawf, monitro ac arsylwadwyedd, hysbysiadau rhagweithiol, rheoli newid cronfa ddata, diogelwch treiddiol |

Mae'r dudalen yn adrodd bod cyflawni parhaus yn gysylltiedig ag ansawdd uwch (llai o amser a dreulir ar ail-wneud neu waith heb ei gynllunio), llai o ludded, a llai o boen defnyddio. Mae hefyd yn dweud bod timau elît a gyflawnai dargedau dibynadwyedd yn adroddiad 2021 deirgwaith yn fwy tebygol o fod â phensaernïaeth wedi'i chyplysu'n llac na pherfformwyr isel. Nid yw'n datgan offer, targedau amlder defnyddio, na llinell amser gweithredu, ac mae'n nodi bod trawsnewidiadau'n dilyn "cromlin J" yn gyffredin, gyda dip mewn effeithlonrwydd wrth i awtomeiddio gynyddu gofynion profi a dyled dechnegol gronni.

### Gwersi o arfer peirianneg rhyddhau

Mae pennod llyfr SRE ar beirianneg rhyddhau yn disgrifio dull un sefydliad mawr:

- **Hunanwasanaeth.** Mae timau'n rhedeg eu prosesau rhyddhau eu hunain. Mae rhyddhadau'n "truly automatic" ac angen cyfranogiad peirianwyr dim ond os bydd problemau'n codi.
- **Cyflymder uchel.** Mae rhyddhadau mynych yn golygu llai o newidiadau rhwng fersiynau, sy'n gwneud profi a datrys problemau yn haws.
- **Adeiladau hermetig.** Mae adeiladau'n dibynnu ar fersiynau offer a llyfrgelloedd hysbys, felly mae'r un adolygiad yn rhoi canlyniadau unfath.
- **Polisïau gorfodedig.** Mae rheolaethau mynediad yn rheoli cymeradwyaethau, creu rhyddhad a defnyddio. Mae bron pob newid angen adolygiad cod, ac mae pob rhyddhad yn cynhyrchu adroddiad o newidiadau a gynhwysir.

Mae'r bennod hefyd yn pwysleisio cyfluniad o dan reolaeth ffynhonnell ac adolygiad cod, ac yn awgrymu bod datblygwyr, peirianwyr dibynadwyedd safleoedd a pheirianwyr rhyddhau yn cydweithio yn lle taflu canlyniadau "over the fence". Mae'n dweud y dylai sefydliadau ddiffinio polisïau rhyddhau hyd yn oed pan na allant eu hawtomeiddio na'u gorfodi eto, a'i bod yn rhatach rhoi arferion da ar waith yn gynnar na'u hôl-osod. Mae'r bennod yn disgrifio offer Google ei hun; bydd eich amgylchedd yn defnyddio rhai gwahanol, felly tynnwch yr egwyddorion ac nid y cynhyrchion.

### Amgylcheddau a dyrchafu

Fel arfer mae rhyddhad yn symud trwy gyfres o amgylcheddau, fel datblygu, prawf a chynhyrchu. Mae pob cam yn darparu tystiolaeth. Arfer cyffredin, sy'n gyson â'r ymchwil uchod, yw adeiladu unwaith a dyrchafu'r un arteffact, fel mai'r hyn a brofwyd yw'r hyn a ddefnyddir. Mae pwyslais pennod SRE ar adeiladau unfath o'r un adolygiad yn mynegi'r un syniad.

### Cyflwyno a dadwneud

Gellir graddoli sut mae rhyddhad yn cyrraedd defnyddwyr. Mae pennod SRE yn disgrifio cyflwyno wedi'i gyflymu i risg, o wthio awtomatig bob awr mewn datblygu i gyflwyno dros sawl diwrnod ar gyfer seilwaith sensitif, ac yn crybwyll rhyddhadau caneri (canary), lle mae cyfran fach o draffig yn cael y fersiwn newydd yn gyntaf. Mae dadwneud yn golygu dychwelyd i'r fersiwn flaenorol, a dylai fod mor ymarferol â chyflwyno. Gall timau sy'n gallu gwrthdroi'n gyflym fforddio defnyddio'n aml (gweler Pwnc 3.4 — Galluogi Newid).

### Gwybodaeth ryddhau ar gyfer cymorth

Mae angen i staff cymorth a defnyddwyr wybod beth sy'n newid a beth i'w wneud os aiff pethau o'i le. Nodyn rhyddhau, rhestr o faterion hysbys a chyswllt a enwir yw'r lleiafswm (gweler Pwnc 3.1 — Desg Gwasanaeth). Mae adroddiad rhyddhau newidiadau a gynhwysir yn y bennod SRE yn gwasanaethu fel ffynhonnell.

### Mesurau

Mae tudalen DORA yn awgrymu mesur amseroedd arweiniol byr ar gyfer newidiadau rheolaidd a brys, cyfraddau methu newid isel, amser byr i adfer gwasanaeth, ac amleddau rhyddhau sy'n cyflawni blaenoriaethau mewn pryd. Ei nod cyffredinol yw nad oes neb yn gweithio y tu allan i oriau busnes i ddefnyddio. Am ddiffiniadau a rhybuddion ynglŷn â'r mesurau, gweler Pwnc 3.4 — Galluogi Newid a Phwnc 5.6 — Metrigau a Mesur.

## Arferion gorau

1. **Gwahanwch ddefnyddio oddi wrth ryddhau.** Defnyddiwch god i gynhyrchu mewn cyflwr segur a'i droi ymlaen i ddefnyddwyr pan fo'n barod, gan ddefnyddio switshis nodwedd neu gyflwyno graddol. Mae hyn yn lleihau risg defnydd ac yn rhoi rheolaeth i'r busnes.
2. **Awtomeiddiwch y defnyddio.** Anelwch at ddim camau â llaw. Mae camau â llaw yn araf, yn amrywio rhwng pobl, ac yn achosi digwyddiadau. Awtomeiddiwch mewn cynyddrannau bach, gan ddechrau gyda'r camau sy'n mynd o'u lle fwyaf.
3. **Adeiladwch unwaith, dyrchafwch yr arteffact.** Cynhyrchwch un pecyn a'i symud trwy amgylcheddau, fel mai'r hyn a brofwyd gennych yw'r hyn rydych yn ei redeg. Cofnodwch pa fersiwn sydd ble.
4. **Gwnewch adeiladau'n atgynhyrchadwy.** Pinnwch fersiynau offer a llyfrgelloedd fel bod yr un adolygiad yn rhoi'r un canlyniad. Mae hyn yn dilyn egwyddor pennod SRE o adeiladau hermetig.
5. **Cadwch ganghennau'n fyrhoedlog.** Arweiniad seiliedig ar foncyff DORA yw llai na thair cangen weithredol a changhennau sy'n uno o fewn tua diwrnod. Mae canghennau hir yn troi rhyddhadau'n ddigwyddiadau uno.
6. **Profwch yn awtomatig, a chadwch y profion yn gyflym ac yn ddibynadwy.** Anelwch at adborth mewn munudau. Mae cyfres brofion ansefydlog neu araf yn gwneud i bobl ei hosgoi.
7. **Rhyddhewch mewn sypiau bach.** Mae rhyddhadau llai yn haws eu hadolygu, eu profi a'u dadwneud. Os yw rhyddhad yn fawr, gofynnwch sut i'w rannu.
8. **Cyflwynwch mewn camau.** Dechreuwch gyda chyfran fach o ddefnyddwyr neu weinyddion, gwyliwch y signalau, ac ehangwch. Diffiniwch ymlaen llaw beth y byddwch yn ei wylio a phwy all atal y cyflwyno.
9. **Ymarferwch ddadwneud.** Gwyddoch sut i ddychwelyd i'r fersiwn dda ddiwethaf ac ymarferwch hynny. Gobaith yw dadwneud na roesoch gynnig arno erioed.
10. **Rhowch i gymorth yr hyn sydd ei angen cyn rhyddhau.** Darparwch nodiadau rhyddhau, materion hysbys a chyswllt. Cynhwyswch staff cymorth mewn cymeradwyo newidiadau sy'n effeithio ar ddefnyddwyr (gweler Pwnc 3.1 — Desg Gwasanaeth).
11. **Cadwch gyfluniad mewn rheoli fersiynau.** Trinwch newidiadau cyfluniad fel cod, gydag adolygiad a chofnod. Dewiswch ble mae pob math o osodiad yn byw a pham.
12. **Anelwch at ddefnyddio yn ystod oriau gwaith.** Mae DORA yn enwi hyn fel y nod cyffredinol. Os yw defnyddiau angen nosweithiau hwyr, mae angen gwaith ar y broses neu'r bensaernïaeth.

## Cwestiynau i'w trafod gyda'ch tîm

**Pa mor hir y mae'n ei gymryd, a faint o gamau sydd dan sylw, i gael newid gorffenedig i gynhyrchu?**

Olrheiniwch un newid diweddar o "barod" i "byw". Rhestrwch bob cam, pwy sy'n ei wneud, a pha mor hir y mae'n aros. Gwahaniaethwch gamau â llaw oddi wrth rai awtomataidd. Mae timau'n aml yn synnu faint o gamau sydd â llaw a'r aros rhyngddynt. Gall yr hwylusydd ofyn pa gam sydd wedi achosi'r nifer fwyaf o ddigwyddiadau. Dewiswch un i'w awtomeiddio.

**Beth fyddai'n rhaid bod yn wir inni ryddhau yn ystod oriau gwaith heb boeni?**

Gofynnwch beth mae'r tîm yn ei ofni am ryddhau. Atebion nodweddiadol: dim dadwneud wedi'i brofi, profion gwan, effaith aneglur ar ddefnyddwyr. Mae pob un yn rhywbeth i'w adeiladu. Rhestrwch hwy a'u graddio. Gofynnwch beth fyddai'r cam lleiaf ar gyfer y cyntaf. Mae nod DORA o neb yn gweithio y tu allan i oriau busnes i ddefnyddio yn darged defnyddiol i'w drafod.

**Ble ydym ni'n bwndelu newidiadau oherwydd bod rhyddhau'n boenus, a beth mae'r bwndelu yn ei gostio i ni?**

Edrychwch ar gynnwys rhyddhadau diweddar. Cyfrwch y newidiadau ym mhob un. Gofynnwch beth ddigwyddodd pan aeth bwndel o'i le, a pha mor hir y cymerodd i ganfod yr achos. Trafodwch beth fyddai'n gwneud rhyddhadau un newid yn y llwybr hawdd. Cytunwch ar gam cyntaf, fel rhyddhau un newid risg isel ar ei ben ei hun.

**Sut ydym ni'n gwybod bod rhyddhad yn gweithio unwaith y mae'n fyw?**

Gofynnwch pa signalau y mae'r tîm yn eu gwylio yn yr awr gyntaf: gwallau, perfformiad, adroddiadau defnyddwyr. Os yw'r ateb yn "rydym yn aros am gwynion", trafodwch fonitro a fyddai'n dangos problem yn gyflym. Gofynnwch pwy sy'n gwylio a beth fyddent yn ei wneud. Cytunwch ar restr wirio fer ar gyfer ar ôl rhyddhau.

**Beth mae ein tîm cymorth yn ei wybod am ryddhad cyn iddo fynd allan?**

Gofynnwch i'r ddesg gwasanaeth beth a ddysgasant am y rhyddhad diwethaf a phryd. Cymharwch â'r hyn yr oedd ei angen arnynt. Trafodwch drosglwyddiad syml, fel nodyn rhyddhau a chyswllt a enwir. Cynhwyswch y bobl sy'n ateb cwestiynau defnyddwyr wrth gynllunio rhyddhadau peryglus.

**Beth sy'n ein hatal rhag defnyddio heb gyfnod rhewi, a beth fyddai cyfnod rhewi yn ei gostio?**

Mae cyfnodau rhewi yn gyffredin o amgylch amseroedd brig busnes. Gofynnwch pa mor hir y maent yn para a beth maent yn ei ohirio. Trafodwch a allai newidiadau bach, wedi'u profi'n dda fynd rhagddynt yn ystod y cyfnodau hyn gyda diogelwch ychwanegol. Mae tudalen DORA yn rhybuddio rhag cymhwyso'r un gymeradwyaeth at bob newid waeth beth fo'r risg neu amseriad, felly gofynnwch a yw'r rhewi yn rhy swrth.

## Yn ymarferol: enghraifft o ITIL ystwyth

Mae prifysgol yn rhedeg system cofrestru ar-lein ar gyfer 30,000 o fyfyrwyr. Mae'r tîm datblygu o wyth yn rhyddhau unwaith y tymor, mewn ffenestr penwythnos cyn i gofrestru agor. Mae pob rhyddhad yn bwndelu cannoedd o newidiadau ac angen pymtheg o bobl, rhestr wirio hir â llaw, a chynllun galw. Methodd y rhyddhad diwethaf am 2 y bore ddydd Sul, a threuliodd y tîm bedair awr ar ddeg yn canfod pa un o'r newidiadau a'i hachosodd.

Mae arweinydd y tîm yn cynnig newid dull. Yn gyntaf, mae defnyddiau'n dod yn sgriptiedig yn llawn, gan ddechrau gyda'r camau a fethodd y tro diwethaf. Yn ail, mae'r tîm yn ychwanegu profion awtomataidd ar gyfer y llwybr cofrestru sy'n rhedeg ar bob newid ac yn cymryd llai na deng munud. Yn drydydd, caiff nodweddion newydd eu defnyddio wedi'u diffodd a'u galluogi gan switsh nodwedd ar ôl gwiriadau. Yn bedwerydd, ysgrifennir cam dadwneud a'i ymarfer mewn amgylchedd prawf. Mae swyddfa'r cofrestrydd yn cytuno ar reol na fydd unrhyw ryddhad yn mynd i gynhyrchu yn nhair wythnos y cofrestru brig oni bai ei fod yn atgyweiriad ar gyfer nam gweladwy i ddefnyddwyr.

O fewn tymor, mae'r tîm yn defnyddio'n wythnosol y tu allan i wythnosau brig, yn ystod oriau gwaith, gyda'r nodiadau rhyddhau yn cael eu hanfon i ddesg gymorth y myfyrwyr y diwrnod cynt. Caiff rhai rhyddhadau eu harafu gan brofion ansefydlog a gadawyd un switsh nodwedd ymlaen trwy gamgymeriad gan achosi dryswch byr. Mae'r trawsnewid hefyd yn taro'r gromlin J y mae tudalen DORA yn ei disgrifio: am ddau fis, mae gwaith ar brofion a sgriptiau yn arafu cyflawni nodweddion. Mae'r tîm yn dal ati, yn trwsio'r profion ansefydlog, yn ychwanegu cam rhestr wirio i dynnu switshis, ac yn cytuno â'r cofrestrydd i adolygu'r rheol rhewi y flwyddyn nesaf. Mae brigau cofrestru'r tymhorau'n mynd heibio heb ddigwyddiad sy'n gysylltiedig â rhyddhau.

## Pedwar persbectif

### Timau cynnyrch a chyflawni

Mae timau cyflawni'n berchen ar y biblinell: profion, adeiladau, sgriptiau defnyddio a dadwneud. Buddsoddwch ynddynt fel cynnyrch â defnyddwyr. Rhyddhewch yn fach, rhyddhewch yn aml, a thriniwch bob rhyddhad fel tystiolaeth am y biblinell. Cynhwyswch gymorth a gweithrediadau pan fo newidiadau'n effeithio arnynt.

### Timau gwasanaeth a gweithrediadau

Mae timau gweithrediadau'n elwa o ryddhadau llai, mwy rhagweladwy, a gallant helpu trwy ddiffinio'r hyn sy'n rhaid bod yn wir cyn y derbynnir rhyddhad: monitro, llawlyfrau gweithredu a dadwneud. Symudwch o fod yn borthorion i alluogi trwy ddarparu'r platfform a'r gwiriadau y mae timau cyflawni'n eu defnyddio. Gwyliwch am signalau ar ôl rhyddhad.

### Arweinyddiaeth a llywodraethu

Mae arweinwyr yn penderfynu a all timau fuddsoddi yn y biblinell a goddef y gromlin J. Gofynnwch am amser arweiniol, cyfradd methu newid ac amser adfer. Gwrthsafwch rewi rhyddhadau fel ymateb cyffredinol i risg, a gofynnwch yn lle hynny am dystiolaeth bod rhyddhadau peryglus yn cael mwy o graffu.

### Cwsmeriaid a defnyddwyr

Mae cwsmeriaid a defnyddwyr yn gweld gwelliannau bach mynych a llai o darfu mawr. Disgwyliwch rybudd ymlaen llaw o newidiadau sy'n effeithio arnoch a ffordd o adrodd problemau. Os oes gennych gyfnodau brig, dywedwch wrth y darparwr fel y gallant gynllunio cyflwyniadau graddol o'u cwmpas.

## Dulliau methu cyffredin

- **Rhyddhadau mawr, unwaith ac am byth.** Mae cannoedd o newidiadau'n mynd allan gyda'i gilydd. Yn lle hynny, rhyddhewch mewn sypiau bach a gwahanwch ddefnyddio oddi wrth ryddhau.
- **Defnyddio â llaw.** Mae camau'n amrywio yn ôl person ac yn methu yn y nos. Yn lle hynny, awtomeiddiwch mewn cynyddrannau, gan ddechrau gyda'r camau mwyaf peryglus.
- **Rhyddhau'n amlach heb fesurau diogelu.** Mae cyfraddau methu yn codi ac mae pobl yn llosgi allan, fel y mae DORA yn rhybuddio. Yn lle hynny, buddsoddwch mewn profion, dadwneud a monitro yn gyntaf.
- **Arteffactau gwahanol mewn gwahanol amgylcheddau.** Nid yr hyn a brofir yw'r hyn sy'n rhedeg. Yn lle hynny, adeiladwch unwaith a dyrchafwch yr un arteffact.
- **Canghennau hirhoedlog.** Mae uno'n troi'n ddigwyddiadau. Yn lle hynny, cadwch ganghennau'n fyr ac integreiddiwch yn barhaus.
- **Dadwneud heb ei brofi.** Mae'r dadwneud cyntaf yn digwydd yn ystod toriad. Yn lle hynny, ymarferwch ef yn rheolaidd.
- **Cymorth yw'r olaf i wybod.** Mae staff yn dysgu am newidiadau gan ddefnyddwyr. Yn lle hynny, anfonwch nodiadau rhyddhau a chyswllt cyn rhyddhau.
- **Rhewi cyffredinol.** Mae'r un rhewi'n berthnasol i bob newid. Yn lle hynny, gadewch i newidiadau risg isel, wedi'u profi'n dda fynd drwodd gyda gwiriadau ychwanegol a chadwch y rhewi ar gyfer yr hyn sy'n beryglus.

## Model aeddfedrwydd

| Dimensiwn | Cychwyn | Datblygu | Safoni | Rheoli | Cydlynu |
|---|---|---|---|---|---|
| Awtomeiddio defnyddio | Mae defnyddiau'n llaw ac yn amrywio | Mae rhai defnyddiau'n sgriptiedig | Awtomeiddir defnyddiau trwy biblinell gyffredin | Olrheinir a lleihir methiannau a hyd defnyddiau | Rhennir a gwellir piblinellau ac arferion ar draws timau |
| Amlder a maint rhyddhau | Mae rhyddhadau'n anaml ac yn fawr | Mae rhai timau'n rhyddhau mewn sypiau llai | Mae timau'n rhyddhau mewn sypiau bach ar rythm hysbys | Mesurir ac addasir amlder, amser arweiniol a maint | Cydlynir rhythmau rhyddhau ar draws gwasanaethau a chyflenwyr |
| Diogelwch (profion, cyflwyno, dadwneud) | Mae profi â llaw; heb roi cynnig ar ddadwneud | Mae rhai profion awtomataidd a chamau dadwneud yn bodoli | Mae profion awtomataidd, cyflwyno graddol a dadwneud wedi'i ymarfer yn safonol | Olrheinir a gwellir cyfradd methu newid ac amser adfer | Rhennir a phrofir arferion diogelwch ar draws timau |
| Parodrwydd cymorth | Mae cymorth yn dysgu am ryddhadau gan ddefnyddwyr | Mae gan rai rhyddhadau nodiadau | Mae nodiadau rhyddhau a chysylltiadau yn safonol | Casglir a gweithredir ar adborth cymorth ar ryddhadau | Mae cymorth, cyflawni a defnyddwyr yn cynllunio rhyddhadau gyda'i gilydd |

## Rhestr wirio

- [ ] Gallwn ddatgan y gwahaniaeth rhwng defnyddio a rhyddhau, ac rydym yn ei ddefnyddio.
- [ ] Mae defnyddiau wedi'u hawtomeiddio heb gamau â llaw, neu restrir y camau llaw sy'n weddill.
- [ ] Rydym yn adeiladu unwaith ac yn dyrchafu'r un arteffact trwy amgylcheddau.
- [ ] Mae profion awtomataidd yn rhedeg ar bob newid ac yn rhoi adborth mewn munudau.
- [ ] Mae canghennau'n fyrhoedlog ac yn cael eu huno i'r boncyff yn aml.
- [ ] Mae dadwneud yn bodoli ar gyfer pob math o ryddhad ac wedi'i ymarfer.
- [ ] Mae cyflwyno'n raddol lle mae risg yn cyfiawnhau, gyda signalau wedi'u diffinio ymlaen llaw.
- [ ] Mae nodiadau rhyddhau a materion hysbys yn cyrraedd y ddesg gwasanaeth cyn rhyddhad.
- [ ] Mae cyfluniad mewn rheoli fersiynau ac yn cael ei adolygu.
- [ ] Rydym yn olrhain amser arweiniol, cyfradd methu newid ac amser adfer ar gyfer pob gwasanaeth.

## Anogwyr AI

**Pwrpas: mapio'r camau o "barod" i "byw" a chanfod beth i'w awtomeiddio.**

```text
Helpwch fi i fapio llwybr newid o barod i fyw.

Y camau yn eu trefn, gyda phwy sy'n gwneud pob un, a yw'n llaw neu'n awtomataidd, a pha mor hir y mae fel arfer yn aros neu'n ei gymryd: [gludwch].
Y tri rhyddhad diwethaf a'r hyn aeth o'i le, os unrhyw beth: [gludwch ffeithiau].

Cynhyrchwch dabl o gamau a marciwch y rhai llaw. Graddiwch y camau llaw yn ôl pa mor aml y maent wedi achosi problemau yn y testun, ac awgrymwch, ar gyfer y tri uchaf, un ffordd fach o awtomeiddio neu wirio pob un. Peidiwch â dyfeisio hydoedd na chyfrifon methiannau. Gofynnwch gwestiynau eglurhaol yn gyntaf os oes gwybodaeth ar goll, nodwch ragdybiaethau, a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

**Pwrpas: ysgrifennu nodyn rhyddhau ar gyfer y ddesg gwasanaeth a defnyddwyr.**

```text
Ysgrifennwch nodyn rhyddhau ar gyfer [gwasanaeth].

Beth newidiodd (mewn geiriau plaen): [disgrifiwch].
Pwy yr effeithir arnynt a phryd: [disgrifiwch].
Beth fydd defnyddwyr yn sylwi arno: [disgrifiwch].
Materion hysbys a datrysiadau dros dro: [rhestrwch, neu ysgrifennwch "dim yn hysbys"].
Sut i ddadwneud a phwy i gysylltu ag ef: [disgrifiwch].

Ysgrifennwch ddwy fersiwn: nodyn un paragraff ar gyfer defnyddwyr a nodyn hanner tudalen ar gyfer y ddesg gwasanaeth. Defnyddiwch y ffeithiau uchod yn unig. Marciwch unrhyw ddatganiad sy'n rhagdybiaeth a gofynnwch gwestiynau eglurhaol yn gyntaf os oes gwybodaeth ar goll. Rhestrwch yr hyn nad ydych yn siŵr ohono.
```

**Pwrpas: cynllunio cyflwyno graddol.**

```text
Cynlluniwch gyflwyno graddol o [newid].

Beth mae'n ei newid a phwy sy'n ei ddefnyddio: [disgrifiwch].
Sut y gallwn gyfyngu ar amlygiad (canran o ddefnyddwyr, rhanbarthau, gweinyddion, switsh nodwedd): [disgrifiwch opsiynau sydd ar gael].
Signalau y gallwn eu gwylio: [rhestrwch ffynonellau monitro ac adborth defnyddwyr].
Dull dadwneud: [disgrifiwch].

Cynigiwch gamau, beth i'w wirio ym mhob un, pwy all oedi neu stopio, a beth fyddai'n sbarduno dadwneud, gan adael trothwyon rhifol fel [i'w cytuno]. Peidiwch â dyfeisio monitro nad oes gennym. Gofynnwch gwestiynau eglurhaol yn gyntaf, nodwch ragdybiaethau, a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

**Pwrpas: paratoi achos dros fuddsoddi mewn awtomeiddio rhyddhau.**

```text
Helpwch fi i baratoi achos byr dros fuddsoddi mewn awtomeiddio rhyddhau ar gyfer [gwasanaeth].

Beth mae rhyddhad yn ei gostio i ni heddiw, mewn ffeithiau: [pobl dan sylw, oriau, digwyddiadau, oedi; defnyddiwch rifau go iawn yn unig].
Beth rydym eisiau gallu ei wneud: [disgrifiwch].
Risgiau hysbys y gwaith: [er enghraifft arafu dros dro tra bo profion yn cael eu hysgrifennu].

Ysgrifennwch achos un dudalen gyda'r broblem, y camau cyntaf arfaethedig (bach a chynyddrannol), beth y byddwn yn ei fesur (amser arweiniol, cyfradd methu newid, amser adfer, heb unrhyw dargedau na roddais), y risgiau gan gynnwys gostyngiad dros dro mewn cyflawni, a'r hyn rydym yn gofyn amdano. Peidiwch â dyfeisio ffigurau. Gofynnwch gwestiynau eglurhaol yn gyntaf, a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

## Sgiliau AI

- [release-notes](../../../../skills/release-notes/SKILL.md): defnyddiwch i ddweud wrth ddefnyddwyr a'r ddesg gwasanaeth beth mae rhyddhad yn ei newid.
- [changelog](../../../../skills/changelog/SKILL.md): defnyddiwch i gadw cofnod parhaus o newidiadau yn ôl fersiwn.
- [test-driven-development](../../../../skills/test-driven-development/SKILL.md): defnyddiwch i adeiladu'r profion awtomataidd sy'n gwneud rhyddhau mynych yn ddiogel.
- [shift-left-testing](../../../../skills/shift-left-testing/SKILL.md): defnyddiwch i symud profi'n gynharach yn y biblinell fel y canfyddir problemau'n gynt.
- [agile-delivery](../../../../skills/agile-delivery/SKILL.md): defnyddiwch i gynllunio rhyddhadau bach, mynych a'r gwiriadau o'u cwmpas.

(Mae'r sgiliau eu hunain wedi'u hysgrifennu yn Saesneg.)

## Prif ffynonellau

- **Continuous delivery** (DORA, dora.dev): diffiniad y rhaglen ymchwil, arferion a argymhellir, canfyddiadau a thrapiau.
- **Release Engineering** (*Site Reliability Engineering*, Google, sre.google): arfer un sefydliad o hunanwasanaeth, adeiladau atgynhyrchadwy a pholisi rhyddhau gorfodedig.
- **Streamlining change approval** (DORA, dora.dev): arweiniad ar sut mae cymeradwyo yn ffitio i gyflawni.
- **Continuous delivery** (Wikipedia): trosolwg o'r arfer a'i hanes.

Mae'r ffynonellau hyn yn Saesneg.

## Cyfeiriadau

1. Continuous delivery — DORA, dora.dev — https://dora.dev/capabilities/continuous-delivery/
2. Release Engineering — Google SRE book, sre.google — https://sre.google/sre-book/release-engineering/
3. Streamlining change approval — DORA, dora.dev — https://dora.dev/capabilities/streamlining-change-approval/
4. Continuous delivery — Wikipedia — https://en.wikipedia.org/wiki/Continuous_delivery
5. Software deployment — Wikipedia — https://en.wikipedia.org/wiki/Software_deployment
6. Release management — Wikipedia — https://en.wikipedia.org/wiki/Release_management
7. Feature toggle — Wikipedia — https://en.wikipedia.org/wiki/Feature_toggle
8. Continuous integration — Wikipedia — https://en.wikipedia.org/wiki/Continuous_integration
9. Version control — Wikipedia — https://en.wikipedia.org/wiki/Version_control
