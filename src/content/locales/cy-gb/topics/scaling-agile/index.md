# Ehangu Ystwythder

**Mae ehangu ystwythder yn golygu cydlynu llawer o dimau, gwasanaethau a chyflenwyr heb golli'r dolenni adborth byr a wnaeth i ystwythder weithio. Y prif risg yw ychwanegu haenau o broses cyn i chi wybod pa broblem rydych yn ei datrys.**

## Pam mae hyn yn bwysig

Gall un tîm ystwyth o hyd at ddeg o bobl siarad â'i gilydd bob dydd. Mae gwasanaeth go iawn fel arfer yn cynnwys mwy: sawl tîm cyflawni, grŵp gweithrediadau, desg gwasanaeth, diogelwch, tîm rhwydwaith a chyflenwyr. Pan fo'n rhaid i waith llawer o grwpiau ffitio at ei gilydd, nid yw sgwrs ddyddiol un tîm yn ddigon, ac mae problemau newydd yn ymddangos. Mae blaenoriaethau'n gwrthdaro, mae dibyniaethau'n atal gwaith, ac mae pob tîm yn gwella ei ran ei hun tra nad yw'r gwasanaeth cyfan yn gwella.

Mae sawl fframwaith yn honni eu bod yn datrys hyn. Maent yn wahanol o ran maint, cost ac athroniaeth, ac maent yn denu barn gref. Mae rhai sefydliadau'n mabwysiadu fframwaith mawr fel rhaglen ac yn treulio blynyddoedd ar y cyflwyno. Mae eraill yn ehangu trwy dynnu rhwystrau a chadw set fach o reolau. Y safbwynt gonest, a gefnogir gan [erthygl Wikipedia ar ddatblygu meddalwedd ystwyth](https://en.wikipedia.org/wiki/Agile_software_development) (yn Saesneg), yw bod barn ar effeithiolrwydd fframweithiau ehangu yn amrywio a bod y dystiolaeth yn gyfyngedig.

I bobl mewn rheoli gwasanaethau TG (ITSM), mae ehangu'n bwysig oherwydd bod ITIL eisoes yn gweithio ar raddfa. Mae'n disgrifio system gwerth gwasanaeth sy'n cysylltu llawer o arferion a phartïon (gweler Pwnc 2.3 — System Gwerth Gwasanaeth ITIL). Y cwestiwn y mae'r pwnc hwn yn helpu ag ef yw sut i gyfuno'r ddau: sut i gydlynu llawer o dimau ystwyth wrth gadw'r arferion rheoli gwasanaethau sy'n amddiffyn defnyddwyr, a heb adeiladu ail haen o fiwrocratiaeth ar ben yr un gyntaf.

## Cysyniadau craidd

### Pam mae un tîm yn wahanol i lawer

Mae'r erthygl Wikipedia ar ddatblygu meddalwedd ystwyth yn adrodd bod ehangu'n dod â heriau pan fo prosiect yn cynnwys mwy na thua 20 o ddatblygwyr neu pan fo timau wedi'u dosbarthu ar draws lleoliadau. Mae strategaethau a fframweithiau'n bodoli ar gyfer yr achosion hyn, ond mae'r erthygl yn nodi barn sy'n gwrthdaro ynghylch a ydynt yn cyd-fynd â'r diffiniad o ystwyth.

Mae tair problem yn codi dro ar ôl tro wrth ychwanegu timau:

- **Aliniad:** mae timau angen cyfeiriad a rennir a blaenoriaethau cyson, neu byddant yn optimeiddio pethau gwahanol.
- **Dibyniaethau:** mae gwaith mewn un tîm yn aros ar un arall, ac mae'r arosiadau'n lluosi wrth i nifer y timau dyfu.
- **Integreiddio:** rhaid i allbwn llawer o dimau ddod at ei gilydd yn rhywbeth sy'n gweithio fel gwasanaeth, a pho hwyraf y byddwch yn profi hynny, y costusaf yw'r pethau annisgwyl.

### Pedwar dull adnabyddus

Mae'r tabl canlynol yn crynhoi pedwar dull a enwir. Mae'r crynodebau'n dibynnu ar yr erthyglau Wikipedia a thudalennau perchnogion y fframweithiau fel y'u darllenwyd ar gyfer y canllaw hwn; gwiriwch fersiynau cyfredol yn y ffynonellau cyn dibynnu ar fanylion.

