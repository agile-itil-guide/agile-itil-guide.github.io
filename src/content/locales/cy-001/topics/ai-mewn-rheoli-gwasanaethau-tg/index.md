# AI mewn Rheoli Gwasanaethau TG

**Gall deallusrwydd artiffisial gyflymu canfod, didoli a gwaith gwybodaeth mewn rheoli gwasanaethau TG, ac mae'n ddiogel ei ddefnyddio dim ond lle mae person yn parhau'n atebol, lle mae atebion wedi'u seilio ar eich deunydd eich hun, a lle rheolir risgiau gwall, rhagfarn ac amlygu data.**

## Pam mae hyn yn bwysig

Mae rheoli gwasanaethau yn cynnwys llawer iawn o iaith ac adnabod patrymau: darllen tocynnau, crynhoi digwyddiadau, chwilio gwybodaeth, drafftio atebion, sylwi ar signalau anarferol mewn data monitro. Dyma'r tasgau y mae systemau AI diweddar yn ymddangos yn fwyaf galluog ynddynt, ac mae gwerthwyr wedi rhuthro i'w hychwanegu at ddesgiau gwasanaeth ac offer gweithrediadau. Gofynnir i dimau, os nad ydynt eisoes, a ddylent eu defnyddio.

Mae'r cyfle'n real, ac felly hefyd y peryglon. Gall systemau AI ddatgan anwireddau â hyder, adlewyrchu rhagfarnau yn eu hyfforddiant ac yn y data a roddir iddynt, datgelu gwybodaeth gyfrinachol os cânt eu bwydo'n ddiofal, ac arwain pobl i ymddiried mewn allbwn nad ydynt wedi'i wirio. Mae sawl achos a adroddwyd yn eang yn dangos cost ymddiriedaeth anghywir. Gall sefydliad gwasanaeth sy'n mabwysiadu AI heb feddwl niweidio ei gwsmeriaid a'i enw da ei hun.

Erbyn 2026, mae AI hefyd wedi dod i mewn i'r fframwaith. Mae tudalen ardystio gyhoeddus PeopleCert yn disgrifio'r ITIL newydd fel "Practical and AI-native by design" ac yn rhestru modiwl ITIL AI Governance (Fersiwn 5) sy'n cwmpasu llywodraethu AI "responsibly and at scale" (gweler Pwnc 2.2 — ITIL). Ni allai'r canllaw hwn wirio o gyhoeddiadau'r perchennog beth mae ITIL 5 yn ei ddweud am AI yn fanwl, felly nid yw'r pwnc hwn yn disgrifio safbwynt y fframwaith y tu hwnt i'r datganiadau hynny. Mae'n tynnu ar yr erthyglau Wikipedia ar AIOps ac ar rithweledigaeth AI, ar dudalen Fframwaith Rheoli Risg AI NIST, ac ar resymu ymarferol, ac mae'n labelu arfer fel y cyfryw.

## Cysyniadau craidd

### Ble mae AI yn helpu mewn rheoli gwasanaethau

Mae'r rhan fwyaf o ddefnyddiau yn syrthio i ychydig o grwpiau. Mae'r tabl yn dangos enghreifftiau a'r math o risg sydd gan bob un, fel darlleniad y canllaw hwn.

| Defnydd | Beth mae'r AI yn ei wneud | Prif risgiau |
|---|---|---|
| **Canfod a chydberthynas (AIOps)** | Yn canfod anghysondebau, yn grwpio digwyddiadau cysylltiedig, yn awgrymu achosion tebygol | Rhybuddion ffug, digwyddiadau a gollwyd, rhesymu anhryloyw |
| **Cymorth desg gwasanaeth** | Yn awgrymu atebion, yn crynhoi tocynnau, yn drafftio atebion, yn cyfeirio ceisiadau | Atebion anghywir neu ddyfeisiedig, tôn, preifatrwydd |
| **Gwaith gwybodaeth** | Yn drafftio ac yn gwella erthyglau, yn chwilio gwybodaeth | Cynnwys ffug, ffynonellau hen |
| **Dadansoddi digwyddiadau a phroblemau** | Yn crynhoi llinellau amser, yn awgrymu damcaniaethau, yn drafftio adolygiadau | Achosion credadwy ond di-sail |
| **Cymorth newid a rhyddhau** | Yn adolygu newidiadau, yn drafftio nodiadau, yn awgrymu risg | Gorhyder, cyd-destun a gollwyd |
| **Cod ac awtomeiddio** | Yn ysgrifennu sgriptiau a chyfluniad | Cod anniogel neu anghywir, dibyniaethau cudd |
| **Dadansoddi ac adrodd** | Yn crynhoi data, yn drafftio adroddiadau | Cyfrifiadau anghywir, ffigurau dyfeisiedig |

### AIOps

