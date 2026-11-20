# Argaeledd, Capasiti a Pherfformiad

**Tri golwg yw argaeledd, capasiti a pherfformiad ar a yw gwasanaeth yno, yn ddigon mawr ac yn ddigon cyflym pan fydd defnyddwyr ei angen. Y dull ystwyth yw dewis targedau o anghenion defnyddwyr, eu prisio'n onest, a'u profi cyn i'r galw gyrraedd.**

## Pam mae hyn yn bwysig

Nid yw defnyddwyr yn gwahanu'r tri. Mae gwasanaeth sydd "i fyny" ond yn rhy araf i'w ddefnyddio wedi eu methu, ac mae gwasanaeth sy'n gyflym ar ddiwrnod tawel ac yn cwympo ar y brig wedi eu methu ar yr union foment y mae ei angen fwyaf arnynt. Mae timau sy'n edrych ar argaeledd, capasiti a pherfformiad ar wahân yn aml yn colli'r ffyrdd y maent yn rhyngweithio: mae ychwanegu capasiti yn newid cost a chymhlethdod, mae mynd ar ôl argaeledd perffaith yn cyfyngu pa mor gyflym y gallwch newid, a gall tiwnio ar gyfer cyflymder leihau gwydnwch.

Mae timau ystwyth yn wynebu fersiwn benodol o'r broblem. Maent yn newid y gwasanaeth yn aml, a gall pob newid newid perfformiad neu anghenion adnoddau mewn ffyrdd nad oes neb wedi'u profi. Maent hefyd yn tueddu i weithio yn erbyn gorwelion amser byr, felly gellir colli anghenion capasiti sy'n cymryd misoedd i'w trefnu, fel caledwedd, contractau neu drwyddedau. Mae'r arferion yn y pwnc hwn yn rhoi ffordd i edrych ymlaen heb ddychwelyd at gynllunio hirdymor er ei fwyn ei hun.

Mae llyfr *Site Reliability Engineering* Google, yn ei bennod "Embracing Risk", yn ffynhonnell glir ar economeg argaeledd: mae'n dweud nad yw ei ddull yn anelu at ddibynadwyedd 100%, oherwydd y tu hwnt i bwynt mae mwyafu sefydlogrwydd yn cyfyngu pa mor gyflym y gellir datblygu nodweddion newydd, ac mae costau dibynadwyedd yn codi'n serth. Mae'r [erthygl Wikipedia ar gynllunio capasiti](https://en.wikipedia.org/wiki/Capacity_planning) (yn Saesneg) yn rhoi diffiniadau a strategaethau cyffredinol. Mae'r ddwy yn rhannol, ac mae eirfa ITIL a ddefnyddir yma yn dod o ddisgrifiadau a gyhoeddir yn eang na allai'r canllaw hwn eu cadarnhau yn erbyn testun perchennog y fframwaith.

## Cysyniadau craidd

### Argaeledd

**Argaeledd (availability)** yw gallu gwasanaeth i wneud yr hyn sydd ei angen ar ddefnyddwyr pan fydd ei angen arnynt. Ffordd gyffredin o'i fynegi yw fel canran dros gyfnod. Mae pennod SRE yn nodi dwy ffordd o'i fesur. Ar gyfer un system, mae argaeledd yn seiliedig ar amser: mae 99.99% yn caniatáu tua 52.56 munud o amser segur heb ei gynllunio y flwyddyn. Ar gyfer gwasanaethau dosbarthedig sydd yn rhannol i fyny bob amser, mae'n well ei fesur fel cyfradd llwyddiant ceisiadau dros ffenestr dreiglo; enghraifft y bennod yw gwasanaeth â 2.5 miliwn o geisiadau dyddiol a tharged o 99.99%, sy'n caniatáu hyd at 250 o wallau. Mae'r bennod yn canolbwyntio ar amser segur heb ei gynllunio. Mae angen cytundeb ar wahân â defnyddwyr ar gyfer amser segur wedi'i gynllunio.

### Pris pob naw ychwanegol

