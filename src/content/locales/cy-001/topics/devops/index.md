# DevOps

**DevOps yw'r ymdrech i ddod â datblygu a gweithrediadau i mewn i un llif gwaith gyda pherchnogaeth a rennir, awtomeiddio ac adborth cyflym, ac mae'n ategu rheoli gwasanaethau trwy roi'r rheolaethau y mae ITIL yn gofalu amdanynt yn y biblinell.**

## Pam mae hyn yn bwysig

DevOps yw'r enw y mae'r rhan fwyaf o sefydliadau yn ei roi i'r man cyfarfod rhwng cyflawni ystwyth a gweithrediadau TG. Tyfodd o rwystredigaeth: gwobrwywyd datblygwyr am newid a staff gweithrediadau am sefydlogrwydd, felly tynnodd y ddau grŵp i gyfeiriadau croes, a'r trosglwyddo rhyngddynt oedd lle collwyd cyflymder ac ansawdd. Mae DevOps yn gofyn i'r ddau rannu cyfrifoldeb am y llwybr cyfan o syniad i wasanaeth sy'n rhedeg.

I bobl sy'n gweithio mewn ITSM, gall DevOps ymddangos naill ai'n fygythiol neu'n ddiangen. Bygythiol, oherwydd ei fod yn ymddangos yn diystyru'r prosesau y mae gweithrediadau wedi'u hadeiladu ar ôl profiad caled. Diangen, oherwydd bod llawer o'r hyn y mae'n ei argymell, fel adolygiadau digwyddiadau, awtomeiddio a gwelliant parhaus, eisoes yn ITIL. Nid yw'r naill farn na'r llall yn hollol gywir. Mae'r erthygl Wikipedia ar DevOps yn cyferbynnu DevOps â'r hyn y mae'n ei alw'n fframwaith "o'r brig i lawr" ac anhyblyg ITIL yn y 1990au, sy'n wir am fersiynau hŷn; ysgrifennwyd ITIL 4 i alinio ag ystwyth, DevOps a main (gweler Pwnc 2.2 — ITIL).

Mae diffiniad DevOps yn ddadleuol, ac mae'r erthygl Wikipedia yn dweud hynny. Mae'r pwnc hwn yn defnyddio'r erthygl, tudalennau ymchwil DORA, a hanes Gene Kim o'r "Tair Ffordd", ac mae'n enwi'r hyn sydd wedi'i sefydlu, yr hyn sy'n cael ei ddadlau, a'r hyn na allai'r canllaw hwn ei wirio.

## Cysyniadau craidd

### Beth yw DevOps

Mae'r [erthygl Wikipedia ar DevOps](https://en.wikipedia.org/wiki/DevOps) (yn Saesneg) yn ei ddisgrifio fel integreiddio ac awtomeiddio datblygu meddalwedd a gweithrediadau TG, a all fyrhau amser datblygu a gwella'r cylch bywyd datblygu. Mae'n dyfynnu'r ymchwilwyr academaidd Len Bass, Ingo Weber a Liming Zhu, sy'n ei ddisgrifio fel set o arferion sy'n anelu at leihau'r amser rhwng ymrwymo newid i system a'i leoliad cynhyrchu arferol. Mae'r erthygl yn nodi bod y term yn cael ei ddefnyddio mewn sawl cyd-destun a bod ei ddiffiniad yn cael ei ddadlau, a bod astudiaethau academaidd o 2015 i 2017 wedi canfod dim consensws ar ei nodweddion.

Mae'r erthygl yn adrodd bod cynigion i gyfuno dulliau datblygu â defnyddio a gweithrediadau yn dyddio i ddiwedd y 1980au a dechrau'r 1990au, ac i'r gynhadledd DevOps Days gyntaf gael ei chynnal yn Ghent, Gwlad Belg, yn 2009, a sefydlwyd gan Patrick Debois. Mae'n nodweddu DevOps yn gyffredinol gan dair egwyddor, perchnogaeth a rennir, awtomeiddio llif gwaith ac adborth cyflym, ac yn nodi bod y nodweddiad hwn ei hun yn cael ei ddadlau.

### Y Tair Ffordd

Mae Gene Kim, awdur *The Phoenix Project* a *The DevOps Handbook*, yn disgrifio tair egwyddor y mae, meddai, yn bosibl deillio patrymau DevOps ohonynt. Fel y'u crynhoir ym mhost Kim ei hun ar wefan IT Revolution ac mewn crynodebau eilaidd:

| Ffordd | Syniad | Enghreifftiau |
|---|---|---|
| **Y Ffordd Gyntaf: llif** | Edrych ar berfformiad y system gyfan, nid un seilo; cyflymu gwaith o syniad i werth | Peidio â phasio diffygion hysbys i lawr yr afon; peidio â gadael i optimeiddio lleol ddiraddio'r cyfan; ceisio cynyddu llif bob amser |
| **Yr Ail Ffordd: adborth** | Byrhau a chwyddo'r signalau sy'n llifo'n ôl o gamau diweddarach i rai cynharach | Telemetreg, piblinellau sy'n methu'n gyflym, adborth cwsmeriaid |
| **Y Drydedd Ffordd: dysgu ac arbrofi parhaus** | Adeiladu diwylliant sy'n cymryd risgiau bach, bwriadol ac yn dysgu ohonynt | Neilltuo amser ar gyfer dysgu, troi darganfyddiadau lleol yn welliannau byd-eang |

Mae'r rhain yn cyfateb i themâu'r canllaw hwn ei hun: llif (gweler Pwnc 1.5 — Kanban a Phwnc 1.7 — Datblygu Meddalwedd Main), adborth (gweler Pwnc 3.10 — Monitro a Rheoli Hysbysiadau), a dysgu (gweler Pwnc 1.10 — Dysgu Ystwyth). Nodyn ar derminoleg: mae post Kim yn labelu'r Ail Ffordd yn "amplify feedback loops," ac mae'r Handbook yn ei galw'n "feedback."

### Arferion

Yn ôl Wikipedia, mae integreiddio parhaus a chyflawni parhaus yn hanfodol i lwyddiant DevOps, ochr yn ochr ag awtomeiddio. Mae'r erthygl yn crybwyll rheoli fersiynau, peiriannau rhithwir, cynhwyswyddo, a DevOps cronfa ddata, sy'n cymhwyso rheoli fersiynau, profion awtomataidd a CI/CD at newidiadau sgema a data. Mae'n disgrifio GitOps fel rheoli cyfluniad defnyddio mewn rheoli fersiynau, a DevSecOps fel integreiddio diogelwch i gyflawni trwy brofi "shift left", gan gynnwys dadansoddi statig a deinamig. Mae rhestr galluoedd DORA yn cynnwys cyflawni parhaus, integreiddio parhaus, awtomeiddio defnyddio, awtomeiddio profion, datblygu seiliedig ar foncyff, rheoli fersiynau, rheoli newid cronfa ddata, monitro ac arsylwadwyedd, diogelwch treiddiol, gweithio mewn sypiau bach, a therfynau ar waith ar y gweill (gweler Pwnc 3.5 — Rheoli Rhyddhau a Defnyddio).

### Diwylliant

Mae rhestr galluoedd DORA, a ddarllenwyd ar gyfer y canllaw hwn, yn cynnwys eitemau diwylliannol: diwylliant sefydliadol cynhyrchiol, diwylliant dysgu, arweinyddiaeth drawsnewidiol, boddhad swydd, lles, ac arbrofi tîm. Nid yw'r dudalen sy'n eu rhestru yn eu hegluro, ac nid yw'n eu graddio. Mae tudalen DORA arall yn dweud bod ei metrigau'n rhagfynegi perfformiad sefydliadol a lles aelodau tîm, ac yn rhybuddio rhag perchnogaeth wedi'i seilo, gan argymell perchnogaeth a rennir ar draws timau datblygu, gweithrediadau a rhyddhau. Mae hyn yn cytuno â'r Drydedd Ffordd: mae DevOps cymaint yn ymwneud â sut mae pobl yn gweithio gyda'i gilydd ag â theclynnau.

Defnyddir y cofair cyffredin **CALMS** (culture, automation, lean, measurement, sharing) yn aml i grynhoi DevOps. Nid yw'r erthygl Wikipedia ar DevOps yn ei grybwyll, ac ni wiriodd y canllaw hwn ei darddiad, felly fe'i henwir yma yn unig oherwydd y bydd darllenwyr yn ei gyfarfod.

### DevOps ac ystwyth