Mae'r erthygl Wikipedia (yn Saesneg) yn disgrifio AIOps fel defnyddio AI, dysgu peiriannol a dadansoddeg data mawr i awtomeiddio a gwella rheoli canolfannau data, gyda'r nod o ganfod, diagnosio a datrys problemau TG yn fwy effeithlon na dulliau traddodiadol. Mae'n dweud i Gartner ddiffinio AIOps gyntaf yn 2016. Mae'r erthygl yn rhestru galluoedd gan gynnwys cydberthyn digwyddiadau, canfod anghysondebau, dadansoddi gwraidd achos, pennu achosiaeth, dadansoddeg ragfynegol, rheoli digwyddiadau, adfer awtomataidd, rhagfynegi perfformiad, dyrannu adnoddau a rheoli capasiti. Mae'n dweud bod AIOps yn tynnu ar ddata arsylwadol, fel logiau a monitro, a data rhyngweithio, fel tocynnau, digwyddiadau a chofnodion digwyddiadau.

Mae'r erthygl yn honni manteision, megis amser cymedrig i ganfod yn gwella 15 i 20 y cant a digwyddiadau critigol yn gostwng dros 50 y cant, ond yn nodi bod y rhain yn dod o un erthygl ymgynghori ac nad ydynt wedi'u gwirio'n annibynnol yn y testun. Nid yw'n datgan unrhyw feirniadaethau, achosion o fethiant na chyfyngiadau. Triniwch honiadau gwerthwyr yn unol â hynny, a phrofwch unrhyw offeryn yn erbyn eich digwyddiadau eich hun (gweler Pwnc 3.10 — Monitro a Rheoli Hysbysiadau).

### AI cynhyrchiol a rhithweledigaeth

Mae'r erthygl Wikipedia ar rithweledigaeth mewn AI yn ei diffinio fel ymateb sy'n cynnwys gwybodaeth ffug neu gamarweiniol a gyflwynir fel ffaith, ac yn nodi y beirniedir y term am anthropomorffeiddio meddalwedd. Mae'n rhoi achosion: mae rhag-hyfforddi ar ragfynegi'r gair nesaf yn gwobrwyo dyfalu pan fo'r model yn brin o wybodaeth, gall setiau data fod yn anghyflawn neu'n anghynrychioliadol, ac mae ymchwilwyr OpenAI yn dadlau bod hyfforddi a gwerthuso yn gwobrwyo dyfalu dros gydnabod ansicrwydd. Mae enghreifftiau a gofnodir ganddi yn cynnwys:

- **Mata v. Avianca (Mai 2023):** cyflwynodd cyfreithiwr chwe achos ffug a gynhyrchwyd gan ChatGPT; gosododd y barnwr ddirwy o US$5,000 ar 23 Mehefin 2023.
- **Moffatt v. Air Canada (Chwefror 2024):** daliodd tribiwnlys gwmni hedfan at bolisi profedigaeth a ddyfeisiwyd gan ei sgwrsfot.
- Adroddiadau gan ymgynghoriaeth a oedd yn cynnwys dyfyniadau ffug, ac astudiaeth a ganfu fod gan 69 o 178 cyfeiriad GPT-3 ddynodwyr anghywir neu nad oeddent yn bodoli.

Dyma ganlyniadau ymddiried mewn allbwn heb ei wirio: atebolrwydd cyfreithiol, dod i gysylltiad ariannol, ac ymddiriedaeth wedi'i niweidio. Mewn rheoli gwasanaethau, mae sgwrsfot sy'n dyfeisio polisi neu weithdrefn yn creu'r un dosbarth o risg.

### Lliniaru: seilio a gwiriadau

Mae'r erthygl yn disgrifio cynhyrchu a gynyddir gan adalw (retrieval-augmented generation, RAG) fel gadael i'r model gael mynediad at ffynonellau allanol cyn ateb. Mae hefyd yn rhestru dulliau sy'n ymwneud â data, dulliau model a chasgliad, a chynigion fel meddalwedd canllawiau diogelwch a sgorio hyder, ac yn nodi nad oes unrhyw ffynhonnell a roddir ganddi yn meintioli faint y mae unrhyw un o'r rhain yn lleihau rhithweledigaeth. I dîm gwasanaeth, lliniaru ymarferol yw:

- **Seiliwch atebion ar eich deunydd cymeradwy eich hun,** fel y sylfaen wybodaeth, a dangoswch y ffynhonnell.
- **Cadwch berson yn y ddolen** ar gyfer unrhyw beth sy'n effeithio ar gwsmer, ymrwymiad neu gynhyrchu.
- **Gofynnwch am yr hyn nad yw'r AI yn siŵr ohono,** a thriniwch ddatganiadau heb gefnogaeth fel rhai heb eu gwirio.
- **Profwch yn rheolaidd** ar achosion go iawn, gan gynnwys achosion lle mai'r ateb cywir yw "Dydw i ddim yn gwybod."

