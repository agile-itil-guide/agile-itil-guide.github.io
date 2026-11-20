# Peirianneg Dibynadwyedd Safleoedd

**Mae peirianneg dibynadwyedd safleoedd yn trin gweithrediadau fel problem beirianneg, gan ddefnyddio amcanion lefel gwasanaeth, cyllidebau gwallau a chap ar waith llaw ailadroddus i gadw gwasanaethau'n ddibynadwy tra'n dal i newid yn gyflym.**

## Pam mae hyn yn bwysig

Dyluniwyd llawer o arferion rheoli gwasanaethau ar gyfer byd lle roedd staff gweithrediadau yn rhedeg meddalwedd a ysgrifennwyd gan eraill, a chost gweithredu yn tyfu gyda maint y gwasanaeth. Peirianneg dibynadwyedd safleoedd (site reliability engineering, SRE) yw ateb un sefydliad i'r hyn sy'n digwydd pan fo'r model hwnnw'n taro graddfa fawr iawn: gofyn i beirianwyr meddalwedd ddylunio a rhedeg y swyddogaeth weithrediadau, a gwneud i'r system wneud y gwaith y byddai pobl fel arall yn ei wneud â llaw.

I ddarllenwyr y canllaw hwn, mae SRE yn ddefnyddiol am dri rheswm. Mae'n gwneud y cyfaddawd rhwng cyflymder a dibynadwyedd yn eglur, gyda rhifau y gall timau cynnyrch a gweithrediadau eu darllen. Mae'n rhoi syniad cadarn o faint o waith llaw sy'n ormod. Ac mae'n dangos sut y gellir gwneud llawer o arferion ITIL, fel rheoli digwyddiadau, problemau, newid a chapasiti, mewn termau peirianneg. Nid SRE yw'r unig ffordd o wneud y rhain, ac mae'n dod o amgylchiadau cwmni rhyngrwyd mawr iawn, felly mae'r hyn sy'n trosglwyddo yn dibynnu ar eich sefyllfa.

Mae'r pwnc hwn yn seiliedig yn bennaf ar dair pennod o lyfr *Site Reliability Engineering* Google, wedi'i ategu gan yr erthygl Wikipedia ar SRE. Mae'r llyfr yn disgrifio'r arfer mewn un sefydliad ac yn dadlau dros ei ddull; mae'r erthygl Wikipedia yn rhoi darlun ehangach ond teneuach ac nid yw'n enwi beirniadaethau. Darllenwch y ddau fel ffynonellau syniadau i'w profi, nid fel safon.

## Cysyniadau craidd

### Beth yw SRE

Mae cyflwyniad y llyfr yn diffinio SRE fel "what happens when you ask a software engineer to design an operations team." Mae'r [erthygl Wikipedia ar beirianneg dibynadwyedd safleoedd](https://en.wikipedia.org/wiki/Site_reliability_engineering) (yn Saesneg) yn ei disgrifio fel disgyblaeth o fewn peirianneg meddalwedd a chymorth seilwaith TG sy'n monitro ac yn gwella argaeledd a pherfformiad meddalwedd a ddefnyddiwyd a gwasanaethau mawr, gyda ffocws ar awtomeiddio a seilwaith fel cod. Mae'r erthygl yn galw SRE yn weithrediad penodol o DevOps, yn gulach ei gwmpas oherwydd ei fod yn canolbwyntio ar adeiladu systemau dibynadwy (gweler Pwnc 5.2 — DevOps). Mae'r llyfr yn disgrifio DevOps fel set ehangach o egwyddorion y mae SRE yn eu gweithredu mewn ffordd benodol.

Yn ôl yr erthygl, dechreuodd arfer SRE Google yn 2003 pan ymunodd Benjamin Treynor Sloss a ffurfio tîm o saith peiriannydd cynhyrchu; erbyn 2016 roedd gan y tîm fwy na 1,000 o SREs, ac roedd cwmnïau rhyngrwyd mawr eraill wedi mabwysiadu'r arfer. Canfu arolwg yn 2020 o 572 o weithwyr proffesiynol dimau SRE mewn 64 y cant o sefydliadau â 10,000 neu fwy o weithwyr, 44 y cant o'r rhai â 101 i 1,000, a 32 y cant o'r rhai â 100 neu lai. Mae cyfres y gynhadledd SREcon wedi rhedeg yn flynyddol ers 2014.

### Y broblem y mae SRE yn mynd i'r afael â hi

Mae'r cyflwyniad yn disgrifio'r model traddodiadol: rhennir datblygwyr a gweinyddwyr system yn dimau ar wahân. Mae'n enwi dau fath o gost:

