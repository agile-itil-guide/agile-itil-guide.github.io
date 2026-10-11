# アジャイルマニフェスト

**アジャイルソフトウェア開発宣言は、二つの良いものが引き合うときに何を優先すべきかをチームに示す四つの短い価値観であり、その選択は、サービスを作る場面と同じくらい、稼働中のサービスを運用する場面でも重要です。**

## なぜ重要なのか

アジャイルマニフェストは、このガイドのほとんどすべての内容の根っこにあります。スクラム、カンバン、エクストリームプログラミング、DevOps は、いずれもマニフェストが述べる価値観に沿って行動する方法です。実践だけを知っていると、儀式をまねるだけで理由を見落とし、儀式がうまく働かなくなったときに頼れるものがなくなります。

ITサービスマネジメント(ITSM)にとっても、実務的な理由で重要です。今日サービスを運用しているチームの多くは、そのサービスを開発もしており、この二つの仕事は逆の方向に引っ張ります。開発は変化と速度に報い、運用は安定と予測可能性に報います。マニフェストはこの緊張を取り除きはしませんが、チームが共通の言葉で語る手がかりを与えます。ここではどの価値観を優先していて、その代償は何か、という問いです。

マニフェストが何でないかを知っておくことも役に立ちます。それはプロセスでも認定資格でもなく、従えばプロジェクトが成功するという約束でもありません。[アジャイルソフトウェア開発に関する Wikipedia の記事](https://en.wikipedia.org/wiki/Agile_software_development)は、アジャイル手法の利点を示す証拠は限られており、決定的とは言えないと述べています。マニフェストは、聖典ではなく、自分の状況で検証するべき、よく練られた仮説の集まりとして扱ってください。

## 中核となる概念

### 成り立ち

17 人の実践者が、2001 年 2 月 11 日から 13 日にかけて、ユタ州ワサッチ山脈のスノーバード・スキーリゾートに集まり、マニフェストを共同で書き上げました。[agilemanifesto.org の記録](https://agilemanifesto.org/history.html)によれば、彼らはエクストリームプログラミング、スクラム、クリスタルなどの手法の出身で、重量級で文書中心のプロセスに代わるものを求めていました。「ライト(軽量)」という呼び名が出ましたがアリスター・コーバーンが反対し、グループはやがて自らをアジャイル・アライアンスと呼ぶようになりました。

署名者は、ケント・ベック、マイク・ビードル、アリー・ファン・ベネクム、アリスター・コーバーン、ウォード・カニンガム、マーティン・ファウラー、ジェームズ・グレニング、ジム・ハイスミス、アンドリュー・ハント、ロン・ジェフリーズ、ジョン・カーン、ブライアン・マリック、ロバート・C・マーティン、スティーブ・メラー、ケン・シュエイバー、ジェフ・サザーランド、デイブ・トーマスです。そのうち何人かは、持ち寄った手法をすでに作っていました。ベックとカニンガムは[エクストリームプログラミング](https://en.wikipedia.org/wiki/Extreme_programming)に、シュエイバーとサザーランドは[スクラム](https://en.wikipedia.org/wiki/Scrum_(software_development))に取り組んでいました。

マニフェストは、プロジェクト全体を最初に計画し、長い工程で作り、成果物が求められているものかどうかを遅くなってから知る、という働き方への反動でした。この方式はしばしば[ウォーターフォールモデル](https://en.wikipedia.org/wiki/Waterfall_model)と呼ばれます。著者たちは反復的な仕事の進め方を発明したわけではありません(Wikipedia の記事は反復的・漸進的な手法を 1957 年にさかのぼります)が、それに共通の名前と、短い価値観の宣言を与えました。

### 四つの価値観

マニフェストは価値観を次のように述べています。著作権表示は、全体をそのまま複写する場合に限り自由な複写を認めているため、ここでは原文を全文引用します。

> We are uncovering better ways of developing software by doing it and helping others do it. Through this work we have come to value:
>
> **Individuals and interactions** over processes and tools
> **Working software** over comprehensive documentation
> **Customer collaboration** over contract negotiation
> **Responding to change** over following a plan
>
> That is, while there is value in the items on the right, we value the items on the left more.

参考訳(このガイドによる非公式の訳): 私たちは、ソフトウェア開発を自ら実践し、他者の実践を手助けすることを通じて、よりよい開発方法を見つけ出そうとしています。この活動を通して、私たちは次の価値に至りました。

- プロセスやツールよりも個人と対話を
- 包括的なドキュメントよりも動くソフトウェアを
- 契約交渉よりも顧客との協調を
- 計画に従うことよりも変化への対応を

すなわち、右側にある項目にも価値はあるものの、私たちは左側にある項目により価値を置きます。

言い回しには見落としやすい点が三つあり、意味を左右します。

- **「よりも」は「の代わりに」ではありません。** 最後の一文は、右側の項目にも価値があると述べています。ドキュメントや計画をすべて捨てるチームは、マニフェストを読み違えています。
- **これは選ばなければならないときの優先です。** 価値観は毎日何をするかを教えるものではありません。プロセス、文書、契約、計画が、より良い結果の邪魔になるとき、どちらに傾くべきかを教えます。
- **「実践を通じて」。** 冒頭の一文は、著者たちがこれらの価値観を実践から見つけたと述べています。これは経験に基づく主張であり、だからこそ自分の経験と照らし合わせて確かめるよう促されているのです。

### サービスの仕事に照らして各価値観を読む

価値観はソフトウェア開発について書かれました。サービスも運用するチームにとって、それぞれが何を意味しうるかを示します。

| 価値観 | 防ぐもの | サービスの仕事での意味 |
|---|---|---|
| プロセスやツールよりも個人と対話 | 紙の上ではうまくいくが、圧力のかかる場面では誰も従えないプロセス | 重大インシデントの間、システムを知る人々が直接話します。インシデントプロセスはその会話を支えるもので、置き換えるものではありません。 |
| 包括的なドキュメントよりも動くソフトウェア | すでに存在しないシステムを説明する文書 | 当番のエンジニアが実際に使って検証したランブックは、誰も開かない長いマニュアルより価値があります。 |
| 契約交渉よりも顧客との協調 | 顧客の本当のニーズが満たされないまま、サービスレベル合意(SLA)をめぐって争うこと | サービスレベルを顧客と定期的に見直し、ニーズが変われば変更します。 |
| 計画に従うことよりも変化への対応 | 状況が変わった後も計画を凍結し続けること | 小さく低リスクな変更を数分で承認できる変更プロセスなら、チームは対応できます。すべての変更を同じに扱うプロセスにはできません。 |

### 12 の原則

マニフェストには、価値観を具体的に述べた 12 の原則が添えられています。これは次のトピックの主題です(トピック 1.2 — アジャイルの原則 を参照)。価値観と原則を合わせて、アジャイルのマインドセットと呼ぶことがあります。

### 知っておきたい批判

批判者は、マニフェストがエンジニアリングの規律を損なうと主張してきました。Wikipedia の記事は、スティーブン・ラキティンが『IEEE Computer』への投書でアジャイルを「ソフトウェア工学という規律を損なうさらなる試み」と呼び、「包括的なドキュメントよりも動くソフトウェア」をドキュメントを省いてよいという許可と読んだことを引用しています。擁護者は、ドキュメントはスコット・アンブラーの言う「ぎりぎり十分」であるべきで、少なすぎれば保守と知識共有が損なわれる、と答えます。

サービスチームにとって、この批判には説得力があります。運用担当者は、開発チームが残したものを引き継ぎます。ドキュメントが薄いと、インシデント対応の遅さや引き継ぎの長さとして現れます。マニフェストの公正な読み方は、ドキュメントがないのではなく、ドキュメントは存在意義を示す必要がある、というものです。

## ベストプラクティス

1. **価値観は規則集ではなく、意思決定の補助として扱う。** チームの意見が分かれたら、どの価値観が緊張関係にあり、どちらに傾くべきかを問います。好みをめぐる議論が、トレードオフについての会話に変わります。
2. **価値観に続く一文を読む。** 右側の項目にも価値があることを、チームに繰り返し思い出してもらいます。どのプロセス、文書、契約、計画を残すのか、そしてその理由を書き出します。
3. **各価値観を最近の出来事に当てはめて検証する。** 実際のインシデントやリリースを選び、チームが逆の方に傾いていたらどうなっていたかを問います。自分たちの仕事から得た証拠は、引用よりも説得力があります。
4. **ドキュメントを残し、生きた状態に保つ。** 一度書いたきりの長い文書より、ランブックやサービス説明のような、使われ、検証され、担当者がいる短い文書を好みます。誰も読まないものは削除します。
5. **顧客との協調を日常にする。** サービスを使う人々と定期的に対話し、学んだことをバックログに取り込みます。契約の見直しを待ってはいけません。
6. **変化を見込んだ計画を立てる。** 短い期間で、明示的な見直し点を置いて計画します。長期の方向性は持ちつつ、そこへの道筋が動くことを受け入れます。
7. **プロセスにオーナーを置き、進化させる。** サービスマネジメントの各プロセスには、名前のあるオーナーと、使う人が変更を提案できる経路を用意します。誰も変えられないプロセスは、回避されます。
8. **採用とオンボーディングで価値観を使う。** 新しいメンバーに、自分たちのチームの例を添えて価値観を説明し、日々の選択にどう表れるかを見てもらいます。
9. **規模が大きくなったら価値観を見直す。** 大きな組織は、プロセスとツールに流れがちです。年に二回程度、このバランスがまだ顧客の役に立っているかを問う場を設けます。
10. **マニフェストを武器にしない。** 「個人と対話」を引いて、監査や安全に関する同僚の懸念を退けると、始まるべき会話が終わってしまいます。議論に勝つためではなく、開くために使います。

## チームで話し合うための質問

**私たちのチームは、四つの価値観のうち、どれを実践で優先していて、どれを口先だけで優先しているか。**

最近の判断を並べるところから始めます。書類のために遅れたリリース、契約にないという理由で断られた依頼、意味を失った後も維持された計画などです。それぞれを価値観と対応させます。言っていることとやっていることの間にずれがあることが多く、そのずれこそが有益な発見です。ファシリテーターは責めず、それぞれの選択を生んだ圧力が何だったかを問います。続けて、その圧力のうちチームが変えられるものはどれかを尋ねます。

**私たちのプロセスやツールは、どこで人同士の対話を助け、どこで邪魔をしているか。**

負担を減らしてくれるプロセスと、負担を増やすプロセスを、それぞれ一つ挙げてもらいます。負担になるものは、たいてい良いプロセスが硬直的に適用されたもので、たとえば些細な変更に四つの承認を求めるチケットのワークフローです。人がツールを避けてチャットや立ち話で済ませている箇所を探します。それは多くの場合、ミスマッチのサインです。最後に、今月簡素化するプロセスを一つ決めます。

**失ったら困るドキュメントは何で、明日削除できるものは何か。**

この問いは、「包括的なドキュメントよりも動くソフトウェア」を極端に走らせずに試すものです。この一か月に使った文書を挙げてもらいます。ランブック、アーキテクチャ図、顧客向けのサービス説明などがよく挙がります。誰も挙げない文書は、削除または統合の候補です。削除は意思決定なので、担当者を割り当てることをチームに思い出してもらいます。

**顧客は私たちのサービスの形成にどう参加していて、それで十分だとどうやって分かるか。**

顧客の意見が判断を変えた例を集めます。例が少なければ、その理由を問います。原因はたいてい構造的なものです。間に入るアカウントマネージャー、年に一度の SLA 見直し、苦情を記録するだけで伝えないサービスデスクなどです。可能なら、顧客に直接、何を変えたいかを尋ねます。ファシリテーターへの指針は、顧客とチームの距離を縮める具体的な方法を一つ見つけることです。

**小さく低リスクな変更を一時間以内に承認するには何が必要か。また、そうすべきか。**

この問いは、第四の価値観を変更管理と結びつけます(トピック 3.4 — 変更実現 を参照)。小さな変更を今遅らせているものは何か、週次の会議、手作業のリスクフォーム、欠けているテストなどを尋ねます。チームが安心できる証拠は何か、たとえば自動テストや素早いロールバックを尋ねます。「はい」を迫ってはいけません。目的は、チームが必要だと信じていることを見つけることであり、それが計画の出発点になります。

**規制当局、監査人、主要な顧客がマニフェストを読んだら何を心配するか。その心配は正しいか。**

もっともな心配もあります。監査人は証拠を求め、顧客は約束を求めます。チームにその懸念を真剣に受け止めてもらい、どんな軽量な証拠と約束なら満足してもらえるかを問います。アジャイルな仕事がどのように監査証跡を生み出すかを示せるチームは、たいてい、自由を減らされるどころか、より多く得ます。懸念は、トピック 5.7 — ガバナンス、リスク、コンプライアンス での議論のために記録します。

## 実践例: アジャイルITILの事例

中規模のオンライン小売業者に、チェックアウトサービスを構築・運用する 8 人のプラットフォームチームがあります。チームは最近、四半期ごとのリリースから毎週のリリースに移行し、新しい問題を抱えています。サービスデスクは、変更が予告なく届くと不満を述べ、プラットフォームチームは、月曜に準備ができた変更の承認に変更承認会議で一週間かかると不満を述べています。

チームリーダーは、四つの価値観を枠組みにして一時間のセッションを開きます。最近の出来事を壁に並べます。割引コードの修正が承認に 9 日間待たされました。データベースの変更はすぐ承認され、障害を起こしました。支払い失敗のランブックは、前年に廃止されたシステムを説明していたことが分かりました。グループは、それぞれの出来事を価値観に当てはめます。遅延の事例の多くは「個人と対話よりもプロセスとツール」に当たり、プロセスがそれ自体のために運用されていたことを意味します。障害は「計画に従うことよりも変化への対応」に当たります。承認会議がすべての変更を同等に扱い、リスクの高いものを詳しく見なかったからです。

チームは三つの変更に合意します。第一に、短い低リスクのパターン一覧に当てはまり、自動テストに合格し、検証済みのロールバックがある変更は、事前承認として自動的に記録されます。第二に、リスクの高い変更は、同僚と運用担当者が一日以内にレビューします。第三に、すべてのランブックに名前のあるオーナーを置き、インシデント中に使われるたびに確認します。

二か月後、リーダーはサービスデスクと結果を振り返ります。事前承認の変更は素早く流れ、サービスデスクは共有フィードですべての変更を見られるようになりました。問題が一つ残っています。事前承認パターンのうち二つが広く取りすぎられ、軽微なインシデントが続いたのです。チームはパターンを絞り込み、方針は維持します。共有フィードは対話の代わりにならないことにも気づき、サービスデスクのリーダーがプラットフォームチームの週次計画に加わります。

## 4つの視点

### プロダクトチームとデリバリーチーム

デリバリーチームにとって、マニフェストは、動くソフトウェアには動く運用が含まれることを思い出させるものです。監視もサポートもロールバックもできない機能は、完成していません。価値観を使って、リリースを安全にする運用の仕事を主張し、運用担当者を早い段階で計画に招きます。

### サービスチームと運用チーム

運用担当者は、マニフェストが開発者の代弁をしていると感じることがよくあります。読み方を変えてみてください。価値観が好むのは、人が話すこと、検証された成果物、変化への素早い対応であり、これらはどれも良い運用に合います。ITIL のプラクティスは、何がうまくいかないかについての蓄積された経験として持ち込み、目的を保ったまま、より軽い形を提案します。

### リーダーシップとガバナンス

リーダーは、価値観が機能する条件を整えます。すべてのリリースに五つの署名が必要なら、壁にポスターを何枚貼っても、チームは変化への対応を優先できません。自分たちのルールがチームをどこで遅らせているかを尋ね、目的が別の方法で達成できるなら、ルールを変える用意をします。

### 顧客とユーザー

顧客は四つの価値観のうち二つに名前が出てきます。顧客にとってマニフェストは、納品だけでなく協調を約束するものです。何が必要かを尋ねられ、動く変更を頻繁に見られ、気が変わっても構わない、ということを期待してください。その代わりに、チームは顧客からのタイムリーなフィードバックと判断を必要とします。

## よくある失敗パターン

- **「よりも」を「の代わりに」として使う。** ドキュメント、計画、契約を完全に捨てて苦しみます。代わりに、それぞれが何を達成すべきかを決め、それを達成する最も軽い形を残します。
- **価値観を規律を省く許可と見なす。** 「私たちはアジャイルだ」が、テストも記録も引き継ぎもしない言い訳になります。代わりに、各価値観を具体的なプラクティスに結びつけ、そのプラクティスが行われているかを確認します。
- **確かめずにマニフェストを唱える。** スローガンが思考の代わりになります。代わりに、実際の出来事を定期的に価値観に照らして見直します。
- **同僚に対して使う。** 監査、セキュリティ、運用からの懸念を退けるために価値観を引くと、信頼を損ないます。代わりに、その懸念が何を守っているか、どうすれば軽く満たせるかを問います。
- **価値観なしにプラクティスを採り入れる。** 日次ミーティングやボードが現れても、判断は承認の連鎖を待ち続けます。代わりに、どの判断を実際に仕事をしている人の近くに移すべきかを問います。
- **マニフェストが運用の問いに答えると仮定する。** 2001 年にソフトウェア開発について書かれたもので、サービスの運用についてはほとんど語りません。代わりに、サービスマネジメントのプラクティスと組み合わせ、両方を適応させます。

## 成熟度モデル

| 次元 | 開始 | 発展 | 標準化 | 管理 | 最適化 |
|---|---|---|---|---|---|
| 価値観の共通理解 | 数人がマニフェストを読んでいる | 一部のチームが議論するが、読み方は分かれる | チームが自分たちの文脈に合わせた短い文書化された解釈を共有している | チームが定期的なレビューで最近の判断を価値観に照らして確認する | チーム、サプライヤー、顧客がトレードオフの共通語彙を使う |
| プロセスと人のバランス | プロセスは人によって守られたり無視されたりする | 一部のプロセスが個々のチームによって簡素化されている | 各プロセスにオーナーと変更依頼の経路がある | プロセスの摩擦が測定される(例: 変更ごとの待ち時間) | 共有された証拠に基づき、プロセスがチーム横断で調整される |
| 顧客との協調 | フィードバックは苦情として届く | 一部のチームが顧客と定期的に会う | すべてのサービスに顧客の意見を集める定められた方法がある | 顧客の意見が追跡され、行われた変更と結びつけられる | 顧客がサービス横断の優先順位づけを手伝う |
| ドキュメントと計画 | 文書は少ないか古い | チームが有用と考える文書を維持している | 必須の文書は少なく、担当者がいて、見直される | 文書の利用状況が観察され、使われないものは削除される | ドキュメントがデリバリーの一部として生成または検証される |

## チェックリスト

- [ ] すべてのチームメンバーが、マニフェストと 12 の原則を一度は読んでいる。
- [ ] チームが、各価値観を自分の言葉で、自分たちの仕事の例とともに説明できる。
- [ ] どのプロセス、文書、契約、計画を残すのか、その理由とともに一覧にした。
- [ ] 使っているすべてのプロセスに、名前のあるオーナーと変更を提案する方法がある。
- [ ] ランブックとサービス説明に、オーナーと見直し日がある。
- [ ] 少なくとも一つのサービスの顧客と、定期的に対話している。
- [ ] 最近のインシデントまたはリリースを少なくとも一つ、四つの価値観に照らして見直した。
- [ ] リーダーシップが定めた、チームを遅らせるルールを一覧にして話し合った。
- [ ] 監査人や規制当局に自分たちの活動をどう示すかを書き出した。

## AIプロンプト

**目的: 四つの価値観を、自分のチーム向けの短い解釈にまとめる。**

```text
You are helping a team of [team size and type, e.g. "eight engineers who build and run a payments service"] write a plain-language reading of the four values of the Agile Manifesto for their own context.

Here are the four values as written:
- Individuals and interactions over processes and tools
- Working software over comprehensive documentation
- Customer collaboration over contract negotiation
- Responding to change over following a plan

Context about our team and work: [paste 3-5 sentences about what you build, what you run, who your customers are, and any rules you must follow, such as audit or safety rules].

For each value, write two or three sentences on what it could mean for us, and one example drawn only from the context above. Mark clearly any point where you are guessing. Ask me up to three clarifying questions first if the context is too thin. Do not invent statistics or quote sources. List what you are unsure of.
```

**目的: 最近の出来事を価値観に照らして振り返る。**

```text
Below is a short description of a recent event in our team (an incident, a release, or a delayed change). Help me review it against the four values of the Agile Manifesto.

Event: [paste a factual description of what happened, in order, without blaming anyone].

For each value, say whether the event shows the team leaning toward the value on the left, toward the item on the right, or neither, and explain your reasoning in two sentences. Then suggest up to three questions our team could discuss. Separate what you can see in the text from what you are assuming, and list what you are unsure of.
```

**目的: アジャイルな働き方に関する監査人の懸念に答える準備をする。**

```text
I need to explain to an auditor how our agile team keeps adequate records. The auditor's concern is: [paste the concern, e.g. "no evidence of who approved changes"].

Our current practice is: [describe what you do now: tools, reviews, approvals, where records are kept].

List what evidence our current practice already produces, what gaps the auditor might notice, and three lightweight ways to close each gap without adding a heavy manual process. Do not state that any law, standard, or regulation requires something unless I have pasted its text above. List your assumptions and what you are unsure of at the end.
```

**目的: マニフェストをテーマにした一時間のチームセッションを設計する。**

```text
Design a one-hour facilitated session for a team of [number] people on the Agile Manifesto. The team works on [services or products] and its biggest current frustration is [frustration].

Include: a five-minute opening, a 20-minute activity where the team matches recent real events to the four values, a 20-minute discussion of two or three of the six questions below, and a 10-minute close with one agreed action.

Questions available: [paste the questions you want to use from the "Questions to discuss" section].

Give a timed agenda, what the facilitator says, and what to watch for. Keep it practical and do not assume any tool. Ask clarifying questions if information is missing, and list what you are unsure of.
```

## AIスキル

- [agile-principles](../../../../skills/agile-principles/SKILL.md): チームの実践やプロセス上の判断を、マニフェストの原則に照らして確認したいときに使います。
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): 最近の出来事を価値観に照らして振り返り、実際の変化につながるレトロスペクティブを進めるときに使います。
- [agile-liftoff](../../../../skills/agile-liftoff/SKILL.md): 新しいチームやプロジェクトを始め、初日から価値観の共通の読み方を持ちたいときに使います。
- [agile-coaching](../../../../skills/agile-coaching/SKILL.md): 儀式のまねから理由の理解へとチームを導く役割のときに使います。

## 主要な情報源

- **Manifesto for Agile Software Development** (agilemanifesto.org): 一次資料です。全文を読んでください。二分で読めます。
- **Principles behind the Agile Manifesto** (agilemanifesto.org): 12 の原則で、価値観に最も役立つ補助資料です。
- **History: The Agile Manifesto** (agilemanifesto.org): スノーバードでの会合についての、著者たち自身による短い記録です。
- **Agile software development** (Wikipedia): 歴史、手法、プラクティス、批判を含む広い概観で、さらなる読み物への地図として役立ちます。

## 参考文献

1. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
2. Principles behind the Agile Manifesto — Beck et al., agilemanifesto.org — https://agilemanifesto.org/principles.html
3. History: The Agile Manifesto — Jim Highsmith for the Agile Alliance, agilemanifesto.org — https://agilemanifesto.org/history.html
4. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
5. Extreme programming — Wikipedia — https://en.wikipedia.org/wiki/Extreme_programming
6. Scrum (software development) — Wikipedia — https://en.wikipedia.org/wiki/Scrum_(software_development)
7. Waterfall model — Wikipedia — https://en.wikipedia.org/wiki/Waterfall_model
8. Manifesto for Agile Software Development — Wikipedia — https://en.wikipedia.org/wiki/Manifesto_for_Agile_Software_Development
9. Agile Alliance — Wikipedia — https://en.wikipedia.org/wiki/Agile_Alliance
10. Snowbird, Utah — Wikipedia — https://en.wikipedia.org/wiki/Snowbird,_Utah
