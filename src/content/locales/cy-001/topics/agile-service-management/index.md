# Rheoli Gwasanaethau Ystwyth

**Mae rheoli gwasanaethau ystwyth yn cymhwyso gwerthoedd a dulliau ystwyth at ddylunio a gwella rheoli gwasanaethau ei hun, gan drin pob proses fel cynnyrch â pherchennog, ôl-groniad a defnyddwyr sy'n gallu dweud a yw'n gweithio.**

## Pam mae hyn yn bwysig

Mae'r rhan fwyaf o'r canllaw hwn wedi edrych ar sut y gall timau ystwyth ddefnyddio arferion rheoli gwasanaethau. Mae'r pwnc hwn yn troi'r cwestiwn o gwmpas: sut y gellir adeiladu a newid arferion rheoli gwasanaethau mewn ffordd ystwyth? Mae gan lawer o sefydliadau brosesau ar gyfer digwyddiadau, newidiadau a cheisiadau a ddyluniwyd unwaith, a gyflwynwyd mewn prosiect, ac a adawyd. Maent yn araf i newid, nid yw'r bobl sy'n gorfod eu dilyn yn eu hoffi, ac maent allan o gam â'r ffordd y mae'r sefydliad bellach yn adeiladu meddalwedd. Dyna'r gwrthwyneb i'r hyn y byddai egwyddor y Maniffesto o groesawu newid yn ei awgrymu (gweler Pwnc 1.2 — Egwyddorion Ystwyth).

Y feddyginiaeth yw nid rhoi'r gorau i broses ond ei thrin fel rhywbeth a ddyluniwyd gyda'i defnyddwyr, a ryddheir mewn camau bach, ac a wellir o dystiolaeth. Mae egwyddorion arweiniol ITIL 4 yn dweud cymaint: dechrau lle rydych chi, symud ymlaen yn ailadroddol gydag adborth, cydweithio a hyrwyddo gwelededd, a chadw pethau'n syml ac yn ymarferol (gweler Pwnc 2.4 — Egwyddorion Arweiniol ITIL). Mae'r erthygl Wikipedia ar ITIL yn dweud i ITIL 4 gael ei alinio â ffyrdd ystwyth, DevOps a main o weithio pan y'i rhyddhawyd yn 2019. Mae'r erthygl ISO/IEC 20000 yn rhestru rhannau diweddar o'r safon honno, gan gynnwys arweiniad ar ystwyth a DevOps, er nad yw'n rhoi eu cynnwys.

Ychydig o ymchwil ffurfiol sydd ar reoli gwasanaethau ystwyth fel y cyfryw, ac nid yw'r erthyglau Wikipedia a ddarllenwyd ar gyfer y canllaw hwn yn ei gwmpasu. Mae'r pwnc hwn felly yn tynnu ar ddisgrifiad y Scrum Guide o rolau ac arteffactau, ar egwyddorion ystwyth ac ITIL, ac ar weddill y canllaw hwn, ac yn cynnig ei ddull fel synthesis ymarferol i roi cynnig arno, nid fel dull sefydledig.

## Cysyniadau craidd

### Prosesau fel cynhyrchion

**Proses**, yn yr ystyr hwn, yw unrhyw ffordd ailadroddadwy o weithio y mae sefydliad gwasanaeth yn gofyn i bobl ei dilyn: sut i adrodd digwyddiad, sut i ofyn am fynediad, sut i gymeradwyo newid. Wedi'i weld fel cynnyrch, mae gan broses:

- **Defnyddwyr:** y bobl sy'n ei dilyn a'r bobl y mae'n eu gwasanaethu.
- **Diben:** y canlyniad y mae'n bodoli i'w gyflawni.
- **Perchennog:** rhywun sy'n atebol am ei werth, fel y mae'r Scrum Guide yn disgrifio Perchennog y Cynnyrch fel yr un person sy'n atebol am fwyafu gwerth y cynnyrch a threfnu ei ôl-groniad (gweler Pwnc 1.4 — Scrum).
- **Ôl-groniad:** rhestr drefnus o welliannau.
- **Rhyddhadau:** newidiadau a gyflawnir mewn camau bach, gyda nodiadau.
- **Mesurau:** tystiolaeth o a yw'n gweithio.

