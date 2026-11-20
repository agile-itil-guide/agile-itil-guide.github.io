# Sgiliau ac Anogwyr AI

**Mae anogwr da yn rhoi i gynorthwyydd AI y deunydd, y dasg a'r gwiriadau sydd eu hangen arno, ac mae sgil dda yn pecynnu'r wybodaeth honno fel y gall tîm ei hailddefnyddio, sy'n gwneud yr anogwyr a'r sgiliau AI yn y canllaw hwn yn fannau cychwyn y byddwch yn eu haddasu ac yn eu gwirio.**

## Pam mae hyn yn bwysig

Mae pob pwnc yn y canllaw hwn yn gorffen gydag anogwyr a sgiliau. Maent yn bodoli oherwydd bod llawer o'r tasgau mewn rheoli gwasanaethau yn addas iawn i gynorthwyydd all ddarllen pentwr o docynnau, drafftio llawlyfr gweithredu, neu droi nodiadau yn gynllun. Maent hefyd yn bodoli oherwydd bod cais amwys i AI yn cynhyrchu canlyniadau amwys, ac weithiau anghywir. Mae'r gwahaniaeth rhwng ateb defnyddiol ac un credadwy ond gwag yn aml yn gorwedd yn y ffordd yr ysgrifennwyd y cais a pha ddeunydd a ddaeth gydag ef.

Mae'r pwnc hwn yn egluro sut i ddefnyddio anogwyr a sgiliau'r canllaw, pam eu bod wedi'u hysgrifennu fel y maent, a sut i ysgrifennu eich rhai eich hun ar gyfer eich tîm. Mae'n ymwneud ag arferion yn fwy na thriciau: cyflenwi deunydd go iawn, dweud beth rydych ei eisiau, gofyn i'r cynorthwyydd farcio'r hyn nad yw'n ei wybod, a gwirio'r hyn sy'n dod yn ôl. Mae'n adeiladu ar y rhybuddion yn y pwnc blaenorol, sy'n disgrifio ble mae AI yn helpu a ble gall niweidio (gweler Pwnc 6.2 — AI mewn Rheoli Gwasanaethau TG).

