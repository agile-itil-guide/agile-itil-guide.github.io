# Rheoli Lefelau Gwasanaeth

**Mae rheoli lefelau gwasanaeth yn troi'r hyn sydd ei angen ar ddefnyddwyr yn dargedau y gall tîm eu mesur a'u hamddiffyn. Y ffurf fwyaf defnyddiol i dimau ystwyth yw nifer fach o amcanion sy'n canolbwyntio ar ddefnyddwyr gyda chyllideb eglur ar gyfer methiant.**

## Pam mae hyn yn bwysig

Mae gan bob gwasanaeth lefel o ansawdd, p'un a yw rhywun wedi'i mesur ai peidio. Os na chaiff ei datgan, mae defnyddwyr yn tybio un ac mae'r tîm yn tybio un arall, a darganfyddir y bwlch yn ystod toriad. Rheoli lefelau gwasanaeth yw'r arfer o ddatgan y lefel, ei mesur, a gweithredu ar y canlyniadau. Mae'n rhoi rhywbeth i dîm lywio ganddo ac yn rhoi rhywbeth i gwsmeriaid ddibynnu arno.

Mae timau ystwyth yn aml yn gwrthsefyll lefelau gwasanaeth oherwydd eu bod yn eu cysylltu â chontractau a chosbau. Ac eto mae tîm ystwyth sy'n rhyddhau'n wythnosol yn gwneud penderfyniad, p'un a yw'n gwybod hynny ai peidio, ynglŷn â faint o risg i'w chymryd gydag argaeledd. Mae amcan clir yn gwneud y penderfyniad hwnnw'n eglur. Mae llyfr *Site Reliability Engineering* Google, yn ei bennod ar amcanion lefel gwasanaeth, yn disgrifio sut i wneud hyn mewn ffordd sy'n gweddu i dimau sy'n symud yn gyflym: dewis ychydig o ddangosyddion sy'n bwysig i ddefnyddwyr, gosod targedau, a defnyddio'r lle rhwng perffaith a derbyniol, y gyllideb gwallau, i benderfynu pryd i ryddhau.

Mae'r pwnc hwn yn cyfuno'r bennod honno â'r [erthygl Wikipedia ar gytundebau lefel gwasanaeth](https://en.wikipedia.org/wiki/Service-level_agreement) (yn Saesneg) am ddiffiniadau cytundebau, ac ag eirfa ITIL a ddefnyddir yn eang na allai'r canllaw hwn ei chadarnhau yn erbyn testun perchennog y fframwaith. Mae pennod SRE yn adlewyrchu arfer un sefydliad ac yn dadlau dros ddull penodol; darllenwch hi fel opsiwn wedi'i egluro'n dda, nid fel rheol gyffredinol.

## Cysyniadau craidd

### Dangosydd, amcan, cytundeb

Mae pennod SRE yn gwahaniaethu rhwng tri thymor sy'n aml yn cael eu drysu:

| Term | Ystyr | Enghraifft |
|---|---|---|
| **Dangosydd lefel gwasanaeth (SLI)** | Mesur meintiol wedi'i ddiffinio'n ofalus o ryw agwedd ar lefel y gwasanaeth | Cyfran y ceisiadau wedi'u ffurfio'n dda sy'n llwyddo |
| **Amcan lefel gwasanaeth (SLO)** | Gwerth neu ystod darged ar gyfer SLI | Mae o leiaf 99.9% o geisiadau'n llwyddo dros fis |
| **Cytundeb lefel gwasanaeth (SLA)** | Contract eglur neu ymhlyg gyda defnyddwyr sy'n cynnwys canlyniadau am fodloni neu fethu'r amcanion, ariannol gan amlaf | Ad-daliad os yw argaeledd yn disgyn o dan lefel benodol |

Prawf y bennod ar gyfer gwahaniaethu SLA oddi wrth SLO yw a oes canlyniad eglur. Os nad oes, SLO ydyw. Darluniau yw'r rhifau enghreifftiol yn y tabl, nid argymhellion.

