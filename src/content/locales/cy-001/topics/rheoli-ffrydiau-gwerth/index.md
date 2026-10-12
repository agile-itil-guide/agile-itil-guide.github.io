# Rheoli Ffrydiau Gwerth

**Mae rheoli ffrydiau gwerth yn edrych ar y llwybr cyfan o gais i werth, yn mesur ble mae gwaith yn aros, ac yn gwella'r llif ar draws timau, oherwydd bod yr oedi mwyaf mewn sefydliad gwasanaeth fel arfer rhwng timau, nid y tu mewn iddynt.**

## Pam mae hyn yn bwysig

Mae'r rhan fwyaf o dimau'n mesur eu gwaith eu hunain: tocynnau a gaewyd, straeon a orffennwyd, newidiadau a ryddhawyd. Gall y rhifau hyn edrych yn dda tra bo'r cwsmer yn aros wythnosau. Y rheswm yw bod y rhan fwyaf o'r amser a aeth heibio mewn cais nodweddiadol yn cael ei dreulio yn aros: mewn ciwiau, am gymeradwyaethau, rhwng timau. Gall tîm sy'n cyflymu ei gam ei hun newid dim i'r person a ofynnodd.

Mae gan feddwl main ddull o weld hyn: y map ffrwd werth, sy'n tynnu llun o bob cam o ddechrau proses i'r cwsmer ac yn cofnodi amser a chyfaint ym mhob cam. Mae gan ITIL 4 ei syniad ei hun o ffrwd werth, set o weithgareddau sy'n creu ac yn cyflawni gwasanaeth, gan gyfuno gweithgareddau'r gadwyn werth mewn gwahanol drefnau (gweler Pwnc 2.6 — Y Gadwyn Gwerth Gwasanaeth). Mae'r ddau'n cyd-fynd. Mae syniad ITIL yn dweud beth yw ffrwd, ac mae'r dull main yn dangos sut i fesur a gwella un.

Mae rheoli ffrydiau gwerth yn mynd y tu hwnt i weithdy mapio untro. Mae'n golygu rheoli llif gwaith yn barhaus, gyda mesurau a rennir, perchennog a enwir ac adolygiadau rheolaidd sy'n cynnwys pob tîm yn y ffrwd. Mae rhestr galluoedd DORA yn cynnwys gwelededd gwaith yn y ffrwd werth a therfynau ar waith ar y gweill, ac mae ei harweiniad ar derfynau yn disgrifio gwneud yr holl waith yn weladwy, gan gynnwys gwaith y tu allan i'r tîm. Mae'r pwnc hwn yn tynnu ar yr erthygl Wikipedia ar fapio ffrydiau gwerth, DORA, a'r Kanban Guide, ac yn datgan lle mae'r ffynonellau'n dawel.

## Cysyniadau craidd

### Beth yw ffrwd werth