### Fframweithiau rheoli risg

Cyhoeddodd y National Institute of Standards and Technology (NIST) y Fframwaith Rheoli Risg AI (AI RMF 1.0) ar 26 Ionawr 2023, y mae'n ei ddisgrifio fel un a fwriedir at ddefnydd gwirfoddol, i helpu i reoli risgiau o AI i unigolion, sefydliadau a chymdeithas ac i wella'r gallu i ymgorffori ystyriaethau dibynadwyedd wrth ddylunio, datblygu, defnyddio a gwerthuso cynhyrchion, gwasanaethau a systemau AI. Mae tudalen NIST yn enwi pedair swyddogaeth, Llywodraethu (Govern), Mapio (Map), Mesur (Measure) a Rheoli (Manage), ond nid yw'n eu disgrifio. Rhyddhaodd hefyd Broffil Deallusrwydd Artiffisial Cynhyrchiol (NIST-AI-600-1) ar 26 Gorffennaf 2024 i helpu sefydliadau i nodi risgiau unigryw i AI cynhyrchiol, ac mae'n dweud bod y fframwaith yn cael ei ddiwygio. Darllenwch y fframwaith ei hun am fanylion. Mae rheolau eraill am AI, fel cyfreithiau a safonau, yn wahanol yn ôl gwlad a sector; gofynnwch i'ch swyddogaethau cyfreithiol a chydymffurfio, a chael y testun (gweler Pwnc 5.7 — Llywodraethu, Risg a Chydymffurfio).

### Diogelu data a phreifatrwydd

Gall popeth a roddir i wasanaeth AI gael ei storio, ei ddefnyddio ar gyfer hyfforddi, neu ei amlygu, yn dibynnu ar y gwasanaeth a'r telerau. Mae tocynnau, logiau a thrawsgrifiadau sgwrs yn aml yn cynnwys data personol, manylion mewngofnodi a gwybodaeth fusnes gyfrinachol. Cyn defnyddio unrhyw offeryn AI gyda data go iawn, canfyddwch i ble mae data'n mynd, pwy all ei weld, pa mor hir y caiff ei gadw, ac a gaiff ei ddefnyddio i hyfforddi modelau, a chymhwyswch eich polisi diogelwch gwybodaeth (gweler Pwnc 3.13 — Rheoli Diogelwch Gwybodaeth). Tynnwch neu amnewidiwch ddata personol a chyfrinachol cyn ei ludo i offeryn nad ydych wedi'i gymeradwyo.

### Atebolrwydd a thryloywder

Rhaid i berson neu dîm aros yn atebol am benderfyniadau y mae AI yn cyfrannu atynt. Pan fo AI yn drafftio ateb, yr anfonwr sy'n gyfrifol. Pan fo AI yn awgrymu gwraidd achos, yr ymchwilydd sy'n gyfrifol am ei brofi. Dywedwch wrth gwsmeriaid pan fyddant yn siarad â system awtomataidd lle mae'r gyfraith, contract neu degwch yn gofyn amdano, a rhowch lwybr at berson. Cadwch gofnodion o'r hyn y gofynnwyd i'r AI a'r hyn a gynhyrchodd ar gyfer penderfyniadau arwyddocaol, fel y byddech ar gyfer offer eraill (gweler Pwnc 5.1 — Rheoli Gwasanaethau Ystwyth am dystiolaeth).

### Rhagfarn a thegwch

Mae systemau AI yn dysgu o ddata sy'n adlewyrchu penderfyniadau a bylchau'r gorffennol. Gall cynorthwyydd didoli a hyfforddwyd ar docynnau hanesyddol drin rhai grwpiau o ddefnyddwyr neu rai mathau o broblemau fel rhai â blaenoriaeth is. Gwiriwch allbynnau ar draws grwpiau, cynhwyswch bobl â gwahanol safbwyntiau mewn profi, a gwyliwch am batrymau. Nid yw'r ffynonellau a ddarllenwyd ar gyfer y canllaw hwn yn manylu ar ragfarn, felly rhybudd cyffredinol yw hwn, nid canfyddiad.

### Mesur AI

Mesurwch ansawdd ac effaith unrhyw gam AI, nid ei gyfaint yn unig: pa mor aml y mae bodau dynol yn ei drechu, pa mor aml y mae'n anghywir, pa mor hir y mae tasgau'n ei gymryd gyda hebddo, a'r hyn y mae defnyddwyr yn ei ddweud (gweler Pwnc 5.6 — Metrigau a Mesur). Byddwch yn ofalus gyda ffigurau gwerthwyr; mae honiadau budd erthygl AIOps ei hun yn seiliedig ar un ffynhonnell.

### Sgiliau ac anogwyr