- **Costau uniongyrchol.** Mae rheoli newid â llaw a thrin hysbysiadau yn dod yn ddrud, oherwydd bod y tîm gweithrediadau yn tyfu gyda'r llwyth.
- **Costau anuniongyrchol.** Mae gan y timau eirfaoedd, cymhellion a thybiaethau gwahanol am risg, sy'n arwain at wrthdaro dros ryddhadau. Mae gweithrediadau'n ychwanegu pyrth lansio, ac mae datblygwyr yn ymateb â datrysiadau osgoi.

Mae SRE yn anelu at osgoi'r hollt hon trwy drin gweithrediadau fel problem beirianneg. Mae'r bennod yn dweud bod maint y tîm yn tyfu'n arafach na'r system, oherwydd bod peirianneg yn cadw llwyth gweithredol rhag tyfu yn gyfochrog â thraffig.

### Yr egwyddorion

Mae'r cyflwyniad yn rhestru'r meysydd y mae timau SRE yn gyfrifol amdanynt: argaeledd, hwyrni, perfformiad, effeithlonrwydd, rheoli newid, monitro, ymateb brys a chynllunio capasiti. Mae'r erthygl Wikipedia yn rhestru arferion craidd sy'n cynnwys awtomeiddio gwaith ailadroddus, diffinio nodau dibynadwyedd trwy ddangosyddion lefel gwasanaeth (SLIs), amcanion (SLOs) a chyllidebau gwallau, dylunio systemau i leihau risg, arsylwadwyedd a monitro, rheoli llafur diflas (toil), proses rheoli digwyddiadau wedi'i phrofi, a chynllunio capasiti, rheoli rhyddhau a pheirianneg anhrefn.

### Amcanion lefel gwasanaeth a chyllidebau gwallau

Mae SRE yn clymu dibynadwyedd wrth dargedau eglur (gweler Pwnc 3.7 — Rheoli Lefelau Gwasanaeth am y driniaeth lawn). Yn gryno:

- Dewiswch ychydig o ddangosyddion sy'n adlewyrchu'r hyn y mae defnyddwyr yn gofalu amdano.
- Gosodwch amcan nad yw'n mynnu perffeithrwydd.
- Caniatewch **gyllideb gwallau**: y lle rhwng perffaith a'r amcan.
- Defnyddiwch y gyllideb i benderfynu ar gyflymder rhyddhau: tra bo cyllideb yn weddill, mae rhyddhadau'n parhau; pan fo wedi'i gwario, mae rhyddhadau'n arafu ac mae ymdrech yn symud at ddibynadwyedd.

Mae'r bennod "Embracing Risk" yn egluro pam: mesurir timau cynnyrch ar gyflymder a thimau dibynadwyedd ar ddibynadwyedd, sy'n creu tensiwn, ac mae'r gyllideb yn rhoi mesur a rennir, gwrthrychol i'r ddau. Mae'r un bennod yn dweud bod costau dibynadwyedd yn codi'n serth a bod y nod yw paru risg gwasanaeth â'r hyn y bydd y busnes yn ei dderbyn (gweler Pwnc 3.11 — Argaeledd, Capasiti a Pherfformiad).

### Llafur diflas (toil)

Mae'r bennod "Eliminating Toil" yn diffinio **llafur diflas (toil)** fel gwaith gweithredol sy'n gysylltiedig â rhedeg gwasanaeth cynhyrchu, ac yn dweud nad gwaith nad yw rhywun yn ei hoffi yn unig ydyw ac ei fod yn wahanol i orbenion fel cyfarfodydd. Mae llafur diflas yn tueddu i fod:

| Nodwedd | Ystyr |
|---|---|
| **Â llaw** | Angen ymdrech ddynol ymarferol, hyd yn oed os yw sgript yn rhedeg y camau |
| **Ailadroddus** | Yn cael ei wneud dro ar ôl tro, nid problem newydd |
| **Y gellir ei awtomeiddio** | Gallai peiriant ei wneud, neu gellid dylunio'r angen allan |
| **Tactegol** | Yn cael ei yrru gan ymyriadau ac yn adweithiol, fel ymateb i alwadau |
| **Heb werth parhaol** | Mae'r gwasanaeth yn yr un cyflwr wedyn |
| **Llinol gyda thwf** | Mae ymdrech yn graddio gyda maint y gwasanaeth, traffig neu ddefnyddwyr |