Mae'r ffynonellau'n ymarferol. Mae sgil `skills/prompt-engineering` y canllaw ei hun yn disgrifio ysgrifennu anogwyr fel yr arfer bwriadol o ddylunio ac ailadrodd ar y cyfarwyddiadau a roddir i fodel iaith, gan drin anogwr fel darn bach o feddalwedd a ysgrifennir, a brofir yn erbyn achosion go iawn, ac a ddiwygir. Mae dogfennaeth Claude Code yn disgrifio sut mae sgiliau wedi'u strwythuro fel cyfeiriaduron gyda ffeil `SKILL.md`. Mae'r [erthygl Wikipedia ar fodelau iaith mawr](https://en.wikipedia.org/wiki/Large_language_model) (yn Saesneg) yn rhoi cefndir. Nid oes unrhyw ffynhonnell a ddarllenwyd ar gyfer y canllaw hwn yn cynnig tystiolaeth ar ba dechnegau anogwyr sy'n gweithio orau; triniwch y technegau yma fel arferion i'w profi.

## Cysyniadau craidd

### Anogwyr, sgiliau, ac at beth y maent

**Anogwr** yw'r cyfarwyddyd a'r deunydd a roddwch i gynorthwyydd AI ar gyfer un dasg. **Sgil**, yn y fformat a ddefnyddir yn ffolder `skills/` y canllaw hwn, yw pecyn ailddefnyddiadwy o wybodaeth ar gyfer math o dasg: cyfeiriadur sy'n cynnwys ffeil `SKILL.md` sy'n dweud pryd i'w ddefnyddio a sut i wneud y gwaith. Yn nogfennaeth Claude Code, cyfeiriadur yw sgil gyda ffeil `SKILL.md` ofynnol y mae gan ei blaenmater enw a disgrifiad, ac mae ei chorff yn rhoi'r cyfarwyddiadau; mae'r cynorthwyydd yn defnyddio'r disgrifiad i benderfynu pryd i gymhwyso'r sgil, ac yn llwytho'r corff llawn dim ond pan gaiff ei ddefnyddio.

| | Anogwr | Sgil |
|---|---|---|
| **Cwmpas** | Un dasg, nawr | Math o dasg, wedi'i ailddefnyddio |
| **Yn byw** | Mewn sgwrs neu ddogfen | Mewn ffolder, fel `skills/` neu gyfeiriadur sgiliau prosiect |
| **Newidir gan** | Chi, bob tro | Y tîm, gydag adolygiad |
| **Gorau ar gyfer** | Dadansoddi penodol o'ch deunydd eich hun | Dulliau ailadroddadwy fel rhedeg ôl-drafodaeth |

### Sut y mae anogwyr y canllaw wedi'u hadeiladu

Mae anogwyr y canllaw hwn yn dilyn patrwm syml, a nodir yn y canllaw arddull:

1. **Mae diben un llinell mewn print trwm** yn dweud pwrpas yr anogwr.
2. **Mae bloc caeedig** yn cynnwys testun y gallwch ei gopïo a'i ludo.
3. **Mae dalfeydd mewn cromfachau sgwâr** yn nodi'r hyn y mae'n rhaid i chi ei gyflenwi, gydag awgrym o'r hyn i'w roi yno.
4. **Tasg** sy'n enwi'r allbwn a ddymunir.
5. **Ffiniau**: peidiwch â dyfeisio rhifau, ffynonellau, dyfyniadau na honiadau cydymffurfio; defnyddiwch y deunydd a ludwyd yn unig.
6. **Cais i ofyn yn gyntaf** pan fo gwybodaeth ar goll, ac i farcio rhagdybiaethau.
7. **Gwiriad terfynol**: "Rhestrwch yr hyn nad ydych yn siŵr ohono."

Mae rhesymau dros y rhannau hyn. Mae dalfeydd yn eich gorfodi i ddod â deunydd go iawn. Mae'r ffin yn atal y cynorthwyydd rhag llenwi bylchau â dyfeisio. Mae'r cais am gwestiynau eglurhaol yn troi dyfaliad unwaith yn sgwrs fer. Mae'r llinell olaf yn gwneud i'r cynorthwyydd nodi ei fannau gwan ei hun, sy'n eich helpu i benderfynu beth i'w wirio.

### Patrymau sy'n helpu

Mae sgil `prompt-engineering` y canllaw yn rhestru technegau, y mae'r canllaw hwn yn eu crynhoi yn ei eiriau ei hun:

- **Byddwch yn benodol am yr allbwn rydych ei eisiau,** fel tabl â cholofnau a enwir, neu restr rifedig o bump eitem ar y mwyaf, fel nad yw'r cynorthwyydd yn dyfalu'r siâp.
- **Rhowch enghreifftiau pan fo cyfarwyddiadau'n amwys,** gan ddangos y patrwm rydych ei eisiau mewn sampl fer.
- **Cyflenwch y cyd-destun na all y cynorthwyydd ei wybod,** fel eich terminoleg, cyfyngiadau a'r ddogfen dan sylw, a dywedwch beth ni ddylai ei dybio.
- **Ailadroddwch yn erbyn achosion prawf go iawn,** gan redeg yr anogwr ar ystod o fewnbynnau go iawn a diwygio lle mae'n methu, yn lle ei farnu yn ôl un enghraifft dda.

Gall anogwr a diwniwyd ar un mewnbwn fethu ar eraill. Mae'r sgil yn gwneud y pwynt y gall mewnbwn byr, wedi'i eiriad yn rhyfedd, neu un sy'n colli maes, dorri anogwr a oedd yn ymdopi â'r enghraifft wreiddiol.

### Arferion gwirio

Mae angen gwirio pob allbwn mewn cyfrannedd â chost bod yn anghywir. Arferion sy'n helpu:

- **Gwiriwch ffeithiau yn erbyn y ffynhonnell a ludwyd gennych.** Gofynnwch i'r cynorthwyydd ddyfynnu'r rhan o'ch deunydd sy'n cefnogi pob datganiad.
- **Peidiwch byth â derbyn cyfeiriadau nad ydych wedi'u gweld.** Mae'r achosion a ddisgrifir yn y pwnc blaenorol yn cynnwys dyfyniadau llys dyfeisiedig; peidiwch â'u hailadrodd.
- **Gwahanwch yr hyn a welodd y cynorthwyydd oddi wrth yr hyn a dybiodd.** Mae anogwyr y canllaw yn gofyn am hyn.
- **Profwch gyfrifiadau eich hun,** neu gofynnwch am y gwaith a'i wirio.
- **Defnyddiwch ail olwg ar gyfer unrhyw beth sy'n gadael y tîm,** fel ateb i gwsmer neu bolisi.
- **Cadwch gofnodion o ddefnyddiau arwyddocaol,** fel y disgrifir ym Mhwnc 6.2 — AI mewn Rheoli Gwasanaethau TG.

### Diogelu data

Cyn gludo unrhyw beth i anogwr, gofynnwch beth mae'n ei gynnwys ac i ble yr aiff. Tynnwch ddata personol, manylion mewngofnodi a manylion masnachol cyfrinachol oni bai bod yr offeryn a'i delerau wedi'u cymeradwyo ar eu cyfer (gweler Pwnc 3.13 — Rheoli Diogelwch Gwybodaeth). Mae anogwyr y canllaw yn gofyn i chi wneud yn ddienw, ond eich cyfrifoldeb chi yw hynny. Pan fyddwch mewn amheuaeth, disgrifiwch y sefyllfa mewn termau cyffredinol.

### Sut olwg sydd ar sgil

O ddogfennaeth Claude Code a sgiliau'r canllaw hwn, cyfeiriadur fel `skills/runbook/` yw sgil sy'n cynnwys `SKILL.md`. Mae'r ffeil yn dechrau gyda blaenmater YAML rhwng marcwyr `---`, sy'n cynnwys o leiaf `name` a `description`. Mae'r ddogfennaeth yn dweud bod y disgrifiad yn dweud wrth y cynorthwyydd beth mae'r sgil yn ei wneud a phryd i'w ddefnyddio, ac yn argymell rhoi'r prif achos defnydd yn gyntaf. Mae'r corff yn rhoi'r dull mewn markdown. Gall ffeiliau eraill, fel dogfennau cyfeirio neu sgriptiau, eistedd wrth eu hochr a chael eu llwytho pan fo angen; mae'r ddogfennaeth yn cynghori cadw `SKILL.md` ei hun yn fyr, o dan 500 llinell.

Mae'r sgiliau a gopïwyd yn y canllaw hwn yn dilyn yr un siâp. Mae eu disgrifiadau'n dechrau gyda "Use when asked to…", sy'n ei gwneud yn glir pryd mae pob un yn berthnasol.

### Ble mae sgiliau'n byw

Mae'r ddogfennaeth yn disgrifio sgiliau personol yng nghyfeiriadur sgiliau cartref defnyddiwr, sgiliau prosiect yng nghyfeiriadur sgiliau ystorfa y gellir ei gomisiynu a'i rannu â thîm, a lleoliadau eraill fel ategion. I dîm, ffolder prosiect o dan reoli fersiynau yw'r lle naturiol: caiff sgiliau eu hadolygu, eu newid drwy'r un broses â gwaith arall, ac maent ar gael i bawb.

### Ysgrifennu eich sgiliau tîm eich hun

Mae sgil tîm yn dal arfer y mae'r tîm yn ei ailadrodd ac eisiau iddo gael ei wneud yn gyson. Enghreifftiau ar gyfer rheoli gwasanaethau: sut i ysgrifennu adolygiad ôl-ddigwyddiad yn eich arddull tŷ, sut i ddidoli math penodol o docyn, sut i baratoi cais am newid, sut i redeg eich adolygiad dydd Gwener. I ysgrifennu un:

1. **Dewiswch dasg rydych yn ei hailadrodd** ac sydd â ffordd dda hysbys o'i gwneud.
2. **Ysgrifennwch y disgrifiad yn gyntaf,** gan ddechrau gyda "Use when…" a'r prif achos defnydd, fel bod y cynorthwyydd a'ch cydweithwyr yn gwybod pryd mae'n berthnasol.
3. **Ysgrifennwch y dull** fel camau byr, gyda'r fformat allbwn, gwiriadau a phethau i'w hosgoi.
4. **Ychwanegwch enghreifftiau** o ganlyniad da, gyda manylion sensitif wedi'u tynnu.
5. **Dywedwch beth na ddylai ei wneud,** fel dyfeisio ffigurau neu anfon unrhyw beth heb adolygiad.
6. **Profwch ef ar achosion go iawn** a diwygiwch.
7. **Rhowch berchennog a dyddiad adolygu iddo,** fel unrhyw ddogfen a rennir arall.

### Sgiliau yn y canllaw hwn

Mae'r ffolder `skills/` yn yr ystorfa hon yn dal copïau o sgiliau o gasgliad skills-on-ai, a restrir yn `skills/README.md`, a dau sgil a ysgrifennwyd ar gyfer y canllaw hwn: un i ddarllenwyr ac un i gynhaliwyr. Mae pob pwnc yn cysylltu â'r sgiliau mwyaf defnyddiol ar gyfer ei bwnc, gyda brawddeg ar bryd i ddefnyddio pob un. Mae'r sgiliau a gopïwyd yn gyffredinol, nid yn benodol i gynnwys y canllaw hwn, felly defnyddiwch hwy fel mannau cychwyn ac addaswch eu hallbwn i'ch cyd-destun.

### Terfynau

Nid oes unrhyw ffynhonnell a ddarllenwyd ar gyfer y canllaw hwn yn mesur pa mor dda y mae unrhyw dechneg anogwyr yn gweithio, ac mae offer AI yn newid yn gyflym. Roedd dogfennaeth Claude Code a ddarllenwyd yn hir ac fe'i darllenwyd yn rhannol yn unig. Cyngor ymarferol sydd wedi dal mewn defnydd cyffredinol yw'r hyn sy'n dilyn, a gynigir fel arferion i'w profi ac nid fel gwarantau.

## Arferion gorau

1. **Dechreuwch o dasg go iawn a deunydd go iawn.** Dewiswch rywbeth y mae angen i chi ei wneud, a gludwch y ffeithiau gwirioneddol, nid disgrifiad ohonynt. Llenwch bob dalfa â manylion penodol.
2. **Nodwch y diben mewn un llinell.** Dywedwch at beth y mae'r allbwn a phwy fydd yn ei ddefnyddio. Mae'n helpu'r cynorthwyydd i ddewis y lefel gywir o fanylder.
3. **Penodwch yr allbwn.** Enwch y fformat, yr hyd a'r strwythur rydych eu heisiau. Gofynnwch am dabl pan fyddwch eisiau cymharu, rhestr pan fyddwch eisiau camau.
4. **Gosodwch ffiniau.** Dywedwch beth na ddylai'r cynorthwyydd ei wneud: dyfeisio rhifau, ffynonellau neu ddyfyniadau; tybio ffeithiau na roddwyd; honni bod rheol yn berthnasol heb y testun.
5. **Gofynnwch am gwestiynau eglurhaol yn gyntaf.** Dywedwch wrth y cynorthwyydd am ofyn beth sydd ei angen arno cyn ateb. Atebwch yn fyr, ac yna gofynnwch iddo fynd ymlaen.
6. **Gofynnwch iddo wahanu ffeithiau oddi wrth ragdybiaethau.** Gwnewch iddo farcio'r hyn a gymerodd o'ch deunydd a'r hyn a dybiodd. Mae anogwyr y canllaw hwn yn gorffen gyda "Rhestrwch yr hyn nad ydych yn siŵr ohono."
7. **Gofynnwch am dystiolaeth.** Gofynnwch am ddyfyniadau o'ch deunydd sy'n cefnogi pob honiad, fel y gallwch wirio'n gyflym.
8. **Ailadroddwch.** Triniwch yr ateb cyntaf fel drafft. Dywedwch beth sy'n anghywir a gofynnwch am ddiwygiad, neu newidiwch yr anogwr a cheisiwch eto.
9. **Profwch anogwyr ar sawl achos.** Cyn i chi ddibynnu ar anogwr, rhedwch ef ar dri neu bedwar mewnbwn go iawn, gan gynnwys un anarferol. Nodwch ble mae'n methu.
10. **Diogelwch ddata.** Tynnwch fanylion personol a chyfrinachol cyn gludo. Defnyddiwch offer cymeradwy. Dilynwch bolisi eich sefydliad.
11. **Gwiriwch cyn defnyddio.** Gwiriwch ffeithiau, rhifau a chyfeiriadau. Gofynnwch i berson adolygu unrhyw beth sy'n mynd at gwsmeriaid neu'n newid system.
12. **Rhannwch yr hyn sy'n gweithio.** Rhowch anogwyr sy'n profi'n ddefnyddiol, gyda'u nodiadau, mewn sgil tîm neu ddogfen o dan reoli fersiynau, gyda pherchennog.

## Cwestiynau i'w trafod gyda'ch tîm

**Pa dasgau ydym ni'n eu hailadrodd y gallai cynorthwyydd helpu â nhw, a beth fyddai angen i ni ei wirio?**

Gofynnwch i bob person restru tasgau, a marcio'r risg pe bai'r allbwn yn anghywir. Grwpiwch hwy yn risg isel, canolig ac uchel. Dechreuwch gydag un risg isel. Gall yr hwylusydd ofyn beth fyddai'r cam gwirio. Dewiswch un dasg ar gyfer treial.

**Beth ydym ni'n ei ludo i offer AI heddiw, ac a ddylem?**

Byddwch yn onest a heb farnu. Rhestrwch enghreifftiau. Cymharwch â'r polisi data a'r offer cymeradwy. Cytunwch ar wiriad cyflym y gall pobl ei gymhwyso cyn gludo: "a yw hwn yn cynnwys data personol, cyfrinachau, neu fanylion cyfrinachol?"

**Pa un o anogwyr y canllaw hwn fyddem ni'n rhoi cynnig arni'n gyntaf, a gyda pha ddeunydd go iawn?**

Pori'r anogwyr gyda'ch gilydd a dewis un. Nodwch y deunydd go iawn i'w ludo, tynnwch fanylion sensitif, a'i redeg. Cymharwch ganlyniadau a thrafodwch beth i'w newid yn yr anogwr. Mae hon yn ffordd gyflym o ddysgu'r patrwm.

**Sut y byddem yn gwybod bod anogwr yn gweithio?**

Gofynnwch am set brawf: ychydig o fewnbynnau go iawn gydag allbynnau da hysbys. Trafodwch sut i sgorio atebion a phwy sy'n penderfynu. Gobaith yw anogwr heb set brawf. Cytunwch ar set fach ar gyfer un anogwr.

**Pa arfer ydym ni'n ei ailadrodd sy'n haeddu bod yn sgil tîm?**

Rhestrwch ymgeiswyr: fformat adolygu, trefn ddidoli, templed ar gyfer adroddiadau. Dewiswch un, a drafftiwch y disgrifiad a'r camau gyda'ch gilydd. Penderfynwch pwy sy'n berchen arno a phryd y caiff ei adolygu.

**Beth na fyddem byth eisiau i AI ei wneud ar ei ben ei hun?**

Rhestrwch weithredoedd: anfon at gwsmeriaid, newid cynhyrchu, cymeradwyo mynediad, penderfynu ar flaenoriaeth. Trafodwch pam. Yr atebion yw'r ffiniau i'w hysgrifennu i'ch anogwyr a'ch sgiliau. Cytunwch ar restr fer.

## Yn ymarferol: enghraifft o ITIL ystwyth

Mae gan ddesg gwasanaeth TG ysbyty rhanbarthol bedwar dadansoddwr ar ddeg. Mae arweinydd y ddesg wedi sylwi bod cydweithwyr yn defnyddio cynorthwyydd AI mewn gwahanol ffyrdd: mae un yn gludo tocynnau cyfan, gan gynnwys enwau cleifion, i sgwrsfot cyhoeddus; mae un arall yn ysgrifennu anogwyr cymhleth ac yn cael crynodebau defnyddiol; nid yw'r rhan fwyaf yn ei ddefnyddio o gwbl. Roedd erthygl wybodaeth ddiweddar, a ddrafftiwyd gan gynorthwyydd, yn cynnwys cam gweithdrefn nad oedd yn bodoli.

Mae arweinydd y ddesg yn cynnal sesiwn awr gan ddefnyddio dull y canllaw hwn. Mae'n dechrau gyda data: mae'r grŵp yn cytuno ar reol nad oes manylion cleifion na manylion mewngofnodi yn mynd i unrhyw offeryn, a mai'r cynorthwyydd cymeradwy, y mae'r ysbyty wedi'i drwyddedu gyda thelerau addas, yw'r unig un a ddefnyddir gyda thestun tocynnau. Mae'n dewis un dasg, drafftio erthygl wybodaeth o docyn a ddatryswyd, ac yn defnyddio'r patrwm o anogwyr y canllaw hwn: diben un llinell, dalfa ar gyfer y tocyn dienw, cyfarwyddiadau i ddefnyddio cynnwys y tocyn yn unig, i farcio unrhyw gam a ddeilliwyd â thag, ac i restru'r hyn nad yw'n siŵr ohono. Mae dau ddadansoddwr yn rhedeg yr anogwr ar bum tocyn blaenorol, ac mae'r grŵp yn darllen y canlyniadau gyda'i gilydd. Mae'r anogwr yn dyfeisio cam mewn un achos; maent yn ychwanegu llinell sy'n gofyn am ddyfyniad o'r tocyn ar gyfer pob cam.

Mae arweinydd y ddesg yn ysgrifennu'r anogwr gwell fel sgil tîm yn ffolder a rennir y ddesg, gyda disgrifiad sy'n dechrau "Use when…", perchennog a dyddiad adolygu, ac yn ychwanegu rheol bod ail ddadansoddwr yn gwirio pob erthygl a ddrafftiwyd cyn ei chyhoeddi. Ar ôl dau fis, mae nifer yr erthyglau a ddrafftiwyd yr wythnos wedi dyblu ac mae adolygwyr yn canfod llai o wallau nag o'r blaen. Erys rhai problemau. Mae dau ddadansoddwr yn dal i ludo manylion i offeryn cyhoeddus pan gânt eu gwasgu, mae'r sgil yn cynhyrchu geiriad rhy ffurfiol y mae dadansoddwyr yn ei ailysgrifennu, ac mae un adolygydd yn cyfaddef ei fod yn sgimio. Mae arweinydd y ddesg yn ailadrodd y rheol data ym mhob cyfarfod tîm, yn ychwanegu enghraifft arddull at y sgil, ac yn gofyn i adolygwyr dicio rhestr wirio fer.

## Pedwar persbectif

### Timau cynnyrch a chyflawni

Mae timau cyflawni yn defnyddio cynorthwywyr ar gyfer cod, profion a dogfennaeth. Cymhwyswch yr un arferion: deunydd go iawn, ffiniau clir, gwirio ac adolygu. Cadwch gyfrinachau allan o anogwyr, a storiwch yr anogwyr a'r sgiliau defnyddiol gyda'r cod.

### Timau gwasanaeth a gweithrediadau

Gall timau gweithrediadau ddefnyddio anogwyr i ddadansoddi tocynnau, drafftio llawlyfrau gweithredu a pharatoi adolygiadau. Cadwch ddata personol allan, gwiriwch allbynnau yn erbyn logiau a chofnodion, ac ysgrifennwch sgiliau ar gyfer arferion y mae'r tîm yn eu hailadrodd, fel adolygiadau ôl-ddigwyddiad a throsglwyddiadau sifft.

### Arweinyddiaeth a llywodraethu

Mae arweinwyr yn gosod y rheolau ar gyfer yr hyn y gellir ei ddefnyddio, gyda pha ddata, a phwy sy'n atebol. Gofynnwch am restr, polisi data a thystiolaeth o beilotiaid. Cefnogwch amser i dimau ysgrifennu a phrofi anogwyr a sgiliau, a sicrhewch fod gan sgiliau a rennir berchnogion.

### Cwsmeriaid a defnyddwyr

Gall cwsmeriaid a defnyddwyr weld canlyniadau anogwyr a sgiliau mewn atebion, erthyglau a chrynodebau. Disgwyliwch i ddarparwyr eu gwirio ac i ddweud wrthych pan fyddant yn defnyddio offer awtomataidd lle mae'n bwysig. Adroddwch am wallau, sy'n helpu i wella'r deunydd sylfaenol.

## Dulliau methu cyffredin

- **Ceisiadau amwys.** Mae'r cynorthwyydd yn dyfalu. Yn lle hynny, cyflenwch y deunydd, y diben a'r allbwn rydych ei eisiau.
- **Gludo data sensitif.** Mae manylion personol neu gyfrinachol yn gadael y sefydliad. Yn lle hynny, tynnwch hwy a defnyddiwch offer cymeradwy.
- **Derbyn cynnwys dyfeisiedig.** Defnyddir camau, rhifau neu gyfeiriadau ffug. Yn lle hynny, gosodwch ffiniau, gofynnwch am ddyfyniadau a gwiriwch.
- **Tiwnio ar un enghraifft.** Mae anogwr yn gweithio unwaith ac yn methu mewn mannau eraill. Yn lle hynny, profwch ar sawl mewnbwn go iawn.
- **Sgiliau heb berchnogion.** Mae anogwyr a rennir yn mynd yn hen. Yn lle hynny, neilltuwch berchennog a dyddiad adolygu, a'u cadw o dan reoli fersiynau.
- **Gorymddiried mewn anogwyr a gopïwyd.** Defnyddir anogwr o'r rhyngrwyd neu o'r canllaw hwn heb ei newid. Yn lle hynny, addaswch i'ch cyd-destun a gwiriwch ganlyniadau.
- **Dim ail olwg.** Mae allbwn AI yn mynd yn syth at gwsmeriaid. Yn lle hynny, gofynnwch i berson adolygu unrhyw beth sy'n gadael y tîm.
- **Trin y cynorthwyydd fel awdurdod.** Cymerir ei hyder fel cywirdeb. Yn lle hynny, gofynnwch beth nad yw'n siŵr ohono a gwiriwch.

## Model aeddfedrwydd

| Dimensiwn | Cychwyn | Datblygu | Safoni | Rheoli | Cydlynu |
|---|---|---|---|---|---|
| Arfer anogwyr | Mae pobl yn ysgrifennu anogwyr ad hoc | Mae rhai pobl yn rhannu anogwyr | Mae timau'n defnyddio patrwm cyffredin gyda diben, deunydd, ffiniau a gwiriadau | Profir ansawdd anogwyr ar setiau o achosion go iawn | Gwellir anogwyr ar draws timau o ganlyniadau prawf a rennir |
| Sgiliau | Dim sgiliau a rennir | Mae rhai sgiliau personol yn bodoli | Mae sgiliau tîm gyda pherchnogion a dyddiadau adolygu yn byw mewn rheoli fersiynau | Adolygir defnydd a chanlyniadau sgiliau | Rhennir a chynhelir sgiliau ar draws timau a phartneriaid |
| Gwirio a data | Ymddiriedir mewn allbwn; gludir data'n rhydd | Rhai gwiriadau a rheolau data | Mae arferion gwirio a pholisi data yn rheolaidd | Olrheinir a gweithredir ar wallau a digwyddiadau data | Cydlynir arfer gwirio a data ar draws y sefydliad |
| Dysgu | Mae dysgu'n unigol | Rhennir rhai awgrymiadau | Mae timau'n cynnal sesiynau rheolaidd i wella anogwyr a sgiliau | Olrheinir a mesurir gwelliannau | Mae dysgu'n lledaenu ar draws timau yn barhaus |

## Rhestr wirio

- [ ] Mae gan y tîm reol fer ar ba ddata all fynd i ba offer AI.
- [ ] Mae gan anogwyr rydym yn dibynnu arnynt ddiben a nodir, deunydd go iawn, ffiniau, a chais am yr hyn nad yw'r cynorthwyydd yn siŵr ohono.
- [ ] Mae pob anogwr rydym yn dibynnu arno wedi'i brofi ar o leiaf dri mewnbwn go iawn.
- [ ] Mae person yn adolygu allbwn sy'n mynd y tu allan i'r tîm.
- [ ] Gwirir cyfeiriadau a rhifau o allbwn AI yn erbyn ffynonellau.
- [ ] Cedwir anogwyr defnyddiol gyda nodiadau mewn man a rennir o dan reoli fersiynau.
- [ ] Mae gan sgiliau tîm ddisgrifiad "Use when…" clir, perchennog a dyddiad adolygu.
- [ ] Mae'r tîm wedi rhestru gweithredoedd na ddylai AI byth eu cymryd ar ei ben ei hun.
- [ ] Mae staff yn gwybod pa offer a gymeradwywyd.
- [ ] Rydym yn adolygu ein hanogwyr a'n sgiliau o leiaf ddwywaith y flwyddyn.

## Anogwyr AI

**Pwrpas: gwella anogwr rydych eisoes yn ei ddefnyddio.**

```text
Dyma anogwr rwy'n ei ddefnyddio: [gludwch ef].
Dyma enghraifft o fewnbwn rwy'n ei roi iddo, gyda manylion sensitif wedi'u tynnu: [gludwch].
Dyma'r hyn a gefais: [gludwch].
Dyma'r hyn roeddwn ei eisiau: [disgrifiwch].

Diagnosiwch pam y methodd yr allbwn, gan ddefnyddio'r testun uchod yn unig. Awgrymwch anogwr diwygiedig sydd: yn nodi'r diben, yn enwi fformat yr allbwn, yn gosod ffiniau (dim ffeithiau, rhifau na ffynonellau dyfeisiedig), yn gofyn am gwestiynau eglurhaol yn gyntaf, yn gofyn am ddyfyniadau o'r deunydd a gyflenwyd fel tystiolaeth, ac yn gorffen trwy ofyn i chi restru'r hyn nad ydych yn siŵr ohono. Cadwch ddalfeydd mewn [cromfachau sgwâr]. Peidiwch â newid y dasg. Rhestrwch yr hyn nad ydych yn siŵr ohono.
```

**Pwrpas: troi tasg ailadroddus yn ddrafft sgil tîm.**

```text
Helpwch fi i ddrafftio sgil tîm ar fformat SKILL.md ar gyfer y dasg hon: [enwch a disgrifiwch y dasg].

Sut rydym yn ei gwneud heddiw, cam wrth gam: [gludwch].
Sut olwg sydd ar ganlyniad da (enghraifft gyda manylion sensitif wedi'u tynnu): [gludwch].
Beth na ddylai byth ddigwydd (er enghraifft dyfeisio ffigurau neu anfon heb adolygiad): [rhestrwch].

Ysgrifennwch SKILL.md gyda blaenmater YAML sy'n cynnwys enw a disgrifiad sy'n dechrau gyda "Use when" ac yn rhoi'r prif achos defnydd yn gyntaf, yna corff gyda'r diben, camau dull byr, fformat allbwn, gwiriadau a phethau i'w hosgoi. Cadwch ef o dan 150 llinell. Marciwch bob eitem a ychwanegwyd gennych fel rhagdybiaeth. Gofynnwch gwestiynau eglurhaol yn gyntaf, a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

**Pwrpas: adeiladu set brawf fach ar gyfer anogwr.**

```text
Mae gennyf anogwr sy'n [disgrifiwch beth mae'n ei wneud]: [gludwch ef].