| Dull | Crewyr neu berchennog | Y prif syniad | Maint a siâp |
|---|---|---|---|
| **Scaled Agile Framework (SAFe)** | Disgrifiwyd gyntaf yn llyfr Dean Leffingwell yn 2007 *Scaling Software Agility*; deunyddiau a gyhoeddir gan Scaled Agile, Inc. | Set o batrymau sefydliad a llif gwaith sy'n tynnu ar ystwythder, datblygu cynnyrch main a meddwl systemau | Cyfluniadau o lefel tîm a rhaglen (Agile Release Trains) hyd at atebion mawr a phortffolios |
| **Large-Scale Scrum (LeSS)** | Craig Larman a Bas Vodde | Ehangu Scrum ei hun: un Perchennog Cynnyrch ac un Ôl-groniad Cynnyrch ar gyfer un cynnyrch, llawer o dimau nodwedd trawsswyddogaethol, gyda chyn lleied o rolau ac arteffactau ychwanegol â phosibl | LeSS ar gyfer tua dau i wyth tîm; LeSS Huge ar gyfer mwy, gydag Ardaloedd Gofynion o sawl tîm yr un |
| **Disciplined Agile (DA)** | Scott Ambler a Mark Lines; cafodd ei brynu gan y Project Management Institute (PMI) ym mis Awst 2019 | Pecyn cymorth o nodau proses ac opsiynau sy'n helpu tîm i ddewis ei ffordd ei hun o weithio yn ei gyd-destun | Hybrid a sensitif i gyd-destun, gyda sawl cylch bywyd a haen ar gyfer y fenter |
| **Scrum@Scale ac eraill** | Enwir ochr yn ochr â SAFe yn yr erthygl Wikipedia | Fframweithiau pellach ar gyfer cydlynu sawl tîm Scrum | Gweler gwefannau'r perchnogion |

### SAFe yn fanylach

Mae'r erthygl Wikipedia yn dweud bod SAFe wedi'i ddisgrifio'n ffurfiol gyntaf yn 2007, gyda rhyddhad cyntaf yn 2011 a fersiwn 6.0 ym mis Mawrth 2023. Ar gyfer fersiwn 5.1 mae'n rhestru pedwar cyfluniad: Essential SAFe (lefel tîm a rhaglen), Large Solution SAFe, Portfolio SAFe a Full SAFe. Mae'r erthygl hefyd yn rhestru deg egwyddor, gan gynnwys cymryd golwg economaidd a chymhwyso meddwl systemau.

Mae SAFe wedi denu beirniadaeth agored, y mae'r erthygl yn ei chofnodi. Dadleuodd Thoughtworks fod rheolaeth o'r brig i lawr yn cynhyrchu gwastraff, beirniadodd Ken Schwaber ef mewn post yn 2013, a dadleuodd Jeff Gothelf yn 2021 nad yw SAFe yn ystwyth. Mae beirniaid yn ei alw'n hierarchaidd ac yn anhyblyg ac yn dweud y gall roi ymddangosiad ystwythder i sefydliad wrth gadw hen brosesau. Mae cefnogwyr yn gwerthfawrogi ei eirfa gyffredin a'i strwythur ar gyfer sefydliadau mawr. Darllenwch y ddwy ochr cyn penderfynu.

### LeSS: ehangu trwy dynnu

Mae Larman a Vodde yn disgrifio LeSS fel Scrum a gymhwysir at lawer o dimau sy'n gweithio ar un cynnyrch. Nid yw'n ychwanegu haen ar ben Scrum. Yn ôl cyflwyniad y fframwaith ei hun, mae un Perchennog Cynnyrch yn rheoli un Ôl-groniad Cynnyrch ac mae'r timau'n cynhyrchu un cynnyrch y gellir ei gludo mewn Sbrint cyffredin. Mae LeSS yn datgan syniad "mwy gyda llai": mae llai o rolau, arteffactau a rheolau yn cynhyrchu timau mwy cyfrifol. Am y dull sylfaenol, gweler Pwnc 1.4 — Scrum.

### Disciplined Agile: dewiswch eich ffordd o weithio

Mae'r erthygl Wikipedia ar Disciplined Agile Delivery yn disgrifio pecyn cymorth hybrid, pobl-yn-gyntaf sy'n cwmpasu'r cylch bywyd cyflawni cyfan. Mae'n cefnogi chwe chylch bywyd ac yn disgrifio 21 o nodau proses. Y dull yw helpu timau i ddewis arferion sy'n gweddu i'w sefyllfa, yn hytrach na rhagnodi un fframwaith. Mae'r erthygl yn cario hysbysiad cynnal a chadw y gallai ddibynnu gormod ar ffynonellau sy'n agos at y pwnc.

### Scrum o Scrums a chydlynu syml