Mae'r bennod yn dweud bod costau dibynadwyedd yn codi'n aflinol: gall un naw ychwanegol gostio 100 gwaith y cynnydd blaenorol, gan gynnwys adnoddau diangen a chost cyfle peirianwyr nad ydynt yn adeiladu nodweddion sy'n wynebu defnyddwyr. Mae'n rhoi darlun: mae codi argaeledd o 99.9% i 99.99% ar wasanaeth ag US$1 miliwn o refeniw yn werth tua US$900 o werth, felly mae'r buddsoddiad ond yn talu os yw'r naw ychwanegol yn costio llai na hynny. Enghraifft y ffynhonnell yw'r rhifau, a rhaid i'ch rhai chi ddod o'ch refeniw neu eich gwerth eich hun. Mae'r egwyddor yn dal: dewiswch yr argaeledd sydd ei angen ar ddefnyddwyr, a phrisiwch unrhyw beth y tu hwnt iddo.

### Goddefgarwch risg

Mae'r bennod yn disgrifio gweithio gyda pherchnogion cynnyrch i droi nodau busnes yn amcanion eglur. Mae ffactorau'n cynnwys yr argaeledd gofynnol, siâp methiannau (cyfradd gwall isel gyson yn erbyn toriadau llawn achlysurol, gydag amlygiad data yn arbennig o ddifrifol), cost, a mesurau eraill fel hwyrni. Mae'n nodi y gellir cynnig seilwaith sy'n gwasanaethu llawer o gleientiaid ar lefelau gwasanaeth wedi'u diffinio'n eglur, fel bod pob cleient yn dewis y lefel rhataf sy'n bodloni ei anghenion.

### Cyllidebau gwallau

Mae'r bennod yn egluro'r gyllideb gwallau fel mesur a rennir, gwrthrychol rhwng timau cynnyrch, a fesurir ar gyflymder, a thimau dibynadwyedd, a fesurir ar ddibynadwyedd. Tra bo cyllideb yn weddill, mae rhyddhadau'n parhau. Pan fo wedi'i gwario, mae rhyddhadau'n arafu ac mae ymdrech yn symud at ddibynadwyedd (gweler Pwnc 3.7 — Rheoli Lefelau Gwasanaeth).

### Capasiti

Mae'r erthygl Wikipedia yn diffinio cynllunio capasiti fel penderfynu ar y capasiti cynhyrchu sydd ei angen ar sefydliad i fodloni galw sy'n newid, ac yn dweud mai mewn TG mae'n gyfystyr â rheoli capasiti: amcangyfrif yr adnoddau storio, caledwedd, meddalwedd a chysylltedd sydd eu hangen dros gyfnod yn y dyfodol. Mae'r erthygl yn gwahaniaethu **capasiti dylunio (design capacity)**, yr allbwn uchaf posibl, oddi wrth **gapasiti effeithiol (effective capacity)**, yr allbwn ar ôl cyfyngiadau. Yn ymarferol, cynlluniwch ar gyfer capasiti effeithiol, sydd bob amser yn is na ffigur y dyluniad.

### Strategaethau capasiti

Mae'r erthygl yn disgrifio pedair strategaeth ar gyfer ychwanegu capasiti:

| Strategaeth | Beth mae'n ei olygu | Cyfaddawd |
|---|---|---|
| **Arwain (Lead)** | Ychwanegu capasiti o flaen y galw | Gwasanaeth da ac amseroedd arweiniol byr, ond peryglus os yw'r galw'n anrhagweladwy |
| **Llusgo (Lag)** | Ychwanegu capasiti dim ond ar ôl rhedeg ar neu y tu hwnt i gapasiti llawn | Llai o risg o or-adeiladu, ond gall golli cwsmeriaid |
| **Paru (Match)** | Ychwanegu capasiti mewn cynyddrannau bach wrth i'r galw newid | Cytbwys, angen monitro da |
| **Addasu (Adjustment)** | Ychwanegu neu leihau capasiti o symiau bach neu fawr wrth i'r galw neu'r bensaernïaeth newid | Hyblyg, angen darparu cyflym |

Mae'r erthygl yn disgrifio cynllunio tymor byr, canolig a hir (gweithredol, tactegol a strategol), o ddyddiau i flynyddoedd. Mewn lleoliad cwmwl, mae "paru" ac "addasu" yn aml yn haws oherwydd y gellir ychwanegu adnoddau'n gyflym, ond mae angen cynllunio cost a chontractau o hyd (gweler Pwnc 4.5 — Rheolaeth Ariannol TG a FinOps).

### Perfformiad

