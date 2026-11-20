# Rheoli Problemau

**Mae rheoli problemau yn canfod ac yn tynnu'r achosion y tu ôl i ddigwyddiadau ailadroddus. Ei ffurf ystwyth yw ffrwd gyson o atgyweiriadau bach, wedi'u seilio ar dystiolaeth, yn yr ôl-groniad yn lle ymchwiliadau mawr achlysurol.**

## Pam mae hyn yn bwysig

Mae tîm sy'n trin digwyddiadau'n dda ond byth yn tynnu eu hachosion ar felin draed. Caiff pob toriad ei atgyweirio, mae'r un nam yn dychwelyd, ac mae'r peirianwyr ar alwad yn blino. Rheoli problemau yw'r arfer sy'n camu oddi ar y felin draed: mae'n gofyn pam y digwyddodd y digwyddiad, a fydd yn digwydd eto, a beth fyddai'n ei atal.

Mae timau ystwyth mewn sefyllfa dda i wneud hyn. Mae ganddynt ôl-groniad lle gall atgyweiriad gystadlu â nodwedd, maent yn gweithio mewn cylchoedd byr sy'n gwneud atgyweiriadau bach yn rhad, ac maent yn cynnal ôl-drafodaethau lle gellir sylwi ar batrymau. Yr hyn sy'n aml yn eu diffygio yw'r arferiad o gysylltu digwyddiadau â'i gilydd a'r ddisgyblaeth i chwilio am achosion yn iawn. Mae rheoli problemau yn cyflenwi'r ddau.