Cyn mabwysiadu fframwaith, ystyriwch yr offer symlaf. Mae "scrum o scrums" yn dod â chynrychiolwyr sawl tîm at ei gilydd i rannu cynnydd a datrys dibyniaethau. Mae cynllunio chwarterol a rennir, ôl-groniad cyffredin ar gyfer cynnyrch, a chyfarfod rheolaidd o arweinwyr timau yn ddewisiadau ysgafn eraill. Mae llawer o sefydliadau'n ehangu'n ddigon da gyda'r rhain.

### Ehangu mewn sefydliad gwasanaeth

Mewn sefydliad TG, gellir trefnu timau mewn sawl ffordd, ac mae'r dewis yn effeithio ar ba mor dda y mae ystwythder yn ehangu:

| Sefydliad | Sut y trefnir timau | Effaith ar ehangu |
|---|---|---|
| **Yn ôl cydran** | Tîm i bob haen dechnegol neu system | Mae nodweddion angen sawl tîm, felly mae dibyniaethau'n niferus |
| **Yn ôl nodwedd neu gynnyrch** | Timau trawsswyddogaethol sy'n berchen ar sleisen sy'n wynebu cwsmeriaid | Llai o ddibyniaethau; angen safonau a rennir ar gyfer platfformau |
| **Yn ôl gwasanaeth** | Tîm i bob gwasanaeth, sy'n berchen ar ei adeiladu a'i redeg | Yn agos at reoli gwasanaethau; angen ffordd o ymdrin â phlatfformau a rennir |
| **Platfform a ffrwd** | Timau sy'n darparu platfform, a thimau sy'n ei ddefnyddio | Angen cytundebau gwasanaeth clir rhyngddynt |

Nid oes yr un patrwm yn well i bawb. Mae symud o dimau cydrannau i dimau a drefnir o amgylch cynhyrchion neu wasanaethau yn gam cyffredin, ac mae'n anodd ei wneud, oherwydd ei fod yn newid pwy sy'n adrodd i bwy.

### Beth mae ymchwil a beirniadaeth yn ei ddweud

Mae'r erthygl ar ddatblygu meddalwedd ystwyth yn datgan bod tystiolaeth empirig ar gyfer dulliau ystwyth yn gyffredinol yn gyfyngedig ac yn llai na therfynol. Ar gyfer fframweithiau ehangu, mae'r ffynonellau a ddarllenwyd yn cynnig barn a deunydd gwerthwyr yn bennaf. Triniwch unrhyw honiad o welliant mesuredig yn ofalus, gofynnwch am y dystiolaeth y tu ôl iddo, a phrofwch unrhyw fframwaith ar ran fach o'ch sefydliad yn gyntaf.

## Arferion gorau