**Ffrwd werth** yw'r dilyniant o gamau y mae cais yn dod yn werth a gyflawnir drwyddynt. Mae'r [erthygl Wikipedia ar fapio ffrydiau gwerth](https://en.wikipedia.org/wiki/Value-stream_mapping) (yn Saesneg) yn disgrifio'r dull fel techneg rheoli main sy'n dadansoddi'r cyflwr presennol ac yn dylunio cyflwr dyfodol ar gyfer y digwyddiadau sy'n mynd â chynnyrch neu wasanaeth o ddechrau proses i'r cwsmer. Yn y farn ITIL, ffrwd werth yw set benodol o weithgareddau sy'n creu ac yn cyflawni gwasanaeth neu gynnyrch penodol i gwsmeriaid (gweler Pwnc 2.6 — Y Gadwyn Gwerth Gwasanaeth).

Enghreifftiau mewn sefydliad gwasanaeth: trin digwyddiad o adroddiad i adfer, cyflawni newid o syniad i gynhyrchu, ymuno â chwsmer newydd, neu gyflawni cais am fynediad.

### Mapio ffrydiau gwerth

Mae'r erthygl yn dweud bod y map gweledol sy'n deillio o hynny yn dangos pob cam critigol ac yn meintioli'r amser a'r cyfaint ym mhob cam. Mae'n disgrifio dau fap: **map cyflwr presennol**, a adeiladir trwy arsylwi ac olrhain y llif go iawn o ddeunydd a gwybodaeth, a **map cyflwr dyfodol**, sy'n dangos y broses ddelfrydol ar ôl gwelliannau. Rhaid adeiladu'r cyflwr presennol yn gyntaf. Mae'r erthygl yn dyfynnu *Learning to See* gan Mike Rother a John Shook (Lean Enterprise Institute, 1999) fel ffynhonnell. Mae'n rhestru datblygu meddalwedd, datblygu cynnyrch, rheoli prosiectau, a phrosesau gweinyddol a swyddfa fel meysydd defnydd, ac yn crybwyll dau ddull sy'n canolbwyntio ar feddalwedd gan Ali a chydweithwyr: dadansoddi arteffactau datblygu a dadansoddi llif gwybodaeth.

Nid yw'r erthygl yn diffinio amser arweiniol, amser proses na chanran gyflawn a chywir, nid yw'n rhestru symbolau, ac nid yw'n trafod unrhyw feirniadaethau. Fodd bynnag, mae tudalen DORA ar gyflawni parhaus yn cyfeirio at fapio ffrydiau gwerth fel ffordd o ddatgelu tagfeydd trwy gymharu amser a aeth heibio ag amser ychwanegu gwerth a mesur canran gyflawn a chywir (%C/A). Defnydd cyffredin yw'r termau isod:

| Term | Ystyr, mewn defnydd cyffredin |
|---|---|
| **Amser arweiniol (lead time)** | Cyfanswm yr amser a aeth heibio o ddechrau cais hyd at gyflawni |
| **Amser proses** (neu amser cyffwrdd) | Yr amser y mae rhywun yn gweithio ar y cais mewn gwirionedd |
| **Amser aros** | Yr amser y mae'r cais yn eistedd yn segur rhwng camau |
| **Canran gyflawn a chywir (%C/A)** | Cyfran y gwaith sy'n cyrraedd cam nad oes angen cywiro nac ychwanegu gwybodaeth ar ei gyfer |
| **Effeithlonrwydd llif** | Amser proses wedi'i rannu ag amser arweiniol, fel canran |

Cymhareb syml yw effeithlonrwydd llif a gyfrifwyd ar gyfer darlun y canllaw hwn, ac nid yw'r ffynonellau a ddarllenwyd yn ei ddiffinio.

### Mesurau llif

Mae'r Kanban Guide yn enwi pedwar mesur llif (gweler Pwnc 1.5 — Kanban): **gwaith ar y gweill** (eitemau a ddechreuwyd ond heb eu gorffen), **trwybwn** (eitemau a orffennwyd y cyfnod), **oed eitem waith** (amser ers i eitem anorffenedig ddechrau), ac **amser beicio** (amser o'r dechrau i'r diwedd ar gyfer eitem a gwblhawyd). Mae'r rhain yn gweithio ar lefel llif gwaith tîm. Mae rheoli ffrydiau gwerth yn cymhwyso'r un syniadau ar draws timau: mesurwch yr amser a aeth heibio o'r cais i dderbyniad y cwsmer, nid o'r pwynt y mae un tîm yn ei godi.

Mae mesurau cyflawni meddalwedd DORA, fel amser arweiniol newid, yn gymwys i un sleisen o'r ffrwd, o'r ymrwymiad i gynhyrchu (gweler Pwnc 3.4 — Galluogi Newid). Mae'r rhan gynharach, o syniad i ymrwymiad, hefyd yn rhan o'r ffrwd werth ac yn aml mae ganddi'r arosiadau hiraf.

### Terfynau ar waith ar y gweill

Mae tudalen DORA ar derfynau gwaith ar y gweill (WIP) yn eu disgrifio fel capiau ar faint o eitemau all fod ym mhob cam o lif gwaith. Mae'n dweud bod ymchwil DORA yn cysylltu terfynau WIP â gwell perfformiad cyflawni meddalwedd dim ond ar y cyd â galluoedd eraill, fel arddangosfeydd gweledol a dolenni adborth o fonitro, ac nid yw'n rhoi meintiau effaith. Mae ei chyngor gweithredu yn cynnwys gwneud yr holl waith yn weladwy, gan gynnwys gwaith y tu allan i'r tîm, gosod pob terfyn yn ôl gallu'r tîm, dal terfynau'n gadarn heb eu codi pan fo pobl yn segur, tynnu gwaith dim ond pan fydd lle'n agor, olrhain amser arweiniol a'i amrywioldeb, lleihau trosglwyddiadau, a gostwng terfynau'n raddol i ddatgelu'r cyfyngiad nesaf. Mae'r maglau y mae'n eu henwi yn cynnwys anwybyddu gwaith i fyny'r afon ac i lawr yr afon, sy'n arwain at optimeiddio lleol, a gosod terfynau'n rhy uchel.

### Gweld y ffrwd gyfan

Y fagl "optimeiddio lleol" yw'r un ganolog. Mae gan ffrwd o bum tîm bum ciw. Os yw un tîm yn dyblu ei gyflymder, prin y gall amser arweiniol y ffrwd newid, oherwydd bod y lleill yn dal i aros. Mae rheoli ffrydiau gwerth yn chwilio am y **cyfyngiad**, y cam sy'n cyfyngu'r cyfan, ac yn ei wella'n gyntaf (gweler Pwnc 1.7 — Datblygu Meddalwedd Main ar optimeiddio'r cyfan).

### Perchnogaeth a llywodraethu

Mae ffrwd yn croesi timau, felly mae angen rhywun cyfrifol am y cyfan. Mae perchennog ffrwd werth (neu grŵp bach) yn dal y map, y mesurau a'r rhestr gwelliannau, ac yn galw'r timau at ei gilydd. Heb berchennog, nid oes neb yn atebol am y ffrwd, ac mae gwelliannau'n aros o fewn ffiniau timau. Mae hyn yn cysylltu â pherchnogaeth cynnyrch a gwasanaeth (gweler Pwnc 5.5 — Perchnogaeth Cynnyrch a Gwasanaeth).

### Offer

Mae offer meddalwedd ar gyfer rheoli ffrydiau gwerth yn casglu data o docynnu, rheoli ffynhonnell a phiblinellau i ddangos llif ar draws y gadwyn offer. Nid yw'r ffynonellau a ddarllenwyd ar gyfer y canllaw hwn yn trafod offer o'r fath. Os ydych yn gwerthuso unrhyw un, gwiriwch pa ddata sydd ei angen arno, pa mor gywir ydyw, ac a yw'r mesurau'n ateb cwestiwn sydd gennych. Mae map bras a dynnir â llaw gyda'r timau dan sylw yn lle da i ddechrau ac yn aml yn datgelu mwy na dangosfwrdd.

### Terfynau

Nid yw'r erthygl Wikipedia yn trafod unrhyw feirniadaethau, ac nid yw tudalen WIP DORA yn rhoi meintiau effaith na gwerthoedd targed. Mae rhybuddion ymarferol, a gynigir fel profiad, yn cynnwys mapio nad yw byth yn arwain at newid, mesurau a ddefnyddir i raddio timau, a mapiau a dynnir o gof rheolwyr yn hytrach nag arsylwi eitemau go iawn.

## Arferion gorau

1. **Dewiswch un ffrwd sy'n bwysig.** Dewiswch lif y mae defnyddwyr yn gofalu amdano, fel newid yn cyrraedd cynhyrchu neu gais am fynediad. Mae ffrwd gul, go iawn yn dysgu mwy nag un eang, haniaethol.
2. **Mapiwch o eitemau go iawn.** Dilynwch nifer o eitemau diweddar o'r dechrau i'r diwedd, a chofnodwch y dyddiadau gwirioneddol, nid y ddogfen broses. Mae arsylwi'n well na chofio, fel y mae pwyslais yr erthygl ar arsylwi ac olrhain y llif go iawn yn awgrymu.
3. **Cofnodwch amser ac aros ym mhob cam.** Ar gyfer pob cam, nodwch yr amser gweithio a'r aros cyn hynny. Yr arosiadau fel arfer yw'r stori.
4. **Cynhwyswch bawb yn y ffrwd.** Gwahoddwch bobl o bob tîm sy'n cyffwrdd â'r eitem, gan gynnwys cymeradwywyr a chyflenwyr. Gwnewch y mapio gyda'ch gilydd, fel na synnir neb gan y canlyniad.
5. **Cyfrifwch amser arweiniol, amser proses ac effeithlonrwydd llif.** Cymharwch yr amser a aeth heibio â'r amser gweithio ac edrychwch ar faint sy'n aros. Defnyddiwch y rhifau i ddechrau sgyrsiau.
6. **Edrychwch ar gywirdeb.** Gofynnwch pa mor aml y mae gwaith yn cyrraedd cam yn anghyflawn neu'n anghywir, gan fod angen ei ail-wneud. Mae cam â chanran gyflawn a chywir isel yn achosi oedi i lawr yr afon.
7. **Canfyddwch y cyfyngiad.** Nodwch y cam sy'n cyfyngu'r ffrwd gyfan a'i wella'n gyntaf. Mae gwella camau eraill yn rhoi ychydig o fudd.
8. **Tynnwch lun y cyflwr dyfodol.** Dyluniwch ffrwd well gyda'r timau, nid un ddelfrydol, a dewiswch y newid cyntaf neu ddau. Cytunwch ar berchnogion a dyddiadau.
9. **Cyfyngwch waith ar y gweill.** Capiwch yr hyn y mae pob cam yn ei ddal, gosodwch derfynau yn ôl gallu, cadwch hwy pan fo pobl yn segur, a gostyngwch hwy'n raddol, fel y mae arweiniad DORA yn ei ddisgrifio.
10. **Gwnewch y gwaith yn weladwy.** Dangoswch y ffrwd ar fwrdd neu fap a rennir sy'n cynnwys gwaith y tu allan i unrhyw un tîm. Diweddarwch ef wrth i eitemau symud.
11. **Enwch berchennog ffrwd.** Dewiswch berson sy'n atebol am berfformiad y ffrwd, a all alw'r timau at ei gilydd a mynd â gwelliannau at arweinwyr.
12. **Adolygwch yn rheolaidd.** Cynhaliwch adolygiad misol byr o amser arweiniol, arosiadau a'r rhestr gwelliannau. Ail-dynnwch y map ar ôl newidiadau arwyddocaol.

## Cwestiynau i'w trafod gyda'ch tîm

**Pe baem yn dilyn un cais o'r cyswllt cyntaf i dderbyniad y cwsmer, pa mor hir y byddai'n ei gymryd, a faint o hynny yw amser gweithio?**

Dewiswch eitem ddiweddar a chasglwch ddyddiadau. Gofynnwch i bobl ddyfalu'r ateb cyn edrych. Mae'r dyfaliad fel arfer yn optimistaidd. Cyfrifwch gyfran yr amser gweithio. Gall yr hwylusydd ofyn ble digwyddodd yr aros mwyaf a phwy oedd yn berchen arno. Dewiswch ef fel y targed cyntaf.

**Pwy yn y ffrwd nad ydym erioed wedi siarad â nhw?**

Rhestrwch y timau, cymeradwywyr a chyflenwyr y mae eitem yn eu cyffwrdd. Marciwch y rhai nad yw'r tîm erioed wedi cwrdd â nhw. Gofynnwch beth a enillid trwy eu gwahodd i sesiwn fapio. Atebion nodweddiadol: deall pam eu bod yn aros, neu beth sydd ei angen arnynt i weithio'n gyflymach. Gwahoddwch un.

**Beth ydym yn ei drosglwyddo'n anghyflawn, a beth ydym yn ei dderbyn yn anghyflawn?**

Gofynnwch am enghreifftiau o waith a ddychwelodd i'w ail-wneud. Nodwch pa drosglwyddiadau sy'n achosi'r mwyaf o ddychweliadau a beth sydd ar goll. Dyma'r syniad canran gyflawn a chywir mewn geiriau plaen. Cytunwch ar restr wirio fer ar gyfer un trosglwyddiad.

**Ble mae'r cyfyngiad yn ein ffrwd ni, a beth sy'n digwydd os cyflymwn rywbeth arall?**

Trafodwch pa gam sydd â'r ciw hiraf. Gofynnwch beth fyddai'n digwydd i'r amser o un pen i'r llall pe bai cam arall yn dyblu mewn cyflymder. Y pwynt yw gweld nad yw gwella un nad yw'n gyfyngiad yn newid fawr ddim. Dewiswch weithio ar y cyfyngiad.

**Faint o bethau y mae pob tîm yn gweithio arnynt ar unwaith, a beth fyddai'n digwydd pe baem yn ei gapio?**

Cyfrifwch waith ar y gweill fesul tîm. Trafodwch beth fyddai'n ei olygu i roi'r gorau i ddechrau pethau. Ofnau nodweddiadol: bydd rhywbeth pwysig yn aros. Manteision nodweddiadol: mae pethau'n gorffen. Cytunwch ar gap treial i un tîm a ffordd o farnu'r canlyniad.

**Pwy sy'n atebol am y ffrwd hon yn ei chyfanrwydd?**

Gofynnwch i'r tîm enwi'r person. Os nad oes neb, trafodwch pwy allai fod, a pha awdurdod y byddai ei angen arno. Gall yr hwylusydd nodi anaml y mae gwelliannau ar draws timau'n digwydd heb berchennog. Cynigiwch enw a'i gludo at yr arweinydd perthnasol.

## Yn ymarferol: enghraifft o ITIL ystwyth

Mae rheoleiddiwr amgylcheddol cenedlaethol yn cyhoeddi trwyddedau i weithredwyr diwydiannol. Mae ymgeiswyr yn cwyno bod trwydded nodweddiadol yn cymryd tua phedwar mis, a gofynnir i grŵp gwasanaethau digidol deuddeg y rheoleiddiwr ei chyflymu. Roedd y grŵp eisoes wedi adeiladu ffurflen gais ar-lein gyflymach, ond prin y mae'r amser a aeth heibio wedi newid.

Mae pennaeth y grŵp yn galw pobl o bob rhan o'r ffrwd at ei gilydd: y tîm ceisiadau, dau adolygydd technegol, swyddog cyfreithiol, y swyddfa ffioedd, a'r tîm sy'n cyhoeddi'r dogfennau trwydded. Maent yn mapio chwe thrwydded ddiweddar o ddyddiad cyflwyno i'r dyddiad y cyrhaeddodd y drwydded yr ymgeisydd. Mae'r canlyniadau'n sobreiddiol. Cyfanswm yr amser oedd tua 110 diwrnod, a'r amser gweithio oedd tua 12. Roedd yr aros hiraf yn y ciw adolygu technegol, lle roedd ceisiadau'n aros 40 diwrnod ar gyfartaledd cyn i neb eu hagor, ac roedd tua thraean o'r ceisiadau yn cyrraedd gyda gwybodaeth ar goll y bu'n rhaid gofyn amdani eto. Ychwanegodd y swyddfa ffioedd a'r tîm dogfennau wythnos yr un o aros am brosesu swp.

Mae'r grŵp yn cytuno ar dri newid. Mae'r ffurflen ar-lein yn gwirio am yr eitemau a gollir yn gyffredin cyn eu cyflwyno. Mae'r tîm adolygu technegol yn gosod terfyn gwaith ar y gweill a rheol i agor pob cais o fewn pum diwrnod gwaith i wirio cyflawnrwydd. Mae'r swyddfa ffioedd a'r tîm dogfennau yn symud o sypiau wythnosol i brosesu dyddiol. Maent yn enwi pennaeth gwasanaethau digidol yn berchennog ffrwd ac yn adolygu amser arweiniol yn fisol. Ar ôl tri mis, mae amser arweiniol canolrifol tua 70 diwrnod, ac mae cyfran y ceisiadau a ddychwelir am wybodaeth goll yn gostwng. Erys rhai problemau. Dywed y tîm adolygu fod y terfyn yn ei gwneud yn anoddach trin ceisiadau mawr, cymhleth, a'r swyddog cyfreithiol yw un pwynt oedi nad oedd neb wedi'i gyfrif. Mae perchennog y ffrwd yn gofyn i'r tîm adolygu wahanu achosion cymhleth i'w lôn eu hunain, ac yn gweithio gyda'r swyddfa gyfreithiol ar ail adolygydd.

## Pedwar persbectif

### Timau cynnyrch a chyflawni

Dim ond rhan o'r ffrwd y mae timau cyflawni yn ei gweld. Ymunwch â sesiynau mapio, rhannwch eich data, ac edrychwch ar yr hyn sy'n digwydd cyn i waith eich cyrraedd ac ar ôl i chi ryddhau. Triniwch amser arweiniol y ffrwd fel nod a rennir, nid eich cam chi yn unig.

### Timau gwasanaeth a gweithrediadau

Yn aml, timau gweithrediadau sy'n dal y ciwiau hiraf: mynediad, cymeradwyaethau, amgylcheddau, cymorth. Byddwch yn agored am eich capasiti a'ch cyfyngiadau. Defnyddiwch y map i ofyn i dimau i fyny'r afon am fewnbynnau cyflawn ac i egluro eich blaenoriaethau.

### Arweinyddiaeth a llywodraethu

Gall arweinwyr dynnu cyfyngiadau trawsdimau na all timau eu tynnu. Enwch berchnogion ffrydiau, gofynnwch am amser arweiniol o un pen i'r llall, ac ymatebwch i'r gwelliannau y mae'r map yn eu hawgrymu. Osgowch ddefnyddio mesurau ffrwd i raddio timau, sy'n digalonni data gonest.

### Cwsmeriaid a defnyddwyr

Mae cwsmeriaid a defnyddwyr yn profi'r ffrwd gyfan. Dywedwch wrth y tîm ble mae'r oedi'n brifo, rhowch wybodaeth gyflawn ar y dechrau, ac ymunwch â sesiwn fapio os gwahoddir chi. Eich barn chi ar pryd yr gorffennodd y cais mewn gwirionedd yw gwir ddiwedd y ffrwd.

## Dulliau methu cyffredin

- **Optimeiddio un tîm.** Nid yw budd lleol yn newid dim o un pen i'r llall. Yn lle hynny, canfyddwch a mynd i'r afael â'r cyfyngiad.
- **Mapio o gof.** Mae'r map yn adlewyrchu'r hyn y mae rheolwyr yn ei gredu. Yn lle hynny, olrheiniwch eitemau go iawn gyda dyddiadau go iawn.
- **Lleisiau coll.** Nid yw cyflenwyr a chymeradwywyr yn yr ystafell. Yn lle hynny, cynhwyswch bob tîm yn y ffrwd.
- **Map a dim newid.** Mae'r poster yn hongian ar y wal. Yn lle hynny, cytunwch ar un neu ddau newid gyda pherchnogion cyn i'r sesiwn ddod i ben.
- **Dim perchennog.** Nid oes neb yn atebol am y ffrwd. Yn lle hynny, enwch berchennog ffrwd ag awdurdod i alw.
- **Mesurau fel graddio.** Mae timau'n cuddio arosiadau. Yn lle hynny, defnyddiwch fesurau i ddeall y ffrwd a'u trafod yn agored.
- **Terfynau sy'n symud.** Codir terfynau WIP pryd bynnag y mae pobl yn segur. Yn lle hynny, daliwch derfynau a thrwsio achosion, fel y mae DORA yn cynghori.
- **Offeryn yn gyntaf.** Prynir dangosfwrdd cyn i'r cwestiynau fod yn hysbys. Yn lle hynny, dechreuwch â map a dynnwyd â llaw ac ychwanegwch offer yn ôl yr angen.

## Model aeddfedrwydd

| Dimensiwn | Cychwyn | Datblygu | Safoni | Rheoli | Cydlynu |
|---|---|---|---|---|---|
| Gweld y ffrwd | Barnir llif ar deimlad | Mae rhai timau'n mapio eu camau eu hunain | Mapir ffrydiau allweddol o un pen i'r llall o eitemau go iawn, gyda phob tîm | Mesurir ac adolygir amser arweiniol, arosiadau a chywirdeb | Mapir a mesurir ffrydiau ar draws sefydliadau a chyflenwyr |
| Gwella llif | Mae timau'n cyflymu eu camau eu hunain | Rhoddir cynnig ar rai newidiadau trawsdimau | Rhestr gwelliannau sy'n canolbwyntio ar gyfyngiadau fesul ffrwd gyda pherchnogion | Clymir gwelliannau wrth amser arweiniol a fesurir a'u gwirio | Mae gwella ffrydiau yn arferol ac yn cael ei rannu ar draws ffrydiau |
| Terfynau a gwelededd | Mae gwaith ar y gweill yn ddiderfyn ac yn gudd | Mae rhai timau'n defnyddio byrddau a therfynau | Mae gwaith yn weladwy ar draws timau gyda therfynau y cytunwyd arnynt | Tiwnir terfynau gan ddefnyddio data amser arweiniol | Cydlynir terfynau a gwelededd ar draws ffrydiau |
| Perchnogaeth a llywodraethu | Nid oes neb yn berchen ar y ffrwd | Mae cydlynwyr anffurfiol yn bodoli | Mae gan bob ffrwd allweddol berchennog a enwir ac adolygiad rheolaidd | Mae perchnogion yn atebol am ganlyniadau a fesurir | Mae perchnogion yn cydweithio ar draws ffrydiau i optimeiddio'r cyfan |

## Rhestr wirio

- [ ] Rydym wedi dewis un ffrwd bwysig a'i mapio o eitemau go iawn.
- [ ] Mae'r map yn dangos amser gweithio ac amser aros ym mhob cam.
- [ ] Cymerodd pobl o bob tîm yn y ffrwd ran yn y mapio.
- [ ] Gwyddom yr amser arweiniol o un pen i'r llall a faint ohono sy'n aros.
- [ ] Rydym wedi nodi'r cyfyngiad a dewis un neu ddau newid.
- [ ] Mae gwaith ar y gweill yn weladwy ar draws timau, gyda therfynau y cytunwyd arnynt ar gamau allweddol.
- [ ] Mae person a enwir yn berchen ar y ffrwd.
- [ ] Mae adolygiad rheolaidd byr yn edrych ar amser arweiniol, arosiadau a'r rhestr gwelliannau.
- [ ] Rydym yn olrhain pa mor aml y mae gwaith yn cyrraedd trosglwyddiad yn anghyflawn.
- [ ] Ni ddefnyddir mesurau ffrwd i raddio timau.

## Anogwyr AI

**Pwrpas: cyfrifo amser arweiniol ac effeithlonrwydd llif o eitemau go iawn.**

```text
Mae gennyf ddata amseru ar gyfer [nifer] o eitemau diweddar yn y ffrwd [enw]. Ar gyfer pob eitem a phob cam mae gennyf y dyddiad y dechreuodd ac y gorffennodd gwaith, a'r dyddiad y cyrhaeddodd y cam: [gludwch dabl gyda dyddiadau go iawn, enwau camau, a'r tîm cyfrifol].

Gan ddefnyddio fy nyddiadau i yn unig, cyfrifwch ar gyfer pob eitem gyfanswm yr amser arweiniol, yr amser gweithio (diwedd minws dechrau ar gyfer pob cam), yr amser aros (cyrraedd cam minws diwedd y cam blaenorol), ac effeithlonrwydd llif (amser gweithio wedi'i rannu ag amser arweiniol). Dangoswch y cyfartaledd a'r ystod ar draws eitemau, a'r tri aros hiraf yn ôl tîm a cham. Peidiwch â dyfeisio rhifau. Os yw dyddiadau ar goll, dywedwch beth i'w gasglu. Rhestrwch yr hyn nad ydych yn siŵr ohono.
```

**Pwrpas: cynllunio gweithdy mapio ffrwd werth.**

```text
Cynlluniwch weithdy mapio ffrwd werth 2 awr ar gyfer y ffrwd [enw].

Cyfranogwyr: [rolau a thimau].
Data i'w ddod (dyddiadau go iawn ar gyfer [nifer] o eitemau diweddar): [disgrifiwch beth sy'n bodoli].
Cyfyngiadau: [er enghraifft o bell].

Darparwch agenda amseredig: cytuno ar ddechrau a diwedd y ffrwd, cerdded drwy eitemau go iawn, marcio camau gydag amser gweithio ac amser aros, cofnodi ail-wneud a throsglwyddiadau anghyflawn, nodi'r cyfyngiad, tynnu llun cyflwr dyfodol, a chytuno ar un neu ddau newid gyda pherchnogion a dyddiadau. Cynhwyswch anogwyr i gadw'r sgwrs ar y system. Cadwch ef yn rhydd o unrhyw offeryn penodol. Gofynnwch gwestiynau eglurhaol yn gyntaf, a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

**Pwrpas: dadansoddi ansawdd trosglwyddo rhwng dau dîm.**

```text
Mae Timau A a B yn trosglwyddo gwaith i'w gilydd yn y ffrwd [enw]. Dyma enghreifftiau o eitemau a ddaeth yn ôl i'w hail-wneud neu am wybodaeth, gyda'r rheswm: [gludwch, un i bob llinell].

Grwpiwch y rhesymau yn gategorïau gan ddefnyddio'r testun yn unig. Cyfrifwch eitemau fesul categori o'm rhestr. Ar gyfer y ddau gategori uchaf, awgrymwch eitem ar gyfer rhestr wirio trosglwyddo y gallai tîm A ei defnyddio, a chwestiwn i dîm B. Peidiwch â dod i gasgliadau am achosion y tu hwnt i'r testun. Rhestrwch yr hyn nad ydych yn siŵr ohono.
```

**Pwrpas: dylunio treial terfyn gwaith ar y gweill.**

```text
Dyluniwch dreial pedair wythnos o derfynau gwaith ar y gweill ar gyfer [tîm] yn gweithio yn [ffrwd neu gam].

Eitemau cyfredol ar y gweill fesul person neu gam: [gludwch gyfrifon go iawn].
Data amser arweiniol sydd gennym: [disgrifiwch].
Capasiti, mewn pobl: [nifer].

Cynigiwch derfynau ar gyfer pob cam yn seiliedig ar gapasiti, sut i ddangos gwaith ac oed ar fwrdd, rheolau ar gyfer tynnu gwaith, beth i'w wneud pan fo rhywun yn segur (heb godi terfynau), beth i'w fesur (gadewch dargedau fel [i'w cytuno]), a beth fyddai'n gwneud i ni stopio. Gofynnwch gwestiynau eglurhaol yn gyntaf, marciwch ragdybiaethau, a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

## Sgiliau AI

- [value-stream-map](../../../../skills/value-stream-map/SKILL.md): defnyddiwch i fapio ffrwd, cofnodi amseroedd a chanfod y cyfyngiad.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md): defnyddiwch i astudio sut mae gwaith yn symud rhwng rolau a ble mae'n aros.
- [kanban](../../../../skills/kanban/SKILL.md): defnyddiwch i sefydlu delweddu a therfynau gwaith ar y gweill ar gyfer y ffrwd.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md): defnyddiwch i ddeall beth sy'n llifo i'r ffrwd ac ym mha gyfaint.
- [portfolio-management](../../../../skills/portfolio-management/SKILL.md): defnyddiwch i benderfynu pa ffrydiau a mentrau sy'n haeddu buddsoddiad.

(Mae'r sgiliau eu hunain wedi'u hysgrifennu yn Saesneg.)

## Prif ffynonellau

- **Value-stream mapping** (Wikipedia): y diffiniad o fapiau cyflwr presennol a chyflwr dyfodol a phwyntydd at *Learning to See*.
- **Work in process limits** (DORA, dora.dev): arweiniad ar osod a dal terfynau ac ar osgoi optimeiddio lleol.
- **The Kanban Guide** (kanbanguides.org): diffiniadau o'r pedwar mesur llif.
- **Lean software development** (Wikipedia): y gwastraffau a'r egwyddorion y tu ôl i feddwl ffrwd werth.

Mae'r ffynonellau hyn yn Saesneg.

## Cyfeiriadau

1. Value-stream mapping — Wikipedia — https://en.wikipedia.org/wiki/Value-stream_mapping
2. Work in process limits — DORA, dora.dev — https://dora.dev/capabilities/wip-limits/
3. Continuous delivery — DORA, dora.dev — https://dora.dev/capabilities/continuous-delivery/
4. The Kanban Guide — John Coleman, Daniel Vacanti, and contributors, kanbanguides.org — https://kanbanguides.org/english/
5. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
6. Lean manufacturing — Wikipedia — https://en.wikipedia.org/wiki/Lean_manufacturing
7. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
8. Theory of constraints — Wikipedia — https://en.wikipedia.org/wiki/Theory_of_constraints
9. Value chain — Wikipedia — https://en.wikipedia.org/wiki/Value_chain