Mae meddwl fel hyn yn newid y cwestiynau. Nid "a ydym wedi gweithredu'r broses newid?" ond "a yw'r broses newid yn helpu pobl i wneud eu swyddi, a beth yw'r gwelliant nesaf?"

### Rolau

| Rôl | Mewn tîm cynnyrch | Ar gyfer proses rheoli gwasanaethau |
|---|---|---|
| **Perchennog cynnyrch** | Yn trefnu'r ôl-groniad ac yn atebol am werth | Perchennog y broses, sy'n penderfynu beth i'w wella nesaf a pham |
| **Datblygwyr / tîm** | Yn adeiladu'r cynyddran | Y bobl sy'n dylunio ac yn rhedeg y broses, yn ddelfrydol gan gynnwys defnyddwyr o gyflawni a gweithrediadau |
| **Meistr Scrum neu hyfforddwr** | Yn helpu'r tîm i gymhwyso'r fframwaith ac yn tynnu rhwystrau | Hyfforddwr sy'n helpu'r tîm i weithio'n ailadroddol a chasglu adborth |
| **Rhanddeiliaid** | Yn adolygu'r cynyddran ac yn rhoi adborth | Timau cyflawni, y ddesg gwasanaeth, archwilwyr, cwsmeriaid |

Mapio'r canllaw hwn yw hwn, nid safon. Nid oes gan berchnogion prosesau mewn llawer o sefydliadau awdurdod nac amser, felly'r cam cyntaf yn aml yw rhoi'r ddau iddynt.

### Ôl-groniad y broses

Daw syniadau gwella ar gyfer proses o lawer o leoedd: adolygiadau digwyddiadau, ôl-drafodaethau, canfyddiadau archwilio, cwynion defnyddwyr a metrigau (gweler Pwnc 3.15 — Gwelliant Parhaus). Mae ôl-groniad proses yn eu casglu i un rhestr drefnus. Mae eitemau'n fach ac wedi'u disgrifio o safbwynt y defnyddiwr: "Fel datblygwr, rwyf eisiau i newidiadau risg isel gael eu cymeradwyo'n awtomatig fel y gallaf ryddhau pan fyddaf yn barod." Mae perchennog y cynnyrch yn trefnu'r rhestr yn ôl gwerth ac ymdrech, ac mae'r tîm yn cymryd eitemau i gylchoedd byr.

### Dylunio ailadroddol

Yn lle dylunio proses lawn a'i chyflwyno, dyluniwch y fersiwn leiaf a allai weithio, rhowch gynnig arni gydag ychydig o ddefnyddwyr, a dysgwch:

| Cam | Beth sy'n digwydd |
|---|---|
| **Canfod y broblem** | Arsylwi sut mae pobl yn gweithio mewn gwirionedd a ble maent yn cael trafferth |
| **Dylunio newid bach** | Ffurflen newydd, llwybr cymeradwyo byrrach, rhestr wirio |
| **Rhoi cynnig arno** | Gydag un tîm, neu un math o waith, am gyfnod byr |
| **Gwirio** | Cymharu â'r hyn a ddisgwylid, gan ddefnyddio data a sgwrs |
| **Mabwysiadu, addasu neu ollwng** | Lledaenu'r hyn a weithiodd; trwsio neu gefnu ar yr hyn na wnaeth |

Dyma'r cylch cynllunio–gwneud–gwirio–gweithredu a gymhwysir at y broses ei hun (gweler Pwnc 3.15 — Gwelliant Parhaus).

### Dylunio gyda defnyddwyr

Mae dylunwyr prosesau nad ydynt yn defnyddio'r broses yn gwneud camgymeriadau y gellir eu hosgoi. Cynhwyswch y bobl sy'n ei dilyn: gwahoddwch beirianwyr i ddylunio'r broses newid, dadansoddwyr desg i ddylunio'r ffurflen digwyddiadau, a chwsmeriaid i ddylunio'r catalog ceisiadau. Gwyliwch waith go iawn. Profwch gydag achosion go iawn. Dyma "cydweithio â chwsmeriaid yn hytrach na thrafod contractau" a gymhwysir y tu mewn i'r sefydliad (gweler Pwnc 1.1 — Maniffesto Ystwyth).