Helpwch fi i ddylunio set brawf o 5 i 10 mewnbwn: achosion nodweddiadol, achos anarferol, achos gyda maes ar goll, ac achos lle mai'r ateb cywir yw "dim digon o wybodaeth." Dywedwch wrthyf beth i'w gasglu o enghreifftiau go iawn (gyda manylion sensitif wedi'u tynnu), sut i gofnodi'r allbwn disgwyliedig, a sut i sgorio canlyniadau (cywir, rhannol gywir, anghywir, anghywir yn hyderus, gwrthod yn gywir). Peidiwch â dyfeisio cynnwys prawf; rhowch y categorïau a beth i chwilio amdano i mi. Gofynnwch gwestiynau eglurhaol yn gyntaf, a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

**Pwrpas: gwirio drafft a ysgrifennwyd gan AI yn erbyn ei ffynhonnell.**

```text
Dyma'r deunydd ffynhonnell: [gludwch].
Dyma ddrafft a gynhyrchwyd gan offeryn AI o'r deunydd hwnnw: [gludwch].

Rhestrwch bob datganiad yn y drafft, dywedwch a yw'r ffynhonnell yn ei gefnogi (dyfynnwch y testun cefnogi), yn ei wrth-ddweud, neu ddim yn sôn amdano, ac awgrymwch olygiadau i dynnu datganiadau heb gefnogaeth. Peidiwch ag ychwanegu ffeithiau eich hun. Rhowch grynodeb byr o ba mor ddibynadwy yw'r drafft. Rhestrwch yr hyn nad ydych yn siŵr ohono.
```

## Sgiliau AI

- [prompt-engineering](../../../../skills/prompt-engineering/SKILL.md): defnyddiwch i ysgrifennu, profi a gwella anogwyr fel eu bod yn rhoi canlyniadau dibynadwy.
- [machine-learning-model-card](../../../../skills/machine-learning-model-card/SKILL.md): defnyddiwch i ddogfennu pwrpas model a'i derfynau pan fo'ch tîm yn dibynnu ar un.
- [agile-coaching](../../../../skills/agile-coaching/SKILL.md): defnyddiwch wrth helpu tîm i adeiladu arferion o amgylch anogwyr a sgiliau dros amser.
- [agile-itil-guide-skill](../../../../skills/agile-itil-guide-skill/SKILL.md): defnyddiwch i ddod o hyd i bynciau yn y canllaw hwn, rhedeg sgwrs tîm o'i gwestiynau, neu addasu un o'i anogwyr.
- [agile-itil-guide-maintainer-skill](../../../../skills/agile-itil-guide-maintainer-skill/SKILL.md): defnyddiwch wrth ysgrifennu neu wirio pwnc, anogwr neu gyswllt sgil ar gyfer y canllaw hwn.

(Mae'r sgiliau eu hunain wedi'u hysgrifennu yn Saesneg.)

## Prif ffynonellau

- **Claude Code skills documentation** (code.claude.com): y disgrifiad o sut mae sgiliau wedi'u strwythuro fel cyfeiriaduron gyda ffeil `SKILL.md`.
- **Prompt engineering** (`skills/prompt-engineering/SKILL.md` y canllaw hwn): datganiad byr o dechnegau a'r achos dros brofi anogwyr ar fewnbynnau go iawn.
- **Large language model** (Wikipedia): cefndir ar sut mae'r systemau hyn yn cael eu hadeiladu a ble gallant fethu.
- **AI Risk Management Framework** (NIST): y fframwaith gwirfoddol ar gyfer rheoli risgiau AI, yn ddefnyddiol ar gyfer polisi tîm.

Mae'r ffynonellau hyn yn Saesneg.

## Cyfeiriadau

1. Skills (Claude Code documentation) — Anthropic — https://code.claude.com/docs/en/skills
2. Large language model — Wikipedia — https://en.wikipedia.org/wiki/Large_language_model
3. Prompt engineering — Wikipedia — https://en.wikipedia.org/wiki/Prompt_engineering
4. AI Risk Management Framework — NIST — https://www.nist.gov/itl/ai-risk-management-framework
5. Hallucination (artificial intelligence) — Wikipedia — https://en.wikipedia.org/wiki/Hallucination_(artificial_intelligence)
6. Retrieval-augmented generation — Wikipedia — https://en.wikipedia.org/wiki/Retrieval-augmented_generation
7. Artificial intelligence — Wikipedia — https://en.wikipedia.org/wiki/Artificial_intelligence
8. Version control — Wikipedia — https://en.wikipedia.org/wiki/Version_control
9. Information security — Wikipedia — https://en.wikipedia.org/wiki/Information_security