Mae'r llyfr yn dweud bod SREs yn anelu at gadw llafur diflas o dan 50 y cant o'u hamser, gydag o leiaf hanner yn cael ei dreulio ar waith prosiect peirianneg, ac mae'r cyflwyniad yn gosod cap o 50 y cant ar waith "gweithrediadau" cyfanredol, gan anfon yr ormodedd yn ôl at dimau datblygu. Mae'n dweud bod gormod o lafur diflas yn achosi marweidd-dra gyrfa, morâl isel a llosgi allan, yn arafu gwaith nodweddion, ac yn gyrru ymadawiadau; "toil becomes toxic when experienced in large quantities," er y gall symiau bach fod yn dawelu a bod rhywfaint yn anochel. Mae'r bennod yn rhoi ffordd o gyfrifo'r llawr y mae ar alwad yn ei osod (er enghraifft isafswm o 33 y cant ar gyfer rota chwe pherson o dan ei rhagdybiaethau enghreifftiol) ac yn adrodd mai ymyriadau oedd y ffynhonnell fwyaf o lafur diflas, a ddilynwyd gan ymateb ar alwad ac yna rhyddhadau. Mae'n diffinio gwaith peirianneg fel un newydd, sy'n gofyn am farn, sy'n cynhyrchu gwelliant parhaol, ac yn dilyn strategaeth.

### Ymateb brys a monitro

Mae'r cyflwyniad yn dweud na ddylai monitro fod angen person i ddehongli rhybuddion: mae meddalwedd yn dehongli data a hysbysir bodau dynol dim ond pan fo angen gweithredu (gweler Pwnc 3.10 — Monitro a Rheoli Hysbysiadau). Mae'n dweud y dylai SREs ar alwad dderbyn tua dau ddigwyddiad y sifft ar y mwyaf. Mae'n honni bod llawlyfrau chwarae yn cynhyrchu gwelliant tua theirgwaith yn yr amser cymedrig i atgyweirio o'i gymharu â byrfyfyrio. Mae trin digwyddiadau yn dilyn dull gorchymyn digwyddiad, ac mae adolygiadau ôl-ddigwyddiad yn ddi-fai ac yn cael eu hysgrifennu ar gyfer pob digwyddiad arwyddocaol (gweler Pwnc 3.2 — Rheoli Digwyddiadau).

### Rheoli newid

Mae'r cyflwyniad yn datgan bod tua 70 y cant o doriadau yn dod o newidiadau i system fyw, ac yn argymell cyflwyniadau graddol, canfod problemau'n gyflym, a dadwneud diogel. Honiad y llyfr ei hun yw hwn, o brofiad Google, ac efallai nad yw'n dal ar gyfer pob sefydliad. Mae ei neges yn gyson ag arweiniad DORA ar newid (gweler Pwnc 3.4 — Galluogi Newid a Phwnc 3.5 — Rheoli Rhyddhau a Defnyddio).

### SRE ac ITIL

Gellir darllen SRE fel ffordd beirianyddol o gyflawni sawl arfer ITIL:

| Arfer ITIL | Dull SRE |
|---|---|
| Rheoli digwyddiadau | Rolau gorchymyn digwyddiad, cofnod digwyddiad byw, adolygiadau ôl-ddigwyddiad di-fai |
| Rheoli problemau | Gweithredoedd ôl-ddigwyddiad yn yr ôl-groniad, tynnu llafur diflas wrth yr achos |
| Galluogi newid | Cyflwyniadau graddol, canfod cyflym, dadwneud diogel, gwiriadau awtomataidd |
| Rheoli lefelau gwasanaeth | SLIs, SLOs, cyllidebau gwallau |
| Monitro a rheoli hysbysiadau | Rhybuddio sy'n seiliedig ar symptomau, y pedwar signal euraidd |
| Rheoli capasiti | Cynllunio capasiti fel tasg beirianneg, gyda phrofi llwyth |
| Gwelliant parhaus | Cap ar lafur diflas, prosiectau peirianneg fel y prif waith |

Mapio'r canllaw hwn yw'r tabl, nid y ffynonellau. Nid yw'r llyfr na'r erthygl Wikipedia yn honni gweithredu ITIL.

### Modelau defnyddio

Mae'r erthygl Wikipedia yn disgrifio chwe model sefydliadol ar gyfer SRE: "Kitchen Sink," seilwaith, offer, cynnyrch neu gymhwysiad, wedi'i fewnosod, ac ymgynghori. Mae'n dweud bod hybrid yn gyffredin mewn sefydliadau mawr, ond mae'n marcio'r honiad hwnnw fel un sydd angen cyfeiriad. Mae pa fodel sy'n gweddu i chi yn dibynnu ar eich maint a nifer y gwasanaethau.

### Terfynau a beirniadaethau