Mae sgil ymarferol gweithio gydag AI yn cynnwys ysgrifennu cyfarwyddiadau clir, cyflenwi'r deunydd cywir, gofyn am ansicrwydd, a gwirio allbwn. Mae Pwnc 6.3 — Sgiliau ac Anogwyr AI yn ymdrin â hyn yn fanwl.

### Terfynau'r ffynonellau

Nid yw'r erthygl AIOps yn cynnwys unrhyw feirniadaethau ac mae ei ffigurau budd yn dod o un ffynhonnell; nodir bod angen diweddaru'r erthygl rhithweledigaeth a darllenwyd hi'n rhannol; nid yw tudalen NIST yn disgrifio swyddogaethau'r fframwaith; ac nid yw tudalen PeopleCert yn egluro beth mae ITIL 5 yn ei ddweud am AI. Mae'r pwnc hwn felly'n rhoi hanes gofalus ac yn gadael manylion i ffynonellau cynradd.

## Arferion gorau

1. **Dechreuwch â defnydd risg isel a chwestiwn clir.** Dewiswch dasg lle mae gwallau'n rhad ac yn hawdd eu dal, fel drafftio crynodeb at ddefnydd mewnol, a diffiniwch beth yw llwyddiant.
2. **Cadwch berson yn atebol.** Enwch pwy sy'n gyfrifol am yr hyn y mae'r AI yn cyfrannu ato, a mynnwch adolygiad ar gyfer unrhyw beth sy'n cyrraedd cwsmer, yn newid cynhyrchu, neu'n gwneud ymrwymiad.
3. **Seiliwch atebion ar ddeunydd cymeradwy.** Lle byddwch yn defnyddio AI ar gyfer atebion, cysylltwch ef â'ch sylfaen wybodaeth eich hun a dangoswch y ffynhonnell. Gwnewch iddo ddweud "Dydw i ddim yn gwybod" pan nad oes ganddo un.
4. **Diogelwch ddata.** Penderfynwch pa ddata all fynd i ba offeryn, tynnwch ddata personol a chyfrinachol, a defnyddiwch offer cymeradwy gyda thelerau rydych wedi'u darllen. Cynhwyswch staff diogelwch a chyfreithiol yn gynnar.
5. **Profwch gydag achosion go iawn.** Casglwch set o docynnau a digwyddiadau go iawn gydag atebion hysbys, rhedwch yr AI arnynt, a chofnodwch ble mae'n methu. Ailadroddwch ar ôl unrhyw newid offeryn neu osodiadau.
6. **Gwiriwch honiadau a chyfeiriadau.** Gwiriwch enwau, rhifau, dyfyniadau a gweithdrefnau yn erbyn ffynonellau, fel y dengys achosion dyfyniadau llys dyfeisiedig. Peidiwch byth â derbyn cyfeiriadau nad ydych wedi'u gweld.
7. **Byddwch yn onest gyda chwsmeriaid.** Dywedwch pan fo system awtomataidd yn ateb lle mae'n bwysig, a rhowch lwybr hawdd at berson.
8. **Gwyliwch am ragfarn.** Adolygwch allbynnau ar draws grwpiau defnyddwyr a mathau o broblemau, a chynhwyswch bobl a all weld bylchau. Addaswch neu stopiwch ddefnydd lle mae niwed yn ymddangos.
9. **Mesurwch ansawdd ac effaith.** Olrheiniwch gyfraddau trechu, cyfraddau gwall, amser a arbedir, a barn defnyddwyr. Cymharwch â'r broses heb AI, a byddwch yn amheus o ffigurau gwerthwyr.
10. **Cadwch gofnodion.** Ar gyfer penderfyniadau arwyddocaol, cadwch yr hyn a ofynnwyd a'r hyn a gynhyrchwyd, pwy a'i hadolygodd, a'r hyn a benderfynwyd. Mae hyn yn cefnogi atebolrwydd ac archwilio.
11. **Defnyddiwch fframwaith risg.** Mabwysiadwch ddull cydnabyddedig, fel AI RMF NIST neu bolisi AI sefydliadol, i strwythuro penderfyniadau ynghylch ble y caniateir AI. Triniwch ef fel canllaw i feddwl.
12. **Hyfforddwch bobl.** Dysgwch staff sut mae'r offer yn gweithio, ble maent yn methu, a'r hyn a ganiateir. Diweddarwch yr hyfforddiant wrth i offer a rheolau newid.

## Cwestiynau i'w trafod gyda'ch tîm

**Ble ydym ni eisoes yn defnyddio AI, yn swyddogol neu beidio?**

Gofynnwch yn onest. Mae staff yn aml yn defnyddio offer cyhoeddus gyda thocynnau go iawn. Nid cosbi yw'r nod ond deall. Rhestrwch y defnyddiau a'r data dan sylw. Trafodwch pa rai sy'n dderbyniol a pha rai sydd angen llwybr mwy diogel. Cytunwch ar bolisi byr.