Mae'r erthygl yn dweud bod adeiladu a phrofi awtomataidd, integreiddio parhaus a chyflawni parhaus yn tarddu o'r byd ystwyth, ac i hepgor arferion peirianneg gan Scrum achosi i waith awtomeiddio hollti i ffwrdd i DevOps. Mae hyn yn cyd-fynd â Phwnc 1.4 — Scrum, sy'n nodi nad yw Scrum yn dweud sut i adeiladu, profi, defnyddio na gweithredu meddalwedd. Mae Rhaglennu Eithafol eisoes yn cynnwys llawer o'r arferion peirianneg (gweler Pwnc 1.6 — Rhaglennu Eithafol). Mae DevOps yn ymestyn y pryder ystwyth y tu hwnt i'r pwynt rhyddhau.

### DevOps ac ITIL

Mae'r erthygl yn cyferbynnu DevOps â fframwaith "o'r brig i lawr" ac anhyblyg ITIL yn y 1990au ac nid yw'n trafod ITSM ymhellach. Darlun tecach heddiw:

| | Yn tueddu i bwysleisio | Risg os defnyddir ar ei ben ei hun |
|---|---|---|
| **DevOps** | Llif, awtomeiddio, perchnogaeth a rennir, adborth cyflym | Esgeuluso cofnodion, rheolaethau a'r olwg ehangach ar y gwasanaeth |
| **ITIL 4** | Gwerth, arferion, llywodraethu, ystod eang o arferion gwasanaeth | Trin arferion fel proses drom |

Mae cynllun ardystio ITIL 4 ei hun yn cynnwys modiwl arbenigol o'r enw High Velocity IT (HVIT) yn y trac Managing Professional, fel y mae'r erthygl Wikipedia ar ITIL yn ei restru. Mae hynny'n dangos y perchennog yn trin gwaith digidol cyflym fel pwnc ynddo'i hun. Cyfuniad ymarferol: defnyddiwch arferion DevOps i weithredu arferion ITIL yn y biblinell, fel cofnodi newidiadau'n awtomatig, rhedeg profion fel y rheolaeth risg, a monitro fel yr arfer hysbysiadau (gweler Pwnc 3.4 — Galluogi Newid a Phwnc 5.1 — Rheoli Gwasanaethau Ystwyth).

### DevOps a pheirianneg dibynadwyedd safleoedd

Mae'r erthygl Wikipedia yn dweud i Google ddatblygu peirianneg dibynadwyedd safleoedd yn 2003, a bod rhai o'i awduron gwreiddiol yn gweld SRE fel gweithrediad o DevOps. Mae'r erthygl SRE yn ei galw'n weithrediad penodol o DevOps, yn gulach oherwydd ei fod yn canolbwyntio ar adeiladu systemau dibynadwy (gweler Pwnc 5.3 — Peirianneg Dibynadwyedd Safleoedd).

### Mesurau

Mae mesurau perfformiad cyflawni meddalwedd DORA yn rhoi eirfa gyffredin: amser arweiniol newid, amlder defnyddio, amser adfer defnydd a fethodd, cyfradd methu newid, a chyfradd ail-wneud defnydd (gweler Pwnc 3.4 — Galluogi Newid a Phwnc 5.6 — Metrigau a Mesur). Mae'r erthygl Wikipedia yn adrodd i'r metrigau gael eu cyhoeddi yn 2016, i'r mesur adfer gael ei ailenwi yn adroddiad 2023, i fesur ail-wneud gael ei ychwanegu yn 2024, ac yn 2025 disodlodd DORA haenau perfformiad â saith archdeip tîm. Mae hefyd yn cofnodi i rai arbenigwyr feirniadu methodoleg a metrigau ymchwil DORA. Triniwch y mesurau fel cwestiynau defnyddiol ac nid sgoriau.

### Beirniadaethau a therfynau

Y tu hwnt i'r diffyg diffiniad sefydlog, mae'r erthygl yn adrodd beirniadaeth o fethodoleg DORA. Mae beirniadaethau ymarferol cyffredin, a gynigir yma fel profiad ymarferol ac nid canfyddiadau ffynhonnell, yn cynnwys defnyddio "DevOps" fel teitl swydd ar gyfer yr hen rôl gweithrediadau, mabwysiadu offer heb newid diwylliant, ac esgeuluso cydymffurfio wrth fynd ar ôl cyflymder. Nid yw'r erthygl yn rhoi ystadegau mabwysiadu.

## Arferion gorau