### Proses hyfyw leiaf

**Proses hyfyw leiaf (minimum viable process)** yw'r set leiaf o gamau, cofnodion a rolau sy'n cyflawni'r diben. Mae ychwanegu ati angen rheswm. Mae'r egwyddor arweiniol "cadw pethau'n syml ac yn ymarferol" yn cefnogi hyn. Prawf defnyddiol o bob cam yw gofyn beth fyddai'n digwydd pe bai'n cael ei dynnu, a phwy fyddai'n sylwi. Cedwir rheolaethau sy'n ofynnol gan gyfraith neu gontract, gyda'r ffynhonnell wedi'i henwi; caiff y lleill eu cwestiynu.

### Rhyddhadau proses a chyfathrebu

Pan fydd proses yn newid, mae angen i bobl wybod. Triniwch newidiadau fel rhyddhadau: nodyn byr yn disgrifio beth newidiodd, pam, a beth i'w wneud yn wahanol, gyda chyswllt ar gyfer cwestiynau. Rhyddhewch mewn camau bach, ar rythm y gall pobl ei ddilyn, ac osgowch synnu timau â newidiadau mawr. Cadwch hanes gweladwy o newidiadau.

### Safonau, archwiliadau ac ystwythder

Mae'n rhaid i lawer o sefydliadau fodloni safonau neu archwilwyr. Mae ISO/IEC 20000 yn safon ar gyfer systemau rheoli gwasanaethau, ac mae Wikipedia yn rhestru rhan ddiweddar ohoni gydag arweiniad ar ystwyth a DevOps (gweler Pwnc 2.7 — Fframweithiau a Safonau Rheoli Gwasanaethau TG). Gall proses a adeiladwyd mewn camau bach fodloni archwiliadau os yw'r cofnodion yn dangos sut mae'n gweithio a sut mae'n newid: mae'r ôl-groniad, nodiadau rhyddhau a mesurau eu hunain yn dystiolaeth. Trafodwch gydag archwilwyr yn gynnar beth sydd ei angen arnynt, a dangoswch iddynt y ffordd rydych yn gweithio.

### Rheoli gwasanaethau ystwyth a DevOps

Offer ar gyfer gweithredu prosesau yw arferion o DevOps, fel awtomeiddio a phiblinellau (gweler Pwnc 5.2 — DevOps). Lle gellir awtomeiddio cam proses, fel cofnodi newid o biblinell, gwnewch hynny, a thriniwch yr awtomeiddio fel rhan o'r broses. Mae gan reoli gwasanaethau ystwyth a DevOps ddiddordeb a rennir mewn cylchoedd byr ac adborth cyflym.

### Terfynau

Mae'r dull yn tybio bod gan bobl amser a mandad i wella proses, nad yw bob amser yn wir. Gall fethu pan fo perchnogaeth proses yn enwol, pan fo rhanddeiliaid yn mynnu dyluniad gorffenedig cyn y rhoddant gynnig ar ddim, neu pan fo angen cymeradwyaeth hir ar bob newid. Mae hefyd yn peryglu newid cyson os yw newidiadau'n rhy aml i bobl eu hamsugno. Cydbwyswch ailadrodd â sefydlogrwydd: newidiwch ar rythm rhagweladwy.

## Arferion gorau

