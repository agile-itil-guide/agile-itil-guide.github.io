# Monitro a Rheoli Hysbysiadau

**Mae monitro yn dweud wrthych a yw gwasanaeth yn gweithio fel y mae defnyddwyr yn ei brofi, ac mae rheoli hysbysiadau (event management) da yn troi llifogydd o signalau yn nifer fach o rybuddion y gall person eu deall a gweithredu arnynt.**

## Pam mae hyn yn bwysig

Ni allwch redeg gwasanaeth na allwch ei weld. Heb fonitro, mae tîm yn dysgu am fethiannau gan ddefnyddwyr, ac yn dysgu am ddirywiad araf gan neb. Gyda monitro gwael mae'r broblem i'r gwrthwyneb: cymaint o rybuddion nes bod y peiriannydd ar alwad yn rhoi'r gorau i'w credu, ac mae'r un sy'n bwysig yn cael ei golli yn y sŵn. Mae'r ddau eithaf yn costio cwsg, ymddiriedaeth ac amser.

Mae monitro a rheoli hysbysiadau hefyd yn penderfynu pa mor gyflym y gellir canfod a thrwsio digwyddiad. Mae popeth mewn rheoli digwyddiadau yn dibynnu ar wybod bod rhywbeth o'i le yn gyflym a chael digon o wybodaeth i ddarganfod pam (gweler Pwnc 3.2 — Rheoli Digwyddiadau). Mae timau ystwyth sy'n rhyddhau'n aml angen hyn hyd yn oed yn fwy, oherwydd bod pob rhyddhad yn gyfle i dorri rhywbeth ac mae pob penderfyniad dadwneud yn dibynnu ar weld yr effaith.

Mae gan lyfr *Site Reliability Engineering* Google ddwy bennod sy'n mynd i'r afael â'r pwnc yn uniongyrchol: "Monitoring Distributed Systems" a "Practical Alerting from Time-Series Data". Maent yn disgrifio arfer un sefydliad ac yn dadlau dros ddull bwriadol syml, sy'n canolbwyntio ar ddefnyddwyr. Mae'r pwnc hwn yn eu defnyddio fel y brif ffynhonnell, oherwydd bod yr erthyglau Wikipedia a ddarllenwyd ar gyfer y canllaw hwn yn rhoi ychydig ar yr arfer. Daw eirfa ITIL yma, fel hysbysiad (event), rhybudd (alert) a rheoli hysbysiadau, o ddisgrifiadau a gyhoeddir yn eang na allai'r canllaw hwn eu cadarnhau yn erbyn testun perchennog y fframwaith. Darllenwch benodau SRE fel un opsiwn wedi'i egluro'n dda.

## Cysyniadau craidd

### Monitro

Mae pennod SRE yn diffinio **monitro** fel casglu, prosesu ac arddangos data meintiol amser real am system. Mae'n dweud bod monitro yn cefnogi dadansoddi tueddiadau hirdymor, cymharu ar draws arbrofion, rhybuddio, dangosfyrddau a dadfygio ad hoc ar ôl y ffaith. Mae'n pwysleisio bod monitro yn ymdrech beirianyddol sylweddol a bod timau fel arfer yn neilltuo o leiaf un person iddo.

### Hysbysiadau, rhybuddion a digwyddiadau

Mewn defnydd ITSM, **hysbysiad (event)** yw newid cyflwr sydd ag arwyddocâd ar gyfer rheoli gwasanaeth. Mae'r rhan fwyaf o hysbysiadau yn wybodaethol. Mae rhai yn dynodi rhybudd neu eithriad. **Rhybudd (alert)** yw, fel y mae pennod SRE yn ei ddweud, hysbysiad i berson, a gyflwynir fel tocyn, e-bost neu alwad. **Digwyddiad (incident)** yw ymyriad heb ei gynllunio neu leihad mewn ansawdd (gweler Pwnc 3.2 — Rheoli Digwyddiadau). Rheoli hysbysiadau yw'r arfer o benderfynu pa hysbysiadau sy'n bwysig, beth i'w wneud amdanynt, a phwy ddylai gael gwybod. Y llif yw hysbysiadau i rybuddion i, weithiau, ddigwyddiadau.