1. **Cytunwch beth rydych yn ei olygu wrth DevOps.** Ysgrifennwch ddatganiad byr o'r hyn y mae'n ei olygu i'ch timau, fel perchnogaeth a rennir o wasanaeth, cyflawni awtomataidd ac adborth cyflym. Mae diffiniad a rennir yn atal dadleuon am labeli.
2. **Rhannwch berchnogaeth y gwasanaeth.** Gwnewch y bobl sy'n adeiladu gwasanaeth yn gyfrifol am sut mae'n rhedeg, a rhowch y modd iddynt: ar alwad, monitro a mynediad. Cefnogwch hwy gydag arbenigedd gweithrediadau.
3. **Awtomeiddiwch y llwybr i gynhyrchu.** Adeiladwch biblinell sy'n adeiladu, profi a defnyddio pob newid. Cofnodwch yr hyn a wnaeth. Triniwch y biblinell fel cynnyrch â defnyddwyr.
4. **Gweithiwch mewn sypiau bach.** Rhyddhewch newidiadau bach yn aml. Mae hyn yn lleihau risg ac yn cyflymu adborth, fel y mae rhestr galluoedd DORA yn awgrymu.
5. **Byrhewch y dolenni adborth.** Gwnewch ganlyniadau profion, monitro ac adborth defnyddwyr yn weladwy i'r tîm o fewn munudau neu oriau. Dilynwch yr Ail Ffordd: chwyddwch y signalau sy'n llifo'n ôl.
6. **Edrychwch ar y llif cyfan.** Mapiwch y llwybr o syniad i wasanaeth sy'n rhedeg a chanfyddwch yr aros hiraf, gan gynnwys y rhai y tu allan i'r tîm datblygu. Dilynwch y Ffordd Gyntaf: peidiwch ag optimeiddio un seilo ar draul y cyfan (gweler Pwnc 5.4 — Rheoli Ffrydiau Gwerth).
7. **Adeiladwch ddiogelwch a chydymffurfio i mewn.** Rhowch wiriadau diogelwch a pholisi awtomataidd yn y biblinell, a chofnodwch dystiolaeth fel sgil-gynnyrch (gweler Pwnc 3.13 — Rheoli Diogelwch Gwybodaeth a Phwnc 5.7 — Llywodraethu, Risg a Chydymffurfio).
8. **Triniwch ddiwylliant fel mater dosbarth cyntaf.** Buddsoddwch mewn dysgu, adolygiadau di-fai, diogelwch seicolegol a nodau a rennir. Mae rhestr galluoedd DORA yn cynnwys diwylliant ochr yn ochr ag eitemau technegol am reswm.
9. **Gwnewch amser i ddysgu ac arbrofi.** Neilltuwch amser a lleoedd diogel ar gyfer arbrofion, a rhannwch wersi. Dilynwch y Drydedd Ffordd.
10. **Defnyddiwch arferion ITIL lle maent yn helpu.** Cadwch arferion digwyddiadau, problemau, newid a gwybodaeth, wedi'u gweithredu trwy awtomeiddio a chofnodion ysgafn. Tynnwch gamau nad ydynt yn gwasanaethu eu diben.
11. **Mesurwch yn ofalus.** Olrheiniwch fesurau tebyg i DORA fesul gwasanaeth, gwellwch yn erbyn eich perfformiad blaenorol eich hun, ac osgowch eu gosod fel targedau (gweler Pwnc 5.6 — Metrigau a Mesur).
12. **Osgowch y trap teitl.** Peidiwch â chreu "tîm DevOps" ar wahân sy'n dod yn seilo newydd rhwng datblygu a gweithrediadau. Lledaenwch yr arferion ar draws timau, a defnyddiwch dimau platfform neu alluogi i helpu.

## Cwestiynau i'w trafod gyda'ch tîm

**Beth mae DevOps yn ei olygu yma, a ble y clywsom y gair gyntaf?**

Gofynnwch i bob person am ddiffiniad un frawddeg. Cymharwch. Mae'r erthygl Wikipedia yn dweud bod y diffiniad yn ddadleuol, felly disgwylir gwahaniaethau. Ysgrifennwch ddatganiad a rennir sy'n bendant: pwy sy'n berchen ar beth, beth sydd wedi'i awtomeiddio, pa adborth sy'n bodoli. Gall yr hwylusydd ofyn beth sydd wedi newid oherwydd y gair hyd yn hyn.

**Ble mae newid yn aros rhwng "parod" a "byw," a phwy sy'n berchen ar yr aros?**

Olrheiniwch newid diweddar a rhestrwch yr arosiadau: adolygiadau, cymeradwyaethau, amgylcheddau, ffenestri rhyddhau. Marciwch y rhai y tu allan i'r tîm. Gofynnwch pa arosiadau sy'n amddiffyn rhag risgiau go iawn a pha rai sy'n arferiad. Dewiswch un i'w fyrhau, gan weithio gyda'i berchennog.

