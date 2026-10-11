# Rheoli Digwyddiadau

**Mae rheoli digwyddiadau yn adfer gwasanaeth sydd wedi dirywio mor gyflym ag y mae'n ddiogel. Yr arfer ystwyth sy'n gwneud iddo weithio yw rolau clir dan bwysau, ac yna adolygiad di-fai sy'n troi pob digwyddiad yn newid.**

## Pam mae hyn yn bwysig

Digwyddiadau yw'r foment pan fydd gwasanaeth yn cael ei farnu. Nid yw defnyddwyr yn cofio'r misoedd o argaeledd da; maent yn cofio'r toriad a sut y cafodd ei drin. Mae tîm sydd wedi gweithio allan ymlaen llaw pwy sy'n gwneud beth, sut mae'n cyfathrebu, a phryd mae'n galw am help yn adfer gwasanaeth yn gyflymach ac yn gwneud llai o gamgymeriadau na thîm sy'n byrfyfyrio.

Mae timau ystwyth sy'n rhedeg yr hyn y maent yn ei adeiladu yn aml yn trin digwyddiadau'n anffurfiol. Mae hyn yn gweithio nes bod digwyddiad yn fawr, yn ymestyn dros sawl tîm, neu'n digwydd yn y nos. Yna mae diffyg rolau a chofnodion yn dangos: mae peirianwyr yn pentyrru ar y broblem dechnegol, nid oes neb yn dweud wrth y cwsmeriaid, ac mae dau berson yn gwneud newidiadau croes. Mae arfer ITSM rheoli digwyddiadau, ynghyd ag arferion o beirianneg dibynadwyedd safleoedd, yn cynnig ffyrdd profedig o atal hynny.

Mae'r [erthygl Wikipedia ar reoli digwyddiadau](https://en.wikipedia.org/wiki/Incident_management) (yn Saesneg) yn cwmpasu sawl maes, o ymateb brys i ddiogelwch cyfrifiadurol. Ar gyfer rheoli gwasanaethau TG mae'n dweud mai'r nod yw adfer gwasanaeth arferol o fewn y lefel gwasanaeth y cytunwyd arni mor gyflym â phosibl, mae'n dyfynnu ITIL 2011 wrth ddiffinio digwyddiad fel ymyriad heb ei gynllunio i wasanaeth TG neu leihad yn ei ansawdd, ac yn rhestru tair her: sŵn rhybuddion, datrys problemau hirfaith, ac anhawster rhagweld toriadau. Am fanylion, mae'r pwnc hwn yn dibynnu'n drwm ar ddwy bennod o lyfr *Site Reliability Engineering* Google, sy'n disgrifio dull gorchymyn digwyddiad ac adolygiadau ôl-ddigwyddiad di-fai o'r arfer mewn un sefydliad mawr. Triniwch y penodau hynny fel un dull wedi'i ddogfennu'n dda, nid fel yr unig un.

## Cysyniadau craidd

### Beth yw digwyddiad

Mae **digwyddiad** (incident), yn nefnydd ITSM, yn ymyriad heb ei gynllunio i wasanaeth neu'n leihad yn ei ansawdd. Mae'r erthygl ITSM hefyd yn cynnwys tarfu "posibl". Nid yw digwyddiad yr un peth â **phroblem**, sef yr achos sylfaenol, na **chais gwasanaeth**, sef cais arferol (gweler Pwnc 3.3 — Rheoli Problemau a Phwnc 3.6 — Rheoli Ceisiadau Gwasanaeth). Mae cadw'r tri ar wahân yn bwysig oherwydd bod pob un yn cael ei reoli ar gyfer nod gwahanol: adfer gwasanaeth, tynnu achosion, a bodloni galw arferol.

### Y nod: adfer gwasanaeth, cadw tystiolaeth

Nod cyntaf rheoli digwyddiadau yw adfer y gwasanaeth. Mae pennod SRE ar reoli digwyddiadau yn ychwanegu ail: cadw'r dystiolaeth sydd ei hangen i ganfod y gwraidd achos yn nes ymlaen. Mae arferion gorau'r bennod ei hun yn dweud i flaenoriaethu adfer gwasanaeth a chadw tystiolaeth, yn yr ysbryd hwnnw. Gall trwsio'r achos ddod yn ddiweddarach, mewn rheoli problemau.

### Pam mae digwyddiadau heb eu rheoli yn mynd o'i le

Mae pennod SRE, a ysgrifennwyd gan Andrew Stribblehill, yn defnyddio enghraifft estynedig o beiriannydd ar alwad y mae ei doriad yn tyfu'n fethiant llwyr. Mae'n enwi tair perygl digwyddiadau heb eu rheoli:

- **Ffocws miniog ar y broblem dechnegol.** Mae peirianwyr sy'n ymgolli mewn atgyweiriad yn colli golwg ar liniaru a'r darlun ehangach.
- **Cyfathrebu gwael.** Nid oes neb yn gwybod beth mae eraill yn ei wneud, ac mae rhanddeiliaid yn parhau'n anwybodus.
- **Gweithio'n annibynnol (freelancing).** Mae newidiadau heb eu cydlynu, fel defnyddio munud olaf, yn gwneud y sefyllfa'n waeth.

### Rolau dan bwysau

Mae'r bennod yn seilio ei dull ar y System Gorchymyn Digwyddiad (Incident Command System), a ddaeth o ymateb brys (mae'r erthygl Wikipedia ar reoli digwyddiadau yn ei chrybwyll hefyd). Ei phrif syniadau:

| Rôl | Beth mae'n ei wneud |
|---|---|
| **Cadlywydd y digwyddiad (Incident commander)** | Yn dal cyflwr lefel uchel, yn strwythuro'r ymateb, yn tynnu rhwystrau, ac yn dal unrhyw rôl nad yw wedi'i dirprwyo eto |
| **Arweinydd gweithrediadau (Operations lead)** | Yn cymhwyso offer at y broblem; dim ond y tîm gweithrediadau sy'n newid y system yn ystod digwyddiad |
| **Arweinydd cyfathrebu (Communications lead)** | Yw wyneb cyhoeddus yr ymateb; yn cyhoeddi diweddariadau cyfnodol ac yn cadw dogfen y digwyddiad yn gyfredol |
| **Arweinydd cynllunio (Planning lead)** | Yn trin materion hirdymor fel ffeilio namau, trefnu trosglwyddiadau, ac olrhain gwyriad oddi wrth y norm fel y gellir dadwneud newidiadau |

Mae'r bennod yn galw'r egwyddor yn wahaniad cyfrifoldebau ailadroddol. Mae rolau clir yn rhoi ymreolaeth i bobl, oherwydd nad oes angen iddynt amau cydweithwyr, ac mae person sydd wedi'i orlwytho yn gofyn am fwy o staff ac yn dirprwyo rhannau o'r gwaith. Mae trosglwyddiadau rhwng cadlywyddion yn benodol ac yn cael eu cydnabod.

### Dogfen fyw'r digwyddiad

Mae'r bennod yn dweud mai dyletswydd bwysicaf y cadlywydd yw cadw dogfen fyw o gyflwr y digwyddiad, yn ddelfrydol y gall sawl person ei golygu ar yr un pryd. Gall fod yn flêr ond rhaid iddi aros yn ddefnyddiol, gyda gwybodaeth allweddol ar y brig, a chaiff ei chadw ar gyfer dadansoddi yn ddiweddarach. Mae sianel a rennir neu ystafell ffisegol yn gwasanaethu fel y post gorchymyn.

### Pryd i ddatgan digwyddiad

Mae'r bennod yn argymell datgan digwyddiad yn gynnar, nid oriau i mewn i broblem sy'n gwaethygu. Mae'n awgrymu trin digwyddiad fel digwyddiad os oes rhaid cynnwys ail dîm i'w drwsio, os yw'r toriad yn weladwy i gwsmeriaid, neu os yw'n parhau heb ei ddatrys ar ôl awr o ddadansoddi dwys. Rheolau bawd un sefydliad yw'r rhain. Dylai eich trothwyon eich hun adlewyrchu eich gwasanaethau a'ch defnyddwyr.

### Blaenoriaeth a difrifoldeb

Nid yw'r ffynonellau a ddarllenwyd ar gyfer y canllaw hwn yn diffinio lefelau blaenoriaeth neu ddifrifoldeb, ac nid yw'r erthygl Wikipedia yn nodi dim. Yn ymarferol, mae timau'n diffinio lefelau o'r effaith ar ddefnyddwyr a brys yr angen, ac yn penderfynu ymlaen llaw pwy a alwir ar bob lefel. Cadwch y cynllun yn fyr, gydag enghreifftiau, a'i wirio trwy ei gymhwyso i ddigwyddiadau'r gorffennol.

### Cyfathrebu