**Perfformiad (performance)** yw pa mor gyflym a pha mor dda y mae'r gwasanaeth yn ymateb. Mae pennod llyfr SRE ar fonitro yn awgrymu mesur hwyrni, traffig, gwallau a dirlawnder, ac mae'n rhybuddio bod cymedrau'n cuddio gwyriadau araf (gweler Pwnc 3.10 — Monitro a Rheoli Hysbysiadau). Mae dirlawnder, pa mor "llawn" yw'r gwasanaeth, yn cysylltu perfformiad â chapasiti: mae'r bennod yn nodi bod perfformiad yn aml yn dirywio cyn 100% o ddefnydd.

### Sut mae'r tri yn rhyngweithio

- Gall mwy o gapasiti godi argaeledd a pherfformiad, ar gost.
- Mae targedau argaeledd uchel fel arfer angen diswyddiad, sef capasiti ychwanegol.
- Gall tiwnio ar gyfer perfformiad brig leihau gofod ar gyfer methiant.
- Mae newidiadau i'r gwasanaeth yn newid y tri, a dyna pam mae profi'n bwysig.

Disgyblaeth ddefnyddiol yw datgan y targedau gyda'i gilydd ar gyfer pob gwasanaeth: pa mor hygyrch, pa mor gyflym, a faint o lwyth y mae'n rhaid iddo ei gario.

### Galw a rhagweld

Mae capasiti'n dibynnu ar y galw. Daw galw gan ddefnyddwyr a'r busnes: ymgyrchoedd marchnata, copaon tymhorol, cwsmeriaid newydd. Mae'r busnes yn gwybod mwy am y dyfodol na TG, felly gofynnwch. Cynlluniwch gydag ystodau yn hytrach nag un rhif, ac ailedrychwch ar y rhagolwg yn rheolaidd (gweler y sgìl rhagweld galw isod).

### Profi

Rhagdybiaethau yw honiadau am gapasiti a pherfformiad nes eu profi. Mae profi llwyth a phrofi perfformiad yn cymhwyso galw realistig i weld sut mae'r gwasanaeth yn ymddwyn, ac mae profi anhrefn yn cyflwyno methiannau i weld a yw argaeledd yn dal. Gall y rhain fod yn rhan o'r biblinell gyflawni.

### Terfynau'r ffynonellau

Nid yw'r erthygl Wikipedia ar gynllunio capasiti yn crybwyll rheoli capasiti ITIL nac yn dadansoddi'r berthynas rhwng capasiti, perfformiad ac argaeledd, ac mae ei hadran ar asedau wedi'i baneru fel un heb gyfeiriadau. Mae pennod SRE yn disgrifio arferion sefydliad mawr iawn ag economeg wahanol. Defnyddiwch hwy ar gyfer egwyddorion, nid rhifau.

## Arferion gorau