1. **Dechreuwch o'r broblem, nid y fframwaith.** Enwch beth sy'n mynd o'i le: dibyniaethau araf, blaenoriaethau sy'n gwrthdaro, integreiddio hwyr. Dewiswch y dull ysgafnaf sy'n mynd i'r afael ag ef, a mabwysiadwch fwy dim ond os yw'n methu.
2. **Rhowch gynnig ar y cydlynu symlaf yn gyntaf.** Mae cynllunio a rennir, scrum o scrums ac ôl-groniad cyffredin ar gyfer pob cynnyrch yn datrys llawer o broblemau am gost fach. Ychwanegwch strwythur dim ond pan fydd y rhain yn peidio â gweithio.
3. **Trefnwch dimau o amgylch gwerth.** Ffafriwch dimau sy'n berchen ar gynnyrch neu wasanaeth o un pen i'r llall, â'r sgiliau i'w adeiladu a'i redeg. Mae hyn yn lleihau trosglwyddiadau a dibyniaethau ac yn cyd-fynd â sut mae ITIL yn meddwl am wasanaethau (gweler Pwnc 2.6 — Y Gadwyn Gwerth Gwasanaeth).
4. **Cadwch un rhestr drefnus i bob cynnyrch.** Mae cael un ôl-groniad cynnyrch gydag un perchennog atebol, fel y mae LeSS yn ei argymell, yn tynnu llawer o'r gwrthdaro rhwng timau. Lle nad yw hyn yn bosibl, gwnewch drefn y blaenoriaethau ar draws timau yn weladwy.
5. **Cynlluniwch gyda'ch gilydd ar rythm rheolaidd.** Dewch â thimau a rhanddeiliaid allweddol at ei gilydd bob ychydig fisoedd i alinio ar nodau, dibyniaethau a risgiau. Cadwch y digwyddiad yn fyr ac yn seiliedig ar dystiolaeth, ac osgowch ei droi'n negodi dros gynlluniau manwl.
6. **Integreiddiwch yn barhaus.** Profwch allbwn pob tîm gyda'i gilydd mor aml â phosibl, yn ddelfrydol bob dydd. Integreiddio hwyr yw'r rheswm mwyaf cyffredin pam mae rhaglenni mawr yn synnu eu noddwyr (gweler Pwnc 1.6 — Rhaglennu Eithafol).
7. **Gwnewch ddibyniaethau'n weladwy a'u lleihau.** Rhestrwch pa dimau sy'n aros ar ba rai, a chyfrwch yr arosiadau. Lleihewch hwy trwy newid ffiniau timau, rhannu sgiliau, neu adeiladu platfformau a rennir gyda rhyngwynebau clir.
8. **Diffiniwch gytundebau gwasanaeth rhwng timau.** Lle mae un tîm yn darparu platfform neu wasanaeth i un arall, cytunwch ar yr hyn a ddisgwylir: argaeledd, ymateb, oriau cymorth, a sut i ofyn am newidiadau (gweler Pwnc 3.7 — Rheoli Lefelau Gwasanaeth).
9. **Teilwriwch ac ysgrifennwch yr hyn a newidiwyd gennych.** Pa fframwaith bynnag a fabwysiadwch, cofnodwch pa rannau rydych yn eu dilyn, pa rai rydych yn eu gadael allan, a pham. Mae labeli gonest yn atal y sefyllfa lle caiff hybrid ei farnu yn erbyn fframwaith nad oedd erioed yn bwriadu ei ddilyn.
10. **Cynhaliwch gynllun peilot cyn cyflwyno.** Rhowch gynnig ar y dull gyda rhai timau, mesurwch y canlyniadau sy'n bwysig i chi, a dysgwch. Ehangwch ef dim ond pan fydd y peilot yn dangos budd y gallwch ei ddisgrifio.
11. **Cadwch lywodraethu'n ysgafn ac yn seiliedig ar ganlyniadau.** Gofynnwch am dystiolaeth fel llif cyflawni, tueddiadau digwyddiadau ac adborth defnyddwyr, nid adroddiadau statws y mae pob tîm yn eu hysgrifennu mewn fformat gwahanol (gweler Pwnc 5.7 — Llywodraethu, Risg a Chydymffurfio).
12. **Adolygwch y strwythur yn rheolaidd.** Cynhaliwch adolygiad unwaith neu ddwywaith y flwyddyn i ofyn a yw ffiniau timau, rolau a seremonïau'n dal i wasanaethu'r gwaith. Gall strwythurau a oedd yn iawn i 30 o bobl fod yn anghywir i 300.

## Cwestiynau i'w trafod gyda'ch tîm

**Pa broblem rydym yn disgwyl i ehangu ei datrys, a sut y byddwn yn gwybod ei bod wedi'i datrys?**

Gofynnwch i bobl enwi'r boen: integreiddio hwyr, blaenoriaethau sy'n gwrthdaro, arosiadau hir am dimau eraill. Ysgrifennwch bob un gydag enghraifft ddiweddar. Datrysiad sy'n chwilio am broblem yw fframwaith a ddewisir heb broblem ddatganedig. Gall yr hwylusydd ofyn beth fyddai'r ateb symlaf posibl i bob problem, a pha dystiolaeth fyddai'n dangos ei fod wedi gweithio.

**Pa dimau eraill ydym ni'n aros arnynt fwyaf, a pha mor hir ydym ni'n aros?**

Mapiwch y dibyniaethau ar wal ac ychwanegwch yr aros nodweddiadol ar gyfer pob un. Yn aml mae timau a oedd yn meddwl eu bod yn annibynnol yn synnu. Gofynnwch pa ddibyniaethau sy'n real a pha rai sy'n dod o ffiniau timau hanesyddol. Dewiswch un dibyniaeth i'w thynnu, naill ai trwy newid sut y trefnir timau neu trwy rannu sgiliau.

**Pwy sy'n penderfynu trefn y gwaith ar draws ein timau, a sut ydym ni'n canfod?**

Dilynwch wrthdaro blaenoriaeth diweddar o'r dechrau i'r datrysiad. Chwiliwch am uwchgyfeirio, cyfarfodydd a chytundebau anffurfiol. Gofynnwch a allai un person atebol, fel yn LeSS, wneud y penderfyniad. Ystyriwch beth a gollid neu a enillid. Canlyniad da yw llwybr clir ar gyfer penderfynu gwrthdaro, hyd yn oed os nad yw'n rôl newydd.

**Beth fyddai fframwaith fel SAFe, LeSS neu Disciplined Agile yn ei roi i ni na allwn ei gael yn rhatach?**