Mae gan gyfathrebu ddwy gynulleidfa. Mae angen i ymatebwyr wybod y cyflwr a phwy sy'n gwneud beth. Mae angen i randdeiliaid a defnyddwyr wybod beth sy'n cael ei effeithio, beth sy'n cael ei wneud, a phryd i ddisgwyl y diweddariad nesaf. Mae'r arweinydd cyfathrebu ym mhennod SRE yn gwasanaethu'r ail gynulleidfa ac yn cadw'r log ar gyfer y gyntaf. Ar gyfer toriadau sy'n wynebu'r cyhoedd, mae cynllun ar gyfer cyfathrebu mewn argyfwng yn ddefnyddiol (gweler y sgìl cyfathrebu argyfwng isod).

### Adolygiadau ôl-ddigwyddiad di-fai

Mae pennod SRE ar ddiwylliant adolygu ôl-ddigwyddiad yn nodi'r hanner dysgu. Mae adolygiad ôl-ddigwyddiad (postmortem) yn cofnodi'r digwyddiad, ei effaith, y lliniaru, y gwreiddiau achos, a gweithredoedd dilynol. Ei nodau yw dogfennu'r digwyddiad, deall pob gwraidd achos cyfrannol, a gosod gweithredoedd ataliol effeithiol. Mae'n ddi-fai: mae'n nodi achosion cyfrannol heb feio unigolion na thimau, ac yn tybio bod pawb "had good intentions and did the right thing with the information they had." Yng ngeiriau'r bennod, "You can't 'fix' people, but you can fix systems and processes."

Mae'r bennod yn awgrymu diffinio sbardunau adolygu ymlaen llaw, fel amser segur gweladwy i ddefnyddwyr y tu hwnt i drothwy, unrhyw golled data, ymyriad ar alwad fel dadwneud, amser datrys uwchlaw trothwy, neu fethiant monitro. Mae hefyd yn dweud "An unreviewed postmortem might as well never have existed", ac felly'n argymell sesiynau adolygu rheolaidd ac ystorfa a rennir. Mae'n disgrifio gweithgareddau adeiladu diwylliant fel cylchlythyr misol, clybiau darllen, a "Wheel of Misfortune" lle caiff digwyddiadau'r gorffennol eu hail-greu.

### Digwyddiadau mawr

Mae llawer o arferion ITSM yn diffinio **digwyddiad mawr** (major incident) fel un sydd angen ymateb mwy ffurfiol nag arfer. Nid yw'r ffynonellau a ddarllenwyd yma yn ei ddiffinio, felly gwnewch hynny yn eich geiriau eich hun: er enghraifft, digwyddiad sy'n effeithio ar lawer o ddefnyddwyr neu wasanaeth hanfodol ac sydd angen ymateb cydlynol ar draws timau. Yr hyn sy'n bwysig yw bod pobl yn gwybod ymlaen llaw beth sy'n newid: pwy sy'n gorchymyn, pwy a alwir, pa mor aml y mae diweddariadau'n mynd allan.

### Digwyddiadau a chyflawni ystwyth

Mae digwyddiadau'n aml yn deillio o newidiadau diweddar. Mae timau ystwyth mewn sefyllfa dda i ddysgu ohonynt oherwydd eu bod yn rhyddhau'n aml ac mae ganddynt ddolenni adborth byr. Mae angen llwybr ar y dysgu: mae gweithredoedd adolygu ôl-ddigwyddiad yn mynd i'r ôl-groniad gyda pherchnogion a dyddiadau, ac mae digwyddiadau ailadroddus yn mynd i reoli problemau. Heb y llwybr hwnnw, mae trin digwyddiadau yn dod yn drefn o atgyweirio.

## Arferion gorau