**Pan fydd rhywbeth yn torri mewn cynhyrchu, pwy sydd ar alwad, ac a oes ganddynt y modd i'w drwsio?**

Gofynnwch pwy a alwir a beth y gallant ei wneud ar eu pen eu hunain. Os nad yw'r adeiladwyr ar alwad, gofynnwch pam. Os na all staff gweithrediadau newid y cod, gofynnwch beth maent yn ei wneud. Trafodwch sut olwg fyddai ar berchnogaeth a rennir yma a pha gefnogaeth fyddai ei hangen.

**Pa adborth rydym yn ei gael ar ôl rhyddhad, a pha mor gyflym?**

Rhestrwch y signalau: profion, monitro, tocynnau cymorth, sylwadau defnyddwyr. Gofynnwch pa mor hir y mae pob un yn ei gymryd i gyrraedd y tîm. Atebion nodweddiadol: profion mewn munudau, tocynnau mewn dyddiau. Dewiswch un signal i'w gyflymu.

**Pa mor ddiogel yw hi i roi cynnig ar rywbeth a methu?**

Gofynnwch am enghraifft ddiweddar o arbrawf a fethodd a beth ddigwyddodd i'r bobl dan sylw. Mae'r Drydedd Ffordd yn dibynnu ar ddysgu o fethiannau bach. Trafodwch beth fyddai'n gwneud arbrofion yn fwy diogel, fel terfynau, dadwneud ac adolygu di-fai.

**Sut mae ein harferion ITIL yn ymddangos yn y biblinell, a ble nad ydynt?**

Cymerwch arferion newid, digwyddiadau a gwybodaeth a gofynnwch ble mae pob un yn ymddangos yn yr awtomeiddio. Mae bylchau yn pwyntio at waith â llaw neu reolaethau nad oes tystiolaeth ar eu cyfer. Cytunwch ar un arfer i'w symud i'r biblinell.

## Yn ymarferol: enghraifft o ITIL ystwyth

Mae gan wasanaeth post cenedlaethol grŵp datblygu o 40 a grŵp gweithrediadau o 25. Mae datblygwyr yn rhyddhau fersiwn fawr bob chwarter ac yn trosglwyddo pecyn a dogfen hir i weithrediadau, sy'n eu defnyddio dros benwythnos. Mae gweithrediadau'n cwyno nad yw datblygwyr yn deall cynhyrchu, ac mae datblygwyr yn cwyno na ellir cyrraedd gweithrediadau pan fo angen atgyweiriad cyflym ar nam. Cymerodd rhyddhad diweddar 19 awr, torrodd dudalen olrhain parseli, ac arweiniodd at ddiwrnod o bwyntio bys.

Mae pennaeth platfform newydd yn cynnig treial gydag un tîm cynnyrch, y gwasanaeth olrhain parseli. Mae pedwar datblygwr a dau beiriannydd gweithrediadau yn ffurfio un tîm sy'n berchen ar y gwasanaeth o un pen i'r llall. Mae datblygwyr yn ymuno â'r rota ar alwad, gyda chefnogaeth y peirianwyr gweithrediadau. Mae'r tîm yn adeiladu piblinell sy'n adeiladu, profi a defnyddio pob newid wedi'i uno i amgylchedd llwyfannu, ac yn defnyddio i gynhyrchu gydag un cam cymeradwyo y mae perchennog y gwasanaeth yn ei roi. Crëir cofnodion newid gan y biblinell. Ychwanegir monitro, mae rhybuddion yn mynd i'r tîm cyfan, ac mae pob digwyddiad cynhyrchu yn cael adolygiad byr, di-fai. Mae'r tîm yn cytuno i ryddhau o leiaf yn wythnosol, ac mae pennaeth y platfform yn gofyn iddo olrhain amser arweiniol, amlder defnyddio, cyfradd methu newid ac amser adfer.