Nid yw'r erthygl Wikipedia yn datgan unrhyw feirniadaethau, costau na dulliau methu, ac mae'r llyfr yn disgrifio llwyddiant un sefydliad. Mae terfynau ymarferol yn adnabyddus o brofiad, ac fe'u cynigir yma fel y cyfryw: mae SRE angen peirianwyr sy'n gallu ysgrifennu meddalwedd ac sy'n fodlon gwneud gweithrediadau; mae'r cap o 50 y cant angen cefnogaeth rheolwyr; dim ond os yw timau cynnyrch yn eu parchu y mae cyllidebau gwallau yn gweithio; ac mae'r dull yn anodd ei gopïo heb y raddfa a'r offer a'i cynhyrchodd. Gall sefydliadau llai fabwysiadu'r syniadau, fel amcanion, cyllidebau, mesur llafur diflas ac adolygu di-fai, heb greu tîm.

## Arferion gorau

1. **Dewiswch un gwasanaeth a gosodwch amcan.** Dewiswch ddau i bedwar dangosydd sy'n adlewyrchu profiad defnyddwyr, gosodwch amcan cyntaf llac, a mesurwch am ychydig fisoedd cyn ei dynhau.
2. **Cytunwch ar bolisi cyllideb gwallau.** Ysgrifennwch beth sy'n digwydd pan fo'r gyllideb bron wedi'i gwario a phan fo wedi'i gwario, a phwy gaiff drechu. Gwnewch ef yn rheol ar y cyd rhwng cynnyrch a gweithrediadau.
3. **Mesurwch lafur diflas.** Gofynnwch i bobl gofnodi faint o'u hamser sy'n mynd i waith gweithredol llaw, ailadroddus. Defnyddiwch y chwe nodwedd i'w ddosbarthu. Edrychwch ar y prif ffynonellau.
4. **Capiwch y gwaith llaw.** Gosodwch nenfwd ar gyfer llafur diflas, fel hanner amser person, a'i adolygu. Pan fo'r cap yn cael ei ragori, anfonwch waith dros ben yn ôl at y timau sy'n berchen ar yr achosion neu leihau cwmpas.
5. **Awtomeiddiwch y llafur diflas mwyaf yn gyntaf.** Dewiswch yr eitem sy'n costio'r mwyaf o amser ac sydd fwyaf ailadroddadwy, awtomeiddiwch hi gyda phrofion, a mesurwch yr arbediad. Ffafriwch ddylunio'r angen allan yn hytrach nag awtomeiddio.
6. **Amddiffynnwch amser peirianneg.** Cynlluniwch waith prosiect ar gyfer peirianwyr gweithrediadau fel gwaith go iawn gyda pherchnogion a dyddiadau. Hebddo, mae llafur diflas yn ehangu.
7. **Cyfyngwch ymyriadau.** Anelwch at ychydig o ddigwyddiadau y sifft ar alwad, tiwniwch rybuddion fel bod galwadau'n weithredadwy, a thrwsiwch achosion ailadroddus. Arweiniad y llyfr yw tua dau ddigwyddiad y sifft ar y mwyaf.
8. **Ysgrifennwch lawlyfrau chwarae.** Ar gyfer methiannau cyffredin, ysgrifennwch gamau ymateb byr, wedi'u profi. Mae'r llyfr yn honni eu bod yn gwella amser atgyweirio o'i gymharu â byrfyfyrio.
9. **Gwnewch newidiadau'n raddol ac yn ddadwneudadwy.** Cyflwynwch yn raddol, canfyddwch broblemau'n gyflym, a dadwnewch yn ddiogel. Oherwydd mai newidiadau yw achos mwyaf cyffredin toriadau ym mhrofiad y llyfr, buddsoddwch yma yn gyntaf.
10. **Rhedwch adolygiadau ôl-ddigwyddiad di-fai ar gyfer digwyddiadau arwyddocaol,** gan gynnwys achosion bron â digwydd na wnaethant alw. Trowch weithredoedd yn eitemau ôl-groniad.
11. **Dechreuwch â'r syniadau, nid y tîm.** Gall sefydliadau llai fabwysiadu amcanion, cyllidebau, mesurau llafur diflas ac adolygiadau ôl-ddigwyddiad gyda staff presennol cyn creu tîm penodol.
12. **Dewiswch fodel sefydliadol yn fwriadol.** Os ydych yn creu swyddogaeth SRE, penderfynwch a yw'n darparu offer, yn ymgorffori gyda thimau cynnyrch, neu'n ymgynghori, ac adolygwch y dewis wrth i chi dyfu.

## Cwestiynau i'w trafod gyda'ch tîm

**Pa wasanaeth fyddem ni'n rhoi amcan arno'n gyntaf, a beth fyddai'r amcan?**