Gofynnwch i rywun sydd wedi darllen am bob un ei egluro mewn ychydig frawddegau, a gofynnwch am y beirniadaethau cryfaf. Mae'r erthygl Wikipedia ar SAFe yn rhestru sawl un, ac mae gwefannau perchnogion y fframweithiau'n rhestru manteision. Dylai hwylusydd gadw'r drafodaeth yn ymarferol: beth fyddem yn ei wneud ddydd Llun pe baem yn ei fabwysiadu, a phwy fyddai angen newid beth? Penderfynwch beth i roi cynnig arno, os unrhyw beth, a beth i'w gadw fel y mae.

**Sut ydym yn profi bod gwaith ein holl dimau'n ffitio gyda'i gilydd, a pha mor aml?**

Cyfrwch y dyddiau rhwng newid gan un tîm a'i brawf cyntaf gyda newidiadau pawb arall. Mae bylchau hirach yn golygu pethau annisgwyl mwy. Gofynnwch beth sy'n atal integreiddio dyddiol, fel amgylcheddau, data profi neu berchnogaeth. Dewiswch un rhwystr i'w dynnu.

**Pa un o'n rheolaethau sy'n berthnasol i bob tîm yn yr un modd, a pha rai ddylai ddibynnu ar y risg?**

Rhestrwch reolaethau safonol, fel adolygiadau, cymeradwyaethau ac adrodd. Gofynnwch pa rai ohonynt sy'n cael eu haddasu ar gyfer gwaith risg isel. Mae rheolaethau unffurf yn hawdd i'w gweinyddu ac yn araf i bawb. Mae angen meini prawf clir ar reolaethau sy'n dibynnu ar risg. Dewiswch un rheolaeth i'w hadolygu.

## Yn ymarferol: enghraifft o ITIL ystwyth

Mae gan grŵp TG banc manwerthu mawr 14 tîm cyflawni a grŵp gweithrediadau canolog. Mae pob tîm wedi mabwysiadu Scrum, ond mae cwsmeriaid y banc yn gweld ychydig o welliant. Mae rhyddhadau ar gyfer yr ap bancio symudol angen newidiadau gan bum tîm, ac mae pob rhyddhad yn cael ei gydlynu gan swyddfa raglen sy'n olrhain dibyniaethau mewn taenlen. Gohiriwyd rhyddhad diweddar am dair wythnos oherwydd bod dau dîm wedi darganfod ar y funud olaf nad oedd eu newidiadau'n gydnaws.

Mae pensaer a phennaeth gweithrediadau yn cynnal astudiaeth o chwe mis o ryddhadau. Maent yn canfod bod y rhan fwyaf o oedi yn dod o integreiddio hwyr ac o flaenoriaethau aneglur rhwng y timau sy'n rhannu ôl-groniad o nodweddion symudol. Maent yn ystyried mabwysiadu fframwaith mawr, ond yn penderfynu dechrau'n fach. Maent yn creu un ôl-groniad ar gyfer yr ap symudol gydag un perchennog cynnyrch atebol, ac yn uno cynllunio'r pum tîm mewn sesiwn ar y cyd bob chwe wythnos. Maent yn sefydlu piblinell a rennir sy'n adeiladu ac yn profi newidiadau pob tîm gyda'i gilydd bob nos, ac yn ychwanegu'r grŵp gweithrediadau at y sesiwn gynllunio ar y cyd.

Ar ôl dau chwarter, mae nifer y diffyg cydnawsedd munud olaf yn gostwng ac mae rhyddhadau'n dod bob pythefnos. Mae rhai problemau'n parhau. Mae'r perchennog cynnyrch yn cael trafferth gyda nifer y ceisiadau ac yn treulio'r rhan fwyaf o'i hamser ar gymrodeddu, ac mae dau dîm yn dal i ddibynnu ar dîm cronfa ddata canolog â chiw hir. Mae'r banc yn cytuno i wneud ciw'r tîm cronfa ddata yn weladwy yn y cynllunio ar y cyd, ac i roi cynnig ar lwybr hunanwasanaeth ar gyfer newidiadau cronfa ddata cyffredin. Mae hefyd yn penderfynu gohirio unrhyw benderfyniad ar fframwaith nes bod ail faes cynnyrch wedi rhoi cynnig ar yr un dull.

## Pedwar persbectif

### Timau cynnyrch a chyflawni

Mae timau cyflawni'n cario'r rhan fwyaf o'r baich o ehangu: cynllunio a rennir, piblinellau a rennir, a chytundebau gyda chymdogion. Gweithiwch i leihau dibyniaethau wrth y ffynhonnell, trwy ddysgu'r sgiliau yn y tîm nesaf, neu trwy adeiladu rhyngwynebau nad oes angen cydlynu arnynt. Cymerwch ran mewn digwyddiadau cynllunio gyda gwybodaeth go iawn am gynnydd a risg.

### Timau gwasanaeth a gweithrediadau