### Monitro bocs du a bocs gwyn

Mae'r bennod yn gwahaniaethu rhwng dau fath:

| Math | Beth mae'n ei wneud | Cryfder |
|---|---|---|
| **Bocs du (Black-box)** | Yn profi ymddygiad sy'n weladwy'n allanol, fel y byddai defnyddiwr yn ei weld | Yn canfod problemau gweithredol; yn addas ar gyfer galw ar bobl |
| **Bocs gwyn (White-box)** | Yn defnyddio metrigau a ddatgelir gan du mewn y system, fel logiau neu drinwyr mewnol | Yn datgelu problemau ar fin digwydd a methiannau a guddir gan ailgynnig; hanfodol ar gyfer dadfygio |

Mae'r llyfr yn cyfuno'r ddau. Mae stiliwr bocs du yn dweud wrthych fod y ddesg dalu'n methu; mae data bocs gwyn yn eich helpu i ddarganfod pam.

### Symptomau ac achosion

Mae'r bennod yn dweud y dylai monitro ateb dau gwestiwn: beth sydd wedi torri, a pham. Mae'n cynghori canolbwyntio rhybuddion ar symptomau, sef yr hyn y mae defnyddwyr yn ei brofi, a galw ar bobl am achosion dim ond pan fyddant yn bendant ac ar fin digwydd. Mae un peiriant sy'n methu, yn ei eiriau ym mhennod rhybuddio, yn annerbyniol i gael eich rhybuddio amdano, oherwydd ei fod yn rhy swnllyd. Dyma galon dull rhybuddio da: dywedwch wrth berson pan fo defnyddwyr yn cael eu brifo neu ar fin cael eu brifo, nid pryd bynnag y mae rhan yn plycio.

### Y pedwar signal euraidd

Mae'r bennod yn cynnig pedwar signal i'w gwylio ar gyfer system sy'n wynebu defnyddwyr:

- **Hwyrni (Latency):** yr amser i wasanaethu cais. Olrheiniwch geisiadau a fethodd ar wahân, oherwydd bod "slow error is even worse than a fast error."
- **Traffig (Traffic):** y galw ar y system.
- **Gwallau (Errors):** ceisiadau a fethodd, boed yn eglur, yn ymhlyg neu trwy bolisi.
- **Dirlawnder (Saturation):** pa mor "llawn" yw'r gwasanaeth. Mae perfformiad yn aml yn dirywio cyn 100% o ddefnydd.

Mae'r rhain yn mapio'n naturiol i ddangosyddion lefel gwasanaeth (gweler Pwnc 3.7 — Rheoli Lefelau Gwasanaeth). Mae'r bennod hefyd yn rhybuddio bod cymedrau yn cuddio gwyriadau araf ac yn awgrymu cofnodi cyfrifon ceisiadau mewn bwcedi hwyrni i weld y dosbarthiad.

### Beth sy'n gwneud rhybudd da

Mae'r bennod yn cynnig cwestiynau i'w gofyn cyn ysgrifennu rhybudd: a yw'n canfod cyflwr brys, y gellir gweithredu arno, sy'n weladwy i ddefnyddwyr; a ellir ei anwybyddu'n ddiogel; ac a ellir awtomeiddio'r ymateb. Dylai galwadau fod yn weithredadwy, yn gofyn am farn, ac yn ymwneud â phroblemau newydd. Mae'n dweud na ddylai rhybuddion byth danio dim ond oherwydd bod "something seems a bit weird." Mae galwadau y mae eu hymatebion yn arferol ac algorithmig, yn ei farn ef, yn faner goch sy'n galw am awtomeiddio neu atgyweirio gwraidd achos.

### Llwybro rhybuddion

Mae'r bennod rhybuddio yn disgrifio anfon rhybuddion sy'n deilwng o alwad at staff ar alwad, rhai is-hanfodol at giwiau tocynnau, a'r gweddill at ddangosfyrddau statws. Mae'n disgrifio offer i lwybro, dad-ddyblygu ac atal rhybuddion, ac yn nodi y dylai rhybuddion aros hyd lleiaf cyn tanio oherwydd y gallant fflapio. Mae'n rhybuddio "you can only alert on the failures that you expected," a dyna pam mae cyfuno stilwyr bocs du â data bocs gwyn yn bwysig.