**Pa dasg fyddai fwyaf o gymorth i ni, a beth sy'n digwydd os yw'r AI yn ei chael yn anghywir?**

Dewiswch dasg a cherddwch drwy'r achos methiant. Os mai e-bost ymddiheuro yw'r ateb, mae'r risg yn fach; os mai cyfarwyddyd anghywir i gwsmer ydyw, mae'r risg yn uwch. Mae hyn yn helpu i raddio defnyddiau yn ôl risg. Dewiswch beilot cyntaf gyda niwed cyfyngedig.

**Sut y byddem yn gwybod bod ateb AI yn anghywir?**

Gofynnwch pwy sy'n gwirio atebion a sut. Atebion cyffredin: neb, neu'r person a ofynnodd. Trafodwch ffynonellau, profion ac ail adolygiadau. Cytunwch ar isafswm gwiriad ar gyfer pob math o ddefnydd.

**Pa ddata sy'n gyfforddus i ni ei roi mewn offeryn AI, a pha rai nad ydym?**

Casglwch y mathau: tocynnau, logiau, enwau cwsmeriaid, manylion mewngofnodi, contractau. Marciwch bob un fel un derbyniol, derbyniol ar ôl tynnu rhannau sensitif, neu byth. Gwiriwch â diogelwch a chyfreithiol. Ysgrifennwch ef fel canllaw un dudalen.

**Pwy sy'n atebol pan fo penderfyniad a gynorthwywyd gan AI yn mynd o'i le?**

Defnyddiwch enghraifft yn y gorffennol o benderfyniad a gynorthwywyd gan offeryn. Gofynnwch pwy atebodd. Cytunwch fod person a enwir yn parhau'n atebol a pha dystiolaeth y dylent ei chadw. Nodwch unrhyw fwlch lle na fyddai neb.

**Beth fyddai'n ein hargyhoeddi bod offeryn yn werth ei gadw?**

Gofynnwch i'r tîm ddisgrifio'r dystiolaeth y byddent yn ei derbyn: amser a arbedir gydag ansawdd cyfartal neu well, llai o wallau, boddhad defnyddwyr. Trafodwch sut i'w chasglu mewn treial. Cytunwch ar ddyddiad adolygu.

## Yn ymarferol: enghraifft o ITIL ystwyth

Mae desg gwasanaeth TG awdurdod trethi cenedlaethol yn trin tua 1,200 o gysylltiadau yr wythnos gan staff, llawer ohonynt ar gwestiynau arferol. Mae rheolwr y ddesg yn cynnig cynorthwyydd AI i awgrymu atebion o'r sylfaen wybodaeth a drafftio atebion. Mae swyddog diogelwch yr awdurdod yn pryderu am ddata personol mewn tocynnau ac am atebion anghywir yn cyrraedd staff.

Cytunant ar beilot cyfyngedig. Mae'r cynorthwyydd yn gweithio o erthyglau gwybodaeth cymeradwy yn unig, yn dangos o ba erthygl y daw pob awgrym, ac yn dweud pan na all ddod o hyd i unrhyw beth perthnasol. Mae dadansoddwyr yn adolygu pob ateb a awgrymir cyn ei anfon, ac ni all yr offeryn anfon ar ei ben ei hun. Sganir tocynnau am ddata personol a manylion mewngofnodi, a thynnir y rhain cyn i'r cynorthwyydd eu gweld. Defnyddir set brawf o 200 o docynnau'r gorffennol gydag atebion hysbys cyn y peilot, ac mae'r tîm yn cofnodi ble mae'r cynorthwyydd yn methu. Mae rheolwr y ddesg a'r swyddog diogelwch yn cytuno ar fesurau: pa mor aml y mae dadansoddwyr yn golygu neu'n gwrthod awgrymiadau, amser i'r ymateb cyntaf, a chwestiwn boddhad byr i staff. Mae'r peilot yn rhedeg am dri mis, ac mae'r rheolwr yn adrodd i adolygiad ar y cyd sy'n cynnwys dadansoddwr a chynrychiolydd staff.

Ar y diwedd, mae dadansoddwyr yn derbyn y rhan fwyaf o awgrymiadau ar gyfer cwestiynau cyffredin ac mae amser ymateb ar gyfer y rhain yn gostwng. Mae'r set brawf yn dangos bod y cynorthwyydd yn rhoi ateb hyderus ond anghywir i gwestiynau ar bolisi a newidiwyd yn ddiweddar, oherwydd bod yr erthygl wybodaeth yn hen. Erys rhai problemau. Dechreuodd dau ddadansoddwr anfon awgrymiadau gydag ychydig o wirio pan oeddent yn brysur, cafodd aelod o staff â chwestiwn anarferol ateb di-flas a fethodd y pwynt, ac roedd telerau'r gwerthwr ynghylch cadw data yn aneglur. Mae'r rheolwr yn ychwanegu rheol bod yn rhaid i newidiadau polisi ddiweddaru'r erthygl wybodaeth cyn iddynt ddod i rym, yn defnyddio gwiriad sampl o atebion a anfonwyd gan ddadansoddwr hŷn, ac yn gofyn i gaffael a'r swyddog diogelwch egluro'r telerau cyn ymestyn y peilot.