1. **Penderfynwch ymlaen llaw beth sy'n cyfrif fel digwyddiad.** Ysgrifennwch ddiffiniad byr gydag enghreifftiau, a gostyngwch y bar i ddatgan un. Rheol bawd pennod SRE yw datgan yn gynnar pan fo angen ail dîm, pan all cwsmeriaid weld y broblem, neu pan nad yw awr o ddadansoddi wedi'i datrys.
2. **Diffiniwch ychydig o lefelau difrifoldeb gydag enghreifftiau.** Seiliwch hwy ar effaith ar ddefnyddwyr, a nodwch pwy a alwir ar bob lefel. Profwch y cynllun ar ddigwyddiadau'r gorffennol ac addaswch.
3. **Neilltuwch rolau ar ddechrau pob digwyddiad.** Enwch gadlywydd digwyddiad, arweinydd gweithrediadau ac arweinydd cyfathrebu. Mewn timau bach gall un person ddal mwy nag un rôl; dywedwch hynny'n uchel.
4. **Gwahanwch drwsio oddi wrth gydlynu.** Ni ddylai'r bobl sy'n newid y system hefyd fod yn ateb cwestiynau. Gadewch i'r cadlywydd gydlynu a'r arweinydd cyfathrebu hysbysu.
5. **Cadwch gofnod byw.** Defnyddiwch un ddogfen neu sianel a rennir gydag amserlenni, penderfyniadau a newidiadau a wnaed. Mae'n cefnogi trosglwyddiadau ac yn rhoi deunydd i'r adolygiad ôl-ddigwyddiad.
6. **Caniatewch newidiadau awdurdodedig yn unig.** Mae pennod SRE yn dweud mai dim ond y tîm gweithrediadau ddylai addasu'r system yn ystod digwyddiad. Nodwch pwy gaiff newid beth, a gofynnwch i eraill siarad â'r cadlywydd.
7. **Cyfathrebwch ar amserlen.** Cytunwch ar y cyfnod diweddaru ar gyfer pob difrifoldeb a chadwch ato, hyd yn oed pan nad oes dim newydd. Mae distawrwydd yn magu gofid a chwestiynau dyblyg.
8. **Trosglwyddwch yn benodol.** Pan gaiff cadlywydd neu ymatebwr ei ddisodli, dywedwch hynny'n uchel a gofynnwch i'r person arall gydnabod. Mae trosglwyddiadau aneglur yn colli cyd-destun.
9. **Ymarferwch.** Rhedwch y broses digwyddiadau ar ddigwyddiadau bach ac mewn ymarferion, fel bod y rolau'n gyfarwydd cyn toriad difrifol. Cylchdrowch bobl trwy rolau.
10. **Cynhaliwch adolygiad ôl-ddigwyddiad di-fai pan gyflawnir eich sbardunau.** Ysgrifennwch ef gyda'r rhai dan sylw, canolbwyntiwch ar achosion cyfrannol ac atgyweiriadau system, a'i rannu'n eang (gweler y sgìl ôl-ddigwyddiad isod).
11. **Trowch weithredoedd yn eitemau ôl-groniad.** Rhowch berchennog a dyddiad i bob gweithred ddilynol, ac adolygwch hwy mewn cyfarfod rheolaidd. Nid yw adolygiad ôl-ddigwyddiad heb ei adolygu yn cynhyrchu newid.
12. **Bwydwch y dystiolaeth i reoli problemau.** Cysylltwch ddigwyddiadau ailadroddus â chofnod problem, fel bod achosion yn cael eu tynnu ac nid eu hatgyweirio'n unig (gweler Pwnc 3.3 — Rheoli Problemau).

## Cwestiynau i'w trafod gyda'ch tîm

**Beth ydym ni'n ei wneud yn y deng munud cyntaf o ddigwyddiad, a phwy sy'n penderfynu?**

Cerddwch drwy'r digwyddiad arwyddocaol diwethaf fesul munud. Nodwch pwy gymerodd yr awenau, pwy gyfathrebodd, a phwy newidiodd beth. Mae llawer o dimau'n canfod bod rolau wedi'u tybio ac nid y cytunwyd arnynt. Gall yr hwylusydd ofyn beth fyddai wedi digwydd pe bai'r arweinydd arferol wedi bod i ffwrdd. Dilynwch trwy gytuno ar sut y neilltuir rolau y tro nesaf.

**Pryd ydym ni'n galw rhywbeth yn ddigwyddiad, a phryd ydym ni'n aros?**

Casglwch enghreifftiau o ddigwyddiadau a ddatganwyd yn hwyr. Gofynnwch beth a ddaliodd bobl yn ôl: peidio â bod eisiau trafferthu eraill, ansicrwydd, neu ofn bai. Cymharwch â sbardunau pennod SRE. Cytunwch ar drothwy a ffordd o ddatgan digwyddiad heb ffwdan.

**Sut mae ein defnyddwyr yn canfod beth sy'n digwydd yn ystod toriad, a pha mor aml?**

Edrychwch ar y toriad diwethaf o ochr y defnyddiwr. Gofynnwch pwy ddywedodd wrthynt, beth a ddywedwyd wrthynt, a pha mor hir oedd y bwlch. Yn aml yr ateb yw distawrwydd hir ac yna nodyn byr. Gofynnwch pwy ddylai fod yn berchen ar gyfathrebu a beth ddylai'r neges gyntaf ei ddweud. Cytunwch ar dempled a rhythm diweddaru.

**Beth newidiodd ein hadolygiad ôl-ddigwyddiad diwethaf, a sut ydym ni'n gwybod?**