Gofynnwch i bob person enwi'r gwasanaeth a'r dangosydd sy'n adlewyrchu profiad y defnyddiwr orau. Cymharwch. Mae gwahaniaethau'n dangos blaenoriaethau aneglur. Gall yr hwylusydd ofyn beth sy'n digwydd heddiw pan fo'r gwasanaeth yn arafach neu'n llai hygyrch nag y mae defnyddwyr yn ei ddisgwyl. Cytunwch ar wasanaeth i ddechrau ag ef a beth i'w fesur.

**Beth fyddem ni'n ei wneud pe baem yn gwario ein cyllideb gwallau gyfan y mis hwn?**

Gofynnwch i'r tîm a chynrychiolydd cynnyrch ddisgrifio'r gweithredoedd, pwy sy'n penderfynu, a beth sy'n cael ei amddiffyn. Nid yw llawer o dimau erioed wedi cytuno. Trafodwch a fyddai oedi ar ryddhadau peryglus yn cael ei dderbyn. Drafftiwch bolisi un dudalen.

**Faint o'n hwythnos sy'n llafur diflas, a beth yw'r tair prif ffynhonnell?**

Gofynnwch i bobl amcangyfrif ac yna cadw cofnod am bythefnos. Cymharwch amcangyfrifon â chofnodion. Y nod yw gweld siâp y gwaith, nid beio. Dewiswch y ffynhonnell fwyaf a gofynnwch a ellir ei thynnu trwy ddylunio.

**Pa dasg llaw ailadroddus y gallai sgript neu newid dylunio ei thynnu?**

Rhestrwch y tasgau y mae pobl yn eu hofni. Ar gyfer pob un, amcangyfrifwch amlder ac amser. Yr ymgeiswyr gorau yw'r rhai mynych, sefydlog, risg isel. Gofynnwch beth fyddai'n gwneud awtomeiddio'n ddiogel, fel terfynau a logiau. Dewiswch un i'w awtomeiddio.

**Faint o ddigwyddiadau y mae pob sifft ar alwad yn eu cael, a faint sydd angen gweithredu?**

Cyfrwch ar gyfer y chwarter diwethaf. Os yw'r nifer yn uchel, trafodwch o ble mae'n dod. Mae'r cyflwyniad yn awgrymu anelu at tua dau ddigwyddiad y sifft. Dewiswch un ffynhonnell rhybudd i'w thrwsio.

**Beth fyddem ni'n ei golli ac yn ei ennill pe baem yn creu tîm dibynadwyedd penodol?**

Gofynnwch am safbwyntiau gonest. Gallai enillion fod yn ffocws a sgiliau; gallai colledion fod yn seilo newydd neu ddympio gwaith gweithredol. Trafodwch ddewisiadau eraill fel peirianwyr wedi'u hymgorffori neu gylchdro. Penderfynwch beth i roi cynnig arno mewn ffordd fach.

## Yn ymarferol: enghraifft o ITIL ystwyth

Mae dosbarthwr trydan rhanbarthol yn rhedeg ap adrodd toriadau a system anfon criwiau maes. Mae tîm cyfun o ddeunaw yn adeiladu ac yn rhedeg y ddau. Mae'r staff gweithrediadau yn y tîm yn treulio'r rhan fwyaf o'u hamser ar waith llaw: ailgychwyn swyddi sownd, addasu porthiannau data, ac ymateb i alwadau. Mae pennaeth y grŵp yn nodi mai ychydig o amser sydd ganddynt ar ôl i wella, ac mae dau ohonynt wedi gofyn i symud i dimau eraill.

Mae arweinydd y tîm yn cynnig dull sy'n seiliedig ar SRE. Ar gyfer yr ap adrodd toriadau, mae'r tîm yn gosod dau ddangosydd: cyfran y cyflwyniadau adroddiad sy'n llwyddo a'r amser i ddangos cadarnhad. Cytunant ar amcan llac a chyllideb gwallau fisol gyda rheolwr gwasanaeth cwsmeriaid, ac ysgrifennant bolisi un dudalen: pan fo mwy na thri chwarter y gyllideb wedi'i gwario, mae rhyddhadau peryglus yn aros. Mae'r tîm yn gofyn i beirianwyr logio llafur diflas am fis. Mae'r log yn dangos bod traean o'u hamser yn mynd ar ailgychwyn swydd mewnforio data sy'n methu ac ar addasiadau â llaw ar ôl stormydd, pan fo galw'n codi. Maent yn gosod cap o hanner eu hamser ar lafur diflas, yn penderfynu trwsio achos y swydd fewnforio yn gyntaf, ac yn awtomeiddio'r addasiadau storm gyda sgript sydd â therfynau a log. Tiwnir galwadau fel mai dim ond symptomau sy'n weladwy i ddefnyddwyr sy'n rhybuddio'r peiriannydd ar alwad.

