# Datblygu Meddalwedd Main

**Mae datblygu meddalwedd main yn cymhwyso syniadau main o ddileu gwastraff, dysgu'n gyflym ac optimeiddio'r system gyfan at waith meddalwedd, ac mae'n rhoi ffordd gyffredin i dimau gwasanaeth o weld ble mae amser ac ymdrech yn gollwng allan o'r llif o gais i werth.**

## Pam mae hyn yn bwysig

Mae dulliau ystwyth yn dweud wrthych am gyflawni mewn camau bach a dysgu. Mae dull main yn gofyn cwestiwn llymach: i ble mae'r amser yn mynd? Yn y rhan fwyaf o sefydliadau gwasanaeth, mae'r amser gwaith ar gais yn rhan fach o'r amser a aeth heibio. Mae'r gweddill yn aros am gymeradwyaethau, trosglwyddiadau rhwng timau, ail-wneud oherwydd diffygion, a gwaith nad oedd neb ei eisiau yn y lle cyntaf. Mae dull main yn rhoi geiriau ac offer i chi weld y gwastraff hwnnw a'i dynnu.

Mae dull main hefyd yn canolbwyntio ar y system gyfan. Nid yw tîm sy'n cyflymu ei ran ei hun tra bod y ciw o'i flaen neu ar ei ôl yn tyfu wedi gwella dim i'r cwsmer. Mae'r farn hon yn gweddu'n dda i reoli gwasanaethau. Cyfanswm llawer o dimau, offer a chyflenwyr yw gwasanaeth, ac mae oedi yn unrhyw le yn oedi i'r defnyddiwr. Mae'r egwyddor "optimeiddio'r cyfan" yn atgof sefydlog i edrych ar y llif o un pen i'r llall.

Mae dull main yn ffynhonnell ar gyfer llawer o'r hyn sy'n ymddangos mewn mannau eraill yn y canllaw hwn. Mae Kanban yn tynnu ar yr un gwreiddiau (gweler Pwnc 1.5 — Kanban), mae rheoli ffrydiau gwerth yn cymhwyso mapio main at waith digidol (gweler Pwnc 5.4 — Rheoli Ffrydiau Gwerth), ac mae gwelliant parhaus yn adleisio'r arfer main o enillion bach cyson (gweler Pwnc 3.15 — Gwelliant Parhaus). Mae'r pwnc hwn yn egluro'r syniadau a sut i'w defnyddio heb eu troi'n sloganau.

## Cysyniadau craidd

### O ble y daw dull main