Mae'r erthygl Wikipedia yn disgrifio SLA fel cytundeb, contract rhwymol fel arfer, rhwng darparwr a chwsmer sy'n diffinio agweddau ar y gwasanaeth fel ansawdd, argaeledd a chyfrifoldebau. Mae'n rhestru cynnwys nodweddiadol: disgrifiad o'r gwasanaeth, lefelau perfformiad, monitro ac adrodd, sut yr adroddir materion, amserlenni ymateb a datrys, a chanlyniadau am beidio â pherfformio. Mae'n enwi metrigau cyffredin fel yr amser cymedrig rhwng methiannau, yr amser cymedrig i atgyweirio, amser gweithredol, datrysiad galwad gyntaf, ac amser troi rownd. Mae'n nodi bod sefydliadau mawr yn aml yn defnyddio SLAs mewnol rhwng unedau. Mae'n disgrifio mathau yn ôl cwmpas: sy'n seiliedig ar gwsmeriaid, sy'n seiliedig ar wasanaeth, ac aml-lefel.

### Dewis dangosyddion

Mae pennod SRE yn cynghori dewis ychydig o ddangosyddion sy'n adlewyrchu'r hyn y mae defnyddwyr yn gofalu amdano, nid pob metrig y gallwch ei olrhain. Mae systemau sy'n wynebu defnyddwyr fel arfer yn canolbwyntio ar argaeledd, hwyrni a thrwybwn. Mae systemau storio yn ychwanegu gwydnwch, a dylai pob system olrhain cywirdeb. Mae'n awgrymu y gall mesur ochr cleient ddal problemau y mae metrigau ochr gweinydd yn eu colli. Canlyniad ymarferol i dimau gwasanaeth: dechreuwch gyda phrofiad y defnyddiwr, fel "gallaf archebu apwyntiad ac mae'n cymryd ychydig eiliadau", ac yna canfyddwch ddangosydd sy'n ei gyfateb yn fras.

### Mae cyfartaleddau yn cuddio poen

Mae'r bennod yn dadlau yn erbyn dibynnu ar gyfartaleddau: "Most metrics are better thought of as distributions rather than averages." Mae canraddau uchel, fel y 99fed neu'r 99.9fed, yn dangos yr achosion gwaethaf credadwy, tra bod y canolrif yn dangos yr achos nodweddiadol. Gall cyfartaleddau guddio cynffon hir o geisiadau araf. Os cyfartaledd yw eich mesur, gallai ychydig o ddefnyddwyr fod yn cael amser gwael iawn heb i'r rhif symud.

### Dewis targedau

Mae arweiniad y bennod ar dargedau yn uniongyrchol ac yn ddefnyddiol:

- **Dechreuwch o ddefnyddwyr.** "Start by thinking about (or finding out!) what your users care about, not what you can measure."
- **Peidiwch â'ch angori ar berfformiad cyfredol.** Gall dewis targed yn seiliedig ar yr hyn a gyflawnwch nawr gloi ymdrech arwrol i mewn.
- **Cadwch ef yn syml.** Mae agregiadau cymhleth yn cuddio newidiadau ac yn anoddach i resymu amdanynt.
- **Osgowch absoliwtau.** Mae addewidion o "bob amser" ar gael yn afrealistig.
- **Cael cyn lleied o SLOs â phosibl.** Dylai pob un fod yn werth ei amddiffyn mewn trafodaeth flaenoriaeth.
- **Gall perffeithrwydd aros.** Mae'n well dechrau gyda tharged llac y byddwch yn ei dynhau nag un y mae'n rhaid ei lacio yn nes ymlaen.

### Cyllidebau gwallau

Mae'r bennod yn dweud bod mynnu cydymffurfiaeth 100% yn afrealistig ac yn arafu arloesi. Yn lle hynny, mae timau'n caniatáu **cyllideb gwallau (error budget)**: y gyfradd y gellir methu SLO, wedi'i holrhain yn ddyddiol, yn wythnosol neu'n fisol. Mae'r gyllideb yn hysbysu penderfyniadau am ryddhadau. Pan fo digon o gyllideb ar ôl, gall tîm gymryd mwy o risg gyda newid; pan fo bron wedi'i gwario, mae'r tîm yn arafu newid ac yn buddsoddi mewn dibynadwyedd. Mae hyn yn rhoi ffordd a rennir, rifol i dimau ystwyth a gweithrediadau ddadlau am gyflymder yn erbyn sefydlogrwydd, yn lle dadl trwy awdurdod.

### Gosod disgwyliadau