Yr [erthygl Wikipedia ar ddadansoddi gwraidd achos](https://en.wikipedia.org/wiki/Root_cause_analysis) (yn Saesneg) yw'r brif ffynhonnell a ddarllenwyd ar gyfer y pwnc hwn, oherwydd nad oes gan Wikipedia Saesneg erthygl o'r enw "Problem management" yn y cyfeiriad a wiriwyd. Mae'r erthygl honno'n disgrifio dadansoddi gwraidd achos (root cause analysis, RCA) fel dull datrys problemau a ddefnyddir mewn gweithrediadau TG a meysydd eraill, ac mae'n cario tagiau cynnal a chadw am gyfeiriadau coll. Daw geirfa ITIL a ddefnyddir yma, fel gwall hysbys (known error) a datrysiad dros dro (workaround), o ddisgrifiadau a gyhoeddir yn eang o'r arfer, na allai'r canllaw hwn eu cadarnhau yn erbyn testun perchennog y fframwaith. Darllenwch gyhoeddiadau cyfredol y perchennog pan fo diffiniadau union yn bwysig (gweler Pwnc 2.2 — ITIL).

## Cysyniadau craidd

### Digwyddiad, problem, gwall hysbys

Defnyddir tri term gyda'i gilydd, ac mae'r gwahaniaethau'n bwysig:

| Term | Ystyr, fel y'i defnyddir yn eang mewn ITSM | Enghraifft |
|---|---|---|
| **Digwyddiad (Incident)** | Ymyriad heb ei gynllunio i wasanaeth neu leihad yn ei ansawdd | Mae'r dudalen archebu i lawr am ugain munud |
| **Problem** | Achos sylfaenol, neu achos a amheuir, un neu fwy o ddigwyddiadau | Gollyngiad cof yn y gwasanaeth archebu |
| **Gwall hysbys (Known error)** | Problem y mae ei hachos wedi'i ganfod, fel arfer gyda datrysiad dros dro wedi'i gofnodi | Deellir y gollyngiad cof; mae ailgychwyn y gwasanaeth bob nos yn atal toriadau nes ei fod wedi'i drwsio |

Ffordd o leihau neu osgoi effaith digwyddiad neu broblem heb dynnu ei hachos yw **datrysiad dros dro** (workaround). Mae rheoli problemau yn ymwneud â thynnu'r achos, ac mae rheoli digwyddiadau yn ymwneud ag adfer gwasanaeth (gweler Pwnc 3.2 — Rheoli Digwyddiadau).

### Adweithiol a rhagweithiol

Mae'r erthygl dadansoddi gwraidd achos yn gwahaniaethu rhwng dulliau adweithiol a rhagweithiol mewn termau cyffredinol. Mae gwaith adweithiol yn trin symptomau'n gyflym. Mae gwaith rhagweithiol yn anelu at atal problemau ac yn rhoi cywirdeb diagnostig o flaen cyflymder. Mewn arfer ITSM, mae'r ddau'n bodoli: mae rheoli problemau adweithiol yn ymchwilio i broblemau ar ôl digwyddiadau, ac mae rheoli problemau rhagweithiol yn chwilio am batrymau a gwendidau cyn iddynt achosi digwyddiadau.

### Beth yw gwraidd achos

Mae'r erthygl yn diffinio gwraidd achos gyda phrawf ymarferol: ffactor yw gwraidd achos problem os yw ei dynnu yn atal y broblem rhag dychwelyd. Mae'n gwahaniaethu gwraidd achos oddi wrth ffactorau achosol eraill. Mae hon yn rheol ddefnyddiol. Os tynnwch ffactor a bod y broblem yn dal i allu dychwelyd, rydych wedi dod o hyd i gyfrannwr, nid y gwraidd.

Mae'r erthygl hefyd yn rhybuddio am derfynau. Mae'n dweud bod data monitro coll, cyfeintiau uchel iawn o ddigwyddiadau, gwreiddiau achos lluosog, ac ymchwilwyr sy'n stopio wrth wraidd arwynebol i gyd yn cymhlethu'r dadansoddiad. Mewn TG, mae'n nodi, yn aml nid oes gan RCA goed namau na manylebau dylunio, felly mae "nid oes gwraidd achos" wedi dod yn ddywediad cyffredin. Ar gyfer systemau cymhleth, disgwyliwch sawl achos cyfrannol ac nid un troseddwr.

### Egwyddorion dadansoddi gwraidd achos

Mae'r erthygl yn rhestru camau cyffredinol:

1. Disgrifiwch y broblem yn glir.
2. Adeiladwch linell amser o weithrediad arferol i'r methiant.
3. Gwahanwch y gwraidd achos oddi wrth ffactorau achosol eraill.
4. Mapiwch graff achosol sy'n cysylltu'r gwraidd achos â'r broblem.

Mae'n ychwanegu y dylai ymchwilwyr edrych ar amddiffynfeydd a fethodd neu a oedd ar goll (dadansoddi rhwystrau), osgoi rhagfarn yn y llinellau ymholi, penderfynu ar weithredoedd cywirol, ac adolygu a oedd y gweithredoedd hynny'n effeithiol.

### Dulliau

Mae'r erthygl yn dweud, yn ôl ISO/IEC 31010, y gall RCA ddefnyddio pum pam, dadansoddi dulliau methiant ac effeithiau (FMEA), dadansoddi coed namau, diagramau Ishikawa (asgwrn pysgodyn), a dadansoddi Pareto. Mae'n credydu Kaoru Ishikawa â'r diagram achosol sy'n dwyn ei enw. Mae hefyd yn galw dulliau asgwrn pysgodyn a phum pam yn "not rigorous enough", barn nad yw'n ei chefnogi â ffynhonnell. Darlleniad ymarferol: mae dulliau syml yn fannau cychwyn da ar gyfer trafodaeth tîm, ac efallai y bydd angen rhai mwy trylwyr ar gyfer methiannau cymhleth neu risg uchel.

| Dull | Beth mae'n ei wneud | Pryd mae'n helpu |
|---|---|---|
| **Pum pam (Five whys)** | Yn gofyn "pam" dro ar ôl tro i symud o symptom tuag at achos | Trafodaeth tîm gyflym ar gadwyni achos syml |
| **Diagram Ishikawa (asgwrn pysgodyn)** | Yn grwpio achosion posibl yn ôl categori | Taflu syniadau am lawer o achosion posibl |
| **Dadansoddi Pareto** | Yn graddio achosion yn ôl amlder neu effaith | Dewis pa broblem ailadroddus i fynd i'r afael â hi yn gyntaf |
| **Dadansoddi coeden namau** | Yn mapio cyfuniadau o fethiannau sy'n arwain at ganlyniad | Methiannau hanfodol i ddiogelwch neu gymhleth |
| **FMEA** | Yn edrych ymlaen at sut y gallai rhannau fethu a beth fyddai'r effaith | Adolygu dyluniad rhagweithiol |

### Gweithredoedd cywirol effeithiol

Mae'r erthygl yn dweud bod gweithredoedd cywirol sydd ond yn ychwanegu gwaith papur neu hyfforddiant yn llai effeithiol. Yn ymarferol mae hyn yn awgrymu ffafrio gweithredoedd sy'n newid y system: awtomeiddio gwiriad, tynnu dull methiant, ychwanegu mesur diogelu, gwella monitro. Mae gweithred fel "atgoffa peirianwyr i fod yn ofalus" yn wan.

### Yr egwyddor ddi-fai

Mae ymchwilio i broblemau yn rhannu'r egwyddor ddi-fai a ddisgrifir ar gyfer adolygiadau ôl-ddigwyddiad yn llyfr SRE Google: nodi achosion cyfrannol heb feio unigolion, gan y gellir dysgu pobl a thrwsio systemau (gweler Pwnc 3.2 — Rheoli Digwyddiadau). Fel arfer mae ymchwiliad sy'n canfod "gwall dynol" ac yn stopio wedi stopio'n rhy gynnar. Gofynnwch beth wnaeth y gwall yn bosibl a beth fyddai'n ei wneud yn anoddach.

### Rheoli problemau mewn llif ystwyth

Mae dull ystwyth ymarferol yn edrych fel hyn:

- Mae digwyddiadau ac adolygiadau ôl-ddigwyddiad yn creu problemau ymgeisiol.
- Mae adolygiad byr, rheolaidd yn grwpio digwyddiadau ailadroddus ac yn graddio problemau yn ôl effaith ac amlder.
- Mae problemau a ddewiswyd yn mynd i'r ôl-groniad fel eitemau cyffredin, gyda pherchennog, rhagdybiaeth a therfyn amser ar gyfer ymchwilio.
- Cofnodir datrysiadau dros dro fel gwallau hysbys fel y gall y ddesg gwasanaeth a pheirianwyr ar alwad eu defnyddio (gweler Pwnc 3.9 — Rheoli Gwybodaeth).
- Mae atgyweiriadau'n fach ac wedi'u profi, yn cael eu rhyddhau yn y ffordd arferol, ac yn cael eu gwirio wedyn i weld a stopiodd y digwyddiadau.

## Arferion gorau

1. **Cysylltwch ddigwyddiadau â phroblemau.** Cofnodwch pa ddigwyddiadau sy'n ymddangos fel pe bai ganddynt yr un achos. Heb gysylltiadau ni allwch weld y patrwm, a heb y patrwm ni allwch ddadlau dros atgyweiriad.
2. **Adolygwch ddigwyddiadau am batrymau ar amserlen.** Unwaith y mis, grwpiwch ddigwyddiadau diweddar yn ôl gwasanaeth ac achos tebygol a dewiswch yr ychydig uchaf. Defnyddiwch feddwl Pareto: mae ychydig o achosion fel arfer yn cyfrif am lawer o'r boen.
3. **Trinwch broblemau fel eitemau ôl-groniad.** Rhowch berchennog, datganiad ac amser terfyn i bob problem a ddewiswyd ar gyfer ymchwilio, a gadewch iddi gystadlu â gwaith arall. Mae ciw ar wahân o "broblemau" nad oes neb yn eu trefnu yn fynwent.
4. **Dechreuwch â datganiad problem clir.** Ysgrifennwch beth sy'n digwydd, ble, pa mor aml, a beth yw'r effaith, gan ddefnyddio ffeithiau. Mae datganiadau amwys yn arwain at atgyweiriadau amwys.
5. **Adeiladwch linell amser.** Casglwch logiau, newidiadau a digwyddiadau o weithrediad arferol i fethiant. Mae'r erthygl yn rhestru'r llinell amser fel cam craidd, ac mae llawer o bethau annisgwyl yn dod o newidiadau nad oedd neb wedi'u cysylltu.
6. **Gofynnwch am yr achos a fyddai, o'i dynnu, yn atal ailadrodd.** Defnyddiwch brawf yr erthygl. Pan fydd y tîm yn cynnig achos, gofynnwch a fyddai ei dynnu yn atal y broblem rhag dychwelyd.
7. **Disgwyliwch fwy nag un achos.** Chwiliwch am ffactorau cyfrannol mewn dylunio, monitro, proses a gwybodaeth pobl. Peidiwch â stopio wrth y cyntaf sy'n ymddangos yn gredadwy.
8. **Dewiswch ddulliau i gyd-fynd â'r broblem.** Defnyddiwch bum pam neu asgwrn pysgodyn ar gyfer trafodaeth tîm gyflym, ac offer mwy trylwyr ar gyfer methiannau difrifol neu gymhleth.
9. **Ffafriwch weithredoedd sy'n newid y system.** Ffafriwch awtomeiddio, mesurau diogelu a monitro gwell yn hytrach nag atgoffa a hyfforddi. Cofnodwch yr effaith ddisgwyliedig fel y gallwch ei gwirio.
10. **Cofnodwch ddatrysiadau dros dro fel gwallau hysbys.** Ysgrifennwch sut olwg sydd ar y symptom, y datrysiad dros dro, a phwy sy'n berchen ar yr atgyweiriad. Rhannwch y cofnod â'r ddesg gwasanaeth a staff ar alwad.
11. **Gwiriwch fod yr atgyweiriad wedi gweithio.** Ar ôl atgyweiriad, gwyliwch am ailadrodd am gyfnod y cytunwyd arno ac adroddwch y canlyniad. Gobaith yw atgyweiriad nas gwiriwyd byth.
12. **Rhannwch yr hyn a ganfyddwch.** Cyhoeddwch grynodebau byr o broblemau ac atgyweiriadau fel y gall timau eraill adnabod patrymau tebyg.

## Cwestiynau i'w trafod gyda'ch tîm

**Pa ddigwyddiad sy'n dal i ddod yn ôl, a beth rydym yn meddwl sy'n ei achosi?**

Gofynnwch i bobl enwi'r digwyddiad y maent wedi blino fwyaf arno. Cymharwch atebion. Yna gofynnwch beth mae pob person yn credu yw'r achos, a sut y gwyddant. Mae credoau'n aml yn wahanol, sy'n dangos pa mor ychydig o dystiolaeth a rennir sy'n bodoli. Gall yr hwylusydd ofyn pa ddata fyddai'n setlo'r mater. Dewiswch un i ymchwilio iddo gydag amser terfyn.

**Sut ydym ni'n gwybod a oes gan ddau ddigwyddiad yr un achos?**

Edrychwch ar sut y cofnodir digwyddiadau a gofynnwch a allai unrhyw un ddod o hyd i ddigwyddiadau cysylltiedig yn gyflym. Atebion nodweddiadol yw testun rhydd, cof, neu lwc. Gofynnwch pa newid bach i gofnodion fyddai'n helpu, fel maes ar gyfer gwasanaeth ac achos tebygol. Cytunwch ar un.

**Beth ydym ni'n ei wneud pan fyddwn yn canfod "gwall dynol" mewn adolygiad?**

Gofynnwch am enghraifft ddiweddar. Y cwestiwn yw a oedd yr adolygiad wedi stopio yno. Trafodwch beth yn y system a wnaeth y gwall yn bosibl: cyfarwyddiadau aneglur, offeryn dryslyd, pwysau amser. Cymharwch â'r syniad na allwch drwsio pobl, ond y gallwch drwsio systemau. Cytunwch ar gwestiwn i'w ofyn bob tro, fel "Beth wnaeth hyn yn hawdd i'w wneud?"

**Pa weithredoedd o adolygiadau'r gorffennol a newidiodd y system mewn gwirionedd, a pha rai a ychwanegodd atgof yn unig?**

Rhestrwch y gweithredoedd o'r pum adolygiad diwethaf a marciwch bob un fel newid system neu atgof. Mae'r erthygl yn dweud bod atgoffa a gwaith papur yn llai effeithiol. Gofynnwch pam mae atgoffa mor gyffredin: maent yn gyflym, yn rhad, ac yn teimlo fel gweithredu. Dewiswch un atgof i'w ddisodli ag atgyweiriad cryfach.

**Ble mae gennym ddatrysiadau dros dro nad oes neb wedi'u hysgrifennu i lawr?**

Gofynnwch i beirianwyr ar alwad a dadansoddwyr desg pa driciau y maent yn eu defnyddio. Mae pob datrysiad dros dro heb ei ysgrifennu yn risg. Cofnodwch hwy fel gwallau hysbys gyda symptom, datrysiad dros dro a pherchennog. Gall yr hwylusydd ofyn pwy sy'n elwa o bob cofnod. Gwnewch restr fer yr wythnos hon.

**Sut y byddem yn gwybod bod atgyweiriad wedi gweithio?**

Dewiswch atgyweiriad diweddar a gofynnwch pa dystiolaeth a'i dangosodd. Os mai'r ateb yw "dim mwy o gwynion", gofynnwch pa mor hir yr arosoch a beth a fesurasoch. Trafodwch wiriad syml: gwyliwch am y symptom penodol am gyfnod penodol. Cytunwch i gofnodi'r gwiriad gyda phob atgyweiriad.

## Yn ymarferol: enghraifft o ITIL ystwyth

Mae cwmni logisteg o faint canolig yn rhedeg gwasanaeth cynllunio llwybrau a ddefnyddir gan ei yrwyr a'i anfonwyr. Mae'r tîm platfform o naw wedi trin yr un digwyddiad tua bob pythefnos: mae cyfrifiadau llwybrau'n goramser am ddeg i bymtheg munud yn y bore ac yna'n adfer. Bob tro, mae'r peiriannydd ar alwad yn ailgychwyn proses weithiwr, a chaiff y digwyddiad ei gau. Mae anfonwyr yn cwyno na ellir dibynnu ar gynllunio'r bore.

Mae arweinydd y tîm yn cychwyn adolygiad misol o ddigwyddiadau, gan eu grwpio yn ôl gwasanaeth ac achos tebygol. Mae goramseroedd y bore ar frig y rhestr. Mae'n ysgrifennu datganiad problem o'r cofnodion digwyddiad: mae goramseroedd yn digwydd ar ddyddiau'r wythnos rhwng 7:00 a 7:30, yn para deg i bymtheg munud, ac yn effeithio ar bob anfonwr. Mae'r tîm yn adeiladu llinell amser sy'n cynnwys mewnforio data wedi'i drefnu am 7:00 a newid diweddar a gynyddodd faint y mewnforio. Mae trafodaeth pum pam yn awgrymu bod y mewnforio yn dirlenwi'r gronfa ddata. Maent yn rhoi cynnig ar yr atgyweiriad amlwg, ychwanegu capasiti, ond mae digwyddiadau'n parhau ar gyfradd is, felly maent yn casglu bod capasiti wedi bod yn gyfrannwr ac nid y gwraidd.

Mae ail olwg yn canfod bod y mewnforio yn cloi tabl y mae cyfrifiadau llwybrau hefyd yn ei ddarllen. Mae'r tîm yn symud y mewnforio i atgynhyrchydd ar wahân ac yn ychwanegu rhybudd ar gyfer aros cloeon. Maent yn cofnodi'r ailgychwyn fel gwall hysbys gyda'r symptom a'r datrysiad dros dro nes bod yr atgyweiriad yn fyw, ac yn cytuno i wylio am y symptom am chwe wythnos. Mae'r digwyddiadau'n stopio. Erys rhai materion: mae mewnforio arall gan bartner yn dal i redeg ar amser brig, ac nid yw'r tîm eto wedi perswadio'r partner i newid ei amserlen. Maent yn rhoi amserlen y partner ar agenda'r cynllunio nesaf, ac yn cadw'r rhybudd cloi yn ei le.

## Pedwar persbectif

### Timau cynnyrch a chyflawni

Mae timau cyflawni'n dal y wybodaeth i drwsio achosion. Cymerwch y problemau uchaf i'ch ôl-groniad, a'u trin fel gwaith sy'n ennill ymddiriedaeth. Ychwanegwch fonitro a phrofion a fyddai wedi datgelu'r achos, ac ysgrifennwch y gwall hysbys mewn iaith y gall y ddesg ei defnyddio.

### Timau gwasanaeth a gweithrediadau

Mae timau gweithrediadau'n gweld y digwyddiadau ac yn cadw'r cofnodion. Cysylltwch ddigwyddiadau, rhedwch yr adolygiad misol, a chofnodwch ddatrysiadau dros dro fel gwallau hysbys. Gwthiwch y dystiolaeth i dimau cyflawni ar ffurf sy'n gwneud yr achos, gydag amlder, effaith a llinell amser.

### Arweinyddiaeth a llywodraethu

Mae arweinwyr yn penderfynu a yw trwsio problemau yn cael amser. Gofynnwch am y problemau mynych uchaf a'r hyn sy'n cael ei wneud yn eu cylch. Gwrthsafwch gyfrif digwyddiadau a gaewyd fel mesur llwyddiant, gan ei fod yn gwobrwyo atgyweirio. Cefnogwch atgyweiriadau sy'n cymryd ymdrech ond sy'n tynnu poen.

### Cwsmeriaid a defnyddwyr

Mae cwsmeriaid a defnyddwyr yn elwa pan fydd methiannau ailadroddus yn stopio. Adroddwch broblemau ailadroddus gyda dyddiadau ac effeithiau, gan fod patrymau'n helpu'r tîm. Gofynnwch i ddarparwyr beth maent wedi'i wneud am achosion toriadau ailadroddus, a disgwyliwch ateb y tu hwnt i "fe wnaethon ni ei ailgychwyn".

## Dulliau methu cyffredin

- **Atgyweirio heb dynnu.** Caiff digwyddiadau eu cau ac maent yn dychwelyd. Yn lle hynny, cysylltwch ailadroddiadau â phroblem a thrwsiwch yr achos.
- **Ciw problemau nad oes neb yn ei drefnu.** Mae problemau'n aros am byth. Yn lle hynny, rhowch broblemau a ddewiswyd yn yr ôl-groniad gyda pherchnogion ac amserau terfyn.
- **Stopio wrth wall dynol.** Mae'r adolygiad yn gorffen gyda rhywun i'w feio. Yn lle hynny, gofynnwch beth wnaeth y gwall yn bosibl a thrwsiwch y system.
- **Gweithredoedd gwan.** Mae atgofion a hyfforddiant yn cymryd lle newidiadau system. Yn lle hynny, ffafriwch awtomeiddio, mesurau diogelu a monitro gwell.
- **Chwilio am un gwraidd achos.** Mae'r tîm yn mynnu un troseddwr. Yn lle hynny, derbyniwch sawl achos cyfrannol a rhowch sylw i'r rhai mwyaf effeithiol.
- **Dim gwiriad bod yr atgyweiriad wedi gweithio.** Caiff y broblem ei chau ar ryddhau. Yn lle hynny, diffiniwch ffordd o weld a yw'r symptom yn dychwelyd.
- **Datrysiadau dros dro heb eu hysgrifennu.** Mae gwybodaeth yn byw gydag unigolion. Yn lle hynny, cofnodwch wallau hysbys a'u rhannu.
- **Addoli dulliau.** Mae timau'n dadlau am dechnegau. Yn lle hynny, dewiswch ddulliau i gyd-fynd â'r broblem a gwariwch yr ymdrech ar dystiolaeth.

## Model aeddfedrwydd

| Dimensiwn | Cychwyn | Datblygu | Safoni | Rheoli | Cydlynu |
|---|---|---|---|---|---|
| Cysylltu a blaenoriaethu | Nid yw digwyddiadau'n cael eu cysylltu | Mae rhai timau'n nodi ailadroddiadau | Cysylltir digwyddiadau â phroblemau a'u hadolygu am batrymau ar amserlen | Graddir problemau yn ôl effaith ac amlder mesuredig | Rhennir blaenoriaethau problemau ar draws timau a chyflenwyr |
| Ymchwilio | Mae ymchwilio'n anffurfiol | Mae rhai timau'n defnyddio dulliau syml | Defnyddir dull ysgrifenedig gyda llinellau amser a thystiolaeth | Adolygir ansawdd ac amser ymchwilio | Mae ymchwiliadau'n ymestyn ar draws timau a chyflenwyr gyda data a rennir |
| Gweithred gywirol | Mae atgyweiriadau'n ad hoc neu'n atgofion | Mae rhai atgyweiriadau'n newid y system | Dewisir gweithredoedd am effaith, gyda pherchnogion a dyddiadau | Gwirir effeithiau a mesurir ailadrodd | Mae atgyweiriadau'n lledaenu i systemau tebyg ar draws y sefydliad |
| Gwallau hysbys a gwybodaeth | Mae datrysiadau dros dro heb eu hysgrifennu | Cofnodir rhai gan unigolion | Cofnodir gwallau hysbys a'u rhannu â'r ddesg ac ar alwad | Olrheinir defnydd a chywirdeb gwallau hysbys | Rhennir gwallau hysbys â defnyddwyr, cyflenwyr a phartneriaid |

## Rhestr wirio

- [ ] Cysylltir digwyddiadau sy'n ymddangos fel pe baent yn rhannu achos.
- [ ] Mae adolygiad rheolaidd yn grwpio digwyddiadau ac yn dewis y problemau ailadroddus uchaf.
- [ ] Mae problemau a ddewiswyd yn yr ôl-groniad gyda pherchnogion ac amserau terfyn.
- [ ] Mae gan bob problem ddatganiad ysgrifenedig gyda ffeithiau.
- [ ] Adeiladir llinell amser ar gyfer pob ymchwiliad.
- [ ] Mae adolygiadau'n gofyn beth yn y system a ganiataodd unrhyw wall dynol.
- [ ] Mae gweithredoedd yn ffafrio newidiadau system dros atgofion, gyda'r effaith ddisgwyliedig wedi'i chofnodi.
- [ ] Cofnodir datrysiadau dros dro fel gwallau hysbys a'u rhannu â'r ddesg gwasanaeth a staff ar alwad.
- [ ] Mae gan bob atgyweiriad wiriad ar gyfer ailadrodd dros gyfnod y cytunwyd arno.
- [ ] Rhennir crynodebau o broblemau ac atgyweiriadau gyda thimau eraill.

## Anogwyr AI

**Pwrpas: canfod digwyddiadau ailadroddus a phroblemau ymgeisiol yn eich cofnodion.**

```text
Isod mae disgrifiadau o [nifer] digwyddiad o'r [cyfnod] diwethaf, gyda dyddiadau a'r gwasanaeth yr effeithiwyd arno: [gludwch ddisgrifiadau dienw, un i bob llinell].

Grwpiwch y digwyddiadau sy'n edrych fel pe baent yn rhannu achos, yn seiliedig ar yr hyn a ysgrifennwyd yn unig. Ar gyfer pob grŵp, rhestrwch y digwyddiadau, rhowch ddisgrifiad un frawddeg o'r symptom cyffredin, a dywedwch pa mor hyderus ydych a pham (isel, canolig, uchel). Rhestrwch ddigwyddiadau nad ydynt yn ffitio unrhyw grŵp. Peidiwch â dyfalu ar achosion technegol y tu hwnt i'r testun. Awgrymwch dri chwestiwn i'r tîm eu gofyn i brofi pob grŵp. Rhestrwch yr hyn nad ydych yn siŵr ohono.
```

**Pwrpas: ysgrifennu datganiad problem clir o dystiolaeth.**

```text
Helpwch fi i ysgrifennu datganiad problem.

Beth rydym yn ei arsylwi, gyda dyddiadau a chyfrifon: [gludwch ffeithiau].
Beth sy'n cael ei effeithio a phwy sy'n cael ei effeithio: [disgrifiwch].
Beth rydym yn ei wybod am pryd y dechreuodd a beth newidiodd o gwmpas yr amser hwnnw: [gludwch, neu ysgrifennwch "anhysbys"].
Beth rydym eisoes wedi rhoi cynnig arno: [gludwch].

Ysgrifennwch ddatganiad problem o dair i bum brawddeg sy'n disgrifio beth sy'n digwydd, ble, pa mor aml, a'r effaith, heb enwi achos. Yna rhestrwch y ffeithiau sydd eu hangen arnom o hyd a ble i ddod o hyd iddynt. Marciwch unrhyw beth sy'n rhagdybiaeth. Peidiwch ag awgrymu achosion fel ffeithiau. Rhestrwch yr hyn nad ydych yn siŵr ohono.
```

**Pwrpas: paratoi sesiwn pum pam a chofnodi'r gadwyn resymu.**

```text
Helpwch fi i baratoi trafodaeth pum pam ar gyfer y broblem hon: [gludwch y datganiad problem].

Ffeithiau sydd gennym: [rhestrwch dystiolaeth fel logiau, llinellau amser a newidiadau].

Paratowch: cwestiwn "pam" cyntaf wedi'i seilio ar y dystiolaeth, templed lle mae pob ateb yn cofnodi'r dystiolaeth drosto, ac atgof i ganghennu pan fo mwy nag un ateb posibl. Rhybuddiwch fi rhag stopio wrth wall dynol. Ar ôl y sesiwn byddaf yn gludo'r nodiadau: peidiwch â dyfeisio atebion eich hun. Gofynnwch gwestiynau eglurhaol yn gyntaf, a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

**Pwrpas: gwerthuso a yw gweithredoedd cywirol arfaethedig yn newid y system.**

```text
Dyma'r gweithredoedd a gynigiwyd ar ôl ein hadolygiad: [gludwch restr].

Ar gyfer pob un, dywedwch a yw'n newid y system (er enghraifft yn awtomeiddio gwiriad, yn tynnu dull methiant, yn ychwanegu mesur diogelu, yn gwella monitro) neu'n dibynnu ar bobl yn cofio neu ar hyfforddiant, a rhowch un frawddeg o resymu o'r testun yn unig. Ar gyfer pob gweithred math atgof, awgrymwch ddewis cryfach fel cwestiwn i'r tîm. Awgrymwch sut y gallem wirio a weithiodd pob gweithred, heb ddyfeisio rhifau. Rhestrwch yr hyn nad ydych yn siŵr ohono.
```

## Sgiliau AI

- [root-cause-analysis](../../../../skills/root-cause-analysis/SKILL.md): defnyddiwch i arwain ymchwiliad o ddatganiad problem clir i achos wedi'i brofi.
- [fishbone-diagram](../../../../skills/fishbone-diagram/SKILL.md): defnyddiwch i daflu syniadau am achosion posibl yn ôl categori gyda thîm.
- [cause-and-effect-diagram](../../../../skills/cause-and-effect-diagram/SKILL.md): defnyddiwch i osod allan sut mae achosion ac effeithiau'n cysylltu mewn methiant cymhleth.
- [postmortem](../../../../skills/postmortem/SKILL.md): defnyddiwch i redeg yr adolygiad sy'n canfod problemau ymgeisiol.
- [six-sigma](../../../../skills/six-sigma/SKILL.md): defnyddiwch pan fydd angen dulliau sy'n seiliedig ar ddata arnoch i ddadansoddi amrywiad neu ddiffygion ailadroddus.

(Mae'r sgiliau eu hunain wedi'u hysgrifennu yn Saesneg.)

## Prif ffynonellau

- **Root cause analysis** (Wikipedia): trosolwg cyffredinol o'r dull, yr egwyddorion a'r terfynau, gydag ISO/IEC 31010 wedi'i restru ar gyfer y dulliau.
- **Postmortem Culture: Learning from Failure** (*Site Reliability Engineering*, Google, sre.google): y dull di-fai o ddysgu o fethiannau.
- **Managing Incidents** (*Site Reliability Engineering*, Google, sre.google): sut mae trin digwyddiadau yn bwydo dadansoddi diweddarach.
- **Ishikawa diagram** a **Five whys** (Wikipedia): cefndir ar ddau ddull syml cyffredin.

Mae'r ffynonellau hyn yn Saesneg.

## Cyfeiriadau

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