Ar ôl pedwar mis mae'r tîm yn rhyddhau ddwywaith yr wythnos, mae'r amser canolrifol o uno i gynhyrchu o dan ddiwrnod, ac atgyweiriwyd y digwyddiad diwethaf mewn llai nag awr gan y datblygwr a ysgrifennodd y newid. Nid yw popeth yn gweithio. Mae'r peirianwyr gweithrediadau'n canfod bod rhybuddion y datblygwyr yn swnllyd, ac mae datblygwyr yn digio bod ar alwad yn y nos. Ni ddywedwyd wrth dîm cyfagos sy'n dibynnu ar olrhain parseli am y rhythm newydd a synnwyd ef gan newid. Mae pennaeth y platfform yn neilltuo amser i'r tîm diwnio rhybuddion, yn ychwanegu rota gyda therfyn ar alwadau nos, ac yn trefnu cyfarfod misol gyda thimau dibynnol. Mae archwiliad mewnol yn gofyn i weld y dystiolaeth ar gyfer cymeradwyaethau, ac mae pennaeth y platfform yn dangos cofnodion y biblinell a'r adolygiadau digwyddiadau.

## Pedwar persbectif

### Timau cynnyrch a chyflawni

Mae timau cyflawni'n cymryd cyfrifoldeb gweithredol: monitro, ar alwad a dysgu o ddigwyddiadau. Adeiladwch y biblinell a'r adborth sydd eu hangen arnoch, a gofynnwch am arbenigedd gweithrediadau yn hytrach na throsglwyddo. Cadwch newidiadau'n fach ac yn weladwy.

### Timau gwasanaeth a gweithrediadau

Mae timau gweithrediadau'n dod â gwybodaeth am sut mae gwasanaethau'n methu a pha reolaethau sy'n bwysig. Helpwch i adeiladu'r platfform a'r gwiriadau, rhannwch ar alwad, a dysgwch. Osgowch fod yn borth; byddwch yn alluogwr sy'n gwneud y llwybr diogel yn llwybr hawdd.

### Arweinyddiaeth a llywodraethu

Mae arweinwyr yn creu'r amodau: nodau a rennir ar draws datblygu a gweithrediadau, amser ar gyfer awtomeiddio, diwylliant sy'n dysgu o fethiant, ac ymddiriedaeth mewn tystiolaeth o'r biblinell. Osgowch ailenwi timau heb newid cymhellion, a gofynnwch am ganlyniadau, nid am fabwysiadu DevOps.

### Cwsmeriaid a defnyddwyr

Mae cwsmeriaid a defnyddwyr yn gweld DevOps fel gwella cyflymach ac adfer cyflymach. Disgwyliwch newidiadau bach mynych a chyfathrebu clir amdanynt. Rhowch adborth yn gyflym, gan fod y tîm wedi'i sefydlu i'w ddefnyddio.

## Dulliau methu cyffredin

- **Tîm DevOps fel seilo newydd.** Nid yw datblygu a gweithrediadau yn siarad o hyd. Yn lle hynny, lledaenwch arferion ar draws timau a defnyddiwch dimau platfform i alluogi.
- **Offer heb ddiwylliant.** Adeiledir piblinell ac nid oes dim arall yn newid. Yn lle hynny, newidiwch berchnogaeth, cymhellion ac adborth gyda'i gilydd.
- **Cyflymder heb ddiogelwch.** Mae rhyddhadau'n cyflymu ac mae methiannau'n codi. Yn lle hynny, buddsoddwch mewn profion, monitro a dadwneud cyn cyflymder.
- **Gollwng ITIL yn llwyr.** Mae cofnodion a rheolaethau'n diflannu. Yn lle hynny, cadwch yr arferion a'u gweithredu yn y biblinell.
- **Datblygwyr ar alwad heb gefnogaeth.** Daw llosgi allan. Yn lle hynny, rhannwch y rota, tiwniwch rybuddion a chyfyngwch alwadau nos.
- **Metrigau fel targedau.** Mae timau'n chwarae cyfrifon defnyddio. Yn lle hynny, defnyddiwch sawl mesur a chymharwch â'ch hanes eich hun.
- **Anwybyddu timau dibynnol.** Mae newidiadau'n synnu cymdogion. Yn lle hynny, cyfathrebwch rythm a newidiadau i dimau sy'n dibynnu ar eich un chi.
- **Trin y gair fel y nod.** Mae labeli yn disodli canlyniadau. Yn lle hynny, gofynnwch sut olwg sydd ar well llif, adborth a dysgu i'ch defnyddwyr.

## Model aeddfedrwydd