1. **Enwch berchennog ar gyfer pob proses.** Dewiswch rywun ag awdurdod i'w newid ac amser i'w wneud. Gwnewch eu rôl yn glir: maent yn atebol am ba mor dda y mae'r broses yn gwasanaethu ei diben.
2. **Ysgrifennwch ddiben un frawddeg.** Nodwch beth yw pwrpas y broses a phwy mae'n ei gwasanaethu. Os na allwch, efallai bod y broses yn ymgeisydd i'w thynnu.
3. **Cadwch ôl-groniad proses.** Casglwch syniadau o adolygiadau, archwiliadau, adborth a data i un rhestr drefnus. Dangoswch hi i'r bobl sy'n dilyn y broses.
4. **Cynhwyswch y defnyddwyr mewn dylunio.** Cynhwyswch beirianwyr, dadansoddwyr desg a chwsmeriaid mewn gweithdai a threialon. Arsylwch waith go iawn cyn ei newid.
5. **Dechreuwch â phroses hyfyw leiaf.** Dyluniwch y fersiwn leiaf sy'n bodloni'r diben a'r anghenion cyfreithiol. Ychwanegwch gamau dim ond pan fo problem yn cyfiawnhau.
6. **Rhowch gynnig cyn cyflwyno.** Peilotwch gydag un tîm neu un math o waith am gyfnod byr, diffiniedig. Cytunwch ar yr hyn y byddwch yn edrych arno cyn i chi ddechrau.
7. **Rhyddhewch newidiadau mewn camau bach ar rythm.** Cyhoeddwch nodyn byr ar gyfer pob rhyddhad o'r broses, gyda chyswllt. Osgowch newidiadau mawr, annisgwyl.
8. **Mesurwch y broses.** Dewiswch ychydig o fesurau o a yw'n gweithio, fel amser a gymerir, ail-wneud a boddhad defnyddwyr (gweler Pwnc 5.6 — Metrigau a Mesur). Adolygwch hwy gyda defnyddwyr.
9. **Awtomeiddiwch lle mae'n helpu.** Daliwch gofnodion o offer, nid ffurflenni; gwnewch y llwybr hawdd yn llwybr cywir. Gwiriwch nad yw awtomeiddio yn cuddio barn y dylai pobl ei gwneud.
10. **Cadwch y dystiolaeth ar gyfer archwilwyr.** Storiwch yr ôl-groniad, penderfyniadau, nodiadau rhyddhau a mesurau lle gall archwilwyr eu gweld. Gwahoddwch hwy i adolygiad o sut mae'r broses yn newid.
11. **Ymddeolwch broses.** Tynnwch gamau, ffurflenni a chofnodion nad ydynt yn gwasanaethu diben mwyach. Triniwch ddileu fel gwelliant.
12. **Adolygwch berchnogaeth prosesau'n flynyddol.** Gwiriwch fod gan bob proses berchennog gweithredol, ôl-groniad cyfredol, a defnyddwyr sy'n gallu eu cyrraedd.

## Cwestiynau i'w trafod gyda'ch tîm

**Pwy sy'n berchen ar bob un o'n prosesau, a pha awdurdod sydd ganddynt i'w newid?**

Rhestrwch y prif brosesau ac enwch y perchennog ar gyfer pob un. Gofynnwch beth y gall y perchennog ei newid heb ofyn i neb. Yn aml yr ateb yw "ychydig iawn". Gall yr hwylusydd ofyn beth fyddai ei angen i'r perchennog wneud newidiadau bach yn gyflym. Cytunwch ar un broses i ddechrau ag hi.

**Beth yw pwrpas ein proses newid? A allwn ei ddweud mewn un frawddeg?**

Gofynnwch i bob person ysgrifennu diben. Cymharwch. Mae gwahaniaethau'n dangos dryswch am pam mae'r broses yn bodoli. Defnyddiwch y datganiad a rennir i farnu pob cam. Tynnwch neu cwestiynwch gamau nad ydynt yn ei wasanaethu.

**Pryd wnaethon ni newid proses ddiwethaf oherwydd bod defnyddwyr wedi gofyn, a sut wnaethon ni ddarganfod?**

Gofynnwch am enghreifftiau. Os nad oes rhai, gofynnwch i ble mae cwynion yn mynd. Trafodwch sut y gallai adborth gyrraedd y perchennog: sianel, adolygiad rheolaidd, arolwg byr. Dewiswch un llwybr i roi cynnig arno.

**Sut olwg fyddai ar dreial mis o hyd o broses symlach?**

Dewiswch broses â ffrithiant hysbys. Disgrifiwch fersiwn ysgafnach, pwy fyddai'n rhoi cynnig arni, beth fyddech yn ei fesur, a beth fyddai'n gwneud i chi stopio. Mae hyn yn troi dadl yn arbrawf. Cytunwch ar y manylion a'r dyddiad.