1. **Datganwch dargedau argaeledd, perfformiad a llwyth gyda'i gilydd.** Ar gyfer pob gwasanaeth, ysgrifennwch pa mor hygyrch y mae'n rhaid iddo fod, pa mor gyflym y mae'n rhaid iddo ymateb, a faint o lwyth y mae'n rhaid iddo ei gario. Seiliwch hwy ar anghenion defnyddwyr a chytunwch arnynt gyda'r perchennog gwasanaeth a chwsmeriaid.
2. **Prisiwch y targedau.** Amcangyfrifwch beth mae lefel ychwanegol o argaeledd neu gyflymder yn ei gostio, mewn arian ac mewn nodweddion a ohiriwyd. Cymharwch ef â'r hyn y byddai defnyddwyr a'r busnes yn ei ennill. Defnyddiwch eich ffigurau eich hun, nid yr enghraifft mewn llyfr.
3. **Mesurwch argaeledd mewn ffordd sy'n cyfateb i'r gwasanaeth.** Ar gyfer gwasanaethau sydd yn rhannol i fyny bob amser, defnyddiwch gyfradd llwyddiant dros ffenestr dreiglo fel y mae pennod SRE yn ei wneud. Ar gyfer systemau syml, defnyddiwch fesurau yn seiliedig ar amser. Cyfrwch amser segur heb ei gynllunio ac amser segur wedi'i gynllunio ar wahân.
4. **Cynlluniwch ar gyfer capasiti effeithiol.** Amcangyfrifwch beth all y gwasanaeth ei gario ar ôl cyfyngiadau go iawn fel gorbenion, methiant cydrannau a chynnal a chadw. Cadwch ymyl.
5. **Dewiswch strategaeth capasiti yn fwriadol.** Penderfynwch a ddylid arwain, llusgo neu baru ar gyfer pob adnodd, ar sail amseroedd arweiniol, cost prinder, a chost gor-adeiladu. Ysgrifennwch y dewis a'i ailedrych.
6. **Gofynnwch i'r busnes am alw.** Cyfarfod ag arweinwyr marchnata, gwerthiant a gweithrediadau ar gylch rheolaidd i ddysgu am ymgyrchoedd, lansiadau a chopaon tymhorol. Cofnodwch y llwyth disgwyliedig gydag ystodau.
7. **Gwyliwch ddirlawnder.** Olrheiniwch pa mor llawn yw adnoddau allweddol a gosodwch rybuddion ymhell cyn y pwynt lle mae perfformiad yn dirywio. Gwyddoch y lefel y mae eich gwasanaeth yn dechrau arafu arni.
8. **Profwch cyn y brig.** Rhedwch brofion llwyth a pherfformiad sy'n debyg i draffig go iawn, o flaen copaon hysbys ac ar ôl newidiadau sylweddol. Trwsiwch yr hyn a ganfyddwch tra bo amser.
9. **Profwch fethiant, nid llwyth yn unig.** Ymarferwch golli cydran, parth neu gyflenwr mewn amgylchedd diogel a gweld a yw argaeledd yn dal (gweler y sgìl profi anhrefn isod).
10. **Cynhwyswch gapasiti mewn gwaith newid a rhyddhau.** Gofynnwch wrth ddylunio ac adolygu a yw newid yn newid anghenion adnoddau. Ychwanegwch wiriadau perfformiad at y biblinell ar gyfer y llwybrau sy'n bwysig (gweler Pwnc 3.5 — Rheoli Rhyddhau a Defnyddio).
11. **Defnyddiwch y gyllideb gwallau i setlo cyfaddawdau.** Pan fo cyllideb, gwariwch hi ar newid. Pan fo wedi'i gwario, gwariwch ymdrech ar ddibynadwyedd a chapasiti. Adolygwch y rheol gyda chyflawni a gweithrediadau gyda'i gilydd.
12. **Adolygwch ragolygon yn erbyn gwirioneddol.** Bob chwarter, cymharwch alw a ragwelwyd â galw gwirioneddol ac addaswch eich dull. Triniwch bethau annisgwyl fel gwybodaeth.

## Cwestiynau i'w trafod gyda'ch tîm

**Beth sydd ei angen ar ein defnyddwyr mewn gwirionedd o ran argaeledd, cyflymder a chapasiti, a phwy a benderfynodd?**

Gofynnwch am y targedau cyfredol a ble y daethant. Yn aml fe'u gosodwyd amser maith yn ôl, neu gan y tîm heb ofyn i ddefnyddwyr. Gofynnwch i ddefnyddwyr a chwsmeriaid beth sy'n brifo fwyaf. Trafodwch a yw'r targedau'n cyfateb. Gall yr hwylusydd ofyn beth fyddai'n digwydd pe bai'r targed un cam yn is, a beth fyddai hynny'n ei ryddhau.

**Beth mae'r naw nesaf yn ei gostio i ni?**

Dewiswch wasanaeth â tharged argaeledd uchel. Amcangyfrifwch beth fyddai'n ei gostio i'w godi neu ei ostwng un cam, mewn arian ac mewn gwaith a ohiriwyd. Cymharwch â'r gwerth i ddefnyddwyr. Mae enghraifft pennod SRE yn dangos pa mor gyflym y gall y rhifyddeg droi yn erbyn targed uwch. Gwnewch y cyfrifiad gyda'ch rhifau eich hun a chofnodwch y rhagdybiaethau.

**Beth yw'r brig galw nesaf rydym yn gwybod amdano, a beth rydym wedi'i wneud i baratoi?**

Rhestrwch y copaon hysbys: ymgyrch, terfyn amser, rhuthr tymhorol. Ar gyfer pob un, gofynnwch pwy sy'n gwybod y llwyth disgwyliedig ac a yw'r gwasanaeth wedi'i brofi ar y lefel honno. Yn aml nid oes neb wedi gofyn. Cytunwch ar berson i gasglu'r rhifau a dyddiad ar gyfer y prawf.

**Ble mae ein gwasanaeth agosaf at ddirlawnder, a beth sy'n digwydd pan fydd yn cyrraedd yno?**