Gofynnwch am y gweithredoedd, y perchnogion a'r statws. Os na chwblhawyd yr un, gofynnwch pam: dim perchennog, dim amser, neu werth aneglur. Canfyddwch a yw adolygiadau ôl-ddigwyddiad yn cael eu darllen gan unrhyw un y tu hwnt i'r tîm. Cytunwch ar sesiwn reolaidd i adolygu gweithredoedd agored.

**A yw pobl yn teimlo'n ddiogel yn dweud beth wnaethant yn anghywir?**

Mae'r cwestiwn hwn yn profi bod yn ddi-fai. Gofynnwch i bobl ddisgrifio sut y byddent yn teimlo yn ysgrifennu am eu camgymeriad eu hunain mewn adolygiad ôl-ddigwyddiad. Gwrandewch am ofn canlyniadau ac enghreifftiau o pan ddigwyddodd beio. Peidiwch â mynnu bod yn agored; gofynnwch beth y byddai angen i'r tîm ac arweinwyr ei wneud i'w wneud yn ddiogel. Dewiswch un cam gweladwy.

**Sut ydym ni'n ymarfer, a phryd wnaethon ni hynny ddiwethaf?**

Gofynnwch a yw'r tîm wedi rhedeg ymarfer neu ddigwyddiad efelychiedig, a beth a ddysgodd. Os erioed, trafodwch ddechrau bach, fel ailchwarae digwyddiad yn y gorffennol mewn awr. Mae pennod SRE yn sôn am ymarfer y broses ar newidiadau arferol ac ymarferion adfer ar ôl trychineb. Cynlluniwch un ar gyfer y chwarter nesaf.

## Yn ymarferol: enghraifft o ITIL ystwyth

Mae porth cwsmeriaid cwmni pŵer rhanbarthol yn gadael i aelwydydd adrodd toriadau a gweld biliau. Mae tîm o un ar ddeg yn ei adeiladu ac yn ei redeg, gyda rota ar alwad o bedwar. Yn ystod storm, mae traffig adroddiadau yn cynyddu, mae'r porth yn arafu, ac yna'n methu. Mae'r peiriannydd ar alwad yn rhoi cynnig ar ailgychwyn cronfa ddata, mae ail beiriannydd ar yr un pryd yn defnyddio atgyweiriad cyfluniad, ac mae trydydd yn dadwneud rhyddhad cynharach. Daw'r porth yn ôl ar ôl tair awr, a derbyniodd y ganolfan alwadau, na ddywedwyd wrthi erioed, filoedd o alwadau blin.

Yn yr adolygiad ôl-ddigwyddiad mae'r tîm yn gweld y tair perygl o bennod SRE: canolbwyntiodd pawb ar yr atgyweiriad technegol, ni chyfathrebodd neb, a gwrthdarodd newidiadau. Maent yn ysgrifennu proses digwyddiadau un dudalen. Gall unrhyw un ddatgan digwyddiad, ac mae ail dîm dan sylw, gwelededd cwsmeriaid, neu awr heb gynnydd yn golygu bod yn rhaid iddynt wneud hynny. Mae'r peiriannydd ar alwad yn dod yn arweinydd gweithrediadau, ac mae rota yn enwi cadlywydd digwyddiad ac arweinydd cyfathrebu o'r tîm ehangach. Dim ond yr arweinydd gweithrediadau sy'n newid cynhyrchu. Mae'r arweinydd cyfathrebu yn anfon diweddariad bob 30 munud i'r ganolfan alwadau a'r ystafell reoli. Mae sianel a rennir yn dal y log byw.

Yn y storm nesaf mae'r porth yn arafu eto, datgenir digwyddiad o fewn deng munud, ac adferir gwasanaeth mewn 70 munud gyda diweddariadau'n mynd i'r ganolfan alwadau drwyddi draw. Erys problemau. Mae gan y rota cadlywyddion fylchau ar wyliau, ac mae'r tîm yn canfod nad oes gan un dibyniaeth, darparwr negeseuon testun, gyswllt uwchgyfeirio. Mae'r adolygiad ôl-ddigwyddiad yn cynhyrchu dwy weithred gyda pherchnogion: cwblhau'r rota gyda dewis wrth gefn, a chytuno ar lwybr uwchgyfeirio gyda'r darparwr. Mae'r tîm yn trefnu ailchwarae digwyddiad y storm ar gyfer aelodau rota newydd.

## Pedwar persbectif

### Timau cynnyrch a chyflawni

Mae timau cyflawni'n achosi ac yn trwsio llawer o ddigwyddiadau. Ymunwch â'r rota ar alwad neu darparwch gefnogaeth uniongyrchol iddi, a thriniwch weithredoedd adolygu ôl-ddigwyddiad fel eitemau ôl-groniad. Adeiladwch y modd i ganfod a dadwneud problemau i'ch rhyddhadau. Cymerwch ran mewn ymarferion fel bod rolau'n gyfarwydd.