**Pa dystiolaeth fyddai ein harchwilwyr yn ei derbyn o broses ailadroddol?**

Gofynnwch i archwilydd neu gydweithiwr cydymffurfio. Rhestrwch yr hyn y mae'r broses yn ei gynhyrchu: ôl-groniad, nodiadau rhyddhau, mesurau, cofnodion. Trafodwch fylchau. Mae timau'n aml yn synnu pa mor barod yw archwilwyr i dderbyn tystiolaeth glir o newid rheoledig.

**Sut mae pobl yn canfod bod proses wedi newid?**

Olrheiniwch y newid diwethaf. Dysgodd llawer o bobl gan gydweithiwr neu trwy daro i mewn iddo. Trafodwch nodiadau rhyddhau a log newid gweladwy. Cytunwch ar ffordd syml o gyhoeddi newidiadau a ble maent yn byw.

## Yn ymarferol: enghraifft o ITIL ystwyth

Mae gan asiantaeth diogelwch ffyrdd genedlaethol adran TG o 90 o bobl sy'n cefnogi cymhwysiad a ddefnyddir gan yr heddlu a'r llysoedd. Ysgrifennwyd proses digwyddiadau'r adran wyth mlynedd yn ôl: ffurflen 14 maes, tair cymeradwyaeth i gau digwyddiad blaenoriaeth uchel, ac adroddiad misol nad oes neb yn ei ddarllen. Mae timau cyflawni'n hepgor y ffurflen yn ystod toriadau ac yn ei llenwi wedyn, felly mae ei chofnodion yn wael. Mae canfyddiad archwiliad yn dweud bod cofnodion digwyddiadau'n anghyflawn.

Mae pennaeth rheoli gwasanaethau yn ei henwi ei hun yn berchennog y broses digwyddiadau ac yn ffurfio tîm gweithio bach: dau ddadansoddwr o'r ddesg gwasanaeth, peiriannydd o bob un o ddau dîm cyflawni, a swyddog ansawdd o uned lywodraethu'r asiantaeth. Mae hi'n ysgrifennu diben ar gyfer y broses: adfer gwasanaeth yn gyflym a dysgu o'r hyn a ddigwyddodd. Mae'r tîm yn gwylio tri digwyddiad go iawn. Maent yn canfod bod y ffurflen yn cael ei llenwi ar ôl y digwyddiad, gyda'r un ychydig werthoedd yn bennaf, a bod y cymeradwyaethau'n ychwanegu oedi heb newid canlyniad byth. Maent yn adeiladu ôl-groniad ac yn dechrau gyda'r newidiadau lleiaf. Mae treial gyda dau dîm yn lleihau'r ffurflen i chwe maes a lenwir yn awtomatig o'r offeryn monitro lle bo'n bosibl, yn gollwng dwy o'r tair cymeradwyaeth, ac yn ychwanegu adolygiad byr, di-fai ar gyfer pob digwyddiad blaenoriaeth uchel.

Ar ôl chwe wythnos, mae'r timau treial yn cofnodi digwyddiadau yn ystod y toriad yn hytrach nag wedyn, ac mae'r swyddog ansawdd yn canfod y cofnodion yn fwy cyflawn nag o'r blaen. Mae'r tîm yn cyhoeddi nodyn rhyddhau un dudalen, yn ymestyn y newid i bob tîm, ac yn dangos i'r archwilydd yr ôl-groniad, canlyniadau'r treial a'r mesurau. Erys rhai anawsterau. Ni ymunodd un tîm cyflawni â'r treial erioed ac mae'n dal i ddefnyddio'r hen ffurflen, mae contract cyflenwr yn mynnu maes y mae'r ffurflen newydd yn ei hepgor, ac mae'r swyddog ansawdd yn poeni y cwestiynir gollwng cymeradwyaethau yn yr archwiliad nesaf. Mae pennaeth rheoli gwasanaethau yn ychwanegu maes ar gyfer achos y cyflenwr, yn gofyn i'r tîm sy'n weddill ymuno â'r rownd nesaf, ac yn cytuno â'r archwilydd i adolygu cofnodion y digwyddiadau yn y cyfarfod chwarterol nesaf.