Gofynnwch am yr adnodd a ddefnyddir fwyaf. Edrychwch ar y duedd. Gofynnwch beth mae'r gwasanaeth yn ei wneud ar y terfyn hwnnw: arafu, gwallau neu fethu. Os nad oes neb yn gwybod, profwch. Dewiswch drothwy i weithredu arno a rhybudd ar ei gyfer.

**Pa rai o'n newidiadau diwethaf a effeithiodd ar berfformiad neu gapasiti, ac a oeddem yn gwybod ymlaen llaw?**

Adolygwch newidiadau diweddar a gofynnwch sut y gwiriwyd perfformiad. Os na, trafodwch beth fyddai gwiriad ysgafn. Opsiynau nodweddiadol yw prawf ar y llwybr hanfodol neu ryddhad caneri gyda monitro. Cytunwch ar un ar gyfer y rhyddhad nesaf.

**Pe bai un gydran yn methu ar hyn o bryd, beth fyddai'n digwydd i argaeledd?**

Cymerwch wasanaeth allweddol ac olrheiniwch fethiant cronfa ddata, parth neu gyflenwr. Gofynnwch beth mae'r dyluniad yn ei dybio a beth sydd wedi'i brofi. Mae bylchau rhwng tybiaeth a thystiolaeth yn risgiau. Cynlluniwch un prawf methiant rheoledig mewn amgylchedd diogel.

## Yn ymarferol: enghraifft o ITIL ystwyth

Mae awdurdod pensiwn cenedlaethol yn rhedeg gwasanaeth ar-lein lle mae dinasyddion yn gwirio eu hawliau ac yn cyflwyno ffurflenni. Mae'r gwasanaeth yn dawel am y rhan fwyaf o'r flwyddyn ac eithrio'r wythnosau ar ôl postio datganiadau blynyddol, pan fo traffig yn codi i sawl gwaith y lefel arferol. Y llynedd arafodd y gwasanaeth i'r pwynt lle rhoddodd llawer o ddefnyddwyr y gorau iddi, a gorlethwyd y ganolfan alwadau. Mae'r tîm platfform o naw a'r rheolwr gweithrediadau eisiau osgoi ailadrodd.

Mae'r tîm yn dechrau trwy ofyn i'r swyddfa gyfathrebu am y llwyth disgwyliedig. Mae'r swyddfa'n dweud y caiff datganiadau eu hanfon mewn dau swp ac yn rhoi dyddiadau, ond dim ffigurau. Mae'r tîm yn amcangyfrif yr ystod o ddata'r llynedd ac yn gosod nod: rhaid i'r dudalen ffurflenni ymateb o fewn amser derbyniol ar gyfer y brig disgwyliedig, a rhaid i'r gwasanaeth aros ar gael drwy'r ddau swp. Maent yn rhedeg prawf llwyth ar gopi o gynhyrchu ac yn canfod mai'r gronfa ddata yw'r adnodd cyntaf i ddirlenwi, ymhell islaw'r brig a ragwelwyd. Maent yn mabwysiadu strategaeth "arwain" ar gyfer y gronfa ddata, gan fod yr amser arweiniol i ychwanegu capasiti yn hir, a strategaeth "paru" ar gyfer y gweinyddion gwe, y gellir ychwanegu rhai mewn munudau. Mae prawf methiant yn dangos bod colli un nod cronfa ddata yn haneru capasiti, a fyddai'n annerbyniol ar y brig, felly maent yn ychwanegu un sbâr.

Ar y brig, mae'r gwasanaeth yn aros i fyny ac mae amseroedd ymateb yn dal yn y swp cyntaf. Yn yr ail swp mae cydran cadarnhau taliadau nad oedd neb wedi'i phrofi yn arafu dan lwyth, ac mae rhai defnyddwyr yn gweld oedi. Nid oedd y tîm yn gwybod am derfyn y ddibyniaeth hon ac ni ddywedwyd wrtho y byddai'r ail swp yn fwy. Maent yn ychwanegu'r gydran at y prawf llwyth nesaf, yn gofyn i'r swyddfa gyfathrebu am gyfaint pob swp yn gynharach, ac yn cytuno i adolygu'r broses ragweld yn y chwarter nesaf.

## Pedwar persbectif

### Timau cynnyrch a chyflawni