## Pedwar persbectif

### Timau cynnyrch a chyflawni

Gall timau cyflawni ychwanegu nodweddion AI at gynhyrchion a defnyddio AI i ysgrifennu cod a phrofion. Gwiriwch god a gynhyrchwyd am gywirdeb a diogelwch, cadwch gyfrinachau allan o anogwyr, a byddwch yn eglur i ddefnyddwyr pan fo AI yn gysylltiedig. Adeiladwch fonitro ar gyfer ymddygiad AI i mewn i'ch gwasanaeth.

### Timau gwasanaeth a gweithrediadau

Bydd timau gweithrediadau'n cwrdd ag AI mewn monitro, offer desg a dadansoddi. Triniwch awgrymiadau AI fel damcaniaethau, profwch hwy, a chadwch gofnodion. Helpwch i ddiffinio pa ddata a ellir ei ddefnyddio, a rhowch adborth i wella deunydd seilio.

### Arweinyddiaeth a llywodraethu

Mae arweinwyr yn gosod polisi, awydd risg ac atebolrwydd ar gyfer AI. Gofynnwch am restr defnyddiau, fframwaith risg a thystiolaeth o beilotiaid, nid honiadau gwerthwyr. Gwnewch yn siŵr fod staff cyfreithiol, diogelwch a phreifatrwydd yn rhan o'r dechrau.

### Cwsmeriaid a defnyddwyr

Dylid dweud wrth gwsmeriaid a defnyddwyr pan fyddant yn delio â system awtomataidd lle mae'n bwysig, a bod ganddynt lwybr at berson. Adroddwch am atebion anghywir neu ryfedd, gan eu bod yn dystiolaeth. Gofynnwch i ddarparwyr sut maent yn diogelu eich data ac yn gwirio allbwn AI.

## Dulliau methu cyffredin

- **Ymddiried mewn allbwn heb ei wirio.** Mae ffeithiau ffug yn cyrraedd cwsmeriaid. Yn lle hynny, seiliwch atebion ar ddeunydd cymeradwy a gwiriwch cyn anfon.
- **AI cysgodol.** Mae staff yn gludo data go iawn i offer cyhoeddus. Yn lle hynny, darparwch offer cymeradwy a pholisi data clir.
- **Dim person atebol.** Nid oes neb yn ateb dros benderfyniadau a gynorthwywyd gan AI. Yn lle hynny, enwch berchennog a mynnwch adolygiad.
- **Credu ffigurau gwerthwyr.** Ni wirir honiadau budd. Yn lle hynny, profwch ar eich achosion eich hun a mesurwch.
- **Seilio hen.** Mae'r sylfaen wybodaeth yn anghywir ac mae'r AI yn ei hailadrodd. Yn lle hynny, cadwch erthyglau'n gyfredol ac yn berchnogedig.
- **Rhagfarn gudd.** Caiff rhai defnyddwyr neu faterion eu trin yn waeth. Yn lle hynny, profwch ar draws grwpiau ac adolygwch allbynnau.
- **Awtomeiddio cyn deall.** Mae AI yn gweithredu ar gynhyrchu heb wiriadau. Yn lle hynny, dechreuwch gydag awgrymu ac adolygu, a symudwch at weithredu dim ond gyda diogelwch cryf.
- **Dim cofnodion.** Ni ellir archwilio penderfyniadau. Yn lle hynny, cadwch logiau o'r hyn a ofynnwyd, a gynhyrchwyd a phenderfynwyd.

## Model aeddfedrwydd