### Cadwch ef yn syml

Mae'r bennod yn dadlau dros systemau syml, cyflym yn hytrach na "hud" sy'n dysgu trothwyon neu'n canfod achosiaeth, ac yn nodi bod hierarchaethau dibyniaeth cymhleth wedi cael llwyddiant cyfyngedig. Mae'n dweud i gadw rheolau sy'n dal digwyddiadau go iawn yn syml, tynnu rhybuddion a signalau nas defnyddir yn anaml, a chadw costau cynnal yn tyfu'n arafach na maint y gwasanaeth. Mae'r achosion y mae'n eu disgrifio, fel tîm a orlethwyd gan rybuddion a lacio ei amcan dros dro ac a ddiffoddodd rybuddion e-bost i ryddhau amser ar gyfer atgyweiriadau parhaol, yn dangos parodrwydd i dynnu sŵn.

### Dangosfyrddau a golygon hirdymor

Mae'r bennod yn trin dangosfyrddau fel golygon crynodeb parod o fetrigau allweddol gwasanaeth ac yn dweud bod dangosfyrddau yn well na rhybuddion e-bost, y mae'n eu galw'n rhai o werth cyfyngedig iawn. Mae hefyd yn argymell adolygu amlder galwadau dros amser, er enghraifft mewn adroddiadau chwarterol, i gadw arweinyddiaeth yn hysbys o'r llwyth galwadau. Mae hyn yn troi ansawdd rhybuddion yn rhywbeth y gall rheolwyr ei weld (gweler Pwnc 1.2 — Egwyddorion Ystwyth ar gyflymder cynaliadwy).

### Terfynau'r ffynonellau

Nid yw penodau SRE yn rhoi trothwyon y tu hwnt i un enghraifft weithredol, nid ydynt yn trafod llawlyfrau gweithredu na therfynau llwyth ar alwad, ac nid ydynt yn disgrifio sut i adolygu ac ymddeol rhybuddion dros amser, felly materion ar gyfer eich arfer eich hun yw'r rheini. Maent yn dod o un sefydliad mawr ag adnoddau peirianyddol cryf. Gall timau llai gymhwyso'r egwyddorion gydag offer symlach.

## Arferion gorau

1. **Monitrwch yr hyn y mae defnyddwyr yn ei brofi.** Ychwanegwch o leiaf un stiliwr bocs du sy'n perfformio gweithred defnyddiwr go iawn, fel mewngofnodi neu osod archeb, a rhybuddiwch pan fydd yn methu.
2. **Gwyliwch y pedwar signal euraidd.** Ar gyfer pob gwasanaeth, olrheiniwch hwyrni, traffig, gwallau a dirlawnder. Ychwanegwch fesurau eraill dim ond os ydynt yn ateb cwestiwn rydych wedi'i ofyn.
3. **Rhybuddiwch ar symptomau.** Galwch ar bobl pan fo defnyddwyr yn cael eu brifo neu fe fyddant yn fuan. Triniwch gyflyrau mewnol, fel un peiriant yn methu, fel gwybodaeth â blaenoriaeth is oni bai eu bod yn bendant ac ar fin digwydd.
4. **Gwnewch bob galwad yn weithredadwy.** Cyn i chi greu rhybudd, ysgrifennwch beth ddylai'r ymatebwr ei wneud. Os nad oes dim i'w wneud, nid galwad ydyw.
5. **Llwybrwch yn ôl brys.** Anfonwch rybuddion brys at y rhai ar alwad, rhai llai brys at giw tocynnau, a gwybodaeth at ddangosfwrdd. Peidiwch ag anfon rhybuddion e-bost at bobl a fydd yn eu hanwybyddu.
6. **Defnyddiwch ddosbarthiadau, nid cyfartaleddau yn unig.** Edrychwch ar ganraddau uchel ar gyfer hwyrni, neu fwcedi, fel bod gwyriadau araf yn weladwy.
7. **Gosodwch hyd lleiaf.** Mynnwch fod cyflwr yn parhau am amser byr cyn rhybuddio, i osgoi fflapio. Tiwniwch yr hyd gyda data go iawn.
8. **Ymddeolwch rybuddion swnllyd.** Adolygwch pa rybuddion sy'n tanio fwyaf ac na arweiniodd at weithredu. Tynnwch neu trwsiwch hwy. Mae pennod SRE yn trin ymatebion arferol fel arwydd ar gyfer awtomeiddio neu atgyweirio.
9. **Profwch eich monitro.** Torrwch rywbeth yn fwriadol mewn amgylchedd prawf a gwiriwch fod y rhybudd cywir yn tanio. Cynhwyswch y system fonitro ei hun yn y gwiriadau, fel y sylwir ar ei methiant.
10. **Adolygwch lwyth galwadau.** Cyfrwch alwadau fesul sifft, ymyriadau y tu allan i oriau, a larymau ffug bob chwarter. Rhannwch y canlyniadau gyda rheolwyr a'u defnyddio mewn cynllunio.
11. **Cadwch fonitro yn y diffiniad o orffenedig.** Ar gyfer pob nodwedd newydd, gofynnwch pa signalau sy'n dangos a yw'n gweithio a pha rybudd, os o gwbl, sydd ei angen arni (gweler Pwnc 3.5 — Rheoli Rhyddhau a Defnyddio).
12. **Cadwch ef yn syml.** Ffafriwch ychydig o reolau dealladwy yn hytrach na chynllun cymhleth. Tynnwch signalau nas defnyddir ac adolygwch reolau ar ôl digwyddiadau.