Mae timau cyflawni'n effeithio ar y tri trwy ddylunio a newid. Cynhwyswch berfformiad a chapasiti mewn adolygiadau dylunio ac yn y biblinell. Dywedwch wrth weithrediadau am newidiadau sy'n newid llwyth, a gofynnwch i'r busnes am y galw disgwyliedig.

### Timau gwasanaeth a gweithrediadau

Fel arfer mae timau gweithrediadau'n cario'r monitro a'r cynlluniau capasiti. Olrheiniwch ddirlawnder a thuedd, cadwch olwg ar amseroedd arweiniol ar gyfer adnoddau, a dewch â thystiolaeth i gynllunio. Helpwch y busnes i ddeall beth mae pob lefel o argaeledd yn ei gostio.

### Arweinyddiaeth a llywodraethu

Mae arweinwyr yn gosod y pris y maent yn fodlon ei dalu am ddibynadwyedd a chyflymder. Gofynnwch am dargedau sy'n cyfateb i anghenion defnyddwyr, gyda chostau, a derbyniwch nad yw argaeledd perffaith yn nod synhwyrol. Cefnogwch brofi cyn copaon hysbys a'r gyllideb ar gyfer gwydnwch lle mae'n bwysig.

### Cwsmeriaid a defnyddwyr

Mae cwsmeriaid a defnyddwyr yn teimlo'r canlyniad. Dywedwch wrth y darparwr pan fyddwch yn disgwyl llwyth ychwanegol, fel ymgyrch neu derfyn amser, a beth sy'n bwysig i chi o ran cyflymder ac argaeledd. Adroddwch arafwch yn ogystal â thoriadau, gan fod y ddau yn fethiannau o'ch ochr chi.

## Dulliau methu cyffredin

- **Targedau o arferiad.** Mynnir "pum naw" heb ofyn pam. Yn lle hynny, deilliwch dargedau o anghenion defnyddwyr a'u prisio.
- **Copaon annisgwyl.** Mae'r busnes yn gwybod am ymgyrch ac nid yw TG. Yn lle hynny, cyfarfyddwch ar gylch rheolaidd a chofnodwch y llwyth disgwyliedig.
- **Cyfartaleddau ar gyfer perfformiad.** Ni welir gwyriadau araf. Yn lle hynny, edrychwch ar ganraddau uchel a dirlawnder.
- **Capasiti a ychwanegir dim ond ar ôl helynt.** Defnyddir strategaeth lusgo ar ddamwain. Yn lle hynny, dewiswch strategaeth yn fwriadol, ar sail amseroedd arweiniol.
- **Gwydnwch heb ei brofi.** Mae diswyddiad yn bodoli ar bapur. Yn lle hynny, profwch fethiant cydrannau mewn amgylchedd diogel.
- **Newidiadau heb wiriadau perfformiad.** Mae rhyddhad yn diraddio cyflymder. Yn lle hynny, ychwanegwch wiriadau at y biblinell ar gyfer y llwybrau sy'n bwysig.
- **Anghofio dibyniaethau.** Mae cydran trydydd parti yn cyfyngu'r gwasanaeth cyfan. Yn lle hynny, rhestrwch ddibyniaethau a'u profi.
- **Trin y rhagolwg fel un sefydlog.** Mae cynlluniau'n anwybyddu gwall. Yn lle hynny, defnyddiwch ystodau a chymharwch ragolygon â gwirioneddol.

## Model aeddfedrwydd

| Dimensiwn | Cychwyn | Datblygu | Safoni | Rheoli | Cydlynu |
|---|---|---|---|---|---|
| Targedau a chost | Mae targedau'n anffurfiol neu wedi'u copïo | Mae gan rai gwasanaethau dargedau datganedig | Mae gan wasanaethau dargedau argaeledd, perfformiad a llwyth y cytunwyd arnynt gyda chostau hysbys | Adolygir targedau a chostau yn erbyn canlyniadau | Gosodir targedau ar y cyd â chwsmeriaid a chyflenwyr ac fe'u haddasir ar sail tystiolaeth |
| Cynllunio galw a chapasiti | Ychwanegir capasiti ar ôl helynt | Mae rhai timau'n rhagweld copaon hysbys | Cesglir galw o'r busnes ar gylch, gyda strategaeth capasiti datganedig | Olrheinir cywirdeb rhagolygon a gwellir dulliau | Cydlynir cynllunio ar draws timau, cyflenwyr a'r busnes |
| Profi | Ychydig o brofi llwyth neu fethiant | Rhai profion cyn digwyddiadau mawr | Mae profion llwyth a methiant yn arferol ar gyfer gwasanaethau allweddol | Mae canlyniadau profion yn gyrru gwelliannau a olrheinir | Rhennir a chydlynir profion ar draws gwasanaethau dibynnol |
| Monitro ac ymateb | Sylwir ar broblemau'n hwyr | Olrheinir rhywfaint o ddirlawnder | Monitrir dirlawnder, hwyrni a gwallau gyda rhybuddion cyn terfynau | Tiwnir tueddiadau a throthwyon o ddata | Cydlynir signalau ac ymatebion ar draws timau a chyflenwyr |