Bedwar mis yn ddiweddarach, mae llafur diflas yn gostwng i tua thraean o amser y tîm, nid yw'r swydd fewnforio yn methu mwyach, ac mae'r polisi cyllideb gwallau wedi'i ddefnyddio unwaith, mewn mis gyda thoriad cyflenwr, i ohirio rhyddhad nodwedd. Erys anawsterau. Nid oes gan y system anfon amcanion eto, ac mae'r rheolwr gwasanaeth cwsmeriaid wedi cael ei demtio i drechu'r polisi cyllideb ddwywaith ar gyfer nodweddion brys. Mae arweinydd y tîm a'r rheolwr yn cytuno i adolygu trechiadau yn fisol ac i osod amcanion ar gyfer anfon nesaf. Maent hefyd yn dysgu mai canllaw yw'r "cap", nid addewid: ar ôl storm fawr, cododd llafur diflas ymhell y tu hwnt i hanner am ddwy wythnos, a bu'n rhaid iddynt benderfynu beth i'w dorri.

## Pedwar persbectif

### Timau cynnyrch a chyflawni

Mae timau cyflawni'n cymryd rhan wrth osod amcanion ac yn parchu'r gyllideb. Adeiladwch weithredadwyedd i mewn i nodweddion, derbyniwch fod llafur diflas yn dychwelyd at y tîm sy'n ei achosi, a helpwch i awtomeiddio. Triniwch gyllideb wedi'i gwario fel gwybodaeth am y gwasanaeth, nid fel cosb.

### Timau gwasanaeth a gweithrediadau

Gall timau gweithrediadau wneud y gwaith SRE neu fabwysiadu ei syniadau. Mesurwch lafur diflas, amddiffynnwch amser ar gyfer peirianneg, a gwthiwch waith ailadroddus yn ôl at ei ffynhonnell. Defnyddiwch amcanion i egluro pam y dylid gwrthod peth gwaith.

### Arweinyddiaeth a llywodraethu

Rhaid i arweinwyr gefnogi'r cap ar lafur diflas a rheol y gyllideb gwallau; heb gefnogaeth maent yn methu. Gofynnwch am amcanion a statws y gyllideb, nid cyfrif digwyddiadau. Darparwch amser ar gyfer gwaith peirianneg a byddwch yn barod i ddweud na i nodweddion pan fo'r gyllideb wedi'i gwario.

### Cwsmeriaid a defnyddwyr

Mae cwsmeriaid a defnyddwyr yn elwa o lefelau gwasanaeth clir ac o adfer cyflymach pan fydd pethau'n methu. Dywedwch wrth y tîm beth sydd bwysicaf, fel bod amcanion yn adlewyrchu eich profiad. Disgwyliwch sgyrsiau gonest am gyfaddawdau rhwng nodweddion newydd a dibynadwyedd.

## Dulliau methu cyffredin

- **Copïo'r teitl.** Ailenwir gweithrediadau ac nid oes dim yn newid. Yn lle hynny, mabwysiadwch amcanion, cyllidebau a mesurau llafur diflas yn gyntaf.
- **Cyllideb gwallau nad oes neb yn ei pharchu.** Mae nodweddion yn ei threchu bob tro. Yn lle hynny, cytunwch ar y rheol gyda pherchnogion cynnyrch ac adolygwch drechiadau.
- **Dim amser ar gyfer peirianneg.** Mae llafur diflas yn llenwi'r wythnos. Yn lle hynny, capiwch ef ac amddiffynnwch amser prosiect.
- **Awtomeiddio'r peth anghywir.** Awtomeiddir tasg brin tra bo'r un mynych yn aros. Yn lle hynny, graddiwch yn ôl amser ac amlder.
- **Targedau perffeithrwydd.** Mae amcanion yn mynnu 100 y cant. Yn lle hynny, gosodwch dargedau llac o anghenion defnyddwyr a thynhewch gyda data.
- **Tîm dibynadwyedd fel man dympio.** Mae datblygu'n anfon yr holl waith gweithredol ato. Yn lle hynny, dychwelwch waith dros ben at ei ffynhonnell.
- **Copïo graddfa Google.** Mabwysiedir arferion sydd angen sefydliad mawr gan un bach. Yn lle hynny, cymerwch y syniadau sy'n ffitio, fel amcanion ac adolygiadau ôl-ddigwyddiad.
- **Anwybyddu pobl.** Mae llwyth ar alwad yn llosgi pobl allan. Yn lle hynny, cyfyngwch ddigwyddiadau y sifft a rhannwch y rota.

## Model aeddfedrwydd