Yn ôl [erthygl Wikipedia ar weithgynhyrchu main](https://en.wikipedia.org/wiki/Lean_manufacturing) (yn Saesneg), tyfodd dull main o'r [System Gynhyrchu Toyota](https://en.wikipedia.org/wiki/Toyota_Production_System). Ar ôl yr Ail Ryfel Byd ychydig o arian parod, lle neu ddeunydd crai oedd gan weithgynhyrchwyr Japan, ac ail-gynlluniodd Taiichi Ohno a Shigeo Shingo broses Toyota o amgylch ffatrïoedd bach a stoc isel, gan adeiladu ar ddysgeidiaeth W. Edwards Deming. Bathodd John Krafcik y term "lean" mewn erthygl yn 1988, a'i ddiffinio'n ffurfiol gan James Womack a Daniel Jones yn eu llyfr *Lean Thinking* yn 1996.

Daw'r term "datblygu meddalwedd main" o'r llyfr *Lean Software Development: An Agile Toolkit* yn 2003 gan Mary a Tom Poppendieck, yn ôl yr [erthygl Wikipedia ar ddatblygu meddalwedd main](https://en.wikipedia.org/wiki/Lean_software_development). Mae'r llyfr yn addasu egwyddorion gweithgynhyrchu main i feddalwedd ac yn cymharu offer main ag arferion ystwyth. Helpodd sgyrsiau'r Poppendieck mewn cynadleddau ystwyth i ddod â'r syniadau i'r gymuned ystwyth.

### Pum egwyddor meddwl main

Mae Womack a Jones yn nodi pum egwyddor meddwl main, fel y mae'r erthygl ar weithgynhyrchu yn eu cofnodi:

1. **Gwerth:** diffinio gwerth o safbwynt y cwsmer.
2. **Ffrwd werth:** nodi'r dilyniant cyfan o gamau sy'n creu'r gwerth hwnnw, a herio'r camau nad ydynt yn ychwanegu dim.
3. **Llif:** gwneud i'r camau sy'n weddill lifo heb ymyrraeth.
4. **Tynnu:** gadael i alw'r cwsmer dynnu gwaith drwodd, yn lle ei wthio.
5. **Perffeithrwydd:** parhau i wella, fel bod gwastraff yn cael ei dynnu'n barhaus.

### Saith egwyddor ar gyfer meddalwedd

Mae'r erthygl Wikipedia ar ddatblygu meddalwedd main yn rhestru saith egwyddor ar gyfer meddalwedd:

| Egwyddor | Beth mae'n ei ofyn | Mewn gwaith gwasanaeth |
|---|---|---|
| **Dileu gwastraff** | Tynnu unrhyw beth nad yw'n ychwanegu gwerth i'r cwsmer | Gollwng cymeradwyaethau nad ydynt byth yn gwrthod, adroddiadau nad oes neb yn eu darllen, a nodweddion nad oes neb yn eu defnyddio |
| **Mwyhau dysgu** | Byrhau'r cylch o roi cynnig ar rywbeth i ddysgu sut yr aeth | Rhyddhau newidiadau bach a gwylio beth mae defnyddwyr yn ei wneud |
| **Penderfynu mor hwyr â phosibl** | Gohirio ymrwymiadau nes bod gennych ffeithiau, gan gadw opsiynau ar agor | Peidio â phennu dyluniad dyfodol llawn gwasanaeth cyn i chi wybod sut y caiff ei ddefnyddio |
| **Cyflawni mor gyflym â phosibl** | Lleihau'r amser o syniad i werth; mae cyflawni cyflym yn gadael i chi weld a dadansoddi canlyniadau'n gynt | Byrhau'r llwybr ar gyfer newidiadau bach a cheisiadau arferol |
| **Grymuso'r tîm** | Gadael i'r bobl sy'n gwneud y gwaith wneud penderfyniadau amdano | Rhoi'r awdurdod i'r ddesg gwasanaeth ddatrys problemau cyffredin heb uwchgyfeirio |
| **Adeiladu cywirdeb i mewn** | Adeiladu ansawdd i mewn wrth i'r gwaith gael ei wneud, yn lle ei archwilio wedyn | Profion awtomataidd, monitro a llawlyfrau gweithredu clir fel rhan o'r gwaith |
| **Optimeiddio'r cyfan** | Gwella'r llif o un pen i'r llall, nid perfformiad un rhan | Mesur yr amser o gais i ddatrysiad ar draws timau, nid ciw pob tîm ei hun |

Mae'r erthygl yn dweud mai dim ond pan gânt eu cymhwyso gyda'i gilydd a chyda barn gadarn am yr amgylchedd y mae'r egwyddorion hyn yn llwyddo. Mae hefyd yn galw'r gred bod "brys yn creu gwastraff" yn chwedl, gan ddadlau bod cyflawni cyflym yn helpu timau i weld a dadansoddi allbwn yn gynt. Barn yw'r honiad hwnnw, nid cyfraith: mae cyflymder heb ansawdd wedi'i adeiladu i mewn yn cynhyrchu gwastraff, a dyna pam mae "adeiladu cywirdeb i mewn" yn eistedd wrth ochr "cyflawni mor gyflym â phosibl".

### Gwastraff mewn gwaith meddalwedd a gwasanaeth

Daw saith gwastraff dull main (a elwir yn *muda*) o restr Shingo ar gyfer gweithgynhyrchu: stoc, gorgynhyrchu, gor-brosesu, cludiant, symudiad gormodol, aros a diffygion. Mae'r erthygl ar ddatblygu meddalwedd main yn eu mapio i feddalwedd fel hyn:

| Gwastraff gweithgynhyrchu | Cywerth meddalwedd | Enghraifft mewn tîm gwasanaeth |
|---|---|---|
| Stoc | Gwaith sydd wedi'i wneud yn rhannol | Rhestr hir o newidiadau a ddechreuwyd ond heb eu gorffen |
| Gorgynhyrchu | Nodweddion ychwanegol | Adroddiad neu wasanaeth nad oedd neb wedi gofyn amdano |
| Gor-brosesu | Prosesau ychwanegol | Pedair cymeradwyaeth ar newid risg isel |
| Cludiant | Newid tasgau | Peiriannydd yn cael ei dynnu rhwng digwyddiadau a gwaith prosiect |
| Aros | Aros | Tocyn yn aros yng nghiw tîm arall |
| Symudiad | Trosglwyddiadau | Cais yn pasio trwy bum person |
| Diffygion | Diffygion | Nam sy'n achosi ail-wneud a digwyddiadau ailadroddus |

Weithiau ychwanegir y termau Japaneg *mura* (anwastadrwydd) a *muri* (gorlwytho) at drafodaethau am wastraff. Dim ond y saith gwastraff y mae'r erthyglau Wikipedia a ddarllenwyd yma yn eu rhestru, felly defnyddiwch y termau ychwanegol yn ofalus, a'u diffinio pan fyddwch yn gwneud hynny.

### Mapio ffrwd werth

Mae'r erthygl ar ddatblygu meddalwedd main yn enwi mapio ffrwd werth fel y dechneg ar gyfer canfod gwastraff, gyda gwastraff yn cael ei dynnu mewn rowndiau dro ar ôl tro. Mae map yn dangos pob cam yn y llwybr o gais i werth a gyflawnwyd, gyda'r amser y mae gwaith yn ei dreulio yn cael ei weithio arno a'r amser y mae'n ei dreulio'n aros. Mae'r canlyniad yn aml yn sioc: gall llwybr sy'n cymryd wythnosau gynnwys oriau o waith gwirioneddol.

### Tynnu, llif a kanban

Mae egwyddor tynnu dull main y tu ôl i derfynau Kanban ar waith ar y gweill. Mae'r erthygl ar feddalwedd yn disgrifio datblygu mewn union bryd lle mae'r cwsmer yn datgan y canlyniad sydd ei angen ac mae'r tîm yn trefnu ei dasgau ei hun, gan dynnu gwaith wrth i gapasiti ganiatáu. Mae cardiau Kanban yn ffurf weladwy ar y tynnu hwnnw (gweler Pwnc 1.5 — Kanban).

### Kaizen: gwelliant bach cyson

Mae Kaizen yn golygu gwelliant parhaus, cynyddrannol. Mae'r erthygl ar weithgynhyrchu yn ei olrhain i dimau gwella yn Toyota yn 1936. Mewn tîm gwasanaeth, mae'n ymddangos fel newidiadau bach a wneir yn aml gan y bobl agosaf at y gwaith, fel templed wedi'i ddiwygio, gwiriad awtomataidd newydd, neu drosglwyddiad cliriach. Mae'n wahanol i raglenni gwella mawr yn yr ystyr nad yw byth yn aros am gylch cyllideb.

### Terfynau dull main

Nid yw'r erthyglau a ddarllenwyd yn enwi unrhyw feirniadaethau ffurfiol, ond mae terfynau ymarferol yn adnabyddus. Daeth dull main o weithgynhyrchu ailadroddadwy, ac mae gwaith gwybodaeth yn amrywio llawer mwy. Gall cyfrif gwastraff leihau'r slac y mae tîm ei angen i ymdopi â phethau annisgwyl, felly mae tîm sydd wedi'i lwytho'n llawn yn araf i ymateb i ddigwyddiad. Ystyriwch ddull main yn lens sy'n canfod gwastraff, a chadwch gapasiti sbâr lle mae amrywiad yn uchel (gweler Pwnc 3.11 — Argaeledd, Capasiti a Pherfformiad).

## Arferion gorau

1. **Diffiniwch werth o ochr y cwsmer.** Ar gyfer pob gwasanaeth, ysgrifennwch beth mae'r defnyddiwr yn ei gael mewn gwirionedd a phryd y mae'n ei gael. Defnyddiwch hyn i farnu pob cam: a yw'n ychwanegu gwerth i'r defnyddiwr, neu ddim ond yn gwasanaethu ein proses ein hunain?
2. **Mapiwch y ffrwd werth ar gyfer un math go iawn o gais.** Dewiswch gais neu newid cyffredin, a'i olrhain o'r cyswllt cyntaf hyd at gyflawni. Cofnodwch amser gwaith ac amser aros ar bob cam. Mae map bras a dynnir mewn awr yn fwy defnyddiol nag un perffaith a dynnir dros chwarter.
3. **Enwch y gwastraff a ganfyddwch.** Defnyddiwch y saith categori fel rhestr wirio: gwaith wedi'i wneud yn rhannol, nodweddion ychwanegol, proses ychwanegol, newid tasgau, aros, trosglwyddiadau, diffygion. Mae eu henwi yn eu gwneud yn haws i'w trafod heb feio unigolion.
4. **Ymosodwch ar yr aros hiraf yn gyntaf.** Mae'r oedi mwyaf yn y map fel arfer rhwng camau, nid y tu mewn iddynt. Mae ei leihau fel arfer yn well na llathru cam sydd eisoes yn gyflym.
5. **Cyfyngwch waith ar y gweill.** Mae gorffen gwaith yn gyflymach na'i jyglo. Capiwch nifer yr eitemau agored fesul tîm a gwyliwch beth sy'n digwydd i'r amser y mae pob un yn ei gymryd.
6. **Adeiladwch ansawdd i mewn.** Ychwanegwch wiriadau ar hyn o bryd y gwaith, fel profion awtomataidd, adolygiad cymheiriaid a monitro cyn rhyddhau, fel bod diffygion yn cael eu canfod yn gynnar. Mae archwilio ar y diwedd yn arafach ac yn ddrutach.
7. **Gohiriwch benderfyniadau na allwch eu gwneud yn dda eto.** Cadwch opsiynau ar agor nes bod gennych ffeithiau, ond gosodwch ddyddiad erbyn pryd y byddwch yn penderfynu. Mae hyn yn osgoi ymrwymo'n gynnar i ddyluniad anghywir ac amhenderfynoldeb diddiwedd.
8. **Grymuswch y bobl agosaf at y gwaith.** Gadewch i ddadansoddwyr y ddesg gwasanaeth, peirianwyr ar alwad a datblygwyr wneud penderfyniadau o fewn terfynau clir. Nodwch y terfynau, fel trothwyon gwario neu risg, a'u hadolygu ar ôl digwyddiadau.
9. **Edrychwch ar y cyfan, nid y rhan.** Mesurwch yr amser o un pen i'r llall o gais i ddatrysiad, a'i drafod gyda'r holl dimau dan sylw. Nid yw newid sy'n helpu un tîm ac yn arafu un arall yn welliant.
10. **Gwnewch welliant yn fach, yn aml ac yn lleol.** Anogwch bob tîm i wneud un gwelliant bach bob wythnos neu bythefnos, ac i rannu'r hyn a ddysgodd. Cofnodwch y newid a'i ganlyniad.
11. **Cadwch slac lle mae amrywiad yn uchel.** Peidiwch â llenwi pob awr o dîm ar alwad. Gadewch gapasiti ar gyfer pethau annisgwyl, a'i farnu yn ôl pa mor gyflym y mae'r tîm yn adfer pan fydd rhywbeth yn mynd o'i le.
12. **Defnyddiwch ddull main gydag arferion eraill.** Cyfunwch fapiau ffrwd werth â mesurau llif o Kanban, a gyda rheoli problemau ar gyfer diffygion mynych (gweler Pwnc 3.3 — Rheoli Problemau).

## Cwestiynau i'w trafod gyda'ch tîm

**Pe baem yn dilyn un cais cyffredin o'r dechrau i'r diwedd, faint o'r amser a aeth heibio fyddai gwaith gwirioneddol?**

Dewiswch gais nodweddiadol a chasglwch ddyddiadau pob cam. Marciwch yr amser pan oedd rhywun yn gweithio arno a'r amser y bu mewn ciw. Mae'r gyfran yn aml yn sioc. Gofynnwch i bobl ble roeddent yn disgwyl i'r arosiadau fod, a ble roeddent. Dylai'r hwylusydd wrthsefyll cynnig atebion ar y dechrau a gofyn i'r grŵp gytuno ar yr hyn y mae'r map yn ei ddangos.

**Pa un o'r saith gwastraff ydym ni'n ei weld amlaf yn ein gwaith bob dydd?**

Rhowch y rhestr i bobl a gofynnwch am enghraifft ddiweddar o bob un. Disgwyliwch i waith sydd wedi'i wneud yn rhannol, newid tasgau, aros a throsglwyddiadau ddod i fyny'n aml. Gofynnwch pa rai y gall y tîm eu newid ar ei ben ei hun a pha rai sydd angen timau eraill neu reolwyr. Caewch trwy ddewis un gwastraff i'w leihau y mis hwn.

**Beth ydym ni'n ei wneud na fyddai ein cwsmeriaid yn ei golli pe baem yn rhoi'r gorau iddo?**

Rhestrwch adroddiadau, cyfarfodydd, ffurflenni a chymeradwyaethau. Ar gyfer pob un, gofynnwch pwy sy'n ei ddefnyddio a beth sy'n digwydd os caiff ei stopio. Bydd angen rhai ar gyfer archwilio neu ddiogelwch, sy'n rheswm da. Bydd eraill yn troi allan i fod yn arferiad. Neilltuwch rywun i wirio pob eitem amheus cyn ei thynnu.

**Ble ydym ni'n archwilio ansawdd ar y diwedd yn lle ei adeiladu i mewn?**

Edrychwch ar eich prosesau rhyddhau, newid a digwyddiadau am wiriadau ar ddiwedd y llinell. Gofynnwch pa ddiffygion y mae'r gwiriadau hynny'n eu canfod a phryd y gellid fod wedi'u canfod yn gynt. Mae atebion nodweddiadol yn cynnwys profi ar ôl i ddatblygu orffen ac adolygu dogfennau ar ôl y ffaith. Dewiswch un gwiriad i'w symud yn gynt a disgrifiwch sut y byddwch yn dweud a helpodd.

**Pwy all wneud penderfyniadau yn ein tîm heb ofyn, a phwy ddylai?**

Gofynnwch i bobl restru'r pum penderfyniad diwethaf yr oeddent eisiau eu gwneud ac na allent, a pham. Chwiliwch am batrymau, fel terfynau gwario, cymeradwyaethau newid neu alwadau blaenoriaeth. Gofynnwch beth fyddai'n ei gwneud yn ddiogel i symud un o'r penderfyniadau hynny yn nes at y gwaith, fel canllaw diogelu neu adolygiad ar ôl y ffaith. Peidiwch â gwthio am "ie"; y nod yw canfod beth y mae pobl yn credu sydd ei angen.

**Pe bai popeth a wnawn nawr yn mynd yn gyflymach, beth fyddai'n torri gyntaf?**

Mae'r cwestiwn hwn yn profi "cyflawni mor gyflym â phosibl" ac "adeiladu cywirdeb i mewn" gyda'i gilydd. Gofynnwch ble byddai llif cyflymach yn gorlwytho tîm, offeryn neu berson. Atebion nodweddiadol yw profi, cymeradwyaethau a llwyth ar alwad. Ystyriwch yr atebion yn bethau nesaf i'w gwella. Cofiwch fod dull main yn gwerthfawrogi llif y system gyfan, felly'r dagfa yw lle i fuddsoddi.

## Yn ymarferol: enghraifft o ITIL ystwyth

Mae adran TG asiantaeth dreth genedlaethol yn rhedeg gwasanaeth mewnol i staff ofyn am fynediad at feddalwedd. Mae cais nodweddiadol yn cymryd tua thair wythnos, ac mae staff yn cwyno'n uchel. Mae'r tîm o bump sy'n cyflawni ceisiadau yn credu ei fod yn gweithio'n galed ac yn synnu at y gŵyn.

Mae rheolwr yn arwain sesiwn mapio ffrwd werth gyda'r tîm, y grŵp diogelwch a dau ddefnyddiwr busnes. Gyda'i gilydd maent yn olrhain deg cais diweddar. Mae pob cais yn pasio trwy wyth cam: cyflwyno ffurflen, cymeradwyaeth y rheolwr llinell, cymeradwyaeth perchennog y data, adolygiad diogelwch, gwiriad trwydded, neilltuo tocyn, gosod a chadarnhau. Mae'r map yn dangos bod y gwaith gwirioneddol yn cymryd tua awr, a bod bron y cyfan o'r tair wythnos yn aros rhwng camau, yn bennaf am y ddwy gymeradwyaeth a'r adolygiad diogelwch. Mewn tri o'r deg achos, dychwelwyd y cais at y defnyddiwr oherwydd maes coll yn y ffurflen.

Mae'r grŵp yn cytuno ar dri newid. Mae'r ffurflen yn cael meysydd gofynnol a chanllaw byr, sy'n tynnu'r dychweliadau. Mae ceisiadau am restr fer o gymwysiadau cyffredin, risg isel yn cael un gymeradwyaeth gan y rheolwr llinell, gyda pherchennog y data yn cael gwybod. Mae'r grŵp diogelwch yn cytuno i adolygu sampl o geisiadau o'r fath bob wythnos, yn hytrach na phob cais cyn gosod. Ar ôl deufis, mae'r amser nodweddiadol yn disgyn i tua wythnos. Erys anhawster: mae ceisiadau am gymwysiadau sensitif yn dal i gymryd tair wythnos, ac mae'r grŵp diogelwch yn nodi bod samplu wedi dal dau gais y dylid fod wedi'u gwrthod. Maent yn addasu'r rhestr o gymwysiadau sy'n gymwys ar gyfer cymeradwyaeth gyflym, ac yn penderfynu ei hadolygu bob chwarter.

## Pedwar persbectif

### Timau cynnyrch a chyflawni

Gall timau cyflawni ddefnyddio dull main i edrych y tu hwnt i'w sbrint neu eu bwrdd eu hunain. Mapiwch y llwybr o syniad i ddwylo defnyddiwr, gan gynnwys profi, adolygu diogelwch a chymeradwyaethau rhyddhau, a chanfod ble mae'r gwaith yn aros. Trinwch waith anorffenedig fel gwastraff, a ffafriwch orffen i ddechrau.

### Timau gwasanaeth a gweithrediadau

Mae timau gweithrediadau'n gweld gwastraff bob dydd: digwyddiadau mynych, trosglwyddiadau rhwng haenau, a cheisiadau sy'n bownsio. Defnyddiwch fapiau i ddangos ble mae gwaith yn aros, a defnyddiwch reoli problemau i dynnu achosion ailadrodd. Gwnewch yr achos dros gapasiti sbâr trwy ddangos beth sy'n digwydd i lif pan fo pob awr wedi'i chynllunio.

### Arweinyddiaeth a llywodraethu

Mae arweinwyr yn llunio'r system sy'n creu'r rhan fwyaf o wastraff: rheolau cymeradwyo, cylchoedd cyllido ac adrodd. Gofynnwch i'ch timau ble mae'r rheolau hynny'n costio'r mwyaf o amser a pha risg y mae pob un yn ei hamddiffyn. Byddwch yn barod i ddisodli rheolaeth â gwiriad ysgafnach sy'n bodloni'r un diben.

### Cwsmeriaid a defnyddwyr

Cwsmeriaid sy'n diffinio gwerth mewn meddwl main, ac maent yn teimlo gwastraff fel oedi. Disgwyliwch gael eich holi beth sydd ei angen arnoch mewn gwirionedd a pha mor fuan. Dywedwch wrth y tîm pa ran o wasanaeth sydd bwysicaf i chi, gan fod hynny'n arwain ble mae ymdrech yn mynd. Yn gyfnewid, gallwch ddisgwyl arosiadau byrrach, mwy rhagweladwy.

## Dulliau methu cyffredin

- **Torri capasiti yn enw gwastraff.** Mae timau'n rhedeg ar lwyth llawn ac ni allant ymateb i bethau annisgwyl. Yn lle hynny, cadwch slac lle mae amrywiad yn uchel a barnwch yn ôl pa mor gyflym y mae'r tîm yn adfer.
- **Mapio heb weithredu.** Mae map y ffrwd werth yn mynd ar wal ac nid oes dim yn newid. Yn lle hynny, dewiswch yr aros mwyaf a chytunwch ar un newid gyda pherchennog cyn diwedd y sesiwn.
- **Optimeiddio un tîm.** Mae enillion lleol yn symud y ciw i rywle arall. Yn lle hynny, mesurwch yr amser o un pen i'r llall a chytunwch ar newidiadau gyda'r holl dimau yn y ffrwd.
- **Tynnu rheolaethau heb eu deall.** Roedd cam a edrychai fel gwastraff yn amddiffyn rhag risg go iawn. Yn lle hynny, gofynnwch beth y mae pob cam yn ei amddiffyn a'i ddisodli â gwiriad ysgafnach lle gallwch.
- **Defnyddio geiriau dull main fel sloganau.** Mae pobl yn dweud "gwastraff" i ddiystyru gwaith cydweithwyr. Yn lle hynny, defnyddiwch y termau i ddisgrifio'r llif a chadwch y sgwrs am y system.
- **Gwthio cyflymder dros ansawdd.** Mae cyflawni cyflymach yn cynhyrchu mwy o ddiffygion ac ail-wneud. Yn lle hynny, ystyriwch "adeiladu cywirdeb i mewn" yn rhagamod ar gyfer cyflymder.
- **Cymhwyso rhifau gweithgynhyrchu at waith gwybodaeth.** Nid yw targedau o ffatri yn ffitio gwaith amrywiol. Yn lle hynny, defnyddiwch ddull main fel ffordd o weld a gofyn, a gosodwch fesurau o'ch data eich hun.
- **Trin dull main fel prosiect untro.** Mae enillion yn pylu pan fo sylw'n symud ymlaen. Yn lle hynny, gwnewch welliannau bach yn rhan o drefn pob tîm.

## Model aeddfedrwydd

| Dimensiwn | Cychwyn | Datblygu | Safoni | Rheoli | Cydlynu |
|---|---|---|---|---|---|
| Gweld gwastraff | Teimlir gwastraff ond ni chaiff ei ddisgrifio | Mae rhai timau'n mapio eu gwaith eu hunain | Mae timau'n defnyddio categorïau gwastraff a mapiau ffrwd werth a rennir | Mesurir aros ac ail-wneud ar hyd y ffrwd werth | Mae mapiau a mesurau'n croesi timau a chyflenwyr |
| Llif a thynnu | Gwthir gwaith a'i ddechrau mewn swmp | Mae rhai timau'n cyfyngu gwaith ar y gweill | Mae rheolau tynnu a therfynau yn safonol | Mae mesurau llif yn arwain newidiadau i derfynau a pholisïau | Cydlynir llif ar draws y ffrwd gyfan |
| Adeiladu ansawdd i mewn | Archwilir ansawdd ar y diwedd | Mae rhai timau'n profi'n gynnar ac yn adolygu gwaith | Mae gwiriadau awtomataidd ac adolygiadau adeiledig yn safonol | Olrheinir a lleihir cyfraddau dianc diffygion | Rhennir a gwellir arferion ansawdd ar draws timau |
| Gwelliant parhaus | Mae gwelliant yn dilyn argyfyngau | Mae rhai timau'n gwneud newidiadau bach rheolaidd | Mae gan bob tîm drefn wella reolaidd | Olrheinir gwelliannau a gwirir eu heffaith | Mae gwelliannau'n lledaenu rhwng timau a chyflenwyr yn rheolaidd |

## Rhestr wirio

- [ ] Rydym wedi diffinio beth mae gwerth yn ei olygu ar gyfer o leiaf un gwasanaeth o ochr y defnyddiwr.
- [ ] Rydym wedi mapio'r ffrwd werth ar gyfer un math cyffredin o gais, gydag amser gwaith ac amser aros.
- [ ] Gall y tîm enwi'r saith gwastraff a rhoi enghraifft ddiweddar o bob un.
- [ ] Cyfyngir gwaith ar y gweill, ac mae gwaith anorffenedig yn weladwy.
- [ ] Cynhelir gwiriadau ansawdd yn ystod y gwaith yn ogystal ag ar y diwedd.
- [ ] Rydym wedi dewis o leiaf un aros i'w leihau, gyda pherchennog a dyddiad.
- [ ] Mae gan y tîm derfynau clir ar gyfer penderfyniadau y gall eu gwneud heb ofyn.
- [ ] Rydym yn mesur yr amser o un pen i'r llall ar gyfer o leiaf un llif ar draws timau.
- [ ] Rydym yn cadw capasiti sbâr ar gyfer pethau annisgwyl lle mae'r galw'n amrywio.
- [ ] Mae pob tîm yn gwneud ac yn cofnodi gwelliant bach ar rythm rheolaidd.

## Anogwyr AI

**Pwrpas: dadansoddi ffrwd werth o'r amseroedd a ddarparwch.**

```text
Helpwch fi i ddadansoddi ffrwd werth ar gyfer [math o gais, e.e. "ceisiadau mynediad at feddalwedd"].

Dyma'r camau yn eu trefn, gyda phwy sy'n gwneud pob cam, am ba mor hir y gwnaed gwaith arno mewn gwirionedd, a pha mor hir yr arhosodd yr eitem cyn ac ar ei ôl. Defnyddiwch rifau go iawn o ychydig o achosion diweddar: [gludwch fel tabl, gydag un rhes i bob cam ac un golofn i bob achos].

Cyfrifwch, gan ddefnyddio fy rhifau i yn unig, cyfanswm yr amser a aeth heibio, cyfanswm yr amser gwaith, a chyfran yr amser a dreuliwyd yn aros. Nodwch y tri aros hiraf. Ar gyfer pob aros, gofynnwch beth mae'r cam yn ei amddiffyn rhagddo, ac awgrymwch un dewis ysgafnach. Peidiwch â dyfeisio data. Os yw rhifau ar goll, gofynnwch i mi yn gyntaf, nodwch ragdybiaethau, a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

**Pwrpas: dosbarthu enghreifftiau o wastraff o waith eich tîm eich hun.**

```text
Dyma restr o bethau sy'n rhwystro ein tîm neu gwsmeriaid: [gludwch 8-12 enghraifft fer, ffeithiol].

Dosbarthwch bob un o dan saith gwastraff datblygu meddalwedd main: gwaith wedi'i wneud yn rhannol, nodweddion ychwanegol, proses ychwanegol, newid tasgau, aros, trosglwyddiadau a diffygion. Os nad yw eitem yn ffitio unrhyw un, dywedwch hynny. Rhowch un frawddeg o resymu am bob eitem yn seiliedig ar yr hyn a ysgrifennais yn unig. Yna dywedwch pa ddau gategori sy'n ymddangos fwyaf cyffredin yn y rhestr hon ac awgrymwch ddau gwestiwn y dylai'r tîm eu trafod. Nodwch ragdybiaethau, a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

**Pwrpas: profi a yw tynnu rheolaeth yn ddiogel.**

```text
Rydym yn ystyried tynnu neu symleiddio'r rheolaeth hon: [disgrifiwch y gymeradwyaeth, yr adroddiad neu'r cam].

Yr hyn rydym yn credu y mae ar ei gyfer: [disgrifiwch y diben, neu ysgrifennwch "anhysbys"].
Pwy sy'n defnyddio ei allbwn: [rhestrwch bobl neu dimau, neu ysgrifennwch "anhysbys"].
Rheolau rydym yn gwybod eu bod yn berthnasol (archwilio, diogelwch, cyfreithiol), gyda'r testun gwirioneddol os oes gennych ef: [gludwch destun, neu ysgrifennwch "dim yn hysbys"].

Rhestrwch y cwestiynau y dylem eu hateb cyn ei newid. Disgrifiwch ddwy ffordd ysgafnach o fodloni ei ddiben, a ffordd o wirio ar ôl y newid nad oes dim gwaeth wedi digwydd. Peidiwch â honni bod unrhyw gyfraith neu safon yn berthnasol oni bai fy mod wedi gludo ei thestun. Nodwch ragdybiaethau, a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

**Pwrpas: cynllunio gweithdy mapio ffrwd werth.**

```text
Cynlluniwch weithdy mapio ffrwd werth 90 munud ar gyfer [nifer] o bobl o [timau neu rolau]. Rydym am archwilio [math o gais neu wasanaeth].

Cynhwyswch: agenda amseredig, pwy sy'n gorfod mynychu, pa ddata i'w ddwyn (defnyddiwch ddata sydd gennym mewn gwirionedd yn unig), sut i dynnu'r map gam wrth gam, sut i farcio amser gwaith ac amser aros, a cham cau sy'n cofnodi un newid y cytunwyd arno gyda pherchennog a dyddiad. Cadwch ef yn rhydd o unrhyw offeryn penodol. Gofynnwch gwestiynau eglurhaol yn gyntaf os oes gwybodaeth ar goll, a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

## Sgiliau AI

- [value-stream-map](../../../../skills/value-stream-map/SKILL.md): defnyddiwch i fapio camau, amser gwaith ac amser aros cais o'r dechrau i'r diwedd.
- [kaizen](../../../../skills/kaizen/SKILL.md): defnyddiwch i gynllunio gwelliannau bach, parhaus unwaith y canfyddir gwastraff.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md): defnyddiwch i ddadansoddi sut mae gwaith yn symud rhwng rolau a chanfod trosglwyddiadau ac oedi.
- [kanban](../../../../skills/kanban/SKILL.md): defnyddiwch i gymhwyso terfynau tynnu a gwaith ar y gweill at y llif rydych wedi'i fapio.
- [six-sigma](../../../../skills/six-sigma/SKILL.md): defnyddiwch pan fo diffygion ac amrywiad, nid aros yn unig, yw'r brif broblem ac mae angen dull sy'n seiliedig ar ddata arnoch i'w lleihau.

(Mae'r sgiliau eu hunain wedi'u hysgrifennu yn Saesneg.)

## Prif ffynonellau

- **Lean software development** (Wikipedia): y saith egwyddor, y mapio gwastraff, a dolenni at ddarllen pellach.
- **Lean manufacturing** (Wikipedia): hanes dull main yn Toyota, y gwastraff, a phum egwyddor meddwl main.
- **Lean Software Development: An Agile Toolkit** (Mary a Tom Poppendieck, 2003): y llyfr a ddaeth â syniadau main i'r gymuned ystwyth.
- **Lean Thinking** (James Womack a Daniel Jones, 1996): y datganiad ffurfiol o bum egwyddor dull main.

Mae'r ffynonellau hyn yn Saesneg.

## Cyfeiriadau

1. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
2. Lean manufacturing — Wikipedia — https://en.wikipedia.org/wiki/Lean_manufacturing
3. Toyota Production System — Wikipedia — https://en.wikipedia.org/wiki/Toyota_Production_System
4. Kaizen — Wikipedia — https://en.wikipedia.org/wiki/Kaizen
5. Value-stream mapping — Wikipedia — https://en.wikipedia.org/wiki/Value-stream_mapping
6. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
7. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
8. Muda (Japanese term) — Wikipedia — https://en.wikipedia.org/wiki/Muda_(Japanese_term)