## Cwestiynau i'w trafod gyda'ch tîm

**Sut y daethom i wybod am ein tri digwyddiad diwethaf?**

Rhestrwch bob digwyddiad a sut y sylwyd arno gyntaf: rhybudd, defnyddiwr, cydweithiwr. Os daeth y rhan fwyaf gan ddefnyddwyr, mae monitro yn colli'r symptomau sy'n bwysig. Gall yr hwylusydd ofyn beth fyddai stiliwr wedi'i ddangos. Dewiswch un gweithred defnyddiwr i'w monitro yn gyntaf.

**Pa rybuddion ydym ni'n eu hanwybyddu, a pham?**

Gofynnwch i beirianwyr ar alwad am y rhybuddion y maent yn eu tawelu neu eu hepgor. Mae pob un yn ymgeisydd i'w drwsio neu ei ddileu. Gofynnwch beth sy'n gwneud i bobl ymddiried neu amau rhybudd. Mae ateb gonest yn aml yn datgelu rhybuddion sy'n tanio ar gyflyrau na all neb weithredu arnynt. Cytunwch i ymddeol neu drwsio tri.

**Beth yw'r noson waethaf a gawsom ar alwad, a beth fyddai wedi ei gwneud yn well?**

Casglwch straeon heb feio. Chwiliwch am batrymau: galwadau ailadroddus, rhybuddion aneglur, diffyg llawlyfrau gweithredu, dim uwchgyfeirio. Mae pob patrwm yn welliant. Gofynnwch pa ddau newid fyddai'n helpu fwyaf. Y nod yw llwyth ysgafnach a signal cliriach.

**Os bydd ein system fonitro yn methu, sut y byddem yn gwybod?**

Gofynnwch pwy sy'n gwylio'r gwyliwr. Nid oes gan lawer o dimau wiriad bod y monitro'n gweithio. Trafodwch guriad calon syml neu stiliwr o system ar wahân. Cytunwch ar un gwiriad i'w ychwanegu.

**Beth mae ein dangosfyrddau yn ei ddangos, a phwy sy'n edrych arnynt?**

Rhestrwch y dangosfyrddau a gofynnwch pwy a ddefnyddiodd bob un yn y mis diwethaf. Anhrefn yw dangosfyrddau nas defnyddir; mae rhai defnyddiol yn dweud stori am y gwasanaeth. Gofynnwch pa gwestiwn y mae pob un yn ei ateb. Cadwch set fach sy'n ateb cwestiynau go iawn.

**Sut y byddem yn gwybod bod rhyddhad wedi gwneud pethau'n waeth?**

