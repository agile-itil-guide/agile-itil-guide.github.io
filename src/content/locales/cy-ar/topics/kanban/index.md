# Kanban

**Mae Kanban yn rheoli gwaith fel llif: mae'n gwneud y llif gwaith yn weladwy, yn cyfyngu faint sydd ar y gweill, ac yn defnyddio mesurau llif i wella. Mae hyn yn gweddu i dimau gwasanaeth y mae eu gwaith yn cyrraedd yn barhaus ac na ellir ei gynllunio mewn cylchoedd sefydlog.**

## Pam mae hyn yn bwysig

Mae gan ddesg gwasanaeth, tîm gweithrediadau a thîm platfform un nodwedd gyffredin: mae gwaith yn cyrraedd pan fydd yn cyrraedd. Daw digwyddiadau, ceisiadau a newidiadau bach mewn ffrwd, ac ni all y tîm gynllunio mis ohonynt ymlaen llaw. Dim ond gydag addasiadau y mae fframweithiau a adeiladwyd o amgylch cylchoedd sefydlog, fel Scrum, yn cyd-fynd â'r gwaith hwn (gweler Pwnc 1.4 — Rhagweld Cyflawni a Metrigau Cynllunio). Cynlluniwyd Kanban ar gyfer llif, felly mae'n ffitio'n fwy naturiol.

Mae Kanban hefyd yn siarad iaith rheoli gwasanaethau. Mae'n gofyn pa mor hir y mae gwaith yn ei gymryd, faint sy'n aros, a pha gam yw'r dagfa, a dyma'r cwestiynau y tu ôl i lefelau gwasanaeth, rheoli ciwiau a chynllunio capasiti. Gall tîm sy'n olrhain oedran ac amser beicio ei waith siarad am lefelau gwasanaeth gyda data yn lle argraffiadau.

Mae Kanban yn syml i'w gychwyn ac yn syndod o hawdd i'w wneud yn wael. Nid yw bwrdd â cholofnau yn Kanban os nad oes dim yn cyfyngu gwaith ar y gweill ac nad oes neb yn defnyddio'r mesurau. Mae'r pwnc hwn yn egluro'r hyn y mae'r Kanban Guide yn gofyn amdano gan dîm, o ble y daeth y dull, a sut i'w gymhwyso i waith gwasanaeth.

## Cysyniadau craidd

### Beth yw Kanban

Mae'r [Kanban Guide](https://kanbanguides.org/english/), y mae ei fersiwn gyfredol wedi'i dyddio Mai 2025 ac sy'n rhestru John Coleman a Daniel Vacanti ymhlith ei awduron, yn diffinio Kanban fel strategaeth ar gyfer optimeiddio llif gwerth trwy broses. Mae'n disgrifio llif fel symudiad gwerth posibl trwy system. Y nod yw cydbwysedd o dri pheth: effeithiolrwydd (cyflawni'r hyn y mae rhanddeiliaid ei eisiau, pan fyddant ei eisiau), effeithlonrwydd (defnyddio adnoddau'n dda), a rhagweladwyedd (rhagweld cyflawni gyda lefel dderbyniol o ansicrwydd). Mae'r canllaw yn dweud ei fod yn berthnasol i waith gwybodaeth ym mhob diwydiant.

