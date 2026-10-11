# Rheoli Cyfluniad

**Mae rheoli cyfluniad yn cadw darlun cywir, defnyddiadwy o rannau gwasanaeth a sut maent yn perthyn. Ei ffurf fodern yw cofnod a adeiladwyd o god a darganfod yr ymddiriedir ynddo oherwydd bod y system ei hun yn ei gadw'n gyfredol.**

## Pam mae hyn yn bwysig

Pan fydd rhywbeth yn torri, mae'r cwestiynau cyntaf bob amser yr un peth. Beth yw'r gydran hon? Â beth mae'n cysylltu? Beth newidiodd? Pwy sy'n berchen arni? Os yw'r atebion yn cymryd awr i'w canfod, mae digwyddiad y gellid fod wedi'i drwsio mewn munudau yn llusgo ymlaen. Pan gynllunir newid, mae'r un cwestiynau'n penderfynu a ydych yn deall y risg. Mae darlun da o'r gwasanaeth a'i rannau yn un o'r pethau mwyaf defnyddiol y gall tîm gweithrediadau ei gael.

Mae hefyd yn un o'r anoddaf i'w gadw'n wir. Mae dogfennau o'r seilwaith, a dynnwyd unwaith, wedi dyddio o fewn wythnosau. Mae cronfeydd data o gydrannau, a gynhelir â llaw, yn anghywir mewn ffyrdd na all neb eu gweld. Mae ffyrdd ystwyth a chwmwl o weithio yn gwneud hyn yn waeth mewn un ffordd, gyda llawer o rannau bach sy'n newid yn gyflym, ac yn well mewn ffordd arall, oherwydd y gellir ysgrifennu cyfluniad fel cod, ei storio mewn rheoli fersiynau, a'i gymhwyso'n awtomatig.

Mae erthygl Wikipedia Saesneg ar reoli cyfluniad yn ei ddisgrifio fel proses reoli ar gyfer sefydlu a chynnal cysondeb rhwng priodoleddau cynnyrch a'i ofynion, ei ddyluniad a'i wybodaeth weithredol dros ei oes, gyda gwreiddiau yn Adran Amddiffyn yr UD yn y 1950au. Mae'r erthygl ar gronfeydd data rheoli cyfluniad yn disgrifio'r term ITIL am y storfa o eitemau cyfluniad a'u perthnasoedd. Mae'r erthygl ar seilwaith fel cod yn disgrifio rheoli adnoddau trwy ffeiliau diffiniad darllenadwy gan beiriant. Rhyngddynt maent yn rhoi'r golwg draddodiadol a'r un fodern, ac mae'r pwnc hwn yn eu cysylltu.

## Cysyniadau craidd

### Rheoli cyfluniad yn gyffredinol

Yn ôl Wikipedia, defnyddir rheoli cyfluniad (configuration management, CM) mewn systemau milwrol, mewn rheoli gwasanaethau TG o dan ITIL, ac mewn peirianneg sifil. Mae ei hanes yn dechrau gydag Adran Amddiffyn yr UD yn y 1950au fel disgyblaeth dechnegol ar gyfer caledwedd, gyda safonau milwrol ar ddiwedd y 1960au a'r 1970au yn ei wneud yn ddisgyblaeth ynddi ei hun. Mae'r erthygl yn enwi sawl safon, gan gynnwys ANSI/EIA-649, ISO 10007 (argraffiad 2017), ac IEEE 828-2012. Y disgyblaethau craidd y mae'n eu rhestru, o lawlyfrau milwrol a'r safon EIA, yw:

| Disgyblaeth | Beth mae'n ei wneud |
|---|---|
| **Cynllunio a rheoli** | Cynllun sy'n cwmpasu pobl, hyfforddiant, cynllun enwi, archwiliadau a gofynion gwerthwyr |
| **Adnabod cyfluniad (Configuration identification)** | Gosod a chynnal llinellau sylfaen sy'n diffinio pensaernïaeth a chydrannau; yr eitemau a olrheinir yw **eitemau cyfluniad (CIs)** |
| **Rheolaeth cyfluniad (Configuration control)** | Gwerthuso ceisiadau newid a'u cymeradwyo neu eu gwrthod |
| **Cyfrifo statws cyfluniad (Configuration status accounting)** | Cofnodi ac adrodd disgrifiadau CI a gwyriadau oddi wrth y llinell sylfaen |
| **Dilysu ac archwilio** | Gwiriadau annibynnol bod y system yn cyfateb i'w dogfennaeth a'i gofynion |