Dewiswch ryddhad diweddar a gofynnwch pa signal fyddai'n dangos problem. Os yw'r ateb yn "byddem yn clywed gan ddefnyddwyr", trafodwch pa signalau i'w gwylio ar ôl rhyddhad a phwy sy'n gyfrifol. Mae'r cwestiwn hwn yn cysylltu monitro â defnyddio. Ysgrifennwch restr wirio fer ar ôl rhyddhau.

## Yn ymarferol: enghraifft o ITIL ystwyth

Mae awdurdod trafnidiaeth gyhoeddus dinas yn rhedeg gwefan ac ap cynllunio teithiau a ddefnyddir gan 400,000 o bobl y dydd. Mae tîm platfform o ddeg yn berchen ar y gwasanaeth gyda rota ar alwad o bedwar. Mae gan y tîm gannoedd o rybuddion: CPU ar bob gweinydd, gofod disg, hydoedd ciwiau a chyfrifon gwallau. Mae peirianwyr ar alwad yn derbyn 40 galwad mewn wythnos nodweddiadol, y rhan fwyaf y tu allan i oriau, ac adroddwyd dau ddigwyddiad yn y chwarter diwethaf gyntaf gan ddefnyddwyr ar y cyfryngau cymdeithasol.

Mae arweinydd y tîm a pheiriannydd yn adolygu tri mis o alwadau. Maent yn canfod bod tri chwarter ohonynt ar gyfer cyflyrau nad oedd angen gweithredu arnynt neu a ddatryswyd ar eu pen eu hunain. Cytunant i ddilyn dull syml o lyfr SRE: rhybuddio ar yr hyn y mae defnyddwyr yn ei brofi. Ychwanegant stiliwr sy'n cynllunio taith safonol bob munud ac yn mesur llwyddiant a chyflymder, ac maent yn cadw set fach o rybuddion ar ddirlawnder y gronfa ddata a'r ciw. Symudant y gweddill i ddangosfwrdd a thocyn dyddiol. Mae pob galwad sy'n weddill yn cael cofnod llawlyfr gweithredu byr yn dweud beth i'w wirio.

Ar ôl mis, mae galwadau'n gostwng i tua phump yr wythnos, a chanfuwyd y ddau ddigwyddiad a ddilynodd gan y stiliwr cyn i ddefnyddwyr gwyno. Erys rhai problemau. Mae'r stiliwr yn cwmpasu un math o daith yn unig, ac aeth nam sy'n effeithio ar deithiau beic heb ei ganfod am ddiwrnod. Mae un peiriannydd hefyd yn adrodd bod y penderfyniad i "symud i'r dangosfwrdd" wedi cuddio problem disg araf a achosodd fethiant yn ddiweddarach. Mae'r tîm yn ychwanegu stilwyr ar gyfer mathau eraill o deithiau, yn ychwanegu adolygiad dyddiol o'r dangosfwrdd at y rota, ac yn cytuno i adolygu llwyth galwadau bob chwarter.

## Pedwar persbectif

### Timau cynnyrch a chyflawni

Mae timau cyflawni'n gwybod beth mae'r feddalwedd i fod i'w wneud a ble mae'n debygol o fethu. Adeiladwch y signalau i'r cod: logiau defnyddiol, metrigau a gwiriadau iechyd. Diffiniwch stilwyr ar gyfer gweithredoedd defnyddwyr allweddol, a thriniwch fonitro fel rhan o orffenedig. Cymerwch ran mewn adolygiadau rhybuddion fel bod galwadau'n adlewyrchu problemau go iawn.

### Timau gwasanaeth a gweithrediadau

Mae timau gweithrediadau'n cario'r galwr a'r dangosfyrddau. Cadwch rybuddion yn brin ac yn weithredadwy, llwybrwch yn ôl brys, ac olrheiniwch lwyth galwadau. Gwthiwch rybuddion swnllyd yn ôl i'r timau sy'n berchen arnynt, gyda thystiolaeth, a rhannwch yr hyn a ddysgwch o ddigwyddiadau am yr hyn i'w wylio.

### Arweinyddiaeth a llywodraethu