| Dimensiwn | Cychwyn | Datblygu | Safoni | Rheoli | Cydlynu |
|---|---|---|---|---|---|
| Polisi ac atebolrwydd | Mae defnydd yn ad hoc ac heb ei gofnodi | Mae gan rai timau reolau | Polisi ysgrifenedig, rhestr defnyddiau a pherchnogion a enwir | Adolygir cydymffurfio â pholisi a digwyddiadau | Alinir polisi ar draws timau, cyflenwyr a rheoleiddwyr |
| Ansawdd a seilio | Ymddiriedir mewn allbwn yn ddiofyn | Rhai gwiriadau ar ddefnyddiau pwysig | Seilir atebion ar ffynonellau cymeradwy a'u profi ar achosion go iawn | Mesurir a gweithredir ar gyfraddau gwall a threchu | Rhennir a gwellir seilio a phrofion ar draws timau |
| Diogelu data a thegwch | Gludir data'n rhydd | Mae rhai rheolau data'n bodoli | Mae rheolau trin data a gwiriadau rhagfarn yn rheolaidd | Olrheinir a thrwsir digwyddiadau data a chanfyddiadau tegwch | Cydlynir arferion data a thegwch ar draws y sefydliad a chyflenwyr |
| Gwerth a dysgu | Tybir gwerth | Rhedir rhai treialon | Mae gan beilotiaid fesurau a phenderfyniadau y cytunwyd arnynt | Mesurir budd a chostau yn erbyn llinellau sylfaen | Mae dysgu o ddefnydd AI yn lledaenu ar draws gwasanaethau yn barhaus |

## Rhestr wirio

- [ ] Mae gennym restr o ble y defnyddir AI yn ein gwasanaethau neu o'u cwmpas, gan gynnwys defnydd answyddogol.
- [ ] Mae person a enwir yn atebol am bob defnydd a gynorthwyir gan AI.
- [ ] Mae polisi ysgrifenedig yn dweud pa ddata all fynd i ba offer.
- [ ] Tynnir neu guddir data personol a chyfrinachau cyn eu defnyddio gydag offer nad ydynt wedi'u cymeradwyo ar eu cyfer.
- [ ] Seilir atebion a ddangosir i gwsmeriaid neu a ddefnyddir mewn penderfyniadau ar ddeunydd cymeradwy a'u hadolygu.
- [ ] Mae gennym set brawf o achosion go iawn ac rydym yn ei hailredeg ar ôl newidiadau.
- [ ] Dywedir wrth gwsmeriaid pan fo system awtomataidd yn ateb, lle mae'n bwysig, ac mae ganddynt lwybr at berson.
- [ ] Rydym yn mesur cyfradd trechu, cyfradd gwall, amser a arbedir, a barn defnyddwyr.
- [ ] Cedwir cofnodion ar gyfer penderfyniadau arwyddocaol a gynorthwywyd gan AI.
- [ ] Mae staff cyfreithiol, diogelwch a phreifatrwydd wedi adolygu ein defnydd a thelerau'r offeryn.

## Anogwyr AI

**Pwrpas: drafftio rhestr defnyddiau AI o'r hyn y mae pobl yn ei ddweud wrthych.**

```text
Helpwch fi i strwythuro rhestr o ddefnydd AI yn ein sefydliad gwasanaeth.

Beth mae pobl wedi'i ddweud wrthym eu bod yn defnyddio AI ar ei gyfer (gludwch nodiadau; tynnwch enwau): [gludwch].
Offer a grybwyllwyd: [rhestrwch].
Mathau o ddata dan sylw, hyd y gwyddom: [rhestrwch].

Cynhyrchwch dabl gyda: defnydd, offeryn, data dan sylw, pwy sy'n atebol (defnyddiwch "anhysbys" os na roddwyd), risg os yw'n anghywir (isel, canolig, uchel gyda rheswm un frawddeg o'm nodiadau), ac un cwestiwn i'w ofyn. Peidiwch â dyfalu am offer neu delerau na soniais amdanynt. Gofynnwch gwestiynau eglurhaol yn gyntaf, a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

**Pwrpas: dylunio set brawf ar gyfer cynorthwyydd AI.**

```text
Dyluniwch set brawf ar gyfer cynorthwyydd AI sy'n awgrymu atebion i gwestiynau'r ddesg gwasanaeth.

Y ffynonellau gwybodaeth y bydd yn eu defnyddio: [disgrifiwch].
Mathau o gwestiwn a gawn: [rhestrwch gyda chyfran fras os gwyddoch].
Achosion lle mai'r ateb cywir yw "ddim yn y sylfaen wybodaeth" neu "uwchgyfeirio": [disgrifiwch].

Cynigiwch strwythur ar gyfer 100-200 o achosion prawf (categorïau, sut i ddewis enghreifftiau go iawn, sut i gofnodi'r ateb cywir a'i ffynhonnell), sut i sgorio atebion (cywir, rhannol gywir, anghywir, anghywir yn hyderus, gwrthod yn gywir), a sut i ailadrodd ar ôl newidiadau. Peidiwch â dyfeisio cynnwys prawf; dywedwch wrthyf beth i'w gasglu. Gofynnwch gwestiynau eglurhaol yn gyntaf, a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

**Pwrpas: ysgrifennu polisi defnydd AI un dudalen ar gyfer tîm.**