Dylai staff gweithrediadau fod yn rhan o'r cynllunio o'r dechrau, gan fod llawer o ddibyniaethau trawstimau yn rhai gweithredol: amgylcheddau, mynediad, monitro a chymorth. Dewch â data gwasanaeth i'r sesiwn gynllunio, a chytunwch ar lefelau gwasanaeth gyda'r timau sy'n dibynnu arnoch. Dadleuwch dros blatfformau sy'n rhoi hunanwasanaeth i dimau cyflawni.

### Arweinyddiaeth a llywodraethu

Mae arweinwyr yn llunio'r strwythur sy'n penderfynu pa mor dda y mae ehangu'n gweithio. Gwrthsafwch y demtasiwn i brynu fframwaith yn lle penderfynu beth mae'r sefydliad eisiau bod. Gofynnwch am ddatganiad clir o'r broblem, peilot a thystiolaeth. Cadwch adrodd yn ysgafn, a derbyniwch y gall newidiadau strwythur fod yn anghyfforddus i reolwyr.

### Cwsmeriaid a defnyddwyr

Dylai cwsmeriaid weld gwasanaeth cydlynol ac nid y gwythiennau rhwng timau. Disgwyliwch un pwynt cyswllt ar gyfer cynnyrch a llwybr clir ar gyfer ceisiadau. Dywedwch wrth y perchennog cynnyrch beth sydd bwysicaf, a disgwyliwch i'r ateb gynnwys cyfaddawdau ymhlith gofynion sy'n cystadlu.

## Dulliau methu cyffredin

- **Prynu fframwaith i osgoi penderfyniad.** Mae sefydliad yn mabwysiadu fframwaith yn y gobaith y bydd yn datrys anghytundebau ynghylch blaenoriaethau. Yn lle hynny, penderfynwch pwy sydd ag awdurdod dros flaenoriaethau ac yna gwelwch pa fframwaith, os o gwbl, sy'n helpu.
- **Copïo diagram.** Ychwanegir rolau a chyfarfodydd heb ddeall y rhesymau. Yn lle hynny, mabwysiadwch ddim ond yr elfennau sy'n mynd i'r afael â phroblem a enwyd.
- **Ychwanegu haenau.** Mae cydlynwyr, swyddfeydd rhaglen a phwyllgorau'n lluosi tra bod timau'n colli ymreolaeth. Yn lle hynny, tynnwch ddibyniaethau fel bod llai i'w gydlynu.
- **Integreiddio hwyr.** Mae timau'n integreiddio ar ddiwedd cylch hir. Yn lle hynny, integreiddiwch a phrofwch bob newid gyda'i gilydd bob dydd.
- **Rheolaethau unffurf.** Mae pob tîm yn dilyn yr un broses drom beth bynnag fo'r risg. Yn lle hynny, seiliwch reolaethau ar risg a gwnewch lwybrau risg isel yn gyflym.
- **Anwybyddu gweithrediadau.** Mae cynllunio'n cynnwys datblygwyr a rheolwyr cynnyrch ond dim staff gweithrediadau. Yn lle hynny, cynhwyswch weithrediadau mewn cynllunio ar y cyd a rhannwch ddata gwasanaeth.
- **Barnu hybrid yn erbyn y fframwaith.** Mae beirniaid yn dweud nad dyna'r fframwaith, ac mae cefnogwyr yn dweud ei fod. Yn lle hynny, rhowch ei enw ei hun i'ch dull a'i ddisgrifio.
- **Peidio byth ag ailedrych ar y strwythur.** Mae ffiniau a dynnwyd ar 30 o bobl yn parhau ar 300. Yn lle hynny, adolygwch strwythur timau a rolau o leiaf bob blwyddyn.

## Model aeddfedrwydd

| Dimensiwn | Cychwyn | Datblygu | Safoni | Rheoli | Cydlynu |
|---|---|---|---|---|---|
| Aliniad a blaenoriaethau | Mae pob tîm yn gosod ei flaenoriaethau ei hun | Mae rhai timau'n rhannu ôl-groniad neu'n cwrdd i alinio | Mae gan gynhyrchion un ôl-groniad trefnus a chynllunio ar y cyd ar rythm rheolaidd | Gwirir aliniad yn erbyn canlyniadau a mesurir dibyniaethau | Addasir blaenoriaethau ar draws timau, cwsmeriaid a chyflenwyr yn barhaus |
| Dibyniaethau | Nid yw arosiadau am dimau eraill yn cael eu rheoli | Mae rhai timau'n rhestru eu dibyniaethau | Mae dibyniaethau'n weladwy ac mae cytundebau rhwng timau | Mesurir a lleihir amseroedd aros am ddibyniaethau | Ail-lunir ffiniau timau o dystiolaeth i dynnu dibyniaethau |
| Integreiddio | Mae integreiddio'n digwydd ar y diwedd | Mae rhai timau'n integreiddio'n amlach | Mae piblinellau a rennir yn integreiddio ac yn profi newidiadau pawb yn aml | Olrheinir a thrwsir methiannau integreiddio a'u hachosion | Rhennir a gwellir amgylcheddau a phrofion integreiddio ar draws timau |
| Llywodraethu a strwythur | Mae rheolaethau'n unffurf ac yn araf | Mae rhai llwybrau risg isel yn bodoli | Mae rheolaethau'n amrywio yn ôl risg gyda meini prawf clir | Adolygir canlyniadau ac effeithiolrwydd rheolaethau | Adolygir ac addasir strwythur a rheolaethau ar draws y sefydliad yn rheolaidd |