Dylai arweinwyr ofyn am lwyth galwadau a data canfod digwyddiadau, nid am fwy o rybuddion. Cefnogwch amser i ymddeol sŵn ac ychwanegu signalau defnyddiol. Triniwch nifer cynyddol o alwadau y tu allan i oriau fel risg i'r gwasanaeth ac i bobl.

### Cwsmeriaid a defnyddwyr

Mae cwsmeriaid a defnyddwyr yn elwa pan ganfyddir problemau cyn iddynt sylwi. Adroddwch broblemau gyda manylion, fel yr hyn a geisioch a phryd, gan fod hynny'n helpu tiwnio'r monitro. Gofynnwch i ddarparwyr sut maent yn canfod methiannau a pha mor gyflym, ac a ydynt yn cyhoeddi gwybodaeth statws.

## Dulliau methu cyffredin

- **Rhybuddio ar bopeth.** Mae'r galwr yn gyson ac mae ymddiriedaeth yn cael ei cholli. Yn lle hynny, galwch ar symptomau ac anfonwch y gweddill at docynnau neu ddangosfyrddau.
- **Monitro systemau, nid defnyddwyr.** Mae pob peiriant yn wyrdd tra na all defnyddwyr fewngofnodi. Yn lle hynny, ychwanegwch stilwyr bocs du o weithredoedd defnyddwyr go iawn.
- **Dim gweithred ynghlwm.** Mae galwadau'n cyrraedd heb ddim i'w wneud. Yn lle hynny, mynnwch fod gan bob galwad ymateb disgrifiedig, neu tynnwch hi.
- **Cyfartaleddau yn unig.** Mae grŵp o ddefnyddwyr yn dioddef tra bod y cymedr yn edrych yn iawn. Yn lle hynny, edrychwch ar ganraddau uchel neu ddosbarthiadau.
- **Rheolau cymhleth, clyfar.** Mae trothwyon wedi'u dysgu a choed dibyniaeth yn drysu ymatebwyr. Yn lle hynny, ffafriwch reolau syml, dealladwy.
- **Monitro heb ei wylio.** Mae'r system fonitro yn methu'n dawel. Yn lle hynny, gwiriwch hi gyda churiadau calon a phrofion.
- **Ymatebion arferol.** Mae pobl yn ailadrodd yr un atgyweiriad ar ôl pob galwad. Yn lle hynny, awtomeiddiwch yr ymateb neu trwsiwch yr achos.
- **Anwybyddu llwyth galwadau.** Trinnir galwadau dros nos fel peth arferol. Yn lle hynny, mesurwch ac adolygwch hwy, a thriniwch lwyth uchel fel risg.

## Model aeddfedrwydd

| Dimensiwn | Cychwyn | Datblygu | Safoni | Rheoli | Cydlynu |
|---|---|---|---|---|---|
| Gwelededd profiad defnyddwyr | Mae defnyddwyr yn adrodd y rhan fwyaf o broblemau | Mae gan rai gwasanaethau stilwyr neu fetrigau ar gyfer gweithredoedd defnyddwyr | Mae gweithredoedd defnyddwyr allweddol yn cael eu profi ac olrheinir y signalau euraidd ar gyfer pob gwasanaeth | Mesurir amser canfod a chwmpas a thrwsir bylchau | Rhennir monitro ar draws timau, cyflenwyr a chwsmeriaid |
| Ansawdd rhybuddion | Llawer o rybuddion, ychydig o weithredu | Mae rhai timau'n tocio rhybuddion | Mae galwadau'n seiliedig ar symptomau, yn weithredadwy ac wedi'u llwybro yn ôl brys | Mesurir ac adolygir manwl gywirdeb a sŵn rhybuddion | Gwellir dylunio rhybuddion ar draws timau o dystiolaeth a rennir |
| Ymateb ac awtomeiddio | Mae ymatebion yn fyrfyfyr | Mae rhai llawlyfrau gweithredu'n bodoli | Mae galwadau'n cysylltu â llawlyfrau gweithredu, ac awtomeiddir ymatebion arferol | Mesurir amser ymateb a defnydd awtomeiddio | Cydlynir ymatebion ar draws timau a chyflenwyr |
| Pobl a llwyth | Nid yw llwyth galwadau'n cael ei olrhain | Mae rhai timau'n cyfrif galwadau | Adolygir llwyth galwadau bob chwarter | Cydbwysir a lleihir llwyth o ddata | Rhennir llwyth a dysgu ar draws timau ac fe'u hadlewyrchir mewn cynllunio |