| Dimensiwn | Cychwyn | Datblygu | Safoni | Rheoli | Cydlynu |
|---|---|---|---|---|---|
| Amcanion a chyllidebau | Mae nodau dibynadwyedd yn anffurfiol | Mae gan rai gwasanaethau amcanion | Mae gan wasanaethau allweddol amcanion a pholisi cyllideb gwallau y cytunwyd arno | Mae cyllidebau'n arwain rhyddhadau ac adolygir trechiadau polisi | Alinir amcanion a chyllidebau ar draws gwasanaethau dibynnol |
| Llafur diflas ac awtomeiddio | Ni fesurir llafur diflas | Mae rhai timau'n amcangyfrif llafur diflas | Mesurir a chapir llafur diflas; cynllunnir gwaith awtomeiddio | Olrheinir a lleihir ffynonellau ac arbedion llafur diflas | Rhennir awtomeiddio a lleihir llafur diflas ar draws timau |
| Ymateb brys | Mae ymateb yn fyrfyfyr | Mae rhai llawlyfrau chwarae a rota yn bodoli | Mae rolau, llawlyfrau chwarae ac adolygiadau ôl-ddigwyddiad di-fai yn safonol | Mesurir a gwellir llwyth digwyddiadau ac amseroedd atgyweirio | Ymarferir a chydlynir ymateb ar draws timau a chyflenwyr |
| Newid a chapasiti | Mae newidiadau'n beryglus ac â llaw | Mae rhai cyflwyniadau'n raddol | Mae cyflwyno graddol a chynllunio capasiti yn arferol | Mesurir methiant newid a rhagolygon capasiti | Rhennir arferion newid a chapasiti ar draws y sefydliad |

## Rhestr wirio

- [ ] Mae gan o leiaf un gwasanaeth ddangosyddion ac amcan llac, wedi'i fesur dros amser.
- [ ] Cytunir ar bolisi cyllideb gwallau gyda pherchnogion cynnyrch ac fe'i hysgrifennir.
- [ ] Mesurir llafur diflas gyda diffiniad cyson, ac mae'r prif ffynonellau'n hysbys.
- [ ] Mae nenfwd ar gyfer llafur diflas yn bodoli ac yn cael ei adolygu.
- [ ] Cynllunnir ac amddiffynnir amser ar gyfer prosiectau peirianneg.
- [ ] Mesurir llwyth ar alwad, ac mae galwadau'n weithredadwy.
- [ ] Mae llawlyfrau chwarae yn bodoli ar gyfer y methiannau mwyaf cyffredin ac wedi'u profi.
- [ ] Mae cyflwyniadau'n raddol a phrofir dadwneud.
- [ ] Mae digwyddiadau arwyddocaol a rhai bron â digwydd yn cael adolygiadau ôl-ddigwyddiad di-fai gyda gweithredoedd a berchnogir.
- [ ] Rydym wedi dewis yn fwriadol sut y trefnir gwaith dibynadwyedd.

## Anogwyr AI

**Pwrpas: dosbarthu eich gwaith fel llafur diflas, peirianneg, neu orbenion.**

```text
Dyma restr o'r hyn a wnaeth ein peirianwyr gweithrediadau yn y pythefnos diwethaf, gyda'r amser a dreuliwyd ar bob un: [gludwch ddata go iawn].

Dosbarthwch bob eitem fel llafur diflas, gwaith peirianneg, neu orbenion, gan ddefnyddio'r diffiniadau hyn. Llafur diflas: llaw, ailadroddus, y gellir ei awtomeiddio, tactegol, heb werth parhaol, ac yn tyfu'n llinol gyda'r gwasanaeth. Gwaith peirianneg: newydd, yn gofyn am farn, yn cynhyrchu gwelliant parhaol. Gorbenion: gwaith gweinyddol nad yw'n gysylltiedig â rhedeg gwasanaeth. Rhowch reswm un frawddeg o'm testun i ar gyfer pob un. Cyfrifwch y gyfran o amser ym mhob dosbarth o'm rhifau i yn unig, a rhestrwch y tair eitem llafur diflas fwyaf. Marciwch eitemau na allech eu dosbarthu. Peidiwch â dyfeisio ffigurau amser. Rhestrwch yr hyn nad ydych yn siŵr ohono.
```

**Pwrpas: drafftio polisi cyllideb gwallau.**