Mae'r bennod yn nodi bod cyhoeddi SLO yn gosod disgwyliadau defnyddwyr. Gall timau gadw ymyl diogelwch gyda tharged mewnol tynnach. Mae hefyd yn rhybuddio rhag gorgyflawni, gan fod defnyddwyr yn dod i ddibynnu ar ba berfformiad bynnag y maent yn ei arsylwi. Os yw gwasanaeth yn llawer gwell na'i amcan datganedig, bydd defnyddwyr yn adeiladu arno, ac nid yw'r amcan yn amddiffyn y tîm mwyach.

### Y ddolen reoli

Mae'r bennod yn disgrifio SLIs ac SLOs fel sail dolen reoli: monitro'r SLIs, eu cymharu â'r SLOs, penderfynu a oes angen gweithredu, gweithio allan pa weithred fydd yn bodloni'r targed, a'i chymryd. Heb SLO, ni all tîm ddweud a ddylai neu pryd i weithredu (gweler Pwnc 3.10 — Monitro a Rheoli Hysbysiadau).

### Cytundebau mewnol ac allanol

Mae SLA rhwng darparwr a chwsmer. O fewn darparwr, mae timau'n dibynnu ar ei gilydd ac ar gyflenwyr. Mae'r erthygl Wikipedia yn crybwyll y gall SLAs gael eu cefnogi gan gytundebau lefel weithredol (OLAs) ond nid yw'n eu hegluro. Yn eirfa ITIL, cytundeb rhwng timau mewnol sy'n cefnogi SLA yw OLA, a chontract ategol (underpinning contract) yw'r cywerth gyda chyflenwr allanol. Nid yw'r ffynonellau a ddarllenwyd yma yn cadarnhau'r diffiniadau hynny, felly gwiriwch hwy yn erbyn cyhoeddiadau ITIL. Y pwynt ymarferol yw mai dim ond cystal â'r addewidion y tu ôl iddo yw addewid i gwsmer (gweler Pwnc 3.14 — Rheoli Cyflenwyr).

### Disgwyliadau lefel gwasanaeth yn Kanban

Yn Kanban, mae **disgwyliad lefel gwasanaeth** (service level expectation) yn rhagolwg o ba mor hir y dylai eitem waith ei gymryd, yn seiliedig ar amseroedd beicio'r gorffennol (gweler Pwnc 1.5 — Kanban). Nid cytundeb ydyw, ond mae'n gwasanaethu pwrpas tebyg ar gyfer eitemau gwaith, a gall fwydo targedau ar gyfer ceisiadau a digwyddiadau.

## Arferion gorau

1. **Dechreuwch â'r hyn sydd ei angen ar ddefnyddwyr.** Gofynnwch i ddefnyddwyr a chwsmeriaid beth sydd bwysicaf a beth sy'n brifo pan fydd yn methu. Ysgrifennwch ef yn eu geiriau cyn i chi ddewis mesur.
2. **Dewiswch ychydig o ddangosyddion.** Ar gyfer pob gwasanaeth, dewiswch ddau i bedwar dangosydd sy'n adlewyrchu profiad defnyddwyr, fel cyfradd llwyddo a chyflymder. Gwrthsafwch ychwanegu mwy nes eich bod wedi defnyddio'r rhain.
3. **Defnyddiwch ganraddau ar gyfer cyflymder.** Mesurwch ben araf y dosbarthiad, nid y cyfartaledd yn unig, fel bod defnyddwyr â phrofiad gwael yn weladwy.
4. **Gosodwch dargedau llac yn gyntaf, ac yna tynhewch.** Dechreuwch â tharged y gallwch ei fodloni a'i amddiffyn, a'i dynhau unwaith y bydd gennych ddata a hyder. Mae hyn yn dilyn cyngor y bennod y gall perffeithrwydd aros.
5. **Peidiwch â chopïo perfformiad cyfredol.** Os yw eich gwasanaeth yn rhagorol ar hyn o bryd, peidiwch â gosod amcan ar y lefel honno oni bai bod defnyddwyr ei angen. Mae amcan llacach yn rhoi lle i newid ac yn osgoi ymdrech arwrol.
6. **Cytunwch ar gyllideb gwallau a'i defnyddio.** Diffiniwch faint o fethiant sy'n dderbyniol mewn cyfnod, a gadewch i'r gyllideb sy'n weddill arwain penderfyniadau rhyddhau. Adolygwch hi mewn cyfarfod rheolaidd gyda chyflawni a gweithrediadau gyda'i gilydd.
7. **Ysgrifennwch y cytundeb mewn iaith blaen.** Dylai SLA ddweud beth a ddarperir, sut y mesurir ef, sut yr adroddir problemau, beth sy'n digwydd pan fethir targedau, a phryd y caiff ei adolygu. Osgowch dermau na all ond cyfreithiwr neu beiriannydd eu darllen.
8. **Gwahanwch amcanion oddi wrth gytundebau.** Cadwch amcanion mewnol sy'n dynnach na'r cytundebau rydych yn eu llofnodi. Mae'r ymyl yn rhoi lle i chi ymateb cyn i chi ddyled unrhyw beth.
9. **Gwyddoch ar beth mae eich addewid yn dibynnu.** Rhestrwch y timau a'r cyflenwyr y mae lefel eich gwasanaeth yn dibynnu arnynt, a gwiriwch fod eu hymrwymiadau'n cefnogi eich rhai chi.
10. **Adroddwch ar ffurf y gall cwsmeriaid ei defnyddio.** Rhannwch ganlyniadau'n rheolaidd, gyda sylw byr ar yr hyn a ddigwyddodd a'r hyn rydych yn ei wneud. Osgowch ddangosfyrddau heb sylwebaeth.
11. **Adolygwch dargedau gyda chwsmeriaid.** O leiaf yn flynyddol, gofynnwch a yw'r lefelau'n dal i gyd-fynd â'r hyn sydd ei angen ar gwsmeriaid a'r hyn y gallwch ei gyflawni. Newidiwch hwy pan fo'r ateb yn na.
12. **Peidiwch â defnyddio lefelau gwasanaeth i gosbi pobl.** Defnyddiwch hwy i ddechrau sgyrsiau a phenderfyniadau. Caiff targed a ddefnyddir fel ffon ei chwarae (gweler Pwnc 5.6 — Metrigau a Mesur).