## Rhestr wirio

- [ ] Mae gan bob gwasanaeth pwysig o leiaf un stiliwr o weithred defnyddiwr go iawn.
- [ ] Rydym yn olrhain hwyrni, traffig, gwallau a dirlawnder ar gyfer pob gwasanaeth.
- [ ] Mae gan bob galwad ymateb ysgrifenedig ac mae'n ymwneud â chyflwr sy'n weladwy i ddefnyddwyr neu ar fin digwydd.
- [ ] Llwybrir rhybuddion yn ôl brys i'r rhai ar alwad, tocynnau neu ddangosfyrddau.
- [ ] Mae canraddau uchel neu ddosbarthiadau yn weladwy ar gyfer hwyrni.
- [ ] Rydym yn adolygu pa rybuddion sy'n tanio fwyaf ac yn ymddeol y rhai nad ydynt yn arwain at weithredu.
- [ ] Gwirir y system fonitro ei hun.
- [ ] Adolygir llwyth galwadau (galwadau fesul sifft, ymyriadau y tu allan i oriau) bob chwarter.
- [ ] Mae nodweddion newydd yn cynnwys monitro yn eu diffiniad o orffenedig.
- [ ] Ar ôl pob rhyddhad, mae rhywun yn gwirio'r signalau yn erbyn rhestr fer.

## Anogwyr AI

**Pwrpas: adolygu rhestr o rybuddion am sŵn a gweithredadwyedd.**

```text
Dyma restr o'n rhybuddion gyda pha mor aml y tanio pob un yn y [cyfnod] diwethaf, a beth ddigwyddodd wedyn (gweithredwyd arno, anwybyddwyd, datrysodd ar ei ben ei hun): [gludwch fel tabl; defnyddiwch ddata go iawn].

Gan ddefnyddio fy nata i yn unig, grwpiwch y rhybuddion yn: tanio'n aml heb weithred; tanio ac arwain at weithred; anaml yn tanio. Ar gyfer pob un o'r grŵp cyntaf, awgrymwch gwestiwn i'w ofyn i'w berchennog (er enghraifft a ellir ei dynnu, ei lwybro i docyn, neu ei droi'n rhybudd sy'n seiliedig ar symptom). Peidiwch â dyfeisio amleddau na chanlyniadau. Dywedwch wrthyf pa ddata ychwanegol fyddai'n helpu, a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

**Pwrpas: diffinio stiliwr ar gyfer taith defnyddiwr.**

```text
Helpwch fi i ddiffinio stiliwr bocs du ar gyfer y weithred defnyddiwr hon yn [gwasanaeth]: [disgrifiwch, er enghraifft "mae defnyddiwr yn chwilio am daith ac yn derbyn canlyniadau"].

Beth sy'n cyfrif fel llwyddiant: [disgrifiwch].
Beth sy'n rhy araf: [dywedwch "anhysbys" neu disgrifiwch mewn geiriau, nid rhifau].
Pa systemau mae'r weithred yn eu cyffwrdd: [rhestrwch].

Disgrifiwch y camau y dylai'r stiliwr eu perfformio, beth i'w gofnodi (llwyddiant, amser a gymerwyd, a ble y methodd), pa gyflwr rhybudd i'w gynnig (gadewch drothwyon fel [i'w cytuno]), a beth fyddai ymatebwr yn ei wirio yn gyntaf. Marciwch ragdybiaethau. Peidiwch â dyfeisio manylion system. Gofynnwch gwestiynau eglurhaol yn gyntaf, a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

**Pwrpas: ysgrifennu'r adran ymateb ar gyfer rhybudd.**