## Rhestr wirio

- [ ] Gallwn ddatgan mewn brawddeg y broblem y dylai ehangu ei datrys.
- [ ] Rydym wedi mapio'r dibyniaethau rhwng ein timau ac yn gwybod yr aros nodweddiadol ar gyfer pob un.
- [ ] Mae gan bob cynnyrch un ôl-groniad trefnus gydag un perchennog atebol.
- [ ] Mae timau a rhanddeiliaid allweddol yn cynllunio gyda'i gilydd ar rythm rheolaidd.
- [ ] Mae allbwn pob tîm yn cael ei adeiladu a'i brofi gyda'i gilydd o leiaf bob dydd.
- [ ] Mae gan dimau sy'n darparu platfformau neu wasanaethau i eraill gytundebau gwasanaeth ysgrifenedig.
- [ ] Mae staff gweithrediadau'n cymryd rhan mewn cynllunio trawstimau.
- [ ] Mae rheolaethau'n amrywio gyda risg, ac mae'r llwybr risg isel yn gyflym.
- [ ] Mae unrhyw fframwaith a fabwysiadwn wedi'i dreialu ar raddfa fach yn gyntaf.
- [ ] Rydym wedi ysgrifennu pa rannau o unrhyw fframwaith rydym yn eu dilyn a pha rai nad ydym.
- [ ] Adolygir strwythur timau a rolau o leiaf unwaith y flwyddyn.

## Anogwyr AI

**Pwrpas: mapio dibyniaethau rhwng timau o ddisgrifiad o waith diweddar.**

```text
Helpwch fi i ddeall y dibyniaethau rhwng timau mewn cyflawniad diweddar.

Timau dan sylw: [rhestrwch y timau a'r hyn y mae pob un yn ei wneud].
Cyflawniad diweddar: [disgrifiwch ryddhad neu brosiect diweddar a oedd angen gwaith gan sawl tîm, gyda dyddiadau bras ar gyfer pryd y gorffennodd pob tîm a beth yr arhosodd amdano].

Gan ddefnyddio'r hyn a ysgrifennais yn unig, cynhyrchwch dabl o ddibyniaethau (pa dîm a arhosodd ar ba un, am beth, ac am ba mor hir yn fras). Amlygwch y tri aros hiraf. Ar gyfer pob un, awgrymwch un ffordd o leihau'r ddibyniaeth ac un cwestiwn i'w ofyn i'r timau. Peidiwch â dyfeisio hydoedd. Gofynnwch gwestiynau eglurhaol i mi yn gyntaf os yw'r disgrifiad yn denau, nodwch ragdybiaethau, a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

**Pwrpas: cymharu opsiynau ehangu yn erbyn problem a ddatganwyd.**

```text
Ein problem: [disgrifiwch mewn 3-5 brawddeg, gydag enghraifft ddiweddar].
Nifer y timau a'r bobl: [rhifau].
Ein cydlynu presennol: [er enghraifft cyfarfod wythnosol o arweinwyr timau, swyddfa raglen, dim].

O'r testun a gludaf isod, crynhowch beth mae pob un o'r dulliau hyn yn ei gynnig: [gludwch ddyfyniadau byr neu grynodebau o dudalennau cyhoeddus y perchnogion ar gyfer y dulliau rydych yn eu hystyried, fel SAFe, LeSS, Disciplined Agile, neu scrum o scrums syml]. Defnyddiwch y testun a gludwyd yn unig.

Yna, ar gyfer pob dull, rhestrwch pa rannau o'n problem y mae'n mynd i'r afael â hwy, beth y byddai'n ei fynnu gennym, a pha gwestiynau y dylem eu gofyn i'w berchennog. Peidiwch â datgan dim am ddull nad yw yn y testun a gludwyd. Gofynnwch gwestiynau eglurhaol yn gyntaf, nodwch ragdybiaethau, a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