## Cwestiynau i'w trafod gyda'ch tîm

**Sut olwg sydd ar ddiwrnod da i'n defnyddwyr, a sut y byddem yn gwybod?**

Gofynnwch i'r tîm ddisgrifio, yng ngeiriau'r defnyddiwr, beth yw profiad da o'r gwasanaeth. Yna gofynnwch beth rydym yn ei fesur sy'n cyfateb iddo. Yn aml mae'r mesurau sydd gennym yn disgrifio ein systemau ac nid profiad y defnyddiwr. Gall yr hwylusydd ofyn a fyddem yn sylwi pe bai grŵp o ddefnyddwyr yn cael diwrnod gwael. Dewiswch un dangosydd i'w ychwanegu neu ei newid.

**A oes gennym rif rydym yn ei addo neu'n anelu ato, a phwy gytunodd iddo?**

Rhestrwch y targedau sy'n bodoli, yn ffurfiol neu'n anffurfiol. Ar gyfer pob un, gofynnwch pwy a'i gosododd, pryd, ac ar ba sail. Mae llawer o dargedau'n troi allan i fod wedi'u gosod o arferiad neu gan rywun a adawodd. Trafodwch pa rai y dylid eu cadarnhau, eu newid neu eu gollwng. Cytunwch pwy sy'n berchen ar bob un.

**Faint o fethiant allwn ni ei fforddio, a beth fyddem yn ei wneud â'r lle?**

Cyflwynwch y syniad o gyllideb gwallau. Gofynnwch ba lefel o anargaeledd y byddai defnyddwyr yn ei oddef a beth allai'r tîm ei wneud â'r lle, fel rhyddhau'n gyflymach. Y nod yw gweld y cyfaddawd mewn rhifau. Peidiwch â disgwyl atebion manwl gywir; gofynnwch am ddyfaliad cyntaf i'w brofi.

**Ble mae ein cyfartaleddau yn cuddio profiadau gwael?**

Edrychwch ar un mesur sy'n adrodd cyfartaledd. Gofynnwch beth mae'r un y cant arafaf o ddefnyddwyr yn ei brofi. Os nad ydych yn gwybod, trafodwch sut i ddarganfod. Yn aml mae grŵp bach o ddefnyddwyr neu adeg benodol o'r dydd yn cael profiad llawer gwaeth. Cynlluniwch i edrych ar un canradd am fis.

**Ar beth rydym yn dibynnu nad ydym wedi gofyn amdano?**

