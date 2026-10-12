# Rhaglennu Eithafol

**Rhaglennu Eithafol (Extreme Programming, XP) yw'r dull ystwyth sydd fwyaf penodol ynglŷn ag arfer peirianneg. Ei arferion o brofi'n gyntaf, integreiddio'n barhaus a rhannu perchnogaeth o'r cod yw'r hyn sy'n gwneud newid mynych i wasanaeth byw yn ddiogel.**

## Pam mae hyn yn bwysig

Newid mynych yw nod cyflawni parhaus a phryder rheoli gwasanaethau. Y ffordd i'w cymodi yw nid mwy o gyfarfodydd cymeradwyo ond gallu cryfach i wybod bod newid yn gweithio cyn iddo gyrraedd defnyddwyr. Rhaglennu Eithafol yw'r dull ystwyth sy'n dweud fwyaf am sut i adeiladu'r gallu hwnnw: ysgrifennu profion yn gyntaf, integreiddio sawl gwaith y dydd, cadw'r dyluniad yn syml, a rhannu cyfrifoldeb am y cod.

Mae llawer o dimau'n cymryd digwyddiadau a byrddau Scrum ac yn gadael yr arferion peirianneg ar ôl. Y canlyniad yw tîm sy'n cynllunio mewn sbrintiau ond sy'n rhyddhau mewn ofn. Arferion XP yw'r hanner coll. Maent yn bwysig i unrhyw un sy'n gorfod rhedeg y canlyniad, oherwydd mae gwasanaeth a adeiladwyd gyda phrofion awtomataidd, rhyddhadau bach a gwybodaeth a rennir yn haws ei gefnogi nag un a adeiladwyd gan ychydig o bobl mewn sypiau mawr, heb eu profi.

Mae XP hefyd yn gofyn rhywbeth gan y sefydliad sy'n hawdd ei anwybyddu: cyflymder cynaliadwy, tîm cyfan â'r holl sgiliau sydd eu hangen, a chwsmer sydd wir ar gael. Amodau'r amgylchedd gwaith yw'r rhain, nid arferion rhaglenwyr yn unig. Mae'r pwnc hwn yn egluro'r dull, y dystiolaeth am ei derfynau, a sut mae ei arferion yn cysylltu ag arferion ITIL fel galluogi newid, rheoli rhyddhau a rheoli gwybodaeth.

## Cysyniadau craidd

### O ble y daeth XP