**Pwrpas: cynllunio sesiwn gynllunio ar y cyd ar gyfer sawl tîm.**

```text
Cynlluniwch sesiwn gynllunio ar y cyd hanner diwrnod ar gyfer [nifer] o dimau sy'n gweithio ar [cynnyrch neu wasanaeth].

Cyfranogwyr: [rolau].
Mewnbynnau ar gael: [er enghraifft ôl-groniad pob tîm, rhestr o ddibyniaethau, data digwyddiadau diweddar].
Cyfyngiadau: [er enghraifft pobl mewn parthau amser gwahanol].

Rhowch agenda amseredig sy'n cwmpasu nodau a rennir, dibyniaethau, risgiau a'r cynllun ar gyfer y [cyfnod] nesaf. Cynhwyswch yr hyn y mae pob tîm yn ei ddwyn, yr hyn y mae'r hwylusydd yn ei wneud, a cham cau sy'n cofnodi ymrwymiadau y cytunwyd arnynt a chwestiynau agored. Cadwch ef yn rhydd o unrhyw offeryn penodol. Gofynnwch gwestiynau eglurhaol yn gyntaf, a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

**Pwrpas: ysgrifennu cytundeb rhwng tîm platfform a'r timau sy'n ei ddefnyddio.**

```text
Helpwch fi i ddrafftio cytundeb gweithio un dudalen rhwng tîm sy'n darparu [platfform neu wasanaeth] a'r timau sy'n ei ddefnyddio.

Yr hyn y mae'r tîm platfform yn ei wneud heddiw: [disgrifiwch].
Yr hyn sydd ei angen ar y timau sy'n ei ddefnyddio: [rhestrwch, neu ysgrifennwch "anhysbys"].
Cyfyngiadau hysbys: [oriau cymorth, rheolau diogelwch, offer].

Drafftiwch adrannau ar gyfer cwmpas, sut i ofyn am newidiadau, disgwyliadau argaeledd ac ymateb (gadewch rifau fel [i'w cytuno] a pheidiwch â'u dyfeisio), sut y trinnir digwyddiadau, a sut yr adolygir y cytundeb. Marciwch bob eitem sy'n rhagdybiaeth. Gofynnwch gwestiynau eglurhaol yn gyntaf, a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

## Sgiliau AI

- [scaled-agile-framework](../../../../skills/scaled-agile-framework/SKILL.md): defnyddiwch i ddeall rolau, digwyddiadau a lefelau SAFe ac i farnu pa rannau sydd eu hangen arnoch.
- [large-scale-scrum](../../../../skills/large-scale-scrum/SKILL.md): defnyddiwch i gymhwyso Scrum at sawl tîm sy'n gweithio ar un cynnyrch.
- [disciplined-agile](../../../../skills/disciplined-agile/SKILL.md): defnyddiwch i ddewis arferion yn ôl nod proses ar gyfer eich cyd-destun.
- [scrum-of-scrums](../../../../skills/scrum-of-scrums/SKILL.md): defnyddiwch fel ffordd ysgafn o gydlynu ychydig o dimau cyn mabwysiadu fframwaith.
- [portfolio-management](../../../../skills/portfolio-management/SKILL.md): defnyddiwch i benderfynu sut y dewisir ac y cyllidir nifer o gynhyrchion a mentrau.

(Mae'r sgiliau eu hunain wedi'u hysgrifennu yn Saesneg.)

## Prif ffynonellau

- **Scaled agile framework** (Wikipedia): trosolwg o hanes, cyfluniadau a beirniadaethau SAFe gyda chyfeiriadau.
- **Introduction to LeSS** (less.works): disgrifiad byr y crewyr o Large-Scale Scrum a'i syniad "mwy gyda llai".
- **Disciplined agile delivery** (Wikipedia): crynodeb o'r pecyn cymorth, ei gylchoedd bywyd a'i nodau.
- **Agile software development** (Wikipedia): yr adran ar waith ar raddfa fawr, alltraeth a dosbarthedig a'r drafodaeth ar farn sy'n gwrthdaro am fframweithiau ehangu.

Mae'r ffynonellau hyn yn Saesneg.

## Cyfeiriadau

1. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
2. Scaled agile framework — Wikipedia — https://en.wikipedia.org/wiki/Scaled_agile_framework
3. Disciplined agile delivery — Wikipedia — https://en.wikipedia.org/wiki/Disciplined_agile_delivery
4. LeSS framework introduction — Craig Larman and Bas Vodde, less.works — https://less.works/less/framework/introduction
5. Scrum (software development) — Wikipedia — https://en.wikipedia.org/wiki/Scrum_(software_development)
6. Project Management Institute — Wikipedia — https://en.wikipedia.org/wiki/Project_Management_Institute
7. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