Rhestrwch y gwasanaethau, cyflenwyr a thimau y mae eich gwasanaeth yn dibynnu arnynt. Ar gyfer pob un, gofynnwch beth maent wedi'i addo a sut y byddech yn gwybod pe baent yn methu. Nid oes lefel ddatganedig i lawer o ddibyniaethau. Dewiswch y pwysicaf ac agorwch sgwrs.

**Pryd newidiodd targed ddiwethaf, a beth a'i sbardunodd?**

Gofynnwch am y newid diwethaf. Os oedd amser hir yn ôl, gofynnwch beth sydd wedi newid mewn anghenion defnyddwyr neu allu'r tîm ers hynny. Trafodwch adolygiad rheolaidd. Sbardunau da yw anghenion defnyddwyr newydd, digwyddiadau a ddatgelodd darged afrealistig, neu newid mewn pensaernïaeth.

## Yn ymarferol: enghraifft o ITIL ystwyth

Mae gweithredydd loteri cenedlaethol yn rhedeg gwasanaeth prynu tocynnau ar-lein. Mae tîm o ddeuddeg yn ei adeiladu ac yn ei redeg. Mae gan y busnes reol anffurfiol bod yn rhaid i'r gwasanaeth fod "bob amser i fyny", tra bod y tîm yn rhyddhau ddwywaith yr wythnos ac wedi cael pedwar toriad byr mewn blwyddyn. Ar ôl penwythnos gwael, mae'r noddwr gweithredol yn mynnu "argaeledd 100%", ac mae arweinydd y tîm yn poeni y bydd hyn yn rhoi diwedd ar ryddhau mynych.

Mae arweinydd y tîm a'r noddwr yn cynnal gweithdy gyda phennaeth gwasanaeth cwsmeriaid. Maent yn gofyn beth sy'n bwysig i chwaraewyr. Yr ateb yw bod yn rhaid i chwaraewyr allu prynu tocyn yn yr awr cyn i gêm gau; y tu allan i'r awr honno gall y gwasanaeth fod i lawr am funudau heb niwed. Maent yn diffinio dangosydd: cyfran yr ymdrechion prynu sy'n llwyddo yn y ddwy awr cyn i bob gêm gau. Maent yn gosod amcan y mae'r tîm yn credu y gall ei fodloni, ychydig islaw ei berfformiad diweddar, ac yn cytuno ar gyllideb gwallau ar gyfer pob mis. Maent hefyd yn cytuno, pan fo'r gyllideb bron wedi'i gwario, bod rhyddhadau sy'n cyffwrdd â phrynu yn stopio tan y mis nesaf, a bod y tîm yn buddsoddi mewn dibynadwyedd.

Dri mis yn ddiweddarach mae'r gyllideb wedi'i defnyddio unwaith, mewn mis gyda methiant darparwr taliadau, ac mae'r tîm yn oedi rhyddhadau peryglus am bythefnos heb wrthdaro. Mae'r amcan yn rhoi ffordd a rennir i'r tîm a'r noddwr siarad. Erys rhai anawsterau. Mae ymrwymiad y darparwr taliadau ei hun yn wannach nag amcan y tîm, felly mae addewid y tîm yn dibynnu ar gyflenwr nad yw wedi cytuno iddo. Mae'r mesur hefyd yn anwybyddu tudalen dalu araf y mae defnyddwyr yn cwyno amdani, oherwydd ei fod yn cyfrif llwyddiant yn unig. Mae'r tîm yn ychwanegu dangosydd cyflymder ar y 99fed canradd ac yn agor sgyrsiau gyda'r darparwr am ei lefelau gwasanaeth.

## Pedwar persbectif

### Timau cynnyrch a chyflawni

Dylai timau cyflawni helpu i ddewis dangosyddion a defnyddio'r gyllideb gwallau wrth gynllunio. Adeiladwch y mesur i'r gwasanaeth fel bod y rhifau'n ddibynadwy. Triniwch gyllideb ddihysbydd fel rheswm i weithio ar ddibynadwyedd, nid fel cosb.

### Timau gwasanaeth a gweithrediadau

Fel arfer mae timau gweithrediadau'n rhedeg y monitro ac yn adrodd ar lefelau. Cadwch y set o fesurau yn fach, dangoswch hwy gyda sylwebaeth, a dewch â'r data i sgyrsiau cynllunio. Cadwch restr o'r hyn y mae eich gwasanaeth yn dibynnu arno a gwiriwch fod ymrwymiadau'n cyd-fynd.