## Rhestr wirio

- [ ] Mae gan bob gwasanaeth dargedau datganedig ar gyfer argaeledd, perfformiad a llwyth, gyda'u ffynhonnell.
- [ ] Rydym wedi amcangyfrif beth fyddai'r lefel nesaf o argaeledd yn ei gostio.
- [ ] Rydym yn gwybod sut y mesurir argaeledd ar gyfer pob gwasanaeth, a beth sy'n cyfrif fel amser segur.
- [ ] Rydym wedi dewis strategaeth capasiti ar gyfer pob adnodd allweddol.
- [ ] Rydym yn cyfarfod â'r busnes yn rheolaidd i ddysgu am y galw disgwyliedig.
- [ ] Monitrir dirlawnder adnoddau allweddol gyda rhybuddion cyn terfynau.
- [ ] Rhedwyd profion llwyth cyn y brig hysbys diwethaf.
- [ ] Profwyd methiant o leiaf un gydran allweddol mewn amgylchedd diogel.
- [ ] Nodir newidiadau sy'n effeithio ar berfformiad neu gapasiti mewn adolygiad.
- [ ] Cymherir rhagolygon â galw gwirioneddol bob chwarter.

## Anogwyr AI

**Pwrpas: troi data a fesurwyd yn olwg o ofod capasiti.**

```text
Dyma'r mesuriadau ar gyfer [adnodd, e.e. "CPU cronfa ddata"] ar gyfer [gwasanaeth] dros [cyfnod]: [gludwch werthoedd go iawn neu ffigurau cryno fel brig dyddiol a chyfartaledd].
Terfyn hysbys y mae perfformiad yn dirywio ohono, os ydych yn ei wybod: [gludwch, neu ysgrifennwch "anhysbys"].
Newid galw disgwyliedig: [disgrifiwch, gyda ffynhonnell].

Gan ddefnyddio fy nata i yn unig, disgrifiwch y duedd a faint o ofod sy'n ymddangos sydd ar y brig a arsylwyd, mewn geiriau plaen. Dangoswch sut y byddai gofod yn newid pe bai'r galw'n tyfu gan y symiau a roddais. Peidiwch â dyfeisio terfynau na chyfraddau twf. Dywedwch pa ddata ychwanegol fyddai'n gwneud y dadansoddiad yn fwy dibynadwy, a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

**Pwrpas: prisio targed argaeledd uwch.**

```text
Helpwch fi i gymharu cost a gwerth codi'r targed argaeledd ar gyfer [gwasanaeth] o [targed cyfredol] i [targed arfaethedig].

Beth yw gwerth y gwasanaeth, gyda ffynhonnell (refeniw, cost toriad, neu werth arall; defnyddiwch ffigurau a ddarparaf yn unig): [gludwch].
Beth fyddai'r argaeledd ychwanegol yn ei fynnu (diswyddiad, staff, offer), gydag amcangyfrifon cost sydd gennyf: [gludwch, neu ysgrifennwch "anhysbys"].
Argaeledd mesuredig presennol: [gludwch].

Cyfrifwch yr amser segur neu'r cyfrif gwallau a ganiateir ar bob targed gan ddefnyddio'r rhifau a roddais yn unig, dangoswch y gwahaniaeth, a chymharwch â'r ffigurau gwerth a chost os darparais hwy. Nodwch eich rhagdybiaethau. Peidiwch â dyfeisio costau na refeniw. Gofynnwch gwestiynau eglurhaol yn gyntaf, a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

**Pwrpas: cynllunio prawf llwyth cyn brig hysbys.**