```text
Drafftiwch bolisi defnydd AI un dudalen ar gyfer [tîm].

Offer cymeradwy: [rhestrwch, neu ysgrifennwch "dim eto"].
Data a drinnir gennym (mathau a sensitifrwydd): [rhestrwch].
Rheolau y mae'n rhaid i ni eu dilyn, gyda thestun ffynhonnell gan gyfreithiol, diogelwch neu gontractau: [gludwch, neu ysgrifennwch "dim yn hysbys"].
Rolau: [rhestrwch].

Ysgrifennwch adrannau mewn iaith blaen: at ba ddibenion y gellir defnyddio AI, pa ddata y gellir ac na ellir ei roi mewn offer, beth sy'n rhaid i berson ei wirio cyn ei ddefnyddio, pwy sy'n atebol, sut i gofnodi defnyddiau arwyddocaol, sut i adrodd am broblemau. Marciwch bob eitem sy'n rhagdybiaeth. Peidiwch â datgan bod unrhyw gyfraith yn mynnu rhywbeth oni bai fy mod wedi gludo ei destun. Gofynnwch gwestiynau eglurhaol yn gyntaf, a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

**Pwrpas: adolygu ateb a gynhyrchwyd gan AI cyn iddo fynd at ddefnyddiwr.**

```text
Dyma ddrafft ateb a gynhyrchwyd gan offeryn AI ar gyfer cwestiwn defnyddiwr.

Cwestiwn y defnyddiwr: [gludwch, gyda data personol wedi'i dynnu].
Yr erthygl(au) gwybodaeth y dylai'r ateb fod yn seiliedig arnynt: [gludwch].
Y drafft ateb: [gludwch].

Gwiriwch y drafft yn erbyn yr erthygl yn unig. Rhestrwch ddatganiadau a gefnogir gan yr erthygl (dyfynnwch y rhan), datganiadau na chefnogir, unrhyw beth sydd ar goll y byddai'r defnyddiwr ei angen, a'r tôn. Awgrymwch fersiwn wedi'i chywiro sy'n defnyddio'r erthygl yn unig. Peidiwch ag ychwanegu ffeithiau. Rhestrwch yr hyn nad ydych yn siŵr ohono.
```

## Sgiliau AI

- [prompt-engineering](../../../../skills/prompt-engineering/SKILL.md): defnyddiwch i ysgrifennu anogwyr clir sy'n cyflenwi'r deunydd cywir ac yn gofyn am ansicrwydd.
- [machine-learning-model-card](../../../../skills/machine-learning-model-card/SKILL.md): defnyddiwch i ddogfennu pwrpas model, sut y'i profwyd, a'i derfynau.
- [data-governance](../../../../skills/data-governance/SKILL.md): defnyddiwch i benderfynu pa ddata y gellir ei ddefnyddio gyda pha offer.
- [legal-data-privacy-compliance](../../../../skills/legal-data-privacy-compliance/SKILL.md): defnyddiwch i baratoi cwestiynau i staff cyfreithiol a phreifatrwydd am ddefnydd AI.
- [risk-register](../../../../skills/risk-register/SKILL.md): defnyddiwch i gofnodi risgiau, perchnogion a thriniaethau sy'n gysylltiedig ag AI.

(Mae'r sgiliau eu hunain wedi'u hysgrifennu yn Saesneg.)

## Prif ffynonellau

- **AIOps** (Wikipedia): disgrifiad byr o AI ar gyfer gweithrediadau TG, ei alluoedd, a'i fanteision honedig, heb unrhyw feirniadaethau.
- **Hallucination (artificial intelligence)** (Wikipedia): achosion, enghreifftiau a syniadau lliniaru ar gyfer allbwn ffug.
- **AI Risk Management Framework** (NIST): y fframwaith gwirfoddol a'i broffil AI cynhyrchiol; darllenwch y fframwaith ei hun am y manylion.
- **ITIL certifications** (PeopleCert): datganiadau cyhoeddus y perchennog am yr ITIL newydd a'i fodiwl llywodraethu AI.

Mae'r ffynonellau hyn yn Saesneg.

## Cyfeiriadau

1. AIOps — Wikipedia — https://en.wikipedia.org/wiki/AIOps
2. Hallucination (artificial intelligence) — Wikipedia — https://en.wikipedia.org/wiki/Hallucination_(artificial_intelligence)
3. AI Risk Management Framework — NIST — https://www.nist.gov/itl/ai-risk-management-framework
4. ITIL certifications — PeopleCert — https://www.peoplecert.org/browse-certifications/it-governance-and-service-management/ITIL-1
5. Retrieval-augmented generation — Wikipedia — https://en.wikipedia.org/wiki/Retrieval-augmented_generation
6. Artificial intelligence — Wikipedia — https://en.wikipedia.org/wiki/Artificial_intelligence
7. Large language model — Wikipedia — https://en.wikipedia.org/wiki/Large_language_model
8. Algorithmic bias — Wikipedia — https://en.wikipedia.org/wiki/Algorithmic_bias
9. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