Gair Japaneg yw "kanban" sy'n golygu arwydd neu hysbysfwrdd. Mae [erthygl Wikipedia ar Kanban mewn datblygu](https://en.wikipedia.org/wiki/Kanban_(development)) (yn Saesneg) yn dweud bod y dull yn dod o weithgynhyrchu main a'r [System Gynhyrchu Toyota](https://en.wikipedia.org/wiki/Toyota_Production_System), gyda system mewn union bryd a ddechreuwyd yn Toyota ar ddiwedd y 1940au. Mae llyfr David J. Anderson yn 2010 yn olrhain y fersiwn meddalwedd i brosiect yn 2004 yn Microsoft a phrosiect yn 2006–2007 yn Corbis.

### Y tri arfer

Mae'r Kanban Guide yn enwi tri arfer. Mae tîm sy'n gwneud y tri, ac yn defnyddio'r mesurau isod, yn ymarfer Kanban yn ystyr y canllaw.

| Arfer | Beth mae'r tîm yn ei wneud | Nodyn ar gyfer timau gwasanaeth |
|---|---|---|
| **Diffinio a delweddu'r llif gwaith** | Cytuno ar Ddiffiniad o Lif Gwaith (Definition of Workflow, DoW): beth yw eitem waith, ble mae'n dechrau ac yn gorffen, y cyflyrau rhyngddynt, sut y cyfyngir gwaith ar y gweill, y polisïau ar gyfer symud gwaith, a disgwyliad lefel gwasanaeth (service level expectation, SLE). Ei ddangos ar fwrdd. | Gallai'r DoW ar gyfer desg gwasanaeth ddiffinio eitemau digwyddiad, cais a newid, â chyflyrau a pholisïau gwahanol ar gyfer pob un |
| **Rheoli eitemau yn y llif gwaith yn weithredol** | Rheoli nifer yr eitemau ar y gweill, gwylio am eitemau sy'n heneiddio, a dadflocio eitemau sy'n sownd. | Mae terfyn ar ddigwyddiadau agored fesul peiriannydd yn gorfodi'r tîm i orffen neu drosglwyddo gwaith cyn dechrau mwy |
| **Gwella'r llif gwaith** | Newid y DoW dros amser i wella effeithiolrwydd, effeithlonrwydd a rhagweladwyedd, ar gyfnodau penodol neu pan fo angen. | Gall adolygiad o'r DoW ar ôl digwyddiad mawr newid polisïau, terfynau neu gyflyrau |

Nid yw'r canllaw yn rhagnodi cynllun bwrdd nac unrhyw gyfarfodydd. Mae timau'n rhydd i ychwanegu arferion, ar yr amod bod yr arferion craidd, y mesurau a'r nod o optimeiddio gwerth yn aros yn gyfan.

### Terfynau gwaith ar y gweill a thynnu

Mae rheoli gwaith ar y gweill (work in progress, WIP) yn creu'r hyn y mae'r canllaw yn ei alw'n system dynnu (pull system): dim ond pan fo capasiti ar ei gyfer y mae gwaith newydd yn dechrau. Mae erthygl Wikipedia yn rhoi'r enghraifft o gam "defnyddio" gyda therfyn o bump. Pan fo'r cam yn llawn, ni all dim mwy ddod i mewn nes bod rhywbeth yn gorffen, felly mae rhwystr yn dod yn weladwy a gall pobl helpu i'w glirio. Heb derfynau dim ond llun o'r llanast yw bwrdd.

### Pedwar mesur llif

Mae'r canllaw yn rhestru pedwar mesur y mae tîm sy'n defnyddio Kanban yn eu holrhain:

- **Gwaith ar y gweill (WIP):** nifer yr eitemau a ddechreuwyd ond na orffennwyd eto.
- **Trwybwn (throughput):** nifer yr eitemau a orffennwyd mewn cyfnod penodol.
- **Oedran eitem waith (work item age):** pa mor hir y mae eitem anorffenedig wedi bod ar y gweill.
- **Amser beicio (cycle time):** pa mor hir y cymerodd eitem orffenedig o'r dechrau i'r diwedd.

Mae'r canllaw yn dweud y caiff timau ailenwi'r rhain ac y dylent ychwanegu mesurau eraill lle bo'n ddefnyddiol, a bod mesurau'n bwysig dim ond pan fyddant yn llywio'r tri arfer. Rhagolwg yw disgwyliad lefel gwasanaeth o ba mor hir y dylai eitem ei gymryd, yn seiliedig ar amseroedd beicio'r gorffennol. Nid addewid ydyw, ac mae'n wahanol i gytundeb lefel gwasanaeth (service level agreement, SLA) a negodir â chwsmer. Gweler Pwnc 3.7 — Rheoli Lefelau Gwasanaeth.

### Y llenyddiaeth Kanban ehangach

Mae ysgrifenwyr eraill wedi disgrifio'r dull yn ehangach. Mae erthygl Wikipedia yn rhestru gwaith Don Reinertsen ar lif, *Personal Kanban* gan Jim Benson a Tonianne DeMaria Barry, *Kanban From the Inside* gan Mike Burrows, a *Scrumban* gan Corey Ladas, a gynigiodd Kanban fel ffordd o wella Scrum. Mae rhai o'r ffynonellau hyn yn rhestru arferion y tu hwnt i'r tri yn y canllaw, fel gwneud polisïau'n eglur, gweithredu dolenni adborth, a gwella ar y cyd. Ystyriwch y rhain yn ychwanegiadau defnyddiol, nid yn ofynion y canllaw.

Mae'r erthygl Wikipedia yn cario tag sy'n nodi y gallai cyfrannwr mawr fod â chysylltiad agos â'r pwnc, felly gwiriwch ei honiadau yn erbyn y ffynonellau cynradd.

### Yr hyn nad yw Kanban yn ei ddweud

Nid cynllun prosiect, set o rolau na phroses rhyddhau yw Kanban. Nid yw'n dweud wrthych sut i ddylunio gwasanaeth neu redeg digwyddiad. Mae'n rhoi ffordd i chi weld a rheoli llif, ac mae'n dibynnu arnoch chi i ddod â chynnwys eich gwaith. Dyna hefyd ei gryfder: gallwch ddechrau gyda'r broses sydd gennych a'i gwella mewn camau bach (gweler Pwnc 3.15 — Gwelliant Parhaus).

## Arferion gorau

1. **Dechreuwch â'r hyn a wnewch nawr.** Tynnwch lun o'r llif gwaith go iawn, gyda'r cyflyrau y mae gwaith yn pasio trwyddynt mewn gwirionedd, gan gynnwys yr arosiadau. Peidiwch â thynnu llun o'r broses y dymunech ei chael. Dim ond yr hyn y gallwch ei weld y gallwch ei wella.
2. **Diffiniwch beth yw eitem waith.** Penderfynwch a yw digwyddiadau, ceisiadau a newidiadau yn un math o eitem neu sawl un, a rhowch ddechrau a diwedd clir i bob un. Mae diffiniadau cymysg yn gwneud mesurau'n ddiystyr.
3. **Gosodwch derfynau WIP a'u cadw.** Dechreuwch â therfyn sy'n teimlo ychydig yn dynn, fel un neu ddwy eitem i bob person, ac addaswch o brofiad. Nid yw terfyn a dorrir yn rheolaidd yn rhoi gwybodaeth, felly trafodwch bob toriad.
4. **Gwnewch bolisïau'n eglur.** Ysgrifennwch ar y bwrdd pryd y caiff eitem symud i'r cyflwr nesaf, pwy gaiff ei thynnu, a beth sy'n cyfrif fel wedi'i flocio. Mae polisïau gweladwy yn lleihau dadleuon ac yn gwneud sefydlu'n haws.
5. **Gwyliwch oedran eitemau gwaith, nid amser beicio yn unig.** Dim ond ar ôl i eitem orffen y gwyddys yr amser beicio, tra bo oedran yn dangos problemau tra bo amser o hyd i weithredu. Adolygwch yr eitemau hynaf bob dydd.
6. **Defnyddiwch ddisgwyliad lefel gwasanaeth sy'n seiliedig ar hanes.** Cymerwch amseroedd beicio eitemau gorffenedig diweddar a nodwch, er enghraifft, bod y rhan fwyaf o eitemau o fath yn gorffen o fewn nifer penodol o ddyddiau. Diwygiwch ef wrth i'r data newid. Peidiwch ag addo i gwsmeriaid rif nad ydych wedi'i fesur.
7. **Trinwch waith brys fel eithriad penodol.** Bydd digwyddiadau brys yn neidio'r ciw. Diffiniwch bolisi, fel lôn â'i therfyn ei hun, fel bod eithriadau'n weladwy ac nad ydynt yn dinistrio llif yn dawel (gweler Pwnc 3.2 — Rheoli Digwyddiadau).
8. **Chwiliwch am y dagfa a'i helpu.** Pan fo cam bob amser yn llawn, gofynnwch a oes angen mwy o gapasiti, polisi wedi'i newid, neu lif i fyny'r afon gwahanol. Mae symud pobl at y dagfa fel arfer yn well na gwthio mwy o waith iddi.
9. **Cynhaliwch adolygiadau ar rythm rheolaidd.** Mae'r canllaw yn caniatáu gwella ar gyfnodau penodol neu pan fo angen. Mae adolygiad wythnosol byr o'r mesurau ac edrych misol ar y DoW yn gweithio i lawer o dimau.
10. **Cysylltwch y bwrdd â gweddill y sefydliad.** Gwnewch y bwrdd yn weladwy i'r cwsmeriaid ac i dimau cyfagos. Cytunwch sut mae eitemau'n croesi rhwng byrddau, fel o ddesg gwasanaeth i dîm datblygu.
11. **Cadwch fesurau ar gyfer dysgu.** Defnyddiwch y rhifau i ofyn cwestiynau, nid i raddio pobl. Pan fydd data llif yn dod yn darged, mae timau'n ei chwarae (gweler Pwnc 5.6 — Metrigau a Mesur).
12. **Cyfunwch â fframweithiau eraill yn fwriadol.** Os yw'r tîm yn defnyddio digwyddiadau Scrum ar gyfer cynllunio a Kanban ar gyfer llif, dywedwch beth yw pwrpas pob un, a gwiriwch fod y cyfuniad yn lleihau dryswch (gweler Pwnc 1.8 — Ehangu Ystwythder ar gyfer cydlynu sawl tîm).

## Cwestiynau i'w trafod gyda'ch tîm

**Pe baem yn tynnu llun o'n llif gwaith go iawn, gan gynnwys yr arosiadau, sut olwg fyddai arno?**

Gofynnwch i bob person dynnu llun o lwybr un eitem ddiweddar, ac yna cyfuno'r lluniau ar wal. Mae gwahaniaethau rhwng y lluniau yn dangos camau cudd a throsglwyddiadau anffurfiol. Disgwyliwch bethau annisgwyl: cymeradwyaethau nad oes neb wedi sôn amdanynt, eitemau'n aros am dîm arall, a dolenni ail-wneud. Dilynwch trwy farcio'r tri aros hiraf.

**Faint o waith sydd ar y gweill i bob un ohonom ar hyn o bryd, a faint ohono sy'n aros?**

Cyfrwch yr eitemau agored i bob person a marciwch pa rai sydd wedi'u blocio neu'n segur. Mae llawer o dimau'n canfod bod y rhan fwyaf o eitemau'n aros a bod ychydig yn cael eu gweithio arnynt. Gofynnwch beth mae pob person yn ei wneud pan gaiff ei flocio, ac ai dechrau eitem newydd yw'r ateb arferol. Y nod yw trafod pam y gwobrwyir dechrau a pham na wobrwyir gorffen.

**Beth yw'r eitem hynaf ar ein bwrdd, a pham ei bod yn dal yno?**

Dewiswch y tair eitem hynaf ac olrheiniwch beth ddigwyddodd. Atebion cyffredin yw perchennog aneglur, dibyniaeth ar dîm arall, neu eitem nad oes neb eisiau ei chanslo. Gofynnwch a ddylid gorffen, canslo neu uwchgyfeirio'r eitem. Gall hwylusydd ofyn pa bolisi fyddai wedi dal yr eitem yn gynt.

**Beth ydym yn ei addo i'n cwsmeriaid am ba mor hir y mae pethau'n ei gymryd, a beth mae ein rhifau ein hunain yn ei ddweud?**

Cymharwch y lefelau gwasanaeth y cytunwyd arnynt ag amseroedd beicio gwirioneddol eitemau gorffenedig. Os nad oes gennych ddata, casglwch ef am fis yn gyntaf. Trafodwch unrhyw fwlch yn agored. Gofynnwch a ddylai'r targed newid, neu a ddylai'r ffordd o weithio. Cofiwch fod disgwyliad lefel gwasanaeth sy'n seiliedig ar ddata yn rhagolwg, tra bod SLA yn gytundeb.

**Pan fydd gwaith brys yn cyrraedd, beth sy'n digwydd i bopeth arall?**

Cerddwch drwy'r digwyddiad brys diwethaf a gweld pa eitemau a safodd. Gofynnwch a oes gan y tîm bolisi ar gyfer gwaith brys, ac a oes unrhyw un yn gwybod faint o eitemau brys y mae'n eu trin bob mis. Mae timau'n aml yn darganfod bod gwaith brys yn arferol, nid yn eithriadol, a bod angen i'r polisi adlewyrchu hynny. Dilynwch trwy gytuno ar derfyn ar gyfer eitemau cyflymedig.

**Pa un o'n mesurau fyddem yn ymddiried digon ynddo i seilio penderfyniad arno, a pha un fyddem yn ei anwybyddu?**

Gofynnwch i bobl raddio'r mesurau sydd ar gael yn ôl faint y maent yn ymddiried ynddynt a pham. Daw amheuaeth yn aml o ddiffiniadau eitemau anghyson neu fylchau yn y data. Peidiwch â'i droi'n ddadl am bobl; canolbwyntiwch ar ansawdd y data. Caewch trwy ddewis un mesur i'w wella yn y mis nesaf.

## Yn ymarferol: enghraifft o ITIL ystwyth

Mae gan ddesg gwasanaeth TG prifysgol wyth dadansoddwr sy'n trin digwyddiadau a cheisiadau gan fyfyrwyr a staff. Mae gan y tîm offeryn tocynnau gyda chiwiau, ond dim terfynau, ac mae gan bob dadansoddwr rhwng 20 a 40 tocyn agored. Mae cwsmeriaid yn cwyno bod tocynnau'n ymddangos yn diflannu, ac ni all rheolwr y ddesg ddweud faint o amser y mae cais nodweddiadol yn ei gymryd.

Mae'r rheolwr a'r dadansoddwyr yn adeiladu bwrdd sy'n adlewyrchu'r offeryn: newydd, wedi'i ddidoli, ar y gweill, yn aros am y cwsmer, yn aros am dîm arall, a'i ddatrys. Cytunant ar derfyn o wyth eitem weithredol i bob dadansoddwr a rheol bod yn rhaid i docynnau sy'n aros am eraill enwi'r person sy'n gyfrifol am y cam nesaf. Neilltuant un lôn ar gyfer digwyddiadau brys, â therfyn o ddau. Am fis, maent yn casglu data ar amser beicio ac oedran yn unig.

Ar ôl y mis, mae'r data'n dangos bod y rhan fwyaf o geisiadau'n cael eu datrys mewn ychydig ddyddiau ond bod cynffon hir yn aros wythnosau, yn bennaf "yn aros am dîm arall". Mae'r tîm yn gosod disgwyliad lefel gwasanaeth o'r data ac yn dechrau adolygiad dyddiol o'r eitemau hynaf. Caiff sawl tocyn a oedd yn aros ers tro eu cau neu eu huwchgyfeirio yn yr wythnos gyntaf. Erys problem: nid oes gan y tîm rhwydwaith, sy'n berchen ar lawer o'r tocynnau sy'n aros, fwrdd ei hun ac ni all y ddesg weld ei giw. Mae rheolwr y ddesg yn trefnu sgwrs wythnosol gydag arweinydd y tîm rhwydwaith, ac mae'r ddau dîm yn dechrau trafod rhannu golwg ar yr eitemau sy'n croesi rhyngddynt.

## Pedwar persbectif

### Timau cynnyrch a chyflawni

Gall timau cyflawni ddefnyddio Kanban i weld ble mae gwaith yn aros rhwng dylunio, adeiladu, profi a rhyddhau. Mae terfynau ar waith ar y gweill yn lleihau nifer y newidiadau hanner-gorffenedig, a gall data llif ddangos ble mae angen sylw ar broses ryddhau. Trinwch geisiadau gan weithrediadau fel eitemau yn yr un llif, gyda'u polisi eu hunain.

### Timau gwasanaeth a gweithrediadau

Timau gweithrediadau yw cartref naturiol Kanban. Delweddwch ddigwyddiadau, ceisiadau a newidiadau yn eu cyflyrau eu hunain, gosodwch derfynau, a gwyliwch heneiddio. Defnyddiwch ddata amser beicio i osod disgwyliadau realistig gyda chwsmeriaid, a defnyddiwch gyflyrau wedi'u blocio ac yn aros i ddechrau sgyrsiau gyda thimau eraill.

### Arweinyddiaeth a llywodraethu

Mae arweinwyr yn elwa o fesurau llif fel darlun mwy gonest nag adroddiadau statws. Gofynnwch am amser beicio, trwybwn ac oedran yn ôl math o waith, a gofynnwch beth a newidiodd y tîm oherwydd hwy. Osgowch dargedu rhifau unigol, sy'n cynhyrchu chwarae'r system. Cefnogwch derfynau ar waith ar y gweill hyd yn oed pan fo rhanddeiliaid eisiau dechrau mwy.

### Cwsmeriaid a defnyddwyr

Mae cwsmeriaid yn elwa o ragolygon cliriach a llai o geisiadau coll. Gofynnwch i'r tîm am y disgwyliad lefel gwasanaeth ar gyfer eich math o gais, a disgwyliwch iddo fod yn seiliedig ar hanes. Os yw eich cais yn frys, disgwyliwch gael eich holi pam, oherwydd rhaid i'r tîm amddiffyn llif eraill.

## Dulliau methu cyffredin

- **Bwrdd heb derfynau.** Mae'r bwrdd yn dangos y llanast ond nid yw'n ei leihau. Yn lle hynny, gosodwch a gorfodwch derfynau gwaith ar y gweill, ac adolygwch bob toriad.
- **Diffiniadau eitemau cymysg.** Mae digwyddiadau, prosiectau a thasgau yn rhannu un set o golofnau, ac nid yw'r mesurau'n golygu dim. Yn lle hynny, diffiniwch fathau o eitemau gyda chyflyrau a pholisïau ar wahân.
- **Anwybyddu heneiddio.** Mae hen eitemau'n eistedd heb eu sylwi nes bod cwsmer yn cwyno. Yn lle hynny, adolygwch yr eitemau hynaf bob dydd a phenderfynwch ar bob un.
- **Troi mesurau'n dargedau.** Mae timau'n hollti neu'n cau eitemau i wella rhifau. Yn lle hynny, defnyddiwch fesurau i ofyn cwestiynau a'u hadolygu gyda'r tîm.
- **Lonydd cyflymu cudd.** Mae gwaith brys yn osgoi terfynau heb olrhain. Yn lle hynny, rhowch lôn weladwy, terfyn a pholisi i waith brys.
- **Copïo cynllun bwrdd.** Mae tîm yn mabwysiadu colofnau tîm arall heb ddeall ei lif ei hun. Yn lle hynny, mapiwch y llif gwaith go iawn yn gyntaf.
- **Trin Kanban fel offeryn adrodd.** Mae rheolwyr yn defnyddio'r bwrdd i wylio pobl ac nid i wella llif. Yn lle hynny, defnyddiwch ef fel offeryn y tîm i benderfynu beth i'w wneud nesaf.
- **Peidio byth â gwella'r llif gwaith.** Mae'r bwrdd yn aros yr un fath am flynyddoedd. Yn lle hynny, cynhaliwch adolygiadau rheolaidd o'r Diffiniad o Lif Gwaith a'i newid pan fo'r data'n galw amdano.

## Model aeddfedrwydd

| Dimensiwn | Cychwyn | Datblygu | Safoni | Rheoli | Cydlynu |
|---|---|---|---|---|---|
| Delweddu'r llif gwaith | Mae gwaith yn byw mewn mewnflychau unigol ac mewn pennau | Mae gan rai timau fyrddau sy'n dangos eu cyflyrau | Mae timau'n rhannu Diffiniad o Lif Gwaith gyda mathau o eitemau a pholisïau | Adolygir y bwrdd a'i gywiro yn erbyn yr hyn sy'n digwydd mewn gwirionedd | Mae byrddau ar draws timau yn dangos eitemau a throsglwyddiadau rhwng timau |
| Cyfyngu gwaith ar y gweill | Dim terfynau; mae pobl yn dechrau mwy nag y maent yn ei orffen | Mae rhai timau'n gosod terfynau anffurfiol | Gosodir terfynau a thrafodir toriadau | Addasir terfynau o ddata llif | Cydbwysir terfynau a chapasiti ar draws timau a chyflenwyr |
| Mesurau llif | Ychydig o fesurau a gesglir | Mae rhai timau'n cofnodi amser beicio neu drwybwn | Casglir y pedwar mesur yn gyson | Adolygir mesurau a'u defnyddio i osod disgwyliadau lefel gwasanaeth | Rhennir data llif ar draws timau a'i ddefnyddio i gynllunio capasiti gyda'i gilydd |
| Gwella | Mae newidiadau'n dilyn argyfyngau | Mae timau'n addasu'r bwrdd o bryd i'w gilydd | Mae timau'n adolygu'r llif gwaith ar rythm rheolaidd | Cysylltir newidiadau â mesurau a gwirir canlyniadau | Mae gwelliannau'n lledaenu rhwng timau heb gyfarwyddyd canolog |

## Rhestr wirio

- [ ] Rydym wedi tynnu llun o'n llif gwaith go iawn, gan gynnwys arosiadau a throsglwyddiadau.
- [ ] Diffinnir ein heitemau gwaith, gyda dechrau a diwedd clir ar gyfer pob math.
- [ ] Mae terfynau gwaith ar y gweill yn bodoli a thrafodir pob toriad.
- [ ] Mae polisïau ar gyfer symud a blocio eitemau wedi'u hysgrifennu ar y bwrdd neu'n agos ato.
- [ ] Rydym yn olrhain amser beicio, trwybwn, gwaith ar y gweill ac oedran eitemau gwaith.
- [ ] Rydym yn adolygu'r eitemau hynaf yn ddyddiol neu o leiaf yn wythnosol.
- [ ] Mae gennym ddisgwyliad lefel gwasanaeth sy'n seiliedig ar ein hanes ein hunain.
- [ ] Mae gan waith brys ei lôn, ei derfyn a'i bolisi gweladwy ei hun.
- [ ] Adolygir y Diffiniad o Lif Gwaith ar rythm rheolaidd.
- [ ] Gall timau cyfagos a chwsmeriaid weld yr eitemau sy'n eu pryderu.

## Anogwyr AI

**Pwrpas: disgrifio eich llif gwaith go iawn a chanfod ble mae gwaith yn aros.**

```text
Rydych yn fy helpu i fapio llif gwaith go iawn tîm sy'n trin [math o waith, e.e. "digwyddiadau a cheisiadau desg gwasanaeth"].

Dyma'r cyflyrau y mae eitem nodweddiadol yn mynd drwyddynt, hyd eithaf fy ngallu i'w disgrifio: [gludwch y camau yn eu trefn, gan gynnwys arosiadau a throsglwyddiadau].
Dyma beth ddigwyddodd i dair eitem ddiweddar, gyda dyddiadau ar gyfer pob newid cyflwr: [gludwch dair llinell amser fer, gan ddefnyddio data go iawn yn unig].

Tynnwch lun o'r llif gwaith fel diagram testun syml. Nodwch ble yr arhosodd pob eitem hiraf, gan ddefnyddio'r dyddiadau a roddais yn unig. Awgrymwch dri chwestiwn y dylwn eu gofyn i'r tîm am yr arosiadau hynny. Peidiwch â dyfeisio rhifau. Os yw'r data'n rhy denau, gofynnwch i mi am fwy yn gyntaf, nodwch eich rhagdybiaethau, a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

**Pwrpas: drafftio Diffiniad o Lif Gwaith ar gyfer tîm.**

```text
Helpwch fi i ysgrifennu Diffiniad o Lif Gwaith cyntaf ar gyfer [enw'r tîm a'r hyn y mae'n ei wneud].

Mathau o eitemau a drinwn: [rhestrwch hwy, e.e. digwyddiadau, ceisiadau, newidiadau].
Cyflyrau y gall eitem fod ynddynt: [rhestrwch, neu ysgrifennwch "anhysbys"].
Polisïau cyfredol ar gyfer dechrau, gorffen a blocio eitemau: [gludwch, neu ysgrifennwch "dim wedi'u hysgrifennu"].
Tua faint o eitemau sydd gan bob person ar agor ar y tro: [rhif, neu "anhysbys"].

Cynhyrchwch ddrafft gyda: y mathau o eitemau, pwyntiau dechrau a gorffen, cyflyrau, dull terfyn WIP arfaethedig, polisïau ar gyfer symud eitemau, polisi ar gyfer gwaith brys, a sut y câi disgwyliad lefel gwasanaeth ei osod o'n hanes ein hunain. Marciwch bob cynnig sy'n ddyfaliad. Peidiwch â datgan unrhyw rifau nad wyf wedi'u rhoi i chi. Gofynnwch gwestiynau eglurhaol i mi yn gyntaf, a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

**Pwrpas: dadansoddi data llif o'ch system tocynnau.**

```text
Isod mae dyddiadau dechrau a gorffen [nifer] eitem a gwblhaodd ein tîm yn ddiweddar, a dyddiadau dechrau [nifer] eitem sy'n dal ar agor: [gludwch fel tabl, data go iawn yn unig].

Cyfrifwch amser beicio pob eitem a gwblhawyd ac oedran presennol pob eitem agored. Disgrifiwch y gwasgariad: beth mae'r rhan fwyaf o eitemau'n ei gymryd, beth mae'r arafaf yn ei gymryd, a pha eitemau agored sy'n hŷn na'r rhan fwyaf o eitemau gorffenedig. Peidiwch ag allosod y tu hwnt i'r data. Awgrymwch ddau gwestiwn i'w gofyn i'r tîm am yr eitemau hynaf. Dywedwch wrthyf pa ddata ychwanegol fyddai'n gwneud y dadansoddiad yn fwy dibynadwy, a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

**Pwrpas: cynllunio adolygiad o'r bwrdd gyda'r tîm.**

```text
Cynlluniwch adolygiad llif wythnosol 30 munud ar gyfer tîm o [nifer] o bobl sy'n defnyddio bwrdd Kanban ar gyfer [math o waith].

Ein mesurau: [rhestrwch pa rai o waith ar y gweill, trwybwn, amser beicio ac oedran eitemau gwaith rydych yn eu holrhain].
Rhwystredigaeth gyfredol: [disgrifiwch mewn un neu ddwy frawddeg].

Cynhwyswch agenda amseredig, pum cwestiwn i'w gofyn am y mesurau a'r eitemau hynaf, a cham cau sy'n cofnodi dau newid ar y mwyaf gyda pherchnogion. Cadwch ef yn rhydd o unrhyw offeryn penodol. Gofynnwch gwestiynau eglurhaol yn gyntaf os oes gwybodaeth ar goll, a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

## Sgiliau AI

- [kanban](../../../../skills/kanban/SKILL.md): defnyddiwch i ddylunio neu adolygu bwrdd, terfynau gwaith ar y gweill a pholisïau ar gyfer tîm gwasanaeth neu weithrediadau.
- [scrumban](../../../../skills/scrumban/SKILL.md): defnyddiwch pan fydd tîm eisiau digwyddiadau cynllunio Scrum ynghyd â rheoli llif Kanban.
- [value-stream-map](../../../../skills/value-stream-map/SKILL.md): defnyddiwch i fapio sut mae gwaith yn symud rhwng timau a ble mae'n aros cyn i chi ddylunio'r bwrdd.
- [kaizen](../../../../skills/kaizen/SKILL.md): defnyddiwch i gynllunio gwelliannau bach i'r llif gwaith ar ôl adolygiad llif.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md): defnyddiwch i ddeall pa fathau o waith sy'n cyrraedd ac mewn pa gyfaint cyn gosod terfynau a chapasiti.

(Mae'r sgiliau eu hunain wedi'u hysgrifennu yn Saesneg.)

## Prif ffynonellau

- **The Kanban Guide** (John Coleman a Daniel Vacanti ac eraill, kanbanguides.org): y diffiniad awdurdodol cryno o'r tri arfer a'r pedwar mesur.
- **Kanban (development)** (Wikipedia): trosolwg o'r hanes a'r arferion ehangach, gyda chyfeiriadau at y prif lyfrau.
- **Kanban: Successful Evolutionary Change for Your Technology Business** (David J. Anderson, 2010): hanes sut y cymhwyswyd Kanban at waith meddalwedd.
- **Toyota Production System** (Wikipedia): cefndir ar wreiddiau gweithgynhyrchu main kanban.

Mae'r ffynonellau hyn yn Saesneg.

## Cyfeiriadau

1. The Kanban Guide — John Coleman, Daniel Vacanti, and contributors, kanbanguides.org — https://kanbanguides.org/english/
2. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
3. Kanban — Wikipedia — https://en.wikipedia.org/wiki/Kanban
4. Toyota Production System — Wikipedia — https://en.wikipedia.org/wiki/Toyota_Production_System
5. Theory of constraints — Wikipedia — https://en.wikipedia.org/wiki/Theory_of_constraints
6. Scrumban — Wikipedia — https://en.wikipedia.org/wiki/Scrumban
7. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
8. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