```text
Cynlluniwch brawf llwyth ar gyfer [gwasanaeth] cyn y digwyddiad hwn: [disgrifiwch y brig, gyda dyddiad a ffynhonnell y llwyth disgwyliedig].

Pensaernïaeth, yn gryno: [disgrifiwch gydrannau, dibyniaethau a chyflenwyr].
Ystod llwyth disgwyliedig, gyda'r ffynhonnell: [gludwch].
Amgylchedd prawf sydd ar gael: [disgrifiwch].

Rhowch gynllun gyda: nodau, beth i'w fesur (dosbarthiad hwyrni, gwallau, dirlawnder), senarios i'w rhedeg, sut i godi, beth i'w wneud â chanlyniadau, a risgiau i gynhyrchu neu i gyflenwyr (er enghraifft cytundebau y mae angen eu gwneud cyn profi). Peidiwch â dyfeisio ffigurau. Gofynnwch gwestiynau eglurhaol yn gyntaf, nodwch ragdybiaethau, a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

**Pwrpas: dylunio prawf methiant.**

```text
Helpwch fi i ddylunio prawf methiant rheoledig ar gyfer [gwasanaeth].

Yr hyn rwyf eisiau ei ddysgu: [er enghraifft a yw argaeledd yn dal os bydd un nod cronfa ddata yn methu].
Amgylchedd ar gyfer y prawf: [disgrifiwch, e.e. amgylchedd prawf tebyg i gynhyrchu].
Mesurau diogelu sydd ar gael: [monitro, dadwneud, pobl wrth law].

Disgrifiwch gynllun prawf cam wrth gam: rhagdybiaeth, beth i'w dorri a sut, beth i'w arsylwi, pwy sy'n bresennol, beth sy'n atal y prawf, a sut i gofnodi beth ddigwyddodd. Cadwch ef i ffwrdd o gynhyrchu oni bai fy mod yn dweud ei fod yn ddiogel. Gofynnwch gwestiynau eglurhaol yn gyntaf, nodwch ragdybiaethau, a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

## Sgiliau AI

- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): defnyddiwch i amcangyfrif yr adnoddau sydd eu hangen ar wasanaeth dros amser a dewis strategaeth ar gyfer eu hychwanegu.
- [demand-forecasting](../../../../skills/demand-forecasting/SKILL.md): defnyddiwch i amcangyfrif llwyth yn y dyfodol fel ystod o ddata'r gorffennol a chynlluniau busnes.
- [load-testing](../../../../skills/load-testing/SKILL.md): defnyddiwch i ddylunio profion sy'n cymhwyso galw realistig cyn brig.
- [performance-testing](../../../../skills/performance-testing/SKILL.md): defnyddiwch i wirio cyflymder a defnydd adnoddau ar lwybrau hanfodol fel rhan o gyflawni.
- [chaos-testing](../../../../skills/chaos-testing/SKILL.md): defnyddiwch i brofi a yw argaeledd yn dal pan fydd cydrannau'n methu.

(Mae'r sgiliau eu hunain wedi'u hysgrifennu yn Saesneg.)

## Prif ffynonellau

- **Embracing Risk** (*Site Reliability Engineering*, Google, sre.google): economeg argaeledd, mesur yn seiliedig ar geisiadau, a'r gyllideb gwallau.
- **Capacity planning** (Wikipedia): diffiniadau a strategaethau arwain, llusgo, paru ac addasu.
- **Monitoring Distributed Systems** (*Site Reliability Engineering*, Google, sre.google): y signalau euraidd gan gynnwys dirlawnder.
- **High availability** (Wikipedia): cefndir ar ddylunio systemau ar gyfer gweithrediad parhaus.

Mae'r ffynonellau hyn yn Saesneg.

## Cyfeiriadau

1. Embracing Risk — Google SRE book, sre.google — https://sre.google/sre-book/embracing-risk/
2. Capacity planning — Wikipedia — https://en.wikipedia.org/wiki/Capacity_planning
3. Monitoring Distributed Systems — Google SRE book, sre.google — https://sre.google/sre-book/monitoring-distributed-systems/
4. Service Level Objectives — Google SRE book, sre.google — https://sre.google/sre-book/service-level-objectives/
5. High availability — Wikipedia — https://en.wikipedia.org/wiki/High_availability
6. Scalability — Wikipedia — https://en.wikipedia.org/wiki/Scalability
7. Load testing — Wikipedia — https://en.wikipedia.org/wiki/Load_testing
8. Chaos engineering — Wikipedia — https://en.wikipedia.org/wiki/Chaos_engineering
9. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