### Arweinyddiaeth a llywodraethu

Mae arweinwyr a noddwyr yn gosod disgwyliadau. Osgowch ofyn am berffeithrwydd; gofynnwch beth sydd ei angen ar ddefnyddwyr a beth mae'r cyfaddawd yn ei gostio. Cefnogwch ddefnyddio cyllideb gwallau fel rheol a rennir, a gwnewch yn siŵr ei bod yn berthnasol i'ch ceisiadau eich hun hefyd. Adolygwch lefelau gwasanaeth gyda chwsmeriaid ar amserlen.

### Cwsmeriaid a defnyddwyr

Mae cwsmeriaid a defnyddwyr yn elwa pan fo lefel y gwasanaeth yn cael ei datgan a'i bodloni. Dywedwch beth sy'n bwysig i chi, gan gynnwys pryd. Gofynnwch am adroddiadau mewn ffurf y gallwch eu deall, a dywedwch wrth y darparwr pan nad yw'r lefel ddatganedig yn ffitio eich anghenion mwyach.

## Dulliau methu cyffredin

- **Gormod o fetrigau.** Nid oes neb yn gwybod pa un sy'n bwysig. Yn lle hynny, dewiswch ychydig sy'n adlewyrchu profiad defnyddwyr.
- **Cyfartaleddau yn unig.** Mae grŵp o ddefnyddwyr yn dioddef tra bod y cyfartaledd yn edrych yn iawn. Yn lle hynny, cynhwyswch fesur canradd uchel.
- **Targedau wedi'u copïo o berfformiad cyfredol.** Mae'r tîm wedi'i gloi i mewn i arwriaeth. Yn lle hynny, gosodwch amcanion o anghenion defnyddwyr a thynhewch gyda data.
- **Mynnu 100%.** Mae rhyddhadau'n stopio ac mae arloesi'n arafu. Yn lle hynny, cytunwch ar gyllideb gwallau a rheol ar gyfer ei defnyddio.
- **Addewidion na allwch eu cefnogi.** Mae lefel y gwasanaeth yn dibynnu ar gyflenwyr nad ydynt wedi cytuno. Yn lle hynny, gwiriwch ddibyniaethau ac alinio ymrwymiadau.
- **Cytundebau na all neb eu darllen.** Mae telerau mewn iaith gyfreithiol. Yn lle hynny, ysgrifennwch yn blaen ac adolygwch gyda chwsmeriaid.
- **Dangosfyrddau heb sylwebaeth.** Adroddir rhifau heb ystyr. Yn lle hynny, ychwanegwch esboniad byr o'r hyn a ddigwyddodd a'r hyn a newidir.
- **Cosbi methiannau.** Mae pobl yn cuddio problemau. Yn lle hynny, defnyddiwch fethiannau i sbarduno penderfyniadau a dysgu.

## Model aeddfedrwydd

| Dimensiwn | Cychwyn | Datblygu | Safoni | Rheoli | Cydlynu |
|---|---|---|---|---|---|
| Diffinio lefelau | Tybir lefelau neu maent yn anffurfiol | Mae gan rai gwasanaethau dargedau datganedig | Mae gan bob gwasanaeth ddangosyddion ac amcanion sy'n seiliedig ar ddefnyddwyr gyda pherchnogion | Adolygir amcanion yn erbyn anghenion defnyddwyr a data | Gosodir lefelau ar y cyd â chwsmeriaid a chyflenwyr |
| Mesur | Mae mesurau'n ad hoc | Mesurir rhai dangosyddion | Mesurir dangosyddion yn ddibynadwy, gan gynnwys canraddau | Adolygir ansawdd mesur a thrwsir bylchau | Rhennir a dilysir mesur ar draws timau a chyflenwyr |
| Defnyddio cyllidebau gwallau | Mae methiant heb ei gynllunio | Mae rhai timau'n trafod methiant derbyniol | Mae cyllidebau'n arwain penderfyniadau rhyddhau ar wasanaethau allweddol | Adolygir defnydd cyllideb ac addasir rheolau | Cydlynir cyllidebau ar draws gwasanaethau dibynnol |
| Cytundebau a dibyniaethau | Mae addewidion yn anffurfiol | Mae rhai cytundebau'n bodoli | Mae cytundebau mewn iaith blaen, gyda dibyniaethau hysbys | Gwirir cytundebau ac ymrwymiadau cyflenwyr yn erbyn canlyniadau | Mae cytundebau'n ffurfio cadwyn gyson ar draws timau, cyflenwyr a chwsmeriaid |