```text
Ar gyfer y rhybudd hwn, ysgrifennwch gofnod ymateb byr ar gyfer staff ar alwad.

Enw a chyflwr y rhybudd: [gludwch].
Beth mae'n ei olygu i ddefnyddwyr: [disgrifiwch].
Beth rwy'n gwybod i'w wirio yn gyntaf: [rhestrwch].
At bwy i uwchgyfeirio: [rôl, neu ysgrifennwch "anhysbys"].

Ysgrifennwch: beth mae'r rhybudd yn ei olygu, y tri gwiriad cyntaf, sut i ddweud a yw defnyddwyr yn cael eu heffeithio, pryd i uwchgyfeirio, a nodyn ar a ellid awtomeiddio'r ymateb. Defnyddiwch fy ngwybodaeth i yn unig; marciwch unrhyw beth a ychwanegwyd gennych fel [GWIRIO]. Gofynnwch gwestiynau eglurhaol yn gyntaf, a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

**Pwrpas: paratoi adolygiad chwarterol o lwyth galwadau.**

```text
Helpwch fi i baratoi adolygiad chwarterol o lwyth galwadau ar gyfer [tîm].

Data ar gyfer y chwarter (galwadau yn ôl wythnos, galwadau y tu allan i oriau, galwadau heb weithred, digwyddiadau a ganfuwyd gan fonitro yn erbyn gan ddefnyddwyr): [gludwch ffigurau go iawn].
Cyd-destun: [disgrifiwch newidiadau yn y cyfnod].

Crynhowch y data mewn iaith blaen, gan ddefnyddio fy ffigurau i yn unig. Amlygwch dueddiadau a gwyriadau fel cwestiynau, nid casgliadau. Awgrymwch dri chwestiwn i'r tîm ac un i reolwyr. Peidiwch â dyfeisio achosion. Os yw'r data'n anghyflawn, dywedwch beth i'w gasglu. Rhestrwch yr hyn nad ydych yn siŵr ohono.
```

## Sgiliau AI

- [runbook](../../../../skills/runbook/SKILL.md): defnyddiwch i ysgrifennu'r ymateb sy'n mynd gyda phob galwad.
- [on-call-rotation](../../../../skills/on-call-rotation/SKILL.md): defnyddiwch i ddylunio rota deg ac i gynllunio sut y rhennir ac yr adolygir llwyth galwadau.
- [software-engineering-metrics](../../../../skills/software-engineering-metrics/SKILL.md): defnyddiwch i ddewis a dehongli mesurau perfformiad gwasanaeth a chyflawni.
- [performance-testing](../../../../skills/performance-testing/SKILL.md): defnyddiwch i wirio hwyrni a dirlawnder dan lwyth cyn i broblemau gyrraedd defnyddwyr.
- [chaos-testing](../../../../skills/chaos-testing/SKILL.md): defnyddiwch i brofi bod methiannau'n cael eu canfod a'u trin trwy eu hachosi'n fwriadol mewn lleoliad diogel.

(Mae'r sgiliau eu hunain wedi'u hysgrifennu yn Saesneg.)

## Prif ffynonellau

- **Monitoring Distributed Systems** (*Site Reliability Engineering*, Google, sre.google): diffiniadau, y pedwar signal euraidd, symptomau yn erbyn achosion, a chyngor ar rybuddio syml.
- **Practical Alerting from Time-Series Data** (*Site Reliability Engineering*, Google, sre.google): sut mae rheolau rhybuddio, llwybro a fflapio'n gweithio yn ymarferol.
- **Service Level Objectives** (*Site Reliability Engineering*, Google, sre.google): y cyswllt rhwng dangosyddion, amcanion a rhybuddion.
- **IT service management** (Wikipedia): lle monitro a digwyddiadau mewn ITSM.

Mae'r ffynonellau hyn yn Saesneg.

## Cyfeiriadau

1. Monitoring Distributed Systems — Google SRE book, sre.google — https://sre.google/sre-book/monitoring-distributed-systems/
2. Practical Alerting from Time-Series Data — Google SRE book, sre.google — https://sre.google/sre-book/practical-alerting/
3. Service Level Objectives — Google SRE book, sre.google — https://sre.google/sre-book/service-level-objectives/
4. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
5. Network monitoring — Wikipedia — https://en.wikipedia.org/wiki/Network_monitoring
6. Observability (software) — Wikipedia — https://en.wikipedia.org/wiki/Observability_(software)
7. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
8. Alarm fatigue — Wikipedia — https://en.wikipedia.org/wiki/Alarm_fatigue
9. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