## Pedwar persbectif

### Timau cynnyrch a chyflawni

Timau cyflawni yw defnyddwyr llawer o brosesau rheoli gwasanaethau. Ymunwch â dylunio'r rhai sy'n effeithio arnoch, cynigiwch ddata ar sut maent yn gweithio'n ymarferol, a rhowch gynnig ar beilotiaid. Lle gellir awtomeiddio cam proses yn eich piblinell, cynigiwch ei adeiladu.

### Timau gwasanaeth a gweithrediadau

Mae timau gweithrediadau'n aml yn berchen ar y prosesau. Triniwch bob un fel cynnyrch: ysgrifennwch ddiben, cadwch ôl-groniad, gofynnwch i ddefnyddwyr, a rhyddhewch newidiadau bach. Gwnewch amser i wella prosesau a'i amddiffyn, oherwydd bydd gwaith cyflawni yn ei wthio allan.

### Arweinyddiaeth a llywodraethu

Mae arweinwyr yn rhoi awdurdod ac amser i berchnogion prosesau, ac yn gosod y disgwyliad bod prosesau'n newid o dystiolaeth. Gofynnwch am ddiben a mesurau pob proses, ac am yr ôl-groniad. Cefnogwch dreialon a byddwch yn barod i dderbyn tystiolaeth mewn ffurfiau newydd.

### Cwsmeriaid a defnyddwyr

Mae cwsmeriaid a defnyddwyr gwasanaethau hefyd yn dilyn prosesau, fel ceisiadau a chymeradwyaethau. Dywedwch wrth y perchennog beth sy'n ddryslyd neu'n araf. Cynigiwch gymryd rhan mewn treial. Disgwyliwch i newidiadau gael eu cyhoeddi a'u hegluro.

## Dulliau methu cyffredin

- **Proses heb berchennog.** Ni all neb ei newid. Yn lle hynny, enwch berchennog ag awdurdod ac amser.
- **Ailgynllunio mawr.** Cyflwynir proses newydd gyfan ar unwaith ac fe'i gwrthodir. Yn lle hynny, newidiwch mewn camau bach a pheilotwch.
- **Dylunio gan bwyllgor i ffwrdd o ddefnyddwyr.** Mae'r broses yn gweddu i'r dylunwyr. Yn lle hynny, cynhwyswch y bobl sy'n ei dilyn a gwyliwch waith go iawn.
- **Newid cyson.** Mae newidiadau'n cyrraedd yn rhy aml i'w hamsugno. Yn lle hynny, rhyddhewch ar rythm rhagweladwy.
- **Anghofio'r gofynion cyfreithiol.** Gollyngir rheolaeth oedd ei hangen. Yn lle hynny, gwiriwch at ba ddiben y mae angen pob cam ac enwch y ffynhonnell.
- **Newidiadau heb eu cyhoeddi.** Mae pobl yn eu darganfod ar ddamwain. Yn lle hynny, cyhoeddwch nodiadau rhyddhau byr.
- **Tystiolaeth heb ei chadw.** Ni all yr archwiliad weld sut y newidiodd y broses. Yn lle hynny, cadwch yr ôl-groniad, penderfyniadau a mesurau.
- **Dim tynnu.** Mae camau'n cronni. Yn lle hynny, triniwch ddileu fel gwelliant.

## Model aeddfedrwydd