### Timau gwasanaeth a gweithrediadau

Mae timau gweithrediadau'n berchen ar y broses. Cadwch hi'n fyr ac wedi'i hymarfer, rhowch yr awdurdod i bobl weithredu, a chadwch gofnodion y gall eraill eu defnyddio. Rhannwch yr hyn rydych yn ei ddysgu gyda thimau cyflawni, a gwthiwch y gwersi i reoli problemau a chynllunio.

### Arweinyddiaeth a llywodraethu

Mae arweinwyr yn gosod y diwylliant. Gofynnwch am adolygiadau ôl-ddigwyddiad a'u darllen, canmolwch bobl sy'n adrodd problemau, a gwrthodwch hela am rywun i'w feio. Amddiffynnwch yr amser i ymarfer ac i gwblhau gweithredoedd. Penderfynwch pwy gaiff wario arian neu alw ar yr ymateb uchaf.

### Cwsmeriaid a defnyddwyr

Mae angen diweddariadau amserol, gonest a ffordd glir o adrodd problemau ar gwsmeriaid a defnyddwyr. Gofynnwch i'ch darparwr beth gallwch ei ddisgwyl yn ystod toriad a sut y dywedir wrthych. Pan rennir adolygiad ôl-ddigwyddiad gyda chi, darllenwch ef am yr hyn y bydd y darparwr yn ei newid.

## Dulliau methu cyffredin

- **Dim rolau.** Mae pawb yn gweithio ar yr atgyweiriad technegol ac nid oes neb yn cydlynu na chyfathrebu. Yn lle hynny, enwch gadlywydd digwyddiad, arweinydd gweithrediadau ac arweinydd cyfathrebu bob tro.
- **Datgan yn hwyr.** Mae pobl yn aros nes bod y broblem yn ddrwg. Yn lle hynny, gosodwch drothwyon isel, clir a normaleiddiwch ddatgan.
- **Gweithio'n annibynnol.** Mae sawl person yn newid y system ar unwaith. Yn lle hynny, caniatewch newidiadau trwy'r arweinydd gweithrediadau yn unig.
- **Distawrwydd.** Nid yw defnyddwyr a rhanddeiliaid yn clywed dim. Yn lle hynny, cytunwch ar gyfnod diweddaru a thempled.
- **Bai.** Mae adolygiad ôl-ddigwyddiad yn chwilio am y person sydd ar fai. Yn lle hynny, gofynnwch beth yn y system a ganiataodd y gwall a thrwsiwch hynny.
- **Adolygiadau ôl-ddigwyddiad sy'n mynd i unman.** Nid oes gan weithredoedd berchnogion. Yn lle hynny, rhowch hwy yn yr ôl-groniad gyda dyddiadau a'u hadolygu'n rheolaidd.
- **Peidio byth ag ymarfer.** Y tro cyntaf y defnyddir y broses yw digwyddiad mawr. Yn lle hynny, ymarferwch ar ddigwyddiadau bach ac mewn ymarferion.
- **Trin atgyweirio fel datrysiad.** Mae'r un digwyddiad yn dychwelyd. Yn lle hynny, cysylltwch ailadroddiadau â rheoli problemau a thrwsiwch yr achos.

## Model aeddfedrwydd

| Dimensiwn | Cychwyn | Datblygu | Safoni | Rheoli | Cydlynu |
|---|---|---|---|---|---|
| Canfod a datgan | Sylwir ar ddigwyddiadau trwy gwynion defnyddwyr | Mae rhai rhybuddion yn bodoli a datgenir rhai digwyddiadau | Defnyddir trothwyon ysgrifenedig a chynllun difrifoldeb syml yn gyson | Olrheinir a lleihir amser canfod ac amser datgan | Rhennir canfod a datgan ar draws timau a chyflenwyr |
| Ymateb a rolau | Mae ymatebwyr yn byrfyfyrio | Mae rhai timau'n enwi arweinydd | Mae rolau, trosglwyddiadau a chofnod byw yn safonol | Adolygir amseroedd ymateb a pherfformiad rolau | Cydlynir ymateb ar draws timau a chyflenwyr, gydag ymarferion ar y cyd |
| Cyfathrebu | Mae diweddariadau'n ad hoc | Mae rhai diweddariadau'n mynd i rai cynulleidfaoedd | Mae rhythm diweddaru a thempledi yn bodoli ar gyfer pob difrifoldeb | Mesurir amseroldeb cyfathrebu a holir defnyddwyr | Cydlynir cyfathrebu gyda chwsmeriaid a phartneriaid |
| Dysgu | Mae adolygiadau'n dilyn y digwyddiadau gwaethaf yn unig | Ysgrifennir rhai adolygiadau ôl-ddigwyddiad | Mae adolygiadau di-fai yn dilyn sbardunau diffiniedig, gyda gweithredoedd wedi'u holrhain | Mesurir cwblhau gweithredoedd ac ailadrodd | Rhennir gwersi ar draws timau ac maent yn bwydo newid ledled y sefydliad |