| Dimensiwn | Cychwyn | Datblygu | Safoni | Rheoli | Cydlynu |
|---|---|---|---|---|---|
| Perchnogaeth a rennir | Mae datblygu a gweithrediadau yn trosglwyddo wrth ryddhau | Mae rhai timau'n rhannu ar alwad | Mae timau'n berchen ar eu gwasanaethau o un pen i'r llall gyda chefnogaeth | Mesurir effeithiau perchnogaeth ar ansawdd a llwyth | Cydlynir modelau perchnogaeth ar draws timau, platfformau a chyflenwyr |
| Awtomeiddio a llif | Mae cyflawni â llaw ac mewn sypiau | Mae rhai piblinellau'n bodoli | Mae piblinell gyffredin yn adeiladu, profi, defnyddio a chofnodi newidiadau | Mesurir a thiwnir amser arweiniol, amlder, methiant ac adfer | Optimeiddir piblinellau a llif ar draws timau a ffrydiau gwerth |
| Adborth | Daw adborth gan ddefnyddwyr ar ôl problemau | Mae rhai timau'n monitro rhyddhadau | Mae profion, monitro ac adborth defnyddwyr yn cyrraedd timau o fewn munudau neu oriau | Mesurir a gwellir cyflymder ac ansawdd adborth | Mae dolenni adborth yn ymestyn ar draws timau, cyflenwyr a chwsmeriaid |
| Diwylliant a dysgu | Mae bai yn dilyn methiant | Rhai adolygiadau di-fai | Mae adolygiadau di-fai, arbrofion ac amser dysgu yn rheolaidd | Olrheinir gweithredoedd dysgu a gwirir canlyniadau | Mae dysgu'n lledaenu ar draws y sefydliad yn barhaus |

## Rhestr wirio

- [ ] Mae gennym ddiffiniad ysgrifenedig a rennir o'r hyn y mae DevOps yn ei olygu i ni.
- [ ] Mae timau sy'n adeiladu gwasanaeth yn rhannu cyfrifoldeb am ei redeg.
- [ ] Mae piblinell yn adeiladu, profi a defnyddio newidiadau ac yn cofnodi'r hyn a wnaeth.
- [ ] Rhyddheir newidiadau mewn sypiau bach, yn aml.
- [ ] Mae adborth profion, monitro a defnyddwyr yn cyrraedd y tîm yn gyflym.
- [ ] Mae gwiriadau diogelwch a pholisi yn rhedeg yn y biblinell.
- [ ] Rhennir ar alwad, gyda therfynau ar alwadau nos a rhybuddion wedi'u tiwnio.
- [ ] Mae adolygiadau digwyddiadau yn ddi-fai ac yn cynhyrchu gweithredoedd a berchnogir.
- [ ] Rydym yn olrhain amser arweiniol, amlder defnyddio, cyfradd methu newid ac amser adfer ar gyfer pob gwasanaeth.
- [ ] Dywedir wrth dimau dibynnol am ein rhythm rhyddhau a'n newidiadau mawr.

## Anogwyr AI

**Pwrpas: mapio'r arosiadau rhwng "parod" a "byw."**

```text
Helpwch fi i fapio'r arosiadau ar gyfer newid nodweddiadol yn [tîm neu wasanaeth].

Y camau o "barod" i "byw," pwy sy'n gwneud pob un, a yw'n llaw neu'n awtomataidd, a pha mor hir y mae gwaith yn aros cyn pob un (defnyddiwch ddata go iawn; marciwch amcangyfrifon fel amcangyfrifon): [gludwch].

Cynhyrchwch ddiagram testun syml, amlygwch y tri aros hiraf a pha dîm sy'n berchen ar bob un, ac awgrymwch, ar gyfer pob un, gwestiwn i'w ofyn am a yw'r aros yn amddiffyn rhag risg go iawn. Peidiwch â dyfeisio hydoedd. Os yw'r data'n rhy denau, dywedwch beth i'w gasglu. Gofynnwch gwestiynau eglurhaol yn gyntaf, a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

**Pwrpas: gwirio ble mae arferion ITIL yn ymddangos yn eich piblinell.**

```text
Helpwch fi i gymharu ein piblinell ag arferion rheoli gwasanaethau.

Beth mae ein piblinell yn ei wneud heddiw, cam wrth gam: [gludwch].
Yr arferion rydym eisiau eu gwirio: galluogi newid, rhyddhau a defnyddio, rheoli digwyddiadau, rheoli problemau, rheoli gwybodaeth, rheoli cyfluniad.

Ar gyfer pob arfer, dywedwch beth yn y disgrifiad o'r biblinell sy'n ymddangos yn ei gefnogi (dyfynnwch fy ngeiriau), beth sydd ar goll, ac un cwestiwn i'w ofyn. Peidiwch â honni bod safon yn mynnu unrhyw beth oni bai fy mod wedi gludo ei destun. Gofynnwch gwestiynau eglurhaol yn gyntaf, a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