| Dimensiwn | Cychwyn | Datblygu | Safoni | Rheoli | Cydlynu |
|---|---|---|---|---|---|
| Perchnogaeth a diben | Nid oes gan brosesau berchennog na diben clir | Mae gan rai prosesau berchnogion | Mae gan bob proses berchennog ag awdurdod, a diben ysgrifenedig | Adolygir a chefnogir effeithiolrwydd perchnogion | Mae perchnogion yn gweithio gyda'i gilydd ar draws timau i alinio prosesau o un pen i'r llall |
| Ôl-groniad a newid | Mae newidiadau yn brosiectau, yn brin ac yn fawr | Mae rhai perchnogion yn cadw rhestrau o syniadau | Mae gan bob proses ôl-groniad trefnus ac mae'n rhyddhau newidiadau mewn camau bach | Mesurir llif ôl-groniad ac effeithiau rhyddhau | Cydlynir newidiadau proses ar draws prosesau a chyda chyflenwyr |
| Cynnwys defnyddwyr | Anaml y mae dylunwyr yn ymgynghori â defnyddwyr | Rhedir rhai treialon gyda defnyddwyr | Mae defnyddwyr yn cymryd rhan mewn dylunio a threialon fel safon | Mesurir a gweithredir ar adborth a boddhad defnyddwyr | Mae cwsmeriaid a chyflenwyr yn cymryd rhan mewn dylunio prosesau |
| Tystiolaeth ac archwilio | Mae cofnodion yn wael a newidiadau heb eu cofnodi | Logir rhai newidiadau proses | Mae ôl-groniad, nodiadau rhyddhau a mesurau yn gwasanaethu fel tystiolaeth archwilio | Mae archwilwyr yn adolygu'r cofnod newid yn rheolaidd | Rhennir tystiolaeth ag archwilwyr a phartneriaid yn barhaus |

## Rhestr wirio

- [ ] Mae gan bob prif broses berchennog a enwir ag awdurdod ac amser.
- [ ] Mae gan bob proses ddiben un frawddeg a set ddiffiniedig o ddefnyddwyr.
- [ ] Mae gan bob proses ôl-groniad gwelliannau gweladwy, trefnus.
- [ ] Mae defnyddwyr o gyflawni a gweithrediadau yn cymryd rhan mewn dylunio a threialon.
- [ ] Peilotir newidiadau cyn eu cyflwyno, gyda gwiriad diffiniedig.
- [ ] Rhyddheir newidiadau proses ar rythm gyda nodiadau byr.
- [ ] Mae ychydig o fesurau yn dangos a yw pob proses yn gweithio.
- [ ] Nodir rheolaethau cyfreithiol a chontractol gyda'u ffynonellau.
- [ ] Mae archwilwyr wedi gweld yr ôl-groniad, nodiadau rhyddhau a mesurau.
- [ ] Tynnir camau nad ydynt yn gwasanaethu diben mwyach.

## Anogwyr AI

**Pwrpas: drafftio datganiad diben a rhestr defnyddwyr ar gyfer proses.**

```text
Helpwch fi i ysgrifennu datganiad diben ar gyfer y broses hon: [enw a disgrifiad byr].

Pwy sy'n ei dilyn: [rolau].
Pwy mae'n ei gwasanaethu: [rolau].
Beth sy'n mynd o'i le heddiw: [enghreifftiau].
Rheolau neu gontractau sy'n mynnu rhannau ohoni, gyda thestun ffynhonnell: [gludwch, neu ysgrifennwch "dim yn hysbys"].

Ysgrifennwch dri datganiad diben un frawddeg amgen, pob un yn canolbwyntio ar ganlyniad ac nid ar y camau. Yna rhestrwch gwestiynau i'r defnyddwyr brofi pa un sydd agosaf. Peidiwch â dyfeisio rheolau. Gofynnwch gwestiynau eglurhaol yn gyntaf, a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

**Pwrpas: troi adborth ac adolygiadau digwyddiadau yn ôl-groniad proses.**

```text
Dyma sylwadau, cwynion, canfyddiadau archwilio a gweithredoedd adolygu am [proses]: [gludwch un i bob llinell, gyda ffynhonnell].

Grwpiwch eitemau cysylltiedig. Ar gyfer pob grŵp, ysgrifennwch eitem ôl-groniad ar ffurf "Fel [rôl], rwyf eisiau [newid] fel bod [canlyniad]," gan ddefnyddio'r hyn y mae'r testun yn ei ddweud yn unig. Ychwanegwch nodyn ar bwy sy'n cael ei effeithio a chwestiwn am dystiolaeth. Gadewch flaenoriaeth yn wag. Rhestrwch eitemau sy'n edrych fel gofynion o gyfraith neu gontract, gan ddyfynnu'r testun, ac eitemau sy'n gwrthdaro. Rhestrwch yr hyn nad ydych yn siŵr ohono.
```

**Pwrpas: dylunio treial mis o hyd o broses ysgafnach.**

```text
Dyluniwch dreial mis o hyd o fersiwn ysgafnach o [proses].