## Rhestr wirio

- [ ] Mae gennym ddiffiniad byr o ddigwyddiad gydag enghreifftiau.
- [ ] Mae gennym gynllun difrifoldeb bach gydag enghreifftiau effaith defnyddwyr a rhestrau galw.
- [ ] Mae pob digwyddiad yn dechrau trwy enwi cadlywydd digwyddiad, arweinydd gweithrediadau ac arweinydd cyfathrebu.
- [ ] Cedwir cofnod byw ar gyfer pob digwyddiad.
- [ ] Dim ond yr arweinydd gweithrediadau a enwir sy'n newid cynhyrchu yn ystod digwyddiad.
- [ ] Cytunir ar gyfnodau diweddaru ar gyfer pob difrifoldeb.
- [ ] Ysgrifennir sbardunau adolygu ôl-ddigwyddiad.
- [ ] Mae adolygiadau ôl-ddigwyddiad yn ddi-fai, wedi'u rhannu ac wedi'u hadolygu.
- [ ] Mae gan bob gweithred adolygu ôl-ddigwyddiad berchennog a dyddiad, ac adolygir gweithredoedd agored.
- [ ] Rydym wedi ymarfer y broses yn y chwe mis diwethaf.

## Anogwyr AI

**Pwrpas: drafftio proses digwyddiadau un dudalen o'ch arfer presennol.**

```text
Helpwch fi i ddrafftio proses digwyddiadau un dudalen ar gyfer tîm o [nifer] o bobl sy'n rhedeg [gwasanaeth].

Sut rydym yn trin digwyddiadau heddiw: [disgrifiwch mewn ychydig frawddegau].
Ein trefniant ar alwad: [disgrifiwch].
Pwy sydd angen cael gwybod yn ystod digwyddiad: [rhestrwch gynulleidfaoedd].
Rheolau y mae'n rhaid i ni eu dilyn (contractau, rheoliadau), gyda thestun ffynhonnell os oes gennych: [gludwch, neu ysgrifennwch "dim yn hysbys"].

Cynhyrchwch broses fer gyda: beth sy'n cyfrif fel digwyddiad, cynllun difrifoldeb syml gydag enghreifftiau effaith defnyddwyr (gadewch drothwyon rhifol fel [i'w cytuno]), y rolau a beth mae pob un yn ei wneud, sut i gyfathrebu, a phryd i gynnal adolygiad ôl-ddigwyddiad. Marciwch bob eitem sy'n rhagdybiaeth. Peidiwch â dyfeisio rhwymedigaethau. Gofynnwch gwestiynau eglurhaol yn gyntaf, a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

**Pwrpas: troi log digwyddiad yn ddrafft adolygiad ôl-ddigwyddiad di-fai.**

```text
Isod mae log digwyddiad: [gludwch amserlenni, negeseuon a gweithredoedd; tynnwch ddata personol].
Effaith fel y gwyddom: [disgrifiwch y defnyddwyr yr effeithiwyd arnynt a pha mor hir, gan ddefnyddio ffeithiau yn unig].

Drafftiwch adolygiad ôl-ddigwyddiad di-fai gyda: crynodeb, effaith, llinell amser, sut y'i canfuwyd, sut y'i liniarwyd, achosion cyfrannol (gan wahanu'r hyn sy'n hysbys oddi wrth yr hyn a amheuir), beth aeth yn dda, beth aeth yn wael, a gweithredoedd arfaethedig gyda math awgrymedig (atal, canfod, ymateb) ond dim perchnogion na dyddiadau. Disgrifiwch weithredoedd pobl yn niwtral, fel rolau. Peidiwch â dyfeisio ffeithiau nac achosion. Marciwch fylchau gyda [ANHYSBYS], a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

**Pwrpas: ysgrifennu diweddariad statws digwyddiad ar gyfer rhanddeiliaid nad ydynt yn dechnegol.**