**Llinell sylfaen (baseline)** yw pwynt cyfeirio y cytunwyd arno; unwaith y bydd priodoledd wedi'i seilio, mae newidiadau'n mynd trwy reolaeth ffurfiol, yn cael eu gwerthuso, eu cymeradwyo, ac yna eu hail-seilio. Mae'r erthygl yn gwahaniaethu rheoli cyfluniad oddi wrth reoli asedau, sy'n canolbwyntio ar gyfrifyddu ariannol a gwerth asedau TG (gweler Pwnc 4.1 — Rheoli Asedau TG).

### Rheoli cyfluniad meddalwedd

Mae'r erthygl yn disgrifio rheoli cyfluniad meddalwedd fel nodi priodoleddau meddalwedd ar wahanol bwyntiau a rheoli newidiadau i gynnal cywirdeb ac olrheiniadwyedd, gyda'r un pedair gweithdrefn o adnabod, rheoli, cyfrifo statws ac archwiliadau. Enghreifftiau modern yw systemau rheoli fersiynau, offer adeiladu a chofnodion rhyddhau.

### Y gronfa ddata rheoli cyfluniad

Mae Wikipedia yn disgrifio **cronfa ddata rheoli cyfluniad (CMDB)** fel term ITIL am gronfa ddata sy'n storio gwybodaeth am asedau caledwedd a meddalwedd sefydliad, y CIs, a'r berthynas rhyngddynt. Mae'n "represents the authorized configuration of the significant components of the IT environment." Pwyntiau allweddol o'r erthygl:

- **Mae gan CIs briodoleddau** fel dynodwr, enwau, disgrifiadau, perchnogaeth a phwysigrwydd, a all fod yn gannoedd.
- **Mae perthnasoedd** fel arfer yn cysylltu CI ffynhonnell â CI targed. Mae perthnasoedd mwy datblygedig yn ychwanegu disgrifydd, fel cronfa ddata yn gydran o gymhwysiad.
- **Ffedereiddio:** mae gweithrediadau'n aml yn ffedereiddio data o ffynonellau fel rheoli asedau, fel bod pob ffynhonnell yn cadw rheolaeth ar ei data; mae'r erthygl yn cyferbynnu hyn â chopïo data i'r CMDB.
- **Defnyddiau:** dadansoddi effaith, dadansoddi gwraidd achos, rheoli newid, rheoli digwyddiadau, rhestr eiddo ac adeiladu.
- **Mathau o CI:** caledwedd, meddalwedd, cyfathrebu a rhwydweithiau, lleoliad, dogfennaeth a phobl; mae sefydliadau aeddfed yn ychwanegu mathau busnes fel cynhyrchion a gwerthwyr.
- **Heriau:** perthnasedd (casglu data ar draws cylch bywyd pob CI), cynnal a chadw (cadw ansawdd data'n uchel, sydd angen sawl rôl arbenigol), a defnyddioldeb (mae CMDBs yn aml yn gronfeydd data plaen heb ddelweddu, felly efallai y bydd angen haen cymhwysiad arall).

Mae'r erthygl yn enwi darganfod awtomatig CIs ac olrhain newid fel ffactorau llwyddiant allweddol. Nid yw'n datgan dyddiad sefydlu, fersiwn ITIL benodol, na data mabwysiadu, ac mae wedi'i baneru fel un sydd angen mwy o gyfeiriadau. Mae hefyd yn dweud i ITIL ailenwi'r broses yn Service Asset and Configuration Management yn fersiwn 3 ITIL (daw hyn o'r erthygl rheoli cyfluniad).

### Seilwaith fel cod

Mae'r erthygl ar seilwaith fel cod yn disgrifio'r arfer o reoli a darparu adnoddau canolfan ddata trwy ffeiliau diffiniad darllenadwy gan beiriant, yn hytrach na thrwy sefydlu â llaw neu offer rhyngweithiol, gyda diffiniadau wedi'u cadw mewn rheoli fersiynau. Mae'n gwahaniaethu:

- Dulliau **datganiadol (Declarative)**, sy'n disgrifio'r cyflwr terfynol dymunol ac yn gadael i'r system weithio allan y camau, a dulliau **gorchmynnol (imperative)**, sy'n nodi gorchmynion mewn trefn. Mae'r erthygl yn dweud bod IaC yn amlach yn defnyddio diffiniadau datganiadol.
- Dulliau **gwthio (Push)**, lle mae system reoli yn anfon cyfarwyddiadau at weinyddion, a dulliau **tynnu (pull)**, lle mae gweinyddion yn adfer eu cyfarwyddiadau eu hunain.

Mae'n enwi llawer o offer o CFEngine (1993) i Terraform, Ansible, Puppet, Chef, Pulumi ac OpenTofu, ac yn cysylltu'r arfer â DevOps trwy gynnwys datblygwyr mewn cyfluniad a dod â gweithrediadau i mewn yn gynharach. Mae ei honiadau manteision, ar gost, cyflymder a llai o wall dynol, wedi'u tagio fel rhai sydd angen cyfeiriadau. Mae'n dyfynnu adroddiad 2020 gan Unit 42 a ganfu tua 200,000 o wendidau posibl mewn templedi IaC, atgof y gall cod gario diffygion hefyd. Nid yw'r erthygl yn crybwyll drifft cyfluniad na idempotens.

### Cyfluniad datganedig a darganfyddedig

Ffordd ddefnyddiol o feddwl am reoli cyfluniad modern yw bod dwy ffynhonnell gwirionedd, ac mae'r gwerth yn gorwedd yn eu cymharu:

| Ffynhonnell | Beth mae'n ei ddweud | Cryfder | Gwendid |
|---|---|---|---|
| **Datganedig** (cod, diffiniadau mewn rheoli fersiynau) | Beth rydym yn bwriadu i'r system fod | Gellir ei adolygu, wedi'i fersiynu, ailadroddadwy | Efallai nad yw'n cyfateb i'r hyn sy'n rhedeg |
| **Darganfyddedig** (sganiau, APIs cwmwl, asiantau) | Beth sy'n bodoli nawr | Yn adlewyrchu realiti | Nid yw'n dweud beth a fwriedir na pham |

Gall CMDB a fwydir gan y ddau ddangos **drifft (drift)**, y gwahaniaeth rhwng cyflwr bwriadedig a gwirioneddol. Nid yw'r ffynonellau a ddarllenwyd ar gyfer y canllaw hwn yn defnyddio'r gair, ond mae'n enwi'r broblem y bwriedir i ddisgyblaethau CM cyfrifo statws ac archwilio ei dal.

### Rheoli cyfluniad a newid

Mae rheolaeth cyfluniad a galluogi newid yn bartneriaid agos (gweler Pwnc 3.4 — Galluogi Newid). Mae disgyblaethau CM yn dweud bod newidiadau i eitemau sydd wedi'u seilio yn cael eu gwerthuso a'u cymeradwyo. Mewn trefniant sy'n seiliedig ar biblinell, caiff newid i'r cod sy'n diffinio'r seilwaith ei adolygu a'i brofi fel unrhyw god arall, ac mae cofnod y biblinell yn dangos pwy a newidiodd beth a phryd. Mae'r CMDB neu ei gywerth wedyn yn adlewyrchu'r canlyniad.

### Defnyddiau mewn rheoli gwasanaethau

Mae'r perthnasoedd a gofnodir yn y data cyfluniad yn ateb cwestiynau ar draws yr arferion eraill:

- **Digwyddiadau:** beth sy'n dibynnu ar y gydran sy'n methu hon, a phwy sy'n berchen arni (gweler Pwnc 3.2 — Rheoli Digwyddiadau)?
- **Problemau:** pa gydrannau oedd yn gysylltiedig â digwyddiadau ailadroddus (gweler Pwnc 3.3 — Rheoli Problemau)?
- **Newidiadau:** beth yw radiws ffrwydrad y newid hwn?
- **Parhad:** beth sy'n rhaid ei adfer, ac ym mha drefn (gweler Pwnc 3.12 — Rheoli Parhad Gwasanaeth)?
- **Diogelwch:** beth sydd wedi'i amlygu, a beth sydd wedi newid?

### Terfynau'r ffynonellau

Mae'r erthygl rheoli cyfluniad wedi'i baneru fel un a all fod angen ei hailysgrifennu ac yn dweud ychydig am weithredu ymarferol. Nid oes gan yr erthygl CMDB adran feirniadaethau ac ychydig o gyfeiriadau. Profiad yn y maes yw bod CMDBs yn aml yn methu trwy geisio dal gormod, yn rhy gywir, am ormod o amser. Triniwch hynny fel profiad ymarferol y mae'r canllaw hwn yn ei gynnig, nid canfyddiad o'r ffynonellau.

## Arferion gorau

1. **Dechreuwch o'r cwestiynau y mae angen i chi eu hateb.** Rhestrwch y cwestiynau y mae ymatebwyr digwyddiadau, adolygwyr newid a chynllunwyr parhad yn eu gofyn, fel "beth sy'n dibynnu ar hyn?" a "pwy sy'n berchen arno?" Cofnodwch yr hyn sy'n eu hateb yn unig.
2. **Diffiniwch set fach o fathau o eitemau cyfluniad.** Dechreuwch â gwasanaethau, cymwysiadau, gwesteiwyr neu gynwysyddion, cronfeydd data, a dibyniaethau allanol allweddol. Ychwanegwch fathau pan fydd cwestiwn yn mynnu hynny.
3. **Cofnodwch berthnasoedd, nid eitemau yn unig.** Cofnodwch pa eitemau sy'n dibynnu ar ba rai a pha wasanaeth y maent yn ei gefnogi. Mae perthnasoedd yn gwneud y data'n ddefnyddiol ar gyfer dadansoddi effaith.
4. **Enwch berchennog ar gyfer pob eitem.** Mae eitem heb berchennog yn risg. Gwnewch berchnogaeth yn rhan o sut y crëir eitemau.
5. **Cadwch y cyfluniad bwriadedig mewn rheoli fersiynau.** Mynegwch seilwaith a chyfluniad fel cod, adolygwch ef fel cod arall, a gadewch i'r biblinell ei gymhwyso. Mae'r ystorfa wedyn yn gofnod o fwriad a hanes.
6. **Defnyddiwch ddarganfod i ganfod realiti.** Sganiwch rwydweithiau a chyfrifon cwmwl i weld beth sy'n bodoli, a chymharwch ef â'r cyfluniad datganedig. Ymchwiliwch i wahaniaethau (drifft) yn hytrach na'u hanwybyddu.
7. **Ffedereiddiwch yn lle copïo lle gallwch.** Gadewch i bob ffynhonnell data (cofrestr asedau, cyfrifon cwmwl, offer defnyddio) fod yn berchen ar ei ffeithiau, a chysylltwch â hwy o'r data cyfluniad, fel y mae'r erthygl CMDB yn ei ddisgrifio.
8. **Awtomeiddiwch ddiweddariadau.** Bwydwch y data cyfluniad o'r biblinell ac o ddarganfod fel ei fod yn newid wrth i'r system newid. Bydd diweddariadau â llaw yn disgyn ar ei hôl hi.
9. **Seiliwch yr hyn sy'n bwysig.** Ar gyfer gwasanaethau hanfodol, cofnodwch y cyfluniad cymeradwy a chymhwyswch reolaeth newid ffurfiol i wyriadau oddi wrtho. Ar gyfer y gweddill, mae rheolaeth ysgafnach yn ddigon.
10. **Archwiliwch yn rheolaidd.** Cymharwch y data â realiti ar gyfer sampl o eitemau bob chwarter, a thrwsiwch y broses y tu ôl i unrhyw wahaniaeth. Dyma'r ddisgyblaeth dilysu ac archwilio ar waith.
11. **Gwnewch y data'n hawdd ei ddefnyddio.** Darparwch ddelweddu a chwilio ar gyfer ymatebwyr a chynllunwyr, oherwydd ni fydd data na ellir ei ddarllen yn gyflym yn cael ei ddefnyddio.
12. **Cadwch ddiogelwch mewn golwg.** Triniwch god cyfluniad fel un sensitif, sganiwch dempledi am wendidau, a rheolwch pwy all newid y llinell sylfaen. Mae ffigur Unit 42 yn yr erthygl seilwaith fel cod yn atgof o'r risg.

## Cwestiynau i'w trafod gyda'ch tîm

**Pan fydd digwyddiad yn digwydd, faint o amser mae'n ei gymryd i ni ganfod beth sy'n dibynnu ar y gydran sy'n methu?**

Edrychwch ar y digwyddiad diwethaf a'r amser a dreuliwyd ar y cwestiwn hwn. Gofynnwch o ble y daeth yr ateb: diagram, person, chwiliad. Gall yr hwylusydd ofyn beth fyddai wedi arbed y mwyaf o amser. Yn aml mae'n rhestr o ddibyniaethau a pherchnogion ar gyfer y gwasanaethau pwysicaf. Cytunwch i gynhyrchu un ar gyfer un gwasanaeth.

**Ble mae ein seilwaith wedi'i ddiffinio, ac a yw hynny'n cyfateb i'r hyn sy'n rhedeg?**

Gofynnwch a yw'r prif amgylcheddau wedi'u hadeiladu o god a pha mor aml y mae rhywun yn eu newid â llaw. Chwiliwch am wahaniaethau. Os nad ydych yn gwybod, cynlluniwch gymhariaeth ar gyfer un amgylchedd. Trafodwch sut i atal newidiadau â llaw neu eu canfod yn gyflym.

**Pa eitemau yn ein cofnodion cyfluniad sydd heb berchennog neu heb eu cadarnhau yn ddiweddar?**

Cymerwch sampl a chyfrwch. Gofynnwch pam eu bod yn y cyflwr hwnnw: dim proses ar gyfer perchnogion, dim atgoffa, dim canlyniad. Trafodwch fecanwaith ysgafn, fel cadarnhad blynyddol neu dag perchennog gofynnol wrth greu. Dewiswch un.

**Pa ddata ydym ni'n ei gadw nad oes neb yn ei ddefnyddio?**

Rhestrwch y meysydd a'r mathau o gofnodion a gofynnwch pwy a'u defnyddiodd yn y chwarter diwethaf. Mae'r erthygl CMDB yn enwi cynnal a chadw fel her graidd, ac mae data nas defnyddir yn gost heb fudd. Tynnwch neu rhowch y gorau i gynnal yr hyn nad oes neb yn ei ddefnyddio.

**Beth fyddai angen i ni ei weld er mwyn cymeradwyo newid i wasanaeth hanfodol yn hyderus?**

Gofynnwch i'r adolygwyr. Atebion nodweddiadol: beth mae'r newid yn ei gyffwrdd, beth sy'n dibynnu arno, beth a wnaeth y tro diwethaf. Gofynnwch pa rai o'r rhain y gall y data cyfluniad eu rhoi. Dewiswch un darn coll i'w ychwanegu.

**Pwy a gaiff newid llinell sylfaen ein gwasanaethau hanfodol, a sut ydym ni'n gwybod pan fyddant yn gwneud hynny?**

Gofynnwch am y rhestr ac am y dystiolaeth o newidiadau. Trafodwch a ganfyddir newidiadau y tu allan i'r biblinell. Cytunwch ar sut y caiff drifft ei ganfod a phwy sy'n gweithredu.

## Yn ymarferol: enghraifft o ITIL ystwyth

Mae asiantaeth dreth genedlaethol yn rhedeg 120 o gymwysiadau a chymysgedd o weinyddion ar y safle a gwasanaethau cwmwl. Mae tîm o chwech o beirianwyr gweithrediadau yn cynnal CMDB a lwythwyd o daenlen dair blynedd yn ôl. Yn ystod digwyddiad mawr ar y porth ffeilio, mae'r peirianwyr yn darganfod bod y CMDB yn rhestru gweinydd cronfa ddata a ymddeolwyd flwyddyn ynghynt ac yn hepgor y cydbwysydd llwyth a fethodd mewn gwirionedd. Mae'r digwyddiad yn cymryd tair awr yn hirach i'w ddatrys oherwydd ei fod yn cymryd cymaint â hynny o amser i weithio allan ar beth mae'r porth yn dibynnu.

Mae pennaeth gweithrediadau a pheiriannydd yn adolygu pa gwestiynau y mae ymatebwyr yn eu gofyn. Maent yn culhau cwmpas y CMDB i wasanaethau, cymwysiadau, prif gydrannau seilwaith y tu ôl iddynt, a dibyniaethau allanol allweddol, ac yn gollwng mathau gwerth isel. Symudir seilwaith y porth ffeilio i god mewn rheoli fersiynau, ac mae'r biblinell yn ysgrifennu cofnod o bob cydran a ddefnyddir i'r CMDB. Mae sgan darganfod o'r rhwydwaith a'r cyfrifon cwmwl yn rhedeg bob nos, ac mae adroddiad yn rhestru gwahaniaethau rhwng y data datganedig a darganfyddedig. Mae gan bob eitem faes perchennog, y mae'r adroddiad hefyd yn ei wirio. Adeiledir golwg dibyniaethau syml ar gyfer y porth ffeilio o'r data.

Chwarter yn ddiweddarach, mae golwg dibyniaethau'r porth yn ddigon cywir i'r tîm digwyddiadau nesaf ei ddefnyddio yn y deng munud cyntaf. Mae'r adroddiad gwahaniaethau nosweithiol yn canfod 14 gweinydd heb eu rheoli, y rhan fwyaf ohonynt wedi'u hymddeol neu wedi'u hawlio gan berchnogion. Erys problemau. Mae gwasanaethau y tu allan i'r porth ffeilio yn dal i ddibynnu ar yr hen ddata, ac mae un tîm yn parhau i wneud newidiadau â llaw i weinydd cronfa ddata y mae'r biblinell wedyn yn ei drosysgrifo, gan achosi toriad byr. Mae pennaeth gweithrediadau yn ymestyn y dull i'r tri gwasanaeth nesaf, yn ychwanegu rheol bod newidiadau cynhyrchu yn mynd trwy'r biblinell, ac yn gofyn i'r adroddiad darganfod nodi newidiadau â llaw.

## Pedwar persbectif

### Timau cynnyrch a chyflawni

Mae timau cyflawni'n diffinio cyfluniad trwy god. Rhowch seilwaith a gosodiadau mewn rheoli fersiynau, adolygwch hwy, a gadewch i'r biblinell eu cymhwyso. Tagiwch adnoddau gyda pherchennog a gwasanaeth, a disgrifiwch ddibyniaethau yn yr ystorfa neu'r cofnod gwasanaeth.

### Timau gwasanaeth a gweithrediadau

Mae timau gweithrediadau'n defnyddio ac yn cynnal y data cyfluniad. Cadwch y cwmpas yn fach, cymharwch gyfluniad datganedig a darganfyddedig, a dilynwch ddrifft. Bwydwch yr hyn a ddysgwch o ddigwyddiadau yn ôl i'r mathau a'r perthnasoedd rydych yn eu cofnodi.

### Arweinyddiaeth a llywodraethu

Mae arweinwyr yn penderfynu faint o ymdrech y mae data cyfluniad yn ei haeddu. Gofynnwch pa benderfyniadau y mae'n eu cefnogi, fel dadansoddi effaith a chynllunio parhad, a barnwch yn ôl defnydd. Osgowch ariannu cronfa ddata enfawr er ei mwyn ei hun. Cefnogwch y rheolaethau piblinell sy'n cadw cofnodion yn wir.

### Cwsmeriaid a defnyddwyr

Mae cwsmeriaid a defnyddwyr yn elwa pan ddatrysir digwyddiadau yn gynt a phan fo newidiadau'n torri llai, y mae data cyfluniad da yn helpu. Anaml y gwelant y data. Gofynnwch i ddarparwyr sut maent yn gwybod beth mae newid yn ei effeithio a sut maent yn canfod achos toriad.

## Dulliau methu cyffredin

- **Ceisio cofnodi popeth.** Mae'r data'n rhy fawr i'w gadw'n wir. Yn lle hynny, dechreuwch o'r cwestiynau a'r gwasanaethau hanfodol.
- **Cynnal â llaw.** Mae cofnodion yn disgyn ar ôl. Yn lle hynny, bwydwch ddata o'r biblinell ac o ddarganfod.
- **Dim perthnasoedd.** Rhestrir eitemau ond nid ydynt wedi'u cysylltu. Yn lle hynny, daliwch ddibyniaethau a'r gwasanaeth y mae pob eitem yn ei gefnogi.
- **Dim perchnogion.** Nid oes neb yn cadarnhau nac yn trwsio cofnodion. Yn lle hynny, mynnwch berchennog a gwiriwch yn rheolaidd.
- **Newidiadau â llaw y tu allan i'r biblinell.** Mae realiti a bwriad yn drifftio ar wahân. Yn lle hynny, llwybrwch newidiadau trwy'r biblinell a chanfod drifft.
- **Data annarllenadwy.** Ni all ymatebwyr ddefnyddio'r gronfa ddata. Yn lle hynny, darparwch chwilio a delweddu.
- **Copïo yn lle ffedereiddio.** Mae data dyblyg yn mynd yn hen. Yn lle hynny, cysylltwch â'r ffynhonnell sy'n berchen ar y ffeithiau.
- **Trin cod cyfluniad fel un diniwed.** Mae templedi'n cario gwendidau. Yn lle hynny, sganiwch ac adolygwch hwy.

## Model aeddfedrwydd

| Dimensiwn | Cychwyn | Datblygu | Safoni | Rheoli | Cydlynu |
|---|---|---|---|---|---|
| Cwmpas a pherthnasoedd | Gwyddys cydrannau'n anffurfiol | Mae gan rai gwasanaethau restrau cydrannau | Cofnodir eitemau, perchnogion a dibyniaethau ar gyfer gwasanaethau allweddol | Mesurir cwmpas a chywirdeb a chaeir bylchau | Mae data cyfluniad yn ymestyn ar draws timau, cymylau a chyflenwyr |
| Cyfluniad datganedig | Cyflunir systemau â llaw | Mae rhai amgylcheddau'n defnyddio cod | Mae seilwaith a chyfluniad ar gyfer gwasanaethau allweddol yn god mewn rheoli fersiynau | Olrheinir hanes newid a drifft | Rhennir ac ailddefnyddir cod cyfluniad ar draws timau |
| Darganfod a dilysu | Tybir realiti | Rhedir sganiau achlysurol | Cymherir darganfod rheolaidd â data datganedig | Mesurir a lleihir gwahaniaethau a'u hachosion | Awtomeiddir darganfod a dilysu ar draws y sefydliad |
| Defnyddio'r data | Anaml yr ymgynghorir â'r data | Fe'i defnyddir mewn rhai digwyddiadau | Fe'i defnyddir yn rheolaidd ar gyfer digwyddiadau, newidiadau a chynllunio parhad | Mesurir defnydd a budd a gwellir y data | Mae data'n cefnogi penderfyniadau ar draws y sefydliad a gyda phartneriaid |

## Rhestr wirio

- [ ] Rydym wedi rhestru'r cwestiynau y mae ein hymatebwyr a'n hadolygwyr angen data cyfluniad i'w hateb.
- [ ] Rydym yn cofnodi set fach o fathau o eitemau gyda pherchnogion a pherthnasoedd.
- [ ] Mae seilwaith a chyfluniad ar gyfer gwasanaethau allweddol mewn rheoli fersiynau.
- [ ] Mae newidiadau cynhyrchu i'r gwasanaethau hynny yn mynd trwy'r biblinell.
- [ ] Cymherir canlyniadau darganfod â chyfluniad datganedig ar amserlen.
- [ ] Ymchwilir i wahaniaethau (drifft) a'u trwsio.
- [ ] Bwydir cofnodion yn awtomatig o'r biblinell a darganfod lle bo modd.
- [ ] Archwilir sampl o gofnodion yn erbyn realiti bob chwarter.
- [ ] Gall ymatebwyr chwilio a delweddu'r data yn hawdd.
- [ ] Adolygir a sganir cod cyfluniad am wendidau.

## Anogwyr AI

**Pwrpas: penderfynu beth i'w gofnodi trwy restru'r cwestiynau y mae angen i chi eu hateb.**

```text
Helpwch fi i benderfynu pa ddata cyfluniad i'w gofnodi ar gyfer [gwasanaeth].

Y cwestiynau y mae ymatebwyr ac adolygwyr newid yn eu gofyn, yn ein geiriau ni: [rhestrwch].
Beth rydym yn ei gofnodi heddiw: [disgrifiwch, neu ysgrifennwch "dim byd"].
Ble mae data'n byw (offer, ystorfeydd, cyfrifon cwmwl): [rhestrwch].

Ar gyfer pob cwestiwn, dywedwch pa fathau o eitemau a pherthnasoedd fyddai eu hangen i'w ateb, o ble y gallai'r data ddod yn awtomatig, a beth fyddai'n dal angen person. Cynigiwch set leiaf o fathau o eitemau a meysydd. Marciwch ddyfaliadau. Peidiwch â dyfeisio offer nad oes gennym. Gofynnwch gwestiynau eglurhaol yn gyntaf, a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

**Pwrpas: crynhoi drifft rhwng cyfluniad datganedig a darganfyddedig.**

```text
Dyma restr o eitemau a ganfuwyd gan ddarganfod a rhestr o eitemau a ddatganwyd yn ein cod neu gofnodion cyfluniad.

Darganfyddedig: [gludwch enwau neu IDau, gyda math a phriodoleddau allweddol].
Datganedig: [gludwch enwau neu IDau, gyda math a phriodoleddau allweddol].

Gan ddefnyddio'r rhestrau hyn yn unig, nodwch eitemau a ganfuwyd ond na ddatganwyd, eitemau a ddatganwyd ond na ganfuwyd, ac eitemau lle mae priodoleddau'n wahanol. Grwpiwch hwy ac awgrymwch gwestiwn i'w ofyn am bob grŵp (er enghraifft a yw wedi'i ymddeol, ym meddiant rhywun arall, neu wedi'i greu â llaw). Peidiwch â dyfalu'r achos. Rhestrwch yr hyn nad ydych yn siŵr ohono.
```

**Pwrpas: adeiladu golwg dibyniaethau ar gyfer un gwasanaeth.**

```text
Helpwch fi i ddisgrifio dibyniaethau [gwasanaeth] fel y gall ymatebwyr eu defnyddio mewn digwyddiad.

Beth mae'r gwasanaeth yn ei wneud: [disgrifiwch].
Cydrannau rwy'n eu hadnabod (cymwysiadau, cronfeydd data, rhwydwaith, gwasanaethau cwmwl, cyflenwyr allanol): [rhestrwch gyda sut maent yn cysylltu].
Perchnogion rwy'n eu hadnabod: [rhestrwch].

Cynhyrchwch ddiagram testun syml a thabl gyda: cydran, yr hyn sy'n dibynnu arni, perchennog (neu "anhysbys"), a beth i'w wirio yn gyntaf os yw'n methu (o'm testun i yn unig; fel arall "gofynnwch i'r perchennog"). Amlygwch bwyntiau methiant sengl sy'n ymddangos yn fy nisgrifiad. Peidiwch â dyfeisio cydrannau. Gofynnwch gwestiynau eglurhaol yn gyntaf, a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

**Pwrpas: cynllunio archwiliad chwarterol o gofnodion cyfluniad.**

```text
Cynlluniwch archwiliad awr o hyd chwarterol o'n cofnodion cyfluniad ar gyfer [cwmpas].

Sut mae cofnodion yn cael eu creu a'u diweddaru heddiw: [disgrifiwch].
Maint sampl y gallwn ei drin: [nifer].

Rhowch ddull: sut i ddewis sampl, sut i wirio pob eitem yn erbyn realiti, beth i'w gofnodi, sut i gyfrifo'r gyfran sy'n gywir (o ganlyniadau'r archwiliad yn unig), a sut i droi gwallau yn atgyweiriadau proses. Cadwch ef yn rhydd o offer. Gofynnwch gwestiynau eglurhaol yn gyntaf, nodwch ragdybiaethau, a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

## Sgiliau AI

- [configuration-management](../../../../skills/configuration-management/SKILL.md): defnyddiwch i gynllunio beth i'w gofnodi, sut i'w gadw'n wir, a sut i'w ddefnyddio.
- [change-request](../../../../skills/change-request/SKILL.md): defnyddiwch i ysgrifennu cofnodion newid sy'n cyfeirio at yr eitemau yr effeithir arnynt.
- [runbook](../../../../skills/runbook/SKILL.md): defnyddiwch i droi gwybodaeth cyfluniad yn gamau y gall ymatebwyr eu dilyn.
- [enterprise-architecture](../../../../skills/enterprise-architecture/SKILL.md): defnyddiwch i osod gwasanaethau, cymwysiadau a seilwaith mewn darlun pensaernïol.
- [evolutionary-architecture](../../../../skills/evolutionary-architecture/SKILL.md): defnyddiwch i gadw cyfluniad a dyluniad yn newid yn ddiogel dros amser.

(Mae'r sgiliau eu hunain wedi'u hysgrifennu yn Saesneg.)

## Prif ffynonellau

- **Configuration management** (Wikipedia): hanes, disgyblaethau craidd, llinellau sylfaen a safonau rheoli cyfluniad.
- **Configuration management database** (Wikipedia): diffiniad, cynnwys, defnyddiau a heriau CMDB.
- **Infrastructure as code** (Wikipedia): rheoli adnoddau trwy ddiffiniadau darllenadwy gan beiriant, gyda rhestr o offer a nodiadau ar fanteision a risgiau.
- **ITIL** (Wikipedia): y fframwaith lle mae'r CMDB a rheoli cyfluniad yn ymddangos.

Mae'r ffynonellau hyn yn Saesneg.

## Cyfeiriadau

1. Configuration management — Wikipedia — https://en.wikipedia.org/wiki/Configuration_management
2. Configuration management database — Wikipedia — https://en.wikipedia.org/wiki/Configuration_management_database
3. Infrastructure as code — Wikipedia — https://en.wikipedia.org/wiki/Infrastructure_as_code
4. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
5. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
6. Software configuration management — Wikipedia — https://en.wikipedia.org/wiki/Software_configuration_management
7. Version control — Wikipedia — https://en.wikipedia.org/wiki/Version_control
8. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
9. Change management — Wikipedia — https://en.wikipedia.org/wiki/Change_management