Camau cyfredol a ble mae pobl yn cael trafferth: [disgrifiwch].
Newid arfaethedig: [disgrifiwch].
Timau a allai gymryd rhan: [rhestrwch].
Rheolaethau y mae'n rhaid iddynt aros, gyda ffynhonnell: [rhestrwch, neu ysgrifennwch "dim yn hysbys"].

Rhowch: cwmpas y treial, yr hyn rydym yn ei ddisgwyl ei weld, beth i'w fesur cyn ac yn ystod (gadewch dargedau fel [i'w cytuno]), sut i gasglu adborth defnyddwyr, amodau i stopio, a pha dystiolaeth i'w chadw ar gyfer archwilwyr. Gofynnwch gwestiynau eglurhaol yn gyntaf, nodwch ragdybiaethau, a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

**Pwrpas: ysgrifennu nodyn rhyddhau ar gyfer newid proses.**

```text
Ysgrifennwch nodyn rhyddhau byr ar gyfer newid i [proses].

Beth newidiodd: [disgrifiwch].
Pam: [disgrifiwch].
Pwy yr effeithir arnynt ac o ba ddyddiad: [disgrifiwch].
Beth ddylai pobl ei wneud yn wahanol: [disgrifiwch].
Ble i ofyn cwestiynau: [cyswllt].

Ysgrifennwch lai na 150 gair mewn iaith blaen, gyda phennawd, rhestr fer o newidiadau, a beth i'w wneud. Defnyddiwch fy ngwybodaeth i yn unig. Gofynnwch gwestiynau eglurhaol yn gyntaf os oes unrhyw beth ar goll, a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

## Sgiliau AI

- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): defnyddiwch i wneud yn glir pwy sy'n berchen ar bob proses a phwy yr ymgynghorir ag ef.
- [user-story](../../../../skills/user-story/SKILL.md): defnyddiwch i ysgrifennu eitemau ôl-groniad proses o safbwynt y defnyddiwr.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md): defnyddiwch i astudio sut mae proses yn rhedeg mewn gwirionedd a ble mae'n cael trafferth.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): defnyddiwch i adolygu sut mae proses yn gweithio gyda'i defnyddwyr.
- [kaizen](../../../../skills/kaizen/SKILL.md): defnyddiwch i gynllunio gwelliannau bach, parhaus i broses.

(Mae'r sgiliau eu hunain wedi'u hysgrifennu yn Saesneg.)

## Prif ffynonellau

- **The Scrum Guide** (Ken Schwaber a Jeff Sutherland, scrumguides.org): y ffynhonnell ar gyfer y rolau a'r arteffactau a ddefnyddir yma fel cyfatebiaeth ar gyfer perchnogaeth prosesau ac ôl-groniadau.
- **Principles behind the Agile Manifesto** (agilemanifesto.org): ochr ystwyth y dull dylunio.
- **ITIL** (Wikipedia): hanes aliniad ITIL 4 â ffyrdd ystwyth, DevOps a main o weithio.
- **ISO/IEC 20000** (Wikipedia): y rhestr o rannau, gan gynnwys arweiniad diweddar ar ystwyth a DevOps.

Mae'r ffynonellau hyn yn Saesneg.

## Cyfeiriadau

1. The Scrum Guide (November 2020) — Ken Schwaber and Jeff Sutherland, scrumguides.org — https://scrumguides.org/scrum-guide.html
2. Principles behind the Agile Manifesto — Beck et al., agilemanifesto.org — https://agilemanifesto.org/principles.html
3. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
4. ISO/IEC 20000 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_20000
5. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
6. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
7. PDCA — Wikipedia — https://en.wikipedia.org/wiki/PDCA
8. Business process management — Wikipedia — https://en.wikipedia.org/wiki/Business_process_management
9. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