```text
Drafftiwch bolisi cyllideb gwallau un dudalen ar gyfer [gwasanaeth].

Amcan a chyfnod: [er enghraifft, "mae 99.9% o geisiadau prynu yn llwyddo, y mis"].
Rhythm rhyddhau a phwy sy'n penderfynu: [disgrifiwch].
Pryderon cwsmeriaid a chynnyrch: [rhestrwch].

Ysgrifennwch adrannau: sut y caiff y gyllideb ei chyfrifo a'i dangos, beth sy'n digwydd ar dri cham defnydd (gadewch drothwyon fel [i'w cytuno]), pwy all drechu a sut y cofnodir trechiadau, sut yr adolygir y polisi, a beth ydym yn ei wneud ar ôl cyllideb wedi'i hysbyddu. Peidiwch â dyfeisio rhifau. Gofynnwch gwestiynau eglurhaol yn gyntaf, a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

**Pwrpas: dewis eitem llafur diflas i'w hawtomeiddio yn gyntaf.**

```text
Dyma ein prif eitemau llafur diflas gyda pha mor aml y mae pob un yn digwydd, amser fesul achlysur, risg os yw'r awtomeiddio'n methu, ac a ellid dylunio'r achos allan: [gludwch].

Graddiwch hwy yn ôl cyfanswm yr amser a arbedir y mis (wedi'i gyfrifo o'm rhifau i yn unig). Ar gyfer y tri uchaf, dywedwch a ddylwn ddylunio'r angen allan neu awtomeiddio, a pha ddiogelwch y mae'r awtomeiddio ei angen (profion, terfynau, logiau). Peidiwch â dyfeisio rhifau. Gofynnwch gwestiynau eglurhaol yn gyntaf, a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

**Pwrpas: ysgrifennu cofnod llawlyfr chwarae.**

```text
Ysgrifennwch gofnod llawlyfr chwarae ar gyfer y methiant ailadroddus hwn: [disgrifiwch symptom ac effaith].

Beth rwy'n ei wybod am achosion ac atgyweiriadau: [gludwch].
At bwy i uwchgyfeirio: [rôl, neu "anhysbys"].

Darparwch gofnod byr: sut i gadarnhau'r methiant, y gwiriadau cyntaf, yr atgyweiriad arferol, sut i gadarnhau adferiad, pryd i uwchgyfeirio, a beth i'w gofnodi. Marciwch unrhyw gam a ddeilliwyd gennych gyda [GWIRIO]. Gofynnwch gwestiynau eglurhaol yn gyntaf, a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

## Sgiliau AI

- [on-call-rotation](../../../../skills/on-call-rotation/SKILL.md): defnyddiwch i ddylunio rota deg gyda therfynau ar ddigwyddiadau y sifft.
- [runbook](../../../../skills/runbook/SKILL.md): defnyddiwch i ysgrifennu'r llawlyfrau chwarae sy'n cyflymu atgyweirio.
- [postmortem](../../../../skills/postmortem/SKILL.md): defnyddiwch i redeg adolygiadau di-fai ac olrhain gweithredoedd.
- [chaos-testing](../../../../skills/chaos-testing/SKILL.md): defnyddiwch i brofi bod dyluniadau dibynadwyedd yn gweithio trwy achosi methiannau'n ddiogel.
- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): defnyddiwch i gynllunio capasiti fel tasg beirianneg sydd wedi'i chlymu wrth y galw.

(Mae'r sgiliau eu hunain wedi'u hysgrifennu yn Saesneg.)

## Prif ffynonellau

- **Introduction** (*Site Reliability Engineering*, Google, sre.google): diffiniad SRE, y cap 50 y cant, yr egwyddorion, a'r hollt datblygu/gweithrediadau y mae'n anelu at ei hosgoi.
- **Eliminating Toil** (*Site Reliability Engineering*, Google, sre.google): diffiniad llafur diflas a'r rhesymau dros ei gapio.
- **Embracing Risk** (*Site Reliability Engineering*, Google, sre.google): economeg dibynadwyedd a'r gyllideb gwallau.
- **Site reliability engineering** (Wikipedia): crynodeb ehangach o'r ddisgyblaeth, modelau defnyddio, arolwg mabwysiadu a darllen pellach.

Mae'r ffynonellau hyn yn Saesneg.

## Cyfeiriadau

1. Introduction — Google SRE book, sre.google — https://sre.google/sre-book/introduction/
2. Eliminating Toil — Google SRE book, sre.google — https://sre.google/sre-book/eliminating-toil/
3. Embracing Risk — Google SRE book, sre.google — https://sre.google/sre-book/embracing-risk/
4. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
5. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
6. Chaos engineering — Wikipedia — https://en.wikipedia.org/wiki/Chaos_engineering
7. Infrastructure as code — Wikipedia — https://en.wikipedia.org/wiki/Infrastructure_as_code
8. Observability (software) — Wikipedia — https://en.wikipedia.org/wiki/Observability_(software)
9. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