```text
Ysgrifennwch ddiweddariad statws ar gyfer rhanddeiliaid nad ydynt yn dechnegol am y digwyddiad hwn.

Ffeithiau: beth sy'n cael ei effeithio: [disgrifiwch]; ers pryd: [amser]; beth rydym yn ei wybod am yr achos: [yr hyn sy'n hysbys, neu "heb ei wybod eto"]; beth rydym yn ei wneud: [disgrifiwch]; pryd y daw'r diweddariad nesaf: [amser].

Ysgrifennwch lai na 120 gair mewn iaith blaen. Nodwch beth rydym yn ei wybod a beth nad ydym, heb ddyfalu am yr achos nac amser adfer. Peidiwch ag addo amser datrys oni bai fy mod wedi rhoi un. Cynigiwch ddwy fersiwn: un ar gyfer cwsmeriaid ac un ar gyfer staff mewnol. Rhestrwch yr hyn nad ydych yn siŵr ohono.
```

**Pwrpas: dylunio ymarfer digwyddiad bach.**

```text
Dyluniwch ymarfer digwyddiad 60 munud ar gyfer [nifer] o bobl sy'n rhedeg [gwasanaeth].

Sail y senario: [disgrifiwch ddigwyddiad yn y gorffennol neu fethiant tebygol, gan ddefnyddio ffeithiau rydych eisiau eu defnyddio yn unig].
Rolau i'w hymarfer: cadlywydd digwyddiad, arweinydd gweithrediadau, arweinydd cyfathrebu.
Cyfyngiadau: [er enghraifft dim defnydd o systemau cynhyrchu].

Rhowch gynllun amseredig: briff, y senario wedi'i ryddhau mewn tri cham, anogwyr ar gyfer pob rôl, ac adolygiad byr gyda chwestiynau ar rolau, cyfathrebu a chofnodion. Peidiwch â defnyddio mynediad cynhyrchu go iawn. Gofynnwch gwestiynau eglurhaol yn gyntaf os oes gwybodaeth ar goll, nodwch ragdybiaethau, a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

## Sgiliau AI

- [incident-response-plan](../../../../skills/incident-response-plan/SKILL.md): defnyddiwch i ysgrifennu'r cynllun sy'n gosod rolau, trothwyon a chyfathrebu ar gyfer eich tîm.
- [postmortem](../../../../skills/postmortem/SKILL.md): defnyddiwch i redeg adolygiad di-fai a chofnodi gweithredoedd ar ôl digwyddiad.
- [runbook](../../../../skills/runbook/SKILL.md): defnyddiwch i droi atgyweiriadau hysbys yn weithdrefnau byr i'r ymatebwr.
- [on-call-rotation](../../../../skills/on-call-rotation/SKILL.md): defnyddiwch i ddylunio rota deg gyda chopi wrth gefn a throsglwyddiadau.
- [crisis-communication-plan](../../../../skills/crisis-communication-plan/SKILL.md): defnyddiwch i gynllunio'r hyn rydych yn ei ddweud wrth ddefnyddwyr, staff a'r cyhoedd yn ystod toriad mawr.

(Mae'r sgiliau eu hunain wedi'u hysgrifennu yn Saesneg.)

## Prif ffynonellau

- **Managing Incidents** (Andrew Stribblehill, yn *Site Reliability Engineering*, Google, sre.google): yr hanes cyhoeddus cliraf o orchymyn digwyddiad ar gyfer timau gwasanaeth.
- **Postmortem Culture: Learning from Failure** (*Site Reliability Engineering*, Google, sre.google): yr achos dros adolygiadau ôl-ddigwyddiad di-fai, gyda sbardunau a syniadau adeiladu diwylliant.
- **Incident management** (Wikipedia): trosolwg aml-faes gydag adran ar reoli gwasanaethau TG.
- **IT service management** (Wikipedia): y diffiniad o ddigwyddiad a lle trin digwyddiadau yn y ddesg gwasanaeth.

Mae'r ffynonellau hyn yn Saesneg.

## Cyfeiriadau

1. Managing Incidents — Andrew Stribblehill, Google SRE book, sre.google — https://sre.google/sre-book/managing-incidents/
2. Postmortem Culture: Learning from Failure — Google SRE book, sre.google — https://sre.google/sre-book/postmortem-culture/
3. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
4. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
5. Incident Command System — Wikipedia — https://en.wikipedia.org/wiki/Incident_Command_System
6. Root cause analysis — Wikipedia — https://en.wikipedia.org/wiki/Root_cause_analysis
7. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
8. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
9. Computer security incident management — Wikipedia — https://en.wikipedia.org/wiki/Computer_security_incident_management