Datblygodd Kent Beck XP wrth weithio ar y Chrysler Comprehensive Compensation System (C3), prosiect cyflogres. Yn ôl [erthygl Wikipedia ar Extreme programming](https://en.wikipedia.org/wiki/Extreme_programming) (yn Saesneg), daeth Beck yn arweinydd y prosiect ym mis Mawrth 1996 a mireinio'r dull yno, gyda Ward Cunningham yn ddylanwad mawr a Ron Jeffries yn ymuno i hyfforddi'r tîm. Ymddangosodd ei lyfr *Extreme Programming Explained* ym mis Hydref 1999. Canslodd Chrysler y prosiect C3 ym mis Chwefror 2000 ar ôl i Daimler-Benz brynu'r cwmni.

Mae'r erthygl yn nodi nad oedd llawer o arferion XP yn newydd. Mae'n sôn am ddatblygu prawf-yn-gyntaf ym Mhrosiect Mercury NASA yn gynnar yn y 1960au. Symudiad XP oedd mynd â'r arferion da i lefelau "eithafol": os yw profi'n dda, profwch drwy'r amser; os yw adolygiadau'n dda, adolygwch yn gyson trwy weithio mewn parau. Roedd Beck a Cunningham ymhlith y 17 o bobl a ysgrifennodd y Maniffesto Ystwyth (gweler Pwnc 1.1 — Maniffesto Ystwyth).

### Y pum gwerth

Mae XP yn datgan pum gwerth:

| Gwerth | Beth mae'n ei olygu | Mewn gwaith gwasanaeth |
|---|---|---|
| **Cyfathrebu** | Adeiladu dealltwriaeth a rennir ymhlith datblygwyr, defnyddwyr a chwsmeriaid, yn bennaf trwy siarad a chadw dyluniadau'n syml | Mae datblygwyr a staff gweithrediadau yn siarad am sut y bydd rhyddhad yn ymddwyn cyn iddo gael ei gludo |
| **Symlrwydd** | Gwneud y peth symlaf sy'n gweithio, a pheidio ag adeiladu ar gyfer anghenion dyfodol dyfaluol | Llai o rannau symudol i'w monitro, eu diogelu a'u hegluro |
| **Adborth** | Dysgu'n gyflym o brofion, gan gwsmeriaid, ac o amcangyfrifon y tîm ei hun | Mae canlyniadau profion cyflym a monitro cynhyrchu yn byrhau'r amser i ddysgu |
| **Dewrder** | Ail-ffactorio, taflu cod darfodedig, a dyfalbarhau trwy broblemau caled | Ymddeol hen gydran nad oes neb yn meiddio ei chyffwrdd |
| **Parch** | Parch at gyd-weithwyr ac at waith rhywun ei hun | Adolygiad di-fai ar ôl methiannau, a llwyth teg ar alwad |

Mae'r erthygl yn nodi bod parch wedi'i ychwanegu yn ail argraffiad *Extreme Programming Explained*, ar ôl y pedwar gwreiddiol.

### Yr arferion

Mae'r erthygl ar arferion XP yn grwpio deuddeg arfer yn bedair set. Y ffordd orau o'u deall yw fel system sy'n cefnogi ei hun.

| Grŵp | Arferion | Diben |
|---|---|---|
| **Adborth graddfa fân** | Rhaglennu mewn parau, y gêm gynllunio, datblygu a yrrir gan brofion, tîm cyfan | Cael adborth mewn munudau neu ddyddiau, nid misoedd |
| **Proses barhaus** | Integreiddio parhaus, gwella dyluniad (ail-ffactorio), rhyddhadau bach | Cadw'r feddalwedd mewn cyflwr rhyddhau bob amser |
| **Dealltwriaeth a rennir** | Safon codio, perchnogaeth gyfunol o'r cod, dyluniad syml, trosiad y system | Gadael i unrhyw un ar y tîm newid unrhyw ran yn ddiogel |
| **Lles rhaglenwyr** | Cyflymder cynaliadwy | Cadw pobl wedi gorffwys ac yn effeithiol dros flynyddoedd |

Disgrifiad byr o'r prif rai:

- **Rhaglennu mewn parau:** mae dau berson yn gweithio ar un dasg wrth un gweithfan, un yn ysgrifennu ac un yn adolygu, ac maent yn cyfnewid partneriaid yn aml.
- **Datblygu a yrrir gan brofion (TDD):** mae'r rhaglennydd yn ysgrifennu prawf sy'n methu yn gyntaf, ac yna'n ysgrifennu dim ond digon o god i wneud iddo basio.
- **Integreiddio parhaus (CI):** mae datblygwyr yn uno eu gwaith i'r ystorfa a rennir bob ychydig oriau, fel bod problemau integreiddio'n dod i'r wyneb yn gynnar.
- **Rhyddhadau bach:** cyflawni meddalwedd sy'n gweithio mewn camau mynych, bach fel y gall cwsmeriaid weld cynnydd ac ymateb.
- **Perchnogaeth gyfunol o'r cod:** caiff unrhyw un ar y tîm newid unrhyw ran o'r cod.
- **Cyflymder cynaliadwy:** osgoi goramser rheolaidd, a pheidio byth â chaniatáu goramser mewn dwy wythnos olynol.

### Dadleuon a therfynau

Mae'r erthygl yn cofnodi sawl beirniadaeth. Dadleuodd Matt Stephens a Doug Rosenberg, mewn llyfr yn 2003, fod arferion XP yn dibynnu ar ei gilydd, felly mae mabwysiadu dim ond rhai ohonynt yn tanseilio'r broses. Holodd beirniaid hefyd rhaglennu mewn parau fel y ffordd arferol o weithio, y diffyg dylunio mawr ymlaen llaw, y cwsmer ar y safle fel pwynt methiant sengl, a cheisiadau newid anffurfiol yn arwain at ail-wneud a chreiriad cwmpas. Ysgrifennodd P. McBreen, a Boehm a Turner, asesiadau beirniadol hefyd. Mae'r erthygl yn ychwanegu bod ymarferwyr ystwyth yn ystyried bod llawer o'r beirniadaethau hyn yn gamddealltwriaeth.

O ran graddfa, mae'r erthygl yn dweud bod Industrial XP, a gyflwynwyd yn 2004, wedi ymestyn XP i dimau mwy a gwasgaredig gyda 23 o arferion. Mae hefyd yn adrodd honiad, wedi'i farcio fel un sydd angen cyfeiriad, bod ThoughtWorks wedi cael llwyddiant rhesymol ar brosiectau XP gwasgaredig gyda hyd at drigain o bobl. Darllenwch yr honiad hwnnw'n ofalus, a gweler Pwnc 1.8 — Ehangu Ystwythder am y drafodaeth ehangach.

Nid yw'r erthygl yn trafod defnyddio neu fonitro cynhyrchu y tu hwnt i integreiddio parhaus a rhyddhadau bach. Ychydig a ddywed XP am redeg meddalwedd. Rydych yn dod â hynny o reoli gwasanaethau, ac yn defnyddio XP i wneud y trosglwyddo'n llai peryglus.

### XP a barn ITIL ar newid

Mae arfer galluogi newid ITIL (gweler Pwnc 3.4 — Galluogi Newid) yn ymwneud â sicrhau bod newidiadau'n cael eu hasesu, eu hawdurdodi a'u trefnu fel bod risg yn cael ei rheoli. Mae XP yn rheoli risg mewn lle gwahanol: yn y cod, trwy brofion, camau bach a gwybodaeth a rennir. Mae newid sy'n fach, wedi'i brofi'n awtomatig, wedi'i integreiddio ac yn hawdd ei ddadwneud yn newid risg is yn ôl unrhyw asesiad rhesymol. Mae'r ddwy farn yn cyd-fynd pan ddefnyddir y dystiolaeth o arferion XP ym mhenderfyniad y newid.

## Arferion gorau

1. **Mabwysiadwch arferion fel set.** Mae pwynt y beirniaid bod arferion XP yn cefnogi ei gilydd yn rhybudd defnyddiol. Mae profi heb integreiddio, neu integreiddio heb gamau bach, yn rhoi llai na swm y rhannau. Cyflwynwch hwy gyda'i gilydd lle gallwch, a dysgwch pa rai y mae'r lleill yn dibynnu arnynt.
2. **Ysgrifennwch y prawf yn gyntaf ar gyfer newidiadau sy'n bwysig.** Ar gyfer ymddygiad newydd neu atgyweiriad nam, ysgrifennwch brawf sy'n methu ac sy'n dangos y broblem, ac yna ei thrwsio. Mae'r prawf yn aros fel gwarchodaeth rhag i'r broblem ddychwelyd, sy'n arbennig o ddefnyddiol ar gyfer namau a achosodd ddigwyddiadau.
3. **Integreiddiwch sawl gwaith y dydd.** Cadwch ganghennau'n fyrhoedlog ac adeiladwch a phrofwch yn awtomatig ar bob uno. Adeiladwaith toredig yw blaenoriaeth gyntaf y tîm.
4. **Rhyddhewch mewn camau bach.** Mae gan bob rhyddhad bach lai o risg ac mae'n haws ei ddeall a'i ddadwneud. Anelwch at y cyfnod lleiaf y gall eich piblinell ei gefnogi'n ddiogel, a'i fyrhau wrth i hyder dyfu.
5. **Ail-ffactoriwch yn barhaus.** Gwellwch y dyluniad ychydig bob dydd yn lle ei gadw ar gyfer ailysgrifennu. Y gyfres brofion sy'n gwneud hyn yn ddiogel.
6. **Cadwch y dyluniad mor syml ag y gall fod.** Adeiladwch yr hyn sydd ei angen nawr, a thynnwch yr hyn na ddefnyddir. Mae gan system lai lai i'w monitro, ei chlytio a'i hegluro.
7. **Rhannwch berchnogaeth o'r cod.** Gadewch i unrhyw aelod tîm newid unrhyw ran, gyda chefnogaeth profion a safonau a rennir. Mae hyn yn lleihau dibyniaeth ar ychydig o arbenigwyr, sydd hefyd yn risg argaeledd i'r gwasanaeth.
8. **Parwch ar waith peryglus neu anghyfarwydd.** Defnyddiwch barau ar gyfer newidiadau anodd, ar gyfer sefydlu, ac ar gyfer cysgodi ar alwad. Ystyriwch ef yn offeryn i ledaenu gwybodaeth a dal gwallau, a pheidiwch â'i wneud yn rheol ar gyfer pob tasg.
9. **Cadwch gyflymder cynaliadwy.** Cynlluniwch waith fel bod goramser yn brin ac nid yn cael ei ailadrodd wythnos ar ôl wythnos. Mae peiriannydd blinedig ar alwad yn risg i'r gwasanaeth (gweler Pwnc 1.2 — Egwyddorion Ystwyth ar y cyflymder).
10. **Gwnewch y cwsmer yn rhan o'r tîm.** Dewch o hyd i ddefnyddiwr go iawn neu gynrychiolydd defnyddwyr a all ateb cwestiynau yn ystod y gwaith. Cofiwch y feirniadaeth bod un person yn bwynt methiant sengl, felly cynhwyswch fwy nag un llais.
11. **Ysgrifennwch feini prawf derbyn fel profion lle bo modd.** Trowch ddisgwyliadau'r cwsmer yn wiriadau awtomataidd sy'n rhedeg gyda phob adeiladwaith. Maent wedyn yn dogfennu ymddygiad ac yn ei warchod ar yr un pryd.
12. **Cynhwyswch wiriadau gweithredol yn y profion.** Ychwanegwch wiriadau ar gyfer monitro, logio ac ymddygiad adfer i'r biblinell, fel bod parodrwydd gweithredol yn cael ei wirio gyda phob newid (gweler Pwnc 3.5 — Rheoli Rhyddhau a Defnyddio).

## Cwestiynau i'w trafod gyda'ch tîm

**Sut ydym yn gwybod bod newid yn gweithio cyn iddo gyrraedd defnyddwyr, a faint o amser y mae'n ei gymryd i wybod?**

Olrheiniwch y gwiriadau y mae newid yn eu pasio rhwng gliniadur datblygwr a chynhyrchu. Cyfrwch faint sy'n awtomataidd a pha mor hir y mae pob un yn ei gymryd. Mae atebion nodweddiadol yn cynnwys prawf â llaw, adolygiad a gobaith. Gofynnwch pa wiriad sydd wedi dal y nifer fwyaf o broblemau a pha un nad yw erioed wedi dal dim. Dilynwch trwy ddewis un gwiriad â llaw i'w awtomeiddio.

**Pwy all newid pa rannau o'n system, a beth sy'n digwydd pan fydd y bobl hynny i ffwrdd?**

Rhestrwch y cydrannau a'r bobl sy'n deall pob un. Mae cydrannau ag un person y tu ôl iddynt yn risgiau i'r gwasanaeth. Perchnogaeth gyfunol yw ateb XP, ac mae angen profion a safonau a rennir i fod yn ddiogel. Gofynnwch beth y gallai un person ei ddysgu i un arall o fewn mis. Gall yr hwylusydd ofyn a yw gwyliau neu salwch erioed wedi gohirio atgyweiriad.

**Ble byddai parau o fwyaf o help i ni, a ble byddent ond yn ein harafu?**

Mae rhaglennu mewn parau yn ddadleuol, felly gwahoddwch farn onest. Gofynnwch i bobl am y paru gorau a gwaethaf y maent wedi'i wneud. Mae paru'n aml yn helpu gyda systemau anghyfarwydd, newidiadau anodd a sefydlu. Mae'n helpu llai gyda gwaith arferol y gall un person ei wneud yn dda. Cytunwch ar un sefyllfa i roi cynnig ar baru am fis, a sut y byddwch yn ei farnu.

**Beth sy'n digwydd i'n hansawdd pan fyddwn dan bwysau, a beth ydym yn ei ollwng yn gyntaf?**

Gofynnwch am gyfnod prysur diweddar a'r hyn a hepgorwyd: profion, adolygiadau, dogfennaeth. Gofynnwch beth ddigwyddodd wedyn. Yn aml daeth y gwaith a hepgorwyd yn ôl fel digwyddiadau. Y pwynt yw sylwi ar y patrwm a phenderfynu ymlaen llaw pa arferion sy'n cael eu hamddiffyn. Osgowch feio, a chysylltwch yr ateb â'r cyflymder cynaliadwy.

**Pa mor aml ydym ni'n uno ein gwaith, a beth sy'n gwneud inni aros?**

Gofynnwch pa mor hir y mae cangen nodweddiadol yn byw a beth sy'n ei dal i fyny. Mae canghennau hir fel arfer yn adlewyrchu newidiadau mawr, adolygiadau araf neu adeiladwaith annibynadwy. Mae pob un yn ateb gwahanol. Gofynnwch beth y gallai'r tîm ei wneud i wneud uno o fewn ychydig oriau yn achos arferol. Dewiswch un rhwystr i'w dynnu.

**A oes gennym gwsmer neu ddefnyddiwr ar gael i'r tîm, neu a ydym yn dyfalu beth maent ei eisiau?**

Gofynnwch pwy sy'n ateb cwestiynau am yr hyn sydd ei angen ar ddefnyddwyr, a pha mor hir y maent yn ei gymryd. Os yw'r ateb yn gadwyn hir, gofynnwch pa gwestiwn oedd y mwyaf costus i'w gael yn anghywir. Cofiwch feirniaid XP ei hun: gall un cynrychiolydd cwsmer fod yn dagfa. Trafodwch sut i gyrraedd sawl defnyddiwr yn fyr ac yn aml.

## Yn ymarferol: enghraifft o ITIL ystwyth

Mae tîm digidol asiantaeth trafnidiaeth gyhoeddus o naw o bobl yn adeiladu ac yn rhedeg ei ap cynllunio teithiau a phorthiant o ddata cyrraedd byw a ddefnyddir gan ddatblygwyr eraill yn y ddinas. Mae'r tîm yn rhyddhau'n fisol ar ôl cylch profi â llaw o bedwar diwrnod. Pan fydd rhyddhad yn mynd o'i le, mae dadwneud yn cymryd hanner diwrnod, felly mae'r tîm yn amharod i ryddhau'n amlach. Mae arweinydd gweithrediadau, sydd hefyd yn ddatblygwr mwyaf profiadol, yn ateb y rhan fwyaf o alwadau y tu allan i oriau oherwydd nad oes neb arall yn gwybod sut mae'r porthiant yn gweithio.

Mae'r tîm yn penderfynu mabwysiadu ychydig o arferion XP gyda'i gilydd. Mae'n sefydlu integreiddio parhaus sy'n adeiladu ac yn rhedeg profion uned ar bob uno. Ar gyfer pob nam a ganfyddir mewn cynhyrchu, mae'n ysgrifennu prawf sy'n methu cyn ei drwsio. Mae dau ddatblygwr yn paru gyda'r arweinydd gweithrediadau ar waith y porthiant am awr y dydd. Mae'r tîm hefyd yn ychwanegu cam defnyddio a all newid yn ôl i'r fersiwn flaenorol mewn munudau.

Ar ôl pedwar mis, mae'r tîm yn rhyddhau bob wythnos. Mae'r gyfres brofion yn dal dau atchweliad cyn rhyddhau y byddai'r cylch â llaw wedi'u canfod ar y diwrnod olaf yn unig. Gall tri datblygwr bellach drin y rhan fwyaf o alwadau'r porthiant. Nid yw popeth yn gweithio: mae'r gyfres brofion yn cymryd 25 munud i redeg, felly mae datblygwyr yn uno'n llai aml na'r bwriad, ac mae newid diffygiol i'r porthiant cyrraedd yn llithro drwodd oherwydd bod ei brofion yn defnyddio data enghreifftiol nad oedd yn cyfateb i achos ymyl go iawn. Mae'r tîm yn symud y profion araf i ail gam fel bod y canlyniadau cyntaf yn dod o fewn pum munud, ac yn ychwanegu gwiriad monitro ar allbwn y porthiant. Maent hefyd yn cytuno y bydd paru'n parhau'n offeryn ar gyfer problemau caled a sefydlu, nid yn rheol ar gyfer pob tasg.

## Pedwar persbectif

### Timau cynnyrch a chyflawni

Timau cyflawni sy'n berchen ar arferion XP. Dechreuwch gyda'r rhai sy'n rhoi adborth cyflymaf: profion awtomataidd ac integreiddio parhaus. Ystyriwch eich cyfres brofion yn gynnyrch a ddefnyddir gan weithrediadau hefyd. Mae'n disgrifio'r hyn y mae'r gwasanaeth i fod i'w wneud ac yn dweud wrthych yn gyflym pan fydd yn peidio â'i wneud.

### Timau gwasanaeth a gweithrediadau

Gall staff gweithrediadau ddefnyddio syniadau XP ar gyfer eu gwaith eu hunain: newidiadau seilwaith a chyfluniad wedi'u profi cyn iddynt redeg, newidiadau bach wedi'u hintegreiddio'n aml, a gwybodaeth wedi'i rhannu ar draws y tîm trwy baru a pherchnogaeth gyfunol. Gofynnwch i dimau cyflawni am brofion sy'n cwmpasu'r methiannau a welwch mewn cynhyrchu, a chynigiwch hanes digwyddiadau i arwain yr hyn a brofir.

### Arweinyddiaeth a llywodraethu

Mae arweinwyr yn galluogi XP trwy amddiffyn y cyflymder, talu am seilwaith adeiladu a phrofi, a derbyn bod ansawdd yn cael ei adeiladu i mewn i'r gwaith ac nad yw'n cael ei archwilio i mewn wedyn. Gofynnwch am dystiolaeth o ddiogelwch sy'n dod o'r biblinell, fel canlyniadau profion a hanes rhyddhau, a pheidiwch â mynnu tystiolaeth ddyblyg â llaw.

### Cwsmeriaid a defnyddwyr

Mae gan gwsmeriaid y rôl fwyaf uniongyrchol yn XP: maent yn rhan o ddolen adborth y tîm. Disgwyliwch gael eich gofyn i roi cynnig ar ryddhadau bach, ateb cwestiynau'n gyflym, a dweud beth sydd bwysicaf yr wythnos hon. Yn gyfnewid, dylech weld llai o bethau annisgwyl ac atgyweiriadau cyflymach ar gyfer problemau a adroddwch.

## Dulliau methu cyffredin

- **Mabwysiadu'r defodau yn unig.** Mae timau'n cymryd cyfarfodydd sefyll a byrddau ac yn hepgor profion ac integreiddio. Yn lle hynny, dechreuwch gyda phrofion awtomataidd ac integreiddio parhaus, gan mai nhw sy'n rhoi'r elw mwyaf.
- **Trin paru fel rheol.** Mae paru gorfodol ar bob gwaith yn rhwystro pobl ac yn arafu tasgau arferol. Yn lle hynny, defnyddiwch baru ar gyfer problemau caled, sefydlu a throsglwyddo gwybodaeth, ac adolygwch sut mae'n gweithio.
- **Cyfres brofion nad oes neb yn ymddiried ynddi.** Caiff profion araf neu annibynadwy eu hanwybyddu. Yn lle hynny, cadwch y gyfres yn gyflym a thrwsiwch neu ddilëwch brofion ansefydlog yn brydlon.
- **Perchnogaeth gyfunol heb safonau.** Gall unrhyw un newid unrhyw beth, ac mae'r cod yn dadfeilio. Yn lle hynny, ei baru â safonau codio a rennir, adolygu a gwiriadau awtomataidd.
- **Un cynrychiolydd cwsmer.** Daw un person yn dagfa neu'n ffynhonnell rhagfarn. Yn lle hynny, lledaenwch gyswllt ar draws sawl defnyddiwr a gwiriwch benderfyniadau gyda defnydd go iawn.
- **Hepgor dylunio'n llwyr.** Mae timau'n ail-ffactorio dro ar ôl tro heb gyfeiriad. Yn lle hynny, cadwch ddarlun ysgafn o'r bensaernïaeth a'i adolygu ar gyfnodau rheolaidd.
- **Goramser fel peth arferol.** Mae oriau hir yn erydu ansawdd ac yn achosi digwyddiadau. Yn lle hynny, cynlluniwch i gyflymder cynaliadwy a thriniwch oramser mynych fel arwydd i leihau'r cwmpas.
- **Anwybyddu gweithrediadau.** Ychydig a ddywed XP am redeg meddalwedd, ac mae timau'n tybio ei fod wedi'i gwmpasu. Yn lle hynny, ychwanegwch wiriadau gweithredol at y profion a gwahoddwch staff gweithrediadau i gynllunio.

## Model aeddfedrwydd

| Dimensiwn | Cychwyn | Datblygu | Safoni | Rheoli | Cydlynu |
|---|---|---|---|---|---|
| Profi | Mae profi â llaw ac yn hwyr | Mae gan rai timau brofion uned awtomataidd | Mae timau'n ysgrifennu profion gyda'r cod ac yn eu rhedeg ar bob newid | Olrheinir ac adolygir canlyniadau profion a diffygion a ddihangodd | Cydlynir strategaeth brofi ar draws gwasanaethau a'i rhannu â gweithrediadau |
| Integreiddio a rhyddhau | Mae integreiddio'n anaml ac mae rhyddhadau'n fawr | Mae rhai timau'n defnyddio integreiddio parhaus | Mae piblinell a rennir yn adeiladu, yn profi ac yn defnyddio pob newid | Mesurir a gwellir amlder rhyddhau a chyfradd methu | Cydlynir piblinellau ar draws timau a chyflenwyr |
| Perchnogaeth a gwybodaeth a rennir | Mae gwybodaeth gydag ychydig o unigolion | Mae rhai timau'n paru neu'n cylchdroi gwaith | Perchnogaeth gyfunol gyda safonau yw'r norm | Olrheinir a lleihir bylchau gwybodaeth | Mae gwybodaeth yn symud yn rhydd rhwng timau ac i lawlyfrau gweithredu |
| Cyflymder a lles | Mae goramser yn rheolaidd | Mae rhai timau'n gwylio eu llwyth gwaith | Mae cyflymder cynaliadwy yn bolisi datganedig | Mesurir ac adolygir llwyth ar alwad a goramser | Cydbwysir llwyth gwaith ar draws timau ar sail data a rennir |

## Rhestr wirio

- [ ] Mae'r tîm wedi cytuno pa arferion XP y mae'n eu defnyddio ac wedi rhoi cynnig arnynt gyda'i gilydd.
- [ ] Mae profion awtomataidd yn rhedeg ar bob newid, a thrwsir adeiladwaith sy'n methu yn gyntaf.
- [ ] Mae pob nam cynhyrchu yn cael prawf a fyddai wedi'i ddal.
- [ ] Caiff gwaith ei uno i'r gangen a rennir sawl gwaith y dydd.
- [ ] Mae rhyddhadau'n fach, a gellir dadwneud yn gyflym.
- [ ] Gall mwy nag un person newid a chefnogi pob rhan o'r system.
- [ ] Defnyddir paru ar gyfer problemau caled a sefydlu, ac adolygir ei effaith.
- [ ] Mae goramser yn brin ac nid yw'n cael ei ailadrodd wythnos ar ôl wythnos.
- [ ] Mae defnyddiwr neu gynrychiolydd defnyddwyr ar gael i ateb cwestiynau yn ystod y gwaith.
- [ ] Mae profion yn cynnwys gwiriadau ar gyfer monitro ac ymddygiad adfer.

## Anogwyr AI

**Pwrpas: troi digwyddiad cynhyrchu yn brawf a rhestr o wersi.**

```text
Helpwch fi i ddysgu o ddigwyddiad cynhyrchu gan ddefnyddio arferion Rhaglennu Eithafol.

Disgrifiad o'r digwyddiad (ffeithiol, di-fai, yn nhrefn amser): [gludwch beth ddigwyddodd, sut y'i canfuwyd, a sut y'i trwsiwyd].
Y rhan o'r system dan sylw: [disgrifiwch y gydran a beth mae'n ei wneud].
Ein profion presennol ar gyfer y rhan honno: [disgrifiwch yr hyn a brofir heddiw, neu ysgrifennwch "anhysbys"].

Cynigiwch: (1) prawf, wedi'i ddisgrifio mewn geiriau plaen, a fyddai wedi dal hyn cyn rhyddhau; (2) dau brawf arall gwerth eu hychwanegu gerllaw; (3) un newid i'n proses ryddhau i wneud nam tebyg yn llai tebygol. Peidiwch â dyfeisio manylion am ein system. Gofynnwch gwestiynau eglurhaol yn gyntaf os yw'r disgrifiad yn rhy denau, nodwch ragdybiaethau, a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

**Pwrpas: asesu pa mor ddiogel y gall eich tîm ryddhau newidiadau bach.**

```text
Rwyf am ddeall pa mor ddiogel yw hi i'n tîm ryddhau newidiadau bach yn aml.

Ein llwybr o newid i gynhyrchu, cam wrth gam: [gludwch y camau, pwy sy'n gwneud pob un, a thua faint o amser y mae pob un yn ei gymryd].
Ein gwiriadau awtomataidd: [rhestrwch brofion, adeiladau a sganiau, neu ysgrifennwch "dim"].
Sut rydym yn dadwneud: [disgrifiwch].
Y ddau ryddhad diwethaf a aeth o'i le: [gludwch ddisgrifiadau ffeithiol byr].

Nodwch y camau sy'n dibynnu ar waith â llaw neu wybodaeth un person. Ar gyfer pob un, awgrymwch un cam awtomeiddio neu rannu bach. Peidiwch â honni bod unrhyw safon yn mynnu rhywbeth oni bai fy mod wedi gludo ei destun. Gwahanwch yr hyn y mae'r testun yn ei ddangos oddi wrth yr hyn rydych yn ei dybio, a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

**Pwrpas: cynllunio arbrawf mis o hyd gyda pharu.**

```text
Helpwch fi i gynllunio arbrawf mis o hyd gyda rhaglennu mewn parau ar gyfer tîm o [nifer] o bobl sy'n gweithio ar [math o system].

Ein rhesymau dros roi cynnig arni: [er enghraifft "lleihau pwyntiau methiant sengl ar y gwasanaeth porthiant"].
Cyfyngiadau: [er enghraifft gweithio o bell, dyletswyddau ar alwad, lefelau profiad cymysg].

Cynigiwch ba fathau o waith i baru arnynt a pha rai i'w gadael, sut i gylchdroi partneriaid, beth i'w arsylwi (defnyddiwch arsylwadau fel cwestiynau a atebwyd a diffygion a ganfuwyd, a pheidiwch â dyfeisio rhifau), a sut y bydd y tîm yn penderfynu ar y diwedd a ddylid parhau. Gofynnwch gwestiynau eglurhaol yn gyntaf, nodwch ragdybiaethau, a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

**Pwrpas: gwirio Diffiniad o Orffenedig am barodrwydd gweithredol.**

```text
Dyma ein Diffiniad o Orffenedig cyfredol: [gludwch ef].
Pethau y mae'r tîm gweithrediadau neu gymorth wedi gofyn amdanynt: [gludwch, neu ysgrifennwch "anhysbys"].

Cymharwch y ddau. Rhestrwch eitemau y byddai eu hangen ar weithrediadau sydd ar goll, ac ar gyfer pob un dywedwch a ellid ei wirio'n awtomatig mewn piblinell adeiladu, a sut. Peidiwch â datgan bod unrhyw safon yn mynnu eitem oni bai fy mod wedi gludo ei thestun. Nodwch ragdybiaethau a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

## Sgiliau AI

- [extreme-programming](../../../../skills/extreme-programming/SKILL.md): defnyddiwch i adolygu neu gyflwyno arferion XP fel paru, datblygu a yrrir gan brofion ac integreiddio parhaus.
- [user-story](../../../../skills/user-story/SKILL.md): defnyddiwch i droi anghenion cwsmeriaid yn straeon gyda meini prawf derbyn y gellir eu troi'n brofion awtomataidd.
- [agile-delivery](../../../../skills/agile-delivery/SKILL.md): defnyddiwch i gynllunio rhyddhadau bach, mynych a'r gwiriadau sy'n eu gwneud yn ddiogel.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): defnyddiwch i adolygu pa mor dda y mae'r arferion yn gweithio a dewis un newid.
- [runbook](../../../../skills/runbook/SKILL.md): defnyddiwch i droi gwybodaeth a ddelir gan un person yn weithdrefn a rennir, wedi'i phrofi.

(Mae'r sgiliau eu hunain wedi'u hysgrifennu yn Saesneg.)

## Prif ffynonellau

- **Extreme programming** ac **Extreme programming practices** (Wikipedia): trosolwg o'r hanes, y gwerthoedd, yr arferion a'r feirniadaeth, gyda chyfeiriadau.
- **Extreme Programming Explained** (Kent Beck): datganiad gwreiddiol y dull; mae ei ail argraffiad yn ychwanegu gwerth parch.
- **Manifesto for Agile Software Development** (agilemanifesto.org): XP yw un o'r dulliau yr ysgrifennodd ei awduron y Maniffesto.
- **Extreme Programming Refactored: The Case Against XP** (Matt Stephens a Doug Rosenberg, 2003): y feirniadaeth fwyaf adnabyddus, yn ddefnyddiol ar gyfer profi eich rhagdybiaethau eich hun.

Mae'r ffynonellau hyn yn Saesneg.

## Cyfeiriadau

1. Extreme programming — Wikipedia — https://en.wikipedia.org/wiki/Extreme_programming
2. Extreme programming practices — Wikipedia — https://en.wikipedia.org/wiki/Extreme_programming_practices
3. Pair programming — Wikipedia — https://en.wikipedia.org/wiki/Pair_programming
4. Test-driven development — Wikipedia — https://en.wikipedia.org/wiki/Test-driven_development
5. Continuous integration — Wikipedia — https://en.wikipedia.org/wiki/Continuous_integration
6. Code refactoring — Wikipedia — https://en.wikipedia.org/wiki/Code_refactoring
7. Kent Beck — Wikipedia — https://en.wikipedia.org/wiki/Kent_Beck
8. Ward Cunningham — Wikipedia — https://en.wikipedia.org/wiki/Ward_Cunningham
9. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