## Rhestr wirio

- [ ] Ar gyfer pob gwasanaeth, rydym wedi disgrifio yng ngeiriau defnyddwyr sut olwg sydd ar dda.
- [ ] Mae gan bob gwasanaeth ddau i bedwar dangosydd sy'n adlewyrchu profiad defnyddwyr.
- [ ] Mae o leiaf un mesur cyflymder yn defnyddio canradd uchel, nid cyfartaledd yn unig.
- [ ] Gosodir amcanion o anghenion defnyddwyr, nid perfformiad cyfredol yn unig.
- [ ] Mae cyllideb gwallau yn bodoli ac yn arwain penderfyniadau rhyddhau ar gyfer o leiaf un gwasanaeth.
- [ ] Ysgrifennir cytundebau mewn iaith blaen a'u hadolygu gyda chwsmeriaid.
- [ ] Rhestrir dibyniaethau ar dimau a chyflenwyr eraill gyda'u hymrwymiadau.
- [ ] Adroddir canlyniadau'n rheolaidd gyda sylwebaeth.
- [ ] Adolygir targedau o leiaf unwaith y flwyddyn.
- [ ] Defnyddir data lefel gwasanaeth mewn cynllunio ac nid fel ffon.

## Anogwyr AI

**Pwrpas: troi anghenion defnyddwyr yn ddangosyddion ac amcanion ymgeisiol.**

```text
Helpwch fi i symud o anghenion defnyddwyr i ddangosyddion ac amcanion ar gyfer [gwasanaeth].

Beth mae defnyddwyr yn ei wneud â'r gwasanaeth a beth sy'n bwysig iddynt (yn eu geiriau, gydag unrhyw adborth neu gwynion): [gludwch].
Mesuriadau y gallwn eu casglu eisoes: [rhestrwch].
Rheolau neu gontractau sy'n gosod lefelau, gyda'r testun ffynhonnell: [gludwch, neu ysgrifennwch "dim yn hysbys"].

Cynigiwch ddau i bedwar dangosydd ymgeisiol sy'n adlewyrchu profiad y defnyddiwr, dywedwch sut y byddai pob un yn cael ei fesur â'r data a restrais, ac awgrymwch sut i fynegi amcan ar gyfer pob un, gan adael targedau rhifol fel [i'w cytuno gyda defnyddwyr a data]. Marciwch unrhyw ddangosydd na allwn ei fesur eto. Peidiwch â dyfeisio targedau na ffigurau perfformiad. Gofynnwch gwestiynau eglurhaol yn gyntaf, a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

**Pwrpas: dadansoddi a yw cyfartaleddau yn cuddio profiadau gwael.**

```text
Dyma amseroedd ymateb (neu fesuriadau eraill) ar gyfer [gwasanaeth] dros [cyfnod]: [gludwch golofn o werthoedd go iawn, neu ffigurau cryno fel y canolrif, y 90fed, y 99fed canradd os oes gennych].

Gan ddefnyddio fy nata i yn unig, cyfrifwch neu disgrifiwch y cyfartaledd, y canolrif a'r canraddau uchel os yw'r data'n caniatáu. Eglurwch mewn geiriau plaen beth mae'r bwlch rhwng y cyfartaledd a'r canraddau uchel yn ei awgrymu i ddefnyddwyr. Awgrymwch un dangosydd ac un cwestiwn i'w ofyn. Peidiwch â dyfeisio data, a dywedwch os yw'r data'n rhy denau. Rhestrwch yr hyn nad ydych yn siŵr ohono.
```

**Pwrpas: drafftio amlinelliad cytundeb lefel gwasanaeth mewn iaith blaen.**

```text
Drafftiwch amlinelliad ar gyfer cytundeb lefel gwasanaeth ar gyfer [gwasanaeth] rhwng [darparwr] a [cwsmer].

Beth rydym yn ei ddarparu: [disgrifiwch].
Mesurau a thargedau y cytunwyd arnynt eisoes neu sy'n cael eu cynnig: [gludwch, neu ysgrifennwch "i'w cytuno"].
Oriau cymorth a chysylltiadau: [disgrifiwch].
Dibyniaethau ar gyflenwyr: [rhestrwch].
Telerau y mae'n rhaid i ni eu cynnwys oherwydd contract neu gyfraith, gyda thestun ffynhonnell: [gludwch, neu ysgrifennwch "dim yn hysbys"].