**Pwrpas: cynllunio peilot o berchnogaeth a rennir gydag un tîm.**

```text
Cynlluniwch beilot pedwar mis o berchnogaeth a rennir ar gyfer [gwasanaeth], gan ddod â [nifer] o ddatblygwyr a [nifer] o beirianwyr gweithrediadau at ei gilydd.

Trefniant heddiw: [disgrifiwch pwy sy'n adeiladu, pwy sy'n rhedeg, pwy sydd ar alwad].
Pryderon pob ochr: datblygu [rhestrwch]; gweithrediadau [rhestrwch].
Mesurau sydd gennym: [rhestrwch].

Rhowch gynllun gyda: ffurfio tîm, trefniadau ar alwad gyda therfynau, gwaith piblinell a monitro, sut mae'r tîm yn dysgu o ddigwyddiadau, pa fesurau i'w hadolygu (gadewch dargedau fel [i'w cytuno]), pa dystiolaeth i'w chadw ar gyfer archwilio, a sut i ddweud wrth dimau dibynnol. Gofynnwch gwestiynau eglurhaol yn gyntaf, nodwch ragdybiaethau, a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

**Pwrpas: dylunio adolygiad digwyddiad di-fai ar gyfer tîm cymysg.**

```text
Dyluniwch adolygiad di-fai 45 munud ar gyfer y digwyddiad hwn: [disgrifiwch y digwyddiad yn ffeithiol].

Pobl dan sylw: [rolau o ddatblygu a gweithrediadau].
Gwybodaeth sydd ar gael (llinell amser, rhybuddion, newidiadau): [rhestrwch].

Darparwch agenda sy'n adeiladu'r llinell amser yn gyntaf, yn canfod achosion cyfrannol mewn systemau a phrosesau, yn nodi beth aeth yn dda, ac yn gorffen gyda thair gweithred ar y mwyaf gyda pherchnogion. Cynhwyswch anogwyr sy'n osgoi bai. Gofynnwch gwestiynau eglurhaol yn gyntaf, a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

## Sgiliau AI

- [agile-delivery](../../../../skills/agile-delivery/SKILL.md): defnyddiwch i gynllunio rhyddhadau bach, mynych a'r gwiriadau o'u cwmpas.
- [test-driven-development](../../../../skills/test-driven-development/SKILL.md): defnyddiwch i adeiladu'r profion awtomataidd y mae piblinell yn dibynnu arnynt.
- [shift-left-testing](../../../../skills/shift-left-testing/SKILL.md): defnyddiwch i symud profion a gwiriadau diogelwch yn gynharach yn y biblinell.
- [on-call-rotation](../../../../skills/on-call-rotation/SKILL.md): defnyddiwch i ddylunio ar alwad a rennir gyda therfynau teg.
- [postmortem](../../../../skills/postmortem/SKILL.md): defnyddiwch i redeg adolygiadau di-fai sy'n bwydo'r Drydedd Ffordd.

(Mae'r sgiliau eu hunain wedi'u hysgrifennu yn Saesneg.)

## Prif ffynonellau

- **DevOps** (Wikipedia): trosolwg o ddiffiniadau, arferion, perthnasoedd ag ystwyth, SRE a DevSecOps, a metrigau DORA, gyda dadleuon a nodwyd.
- **The Three Ways: The Principles Underpinning DevOps** (Gene Kim, IT Revolution): y ffynhonnell ar gyfer llif, adborth a dysgu parhaus.
- **DORA capabilities and metrics** (dora.dev): rhestr galluoedd y rhaglen ymchwil a'i mesurau cyflawni meddalwedd.
- **The DevOps Handbook** a **The Phoenix Project** (Gene Kim a chyd-awduron): y llyfrau sy'n datblygu'r Tair Ffordd yn fanwl.

Mae'r ffynonellau hyn yn Saesneg.

## Cyfeiriadau

1. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
2. The Three Ways: The Principles Underpinning DevOps — Gene Kim, IT Revolution — https://itrevolution.com/the-three-ways-principles-underpinning-devops/
3. DORA capabilities — DORA, dora.dev — https://dora.dev/capabilities/
4. DORA's software delivery performance metrics — DORA, dora.dev — https://dora.dev/guides/dora-metrics-four-keys/
5. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
6. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
7. Continuous delivery — Wikipedia — https://en.wikipedia.org/wiki/Continuous_delivery
8. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
9. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