Cynhyrchwch amlinelliad gydag adrannau iaith blaen: disgrifiad o'r gwasanaeth, oriau, mesurau a sut y cânt eu mesur, sut i adrodd problem, disgwyliadau ymateb a datrys (wedi'u marcio [i'w cytuno]), beth sy'n digwydd os methir targedau, adrodd, dyddiad adolygu. Peidiwch â dyfeisio telerau cyfreithiol. Gofynnwch gwestiynau eglurhaol yn gyntaf, nodwch ragdybiaethau, a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

**Pwrpas: cynllunio polisi cyllideb gwallau.**

```text
Helpwch fi i ddrafftio polisi cyllideb gwallau ar gyfer [gwasanaeth].

Amcan a chyfnod: [er enghraifft, "cyfradd llwyddo ymdrechion prynu yn y ddwy awr cyn i gêm gau, wedi'i mesur yn fisol"].
Perfformiad cyfredol os yw'n hysbys: [gludwch, neu ysgrifennwch "anhysbys"].
Rhythm rhyddhau: [disgrifiwch].
Pwy sy'n penderfynu, a phwy sy'n cael eu heffeithio: [rolau].

Drafftiwch bolisi un dudalen: sut mae'r gyllideb yn cael ei chyfrifo o'r amcan, sut y caiff ei defnydd ei olrhain a'i ddangos, beth sy'n digwydd ar dri cham defnydd (defnyddiwch [i'w gytuno] ar gyfer trothwyon), pwy gaiff drechu a sut, a sut y caiff y polisi ei adolygu. Peidiwch â dyfeisio rhifau. Gofynnwch gwestiynau eglurhaol yn gyntaf, a rhestrwch yr hyn nad ydych yn siŵr ohono.
```

## Sgiliau AI

- [service-level-agreement](../../../../skills/service-level-agreement/SKILL.md): defnyddiwch i ddrafftio neu adolygu cytundeb mewn iaith blaen.
- [software-engineering-metrics](../../../../skills/software-engineering-metrics/SKILL.md): defnyddiwch i ddewis a dehongli mesurau cyflawni a pherfformiad gwasanaeth.
- [key-risk-indicators](../../../../skills/key-risk-indicators/SKILL.md): defnyddiwch i ddewis dangosyddion rhybudd cynnar sy'n dangos bod lefel gwasanaeth mewn perygl.
- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): defnyddiwch i wirio bod capasiti yn cefnogi'r lefelau rydych yn eu haddo.
- [vendor-management](../../../../skills/vendor-management/SKILL.md): defnyddiwch i alinio ymrwymiadau cyflenwyr â'r lefelau rydych yn eu cynnig.

(Mae'r sgiliau eu hunain wedi'u hysgrifennu yn Saesneg.)

## Prif ffynonellau

- **Service Level Objectives** (*Site Reliability Engineering*, Google, sre.google): yr esboniad cyhoeddus cliraf o ddangosyddion, amcanion, cytundebau, canraddau a chyllidebau gwallau.
- **Service-level agreement** (Wikipedia): y diffiniad, cynnwys nodweddiadol, mathau a hanes SLAs.
- **DORA's software delivery performance metrics** (dora.dev): mesurau cysylltiedig o gyflymder a sefydlogrwydd cyflawni.
- **Quality of service** (Wikipedia): cefndir ar sut y disgrifir ac y mesurir ansawdd gwasanaeth.

Mae'r ffynonellau hyn yn Saesneg.

## Cyfeiriadau

1. Service Level Objectives — Google SRE book, sre.google — https://sre.google/sre-book/service-level-objectives/
2. Service-level agreement — Wikipedia — https://en.wikipedia.org/wiki/Service-level_agreement
3. DORA's software delivery performance metrics — DORA, dora.dev — https://dora.dev/guides/dora-metrics-four-keys/
4. Quality of service — Wikipedia — https://en.wikipedia.org/wiki/Quality_of_service
5. Percentile — Wikipedia — https://en.wikipedia.org/wiki/Percentile
6. Service-level objective — Wikipedia — https://en.wikipedia.org/wiki/Service-level_objective
7. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
8. Goodhart's law — Wikipedia — https://en.wikipedia.org/wiki/Goodhart%27s_law
9. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
