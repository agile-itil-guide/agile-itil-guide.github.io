# ITサービスマネジメント

**ITサービスマネジメント(ITSM)は、顧客が必要とするものを軸に、ITサービスを設計し、提供し、運用し、改善する規律であり、サービスを運用するアジャイルチームは、その名前を使うかどうかにかかわらず、すでにそれを実践しています。**

## なぜ重要なのか

ソフトウェアを出荷し、それを運用するようになったチームは、サービスプロバイダーになります。ユーザーはそれに頼り、利用できることを期待し、失敗したときには助けを求めます。ITSM は、その関係の周りに育ってきた実践の体系です。それを無視するチームは、しばしば痛い目に遭いながら再発見します。夜中に呼び出されたり、何が変わったか分からなくなったり、約束された内容について顧客と争ったりして。

ITSM には重いプロセスという評判があり、その一部は当たっています。一方、アジャイルチームには、素早く動いて、その結果への対処を運用に任せるという評判があります。どちらの評判も、それぞれの分野の意図ではなく、失敗を描いています。ITSM が問うのは、サービスに顧客が何を必要とし、プロバイダーはそれをどう提供し改善するか、です。それはアジャイルチームも気にかける問いです。

このトピックは、ガイドの残りで使う語彙を示します。サービスとは何か、顧客とユーザーは誰か、ITSM は何を扱うか、主要なフレームワークはどこから来たか、です。地図として、[ITサービスマネジメントに関する Wikipedia の記事](https://en.wikipedia.org/wiki/IT_service_management)を使います。その記事は短く、フレームワークを説明するよりも列挙しているので、このトピックは実践的な解釈を加え、加えた箇所を示します。

## 中核となる概念

### ITSM とは何か

Wikipedia の記事は、ITSM を、顧客に提供される IT サービスを設計、構築、提供、運用、統制するために組織が行う活動の集合と定義しています。ITSM を、ネットワーク管理やシステム管理のような技術志向のアプローチと対比しています。記事によれば、ITSM はプロセスアプローチをとり、システムではなく顧客のニーズに焦点を当て、継続的改善を重視します。

記事は、CIO WaterCooler による 2017 年の調査を引用し、企業が ITSM を主に顧客体験(35%)とサービス品質(48%)を支えるために使っていると報告しています。これは一つの調査で、記事ではそのサンプルが説明されていないため、数字は、実践者が自分の目標をどう述べるかの例として扱い、各目標がどれほど一般的かの尺度とは考えないでください。

### サービス、顧客、ユーザー

**サービス**とは、他者がコストとリスクを所有することなく、その人々に価値を届ける方法です。銀行のオンライン決済、病院の予約システム、企業の共有ファイルストレージは、すべてサービスです。記事は、サービスを使う**ユーザー**と、それに支払いまたは発注する**顧客**を区別しています。企業の社内 IT では、顧客は事業部門の長で、ユーザーはその部下かもしれません。公共サービスでは、顧客は省庁で、ユーザーは市民かもしれません。この二つのグループは異なるニーズを持ち、顧客の声だけを聞くプロバイダーは、ユーザーが体験していることを見落とすかもしれません。

### 典型的な ITSM の活動

記事はいくつかの中核的な考え方を挙げ、標準的な ITSM の実践が他のものを加えます。合わせて、見覚えのある形になります。

| 活動 | 目的 | このガイドで扱う場所 |
|---|---|---|
| **サービスデスク** | プロバイダーとユーザーの間の単一の窓口。インシデントとサービス要求を扱う | トピック 3.1 — サービスデスク |
| **インシデント対応** | サービスを妨げる、または脅かすものが起きたときに、サービスを復旧する | トピック 3.2 — インシデント管理 |
| **サービス要求** | アクセスや機器など、ユーザーが求める定型のものを提供する | トピック 3.6 — サービス要求管理 |
| **問題と変更** | 根本原因を見つけて直し、サービスの変更を統制する | トピック 3.3 — 問題管理 とトピック 3.4 — 変更実現 |
| **サービスレベルとカタログ** | 何が、どの水準で提供されるかを合意する | トピック 3.7 — サービスレベル管理 とトピック 3.8 — サービスカタログ管理 |
| **継続的改善** | サービスを時間とともに良くする | トピック 3.15 — 継続的改善 |

記事は、**インシデント**を、サービスの可用性または品質における中断または中断の可能性と定義し、**サービス要求**をサービスへの定型の依頼と定義しています。**サービスレベル合意(SLA)**には触れる程度なので、このガイドはトピック 3.7 — サービスレベル管理 で説明します。

### エンタープライズサービスマネジメントと自動化

記事は二つの拡張に触れています。**エンタープライズサービスマネジメント(ESM)**は、人事や施設管理のような、やはり依頼を受けてサービスを提供する事業の他の部分に、ITSM のツールと考え方を適用します。**IT プロセス自動化**は、定型の手作業のステップを自動化したものに置き換え、スタッフがより優先度の高い仕事に集中できるようにします。どちらもアジャイルチームにとって重要です。ESM はこの規律が IT に限られないことを示し、自動化は小さなチームが量に追いつく方法です。

### フレームワークと標準

記事は、多くのフレームワークと標準を挙げています。以下の一覧は、その一行説明を繰り返したもので、トピック 2.7 — ITSMのフレームワークと標準 で詳しく説明します。

| 名前 | 記事の説明 |
|---|---|
| [ITIL](https://en.wikipedia.org/wiki/ITIL) | ITSM と IT 資産管理の詳細なプラクティスで、IT をビジネス目標に合わせる |
| [ISO/IEC 20000](https://en.wikipedia.org/wiki/ISO/IEC_20000) | サービスマネジメントシステムの国際規格で、組織はそれに対して認証を受けられる |
| [COBIT](https://en.wikipedia.org/wiki/COBIT) | 統制目標、指標、成熟度モデルを持つ IT ガバナンスフレームワーク |
| [FitSM](https://en.wikipedia.org/wiki/FitSM) | ISO/IEC 20000 におおむね合わせた軽量な標準 |
| [CMMI](https://en.wikipedia.org/wiki/CMMI) | サービスを確立し、管理し、改善するためのモデル |
| [TOGAF](https://en.wikipedia.org/wiki/TOGAF) | ビジネス目標をアーキテクチャの目標に結びつけるフレームワーク |
| [Microsoft Operations Framework](https://en.wikipedia.org/wiki/Microsoft_Operations_Framework) | Microsoft の技術に基づくサービスマネジメントのガイダンス |
| [Application Services Library](https://en.wikipedia.org/wiki/Application_Services_Library) | プロフェッショナルなアプリケーション管理のためのフレームワーク |
| [Business Information Services Library](https://en.wikipedia.org/wiki/Business_Information_Services_Library) | 情報管理のためのベストプラクティスのフレームワーク |
| Business Process Framework(eTOM) | 通信事業者のためのプロセスフレームワーク |

記事は、ITSM フレームワークが ISO 9000、ISO/IEC 27000、CMMI を参照してきたこと、そして ITIL バージョン 2 と、ISO/IEC 20000 の前身である BS 15000 が相互に整合していたことを付け加えています。また、オランダ政府が採用した、原則に基づく管理システムである USM も説明しています。

### 記事が扱っていないこと

記事には、歴史の節も、批判も、アジャイルや DevOps への言及もありません。この沈黙は重要です。ITSM はプロセスの重さと遅い変更で批判され、アジャイルチームは運用を軽視すると批判されてきましたが、どちらの批判もそこには見られません。このガイドは、そのギャップを第 5 部、トピック 5.1 — アジャイルサービスマネジメント から埋めます。このトピックが問題に触れる箇所では、ガイドの他の出典と実務経験に基づいており、その旨を述べます。

### ITSM と ITAM

ITIL の記事は、ITIL を、ITSM と IT 資産管理(ITAM)の両方を扱うものとして説明しています。ITAM は、組織がどの IT 資産を持ち、いくらかかり、どう使われているかを把握する規律です。サービスは資産に依存し、二つの規律は情報を共有するので、第 4 部が ITSM に続いています(トピック 4.1 — IT資産管理 を参照)。

## ベストプラクティス

1. **サービスを顧客の側から定義する。** 顧客とユーザーが実際に使うものを、彼らの言葉で一覧にします。たとえば「ログインする」「予約する」「請求書を送る」です。それぞれの背後の技術をまとめます。これがサービスカタログの出発点です(ITIL は「service catalogue」と綴ります。トピック 3.8 — サービスカタログ管理 を参照)。
2. **顧客とユーザーが誰かを明記する。** 各サービスについて、誰が支払いまたは発注し、誰が使うかを書き出します。異なる人であれば、両方のグループに発言権があるか確認します。
3. **すべてのサービスにオーナーを置く。** サービスがどう機能し、時間とともにどう改善されるかに責任を負う一人を指名します。オーナーがいなければ、サービスの問題は誰の仕事でもありません。
4. **最も痛い活動から始める。** 障害が痛みならインシデント対応を先に強化します。何が変わったか誰も知らないなら、変更記録から始めます。ITSM のすべてのプラクティスを一度に展開してはいけません。
5. **単一の窓口を使う。** ユーザーが助けを求め、依頼する場所を一か所にして、簡単にします。連絡しにくいサービスデスクは迂回され、ITSM が依存する情報が失われます。
6. **インシデント、要求、問題を分ける。** インシデントは中断、要求は定型の依頼、問題は根本原因です。混在したキューはパターンを隠し、測定を歪めます。
7. **重要なことを記録し、それ以上は記録しない。** 判断に使うインシデント、変更、資産の記録を保ちます。誰も読まない項目は削除します。記録はコストであり、それぞれが何のためかを説明できるべきです。
8. **流行ではなく、問題でフレームワークを選ぶ。** ITIL、ISO/IEC 20000、COBIT、より軽いモデルを、自分の抱える問題のためのアイデア源として使います。役立つ部分を採用し、除外したものを述べます。
9. **定型を自動化する。** パスワードのリセットやアクセス付与のような繰り返しのステップを探し、慎重に自動化します。自動化された処理は、ユーザーのニーズから外れないよう、定期的に見直します。
10. **顧客が感じることを測る。** 内部活動を数える前に、可用性、サービス復旧時間、ユーザー満足度を追跡します。Wikipedia の記事の調査は、実践者がすでに顧客体験と品質を主な目標として挙げていることの、思い出させる材料として使います。
11. **IT の外にも目を向ける。** 組織の他の部分が依頼をうまく扱えていないなら、エンタープライズサービスマネジメントを通じた共有のツールとプラクティスを検討します。IT の語彙を押しつけてはいけません。
12. **継続的に改善する。** インシデントや依頼のデータを使って、何が機能しているかを見直す時間を定期的に確保し、小さな変更を行います(トピック 3.15 — 継続的改善 を参照)。

## チームで話し合うための質問

**ユーザーが使う言葉で言うと、私たちはどんなサービスを提供しているか。**

各人に、ユーザーが私たちに最も頼るものを三つ書いてもらいます。リストを比べます。違いは、通常、チームがサービスについて異なる像を持っているか、サービスを使い方ではなく技術で記述していることを示します。ファシリテーターは、どのサービスに明確なオーナーがいないかを尋ねられます。続けて、サービスの最初の一覧に合意します。

**主要なサービスの顧客は誰で、ユーザーは誰か。両者は同じものを望んでいるか。**

発注または支払いをする人と、使う人を挙げます。それぞれがサービスに何を望んでいるかを尋ねます。社内 IT では、顧客はコストとリスクを気にかけ、ユーザーは速さと使いやすさを気にかけるかもしれません。どこで衝突するか、チームがそれをどう知るかを尋ねます。実際の人々と話し合う衝突を一つ選びます。

**ユーザーは助けが必要なときどこに行くのか。経路はいくつあるか。**

方法を数えます。ポータル、電話番号、メール、チャット、同僚の席です。ユーザーがどの経路を好み、なぜかを尋ねます。複数の非公式な経路があれば、需要の一部は見えていません。議論は、どの経路を残し、どれを統合し、非公式な経路で届くものをどう記録するかの決定で終わるべきです。

**インシデント、要求、問題をどの程度区別できるか。混ぜるとどうなるか。**

最近のチケット 10 件を取り、分類します。意見の不一致は、チーム内で定義が異なることを示します。混在したカテゴリーが、レポートと優先順位に何をもたらすかを尋ねます。たとえば、インシデントのキューの中の多くの要求は、インシデント対応を遅く見せることがあります。単純な定義と例を合意します。

**足りない、または書類上だけで行っている ITSM のプラクティスはどれか。**

上の表のプラクティスを一覧にし、それぞれを、機能している、部分的に機能している、書類上だけ、のいずれかで評価します。機能していると評価したそれぞれの最近の例を求めます。ファシリテーターはすべてのギャップを埋めたい衝動に抵抗し、どのギャップが顧客に最も害を与えているかを尋ねます。

**フレームワークに何をしてもらいたいか。また、それが私たちに何をするのが怖いか。**

ITIL や ISO/IEC 20000 を採用することへの期待と不安を集めます。期待は一貫性と信頼性であることが多く、不安は書類仕事と遅さであることが多いです。後者なしに前者を得る方法を尋ねます。たとえば、語彙と少数のプラクティスを採用し、フォームは避けます。チームが必要とする条件を記録します。

## 実践例: アジャイルITILの事例

中規模のオンライン小売業者は、創業者のウェブサイトから、12 人のエンジニアのチーム、成長する顧客基盤、小さなサポートスタッフのグループを持つ事業に成長しました。顧客は問題を共有受信箱にメールし、チェックアウトが失敗すると創業者の携帯に電話します。エンジニアは耳にしたことを直し、ほとんど何も書き留めません。3 時間続いた決済障害の後、創業者は、顧客が電話するまで誰も知らなかったのはなぜかと尋ねます。

エンジニアリング責任者は、可能な限り軽い ITSM を提案します。チームは、サービスを顧客の言葉で一覧にします。閲覧と検索、チェックアウトと決済、注文追跡、顧客アカウントです。それぞれにオーナーを置きます。共有のサポートアドレスが単一の窓口となり、インシデントと要求の別々のタイプを持つ簡単なチケットツールにつながります。30 分以上続いたインシデントには、共有ドキュメントに書かれる短いレビューを行います。チェックアウトと決済への変更は、実施前にチームのチャンネルで知らせます。

三か月後、チームは自分たちが処理するインシデントの件数を把握し、その大半が二つの原因から来ていると分かります。両方を直し、チェックアウトの障害は再発しません。難しさも残ります。顧客は動揺すると依然として創業者に電話するため、需要の一部はチケットツールを迂回します。エンジニアは、レビューを書くのに時間がかかるとぼやき、忙しい月には二つのレビューが飛ばされました。エンジニアリング責任者は、レビューを短く保つこと、創業者に電話をサポートアドレスへ転送するよう頼むこと、さらに一四半期分のデータの後に、より本格的な ITIL 流のプロセスが必要かを見直すことを決めます。

## 4つの視点

### プロダクトチームとデリバリーチーム

作るものを運用もするデリバリーチームは、すでに ITSM を行っています。サービスに名前をつけ、インシデントと変更を軽い形で記録し、データをサービスを支援する人々と共有します。サービスデスクを、ユーザーが何に苦労しているかの証拠の源として扱います。

### サービスチームと運用チーム

運用担当者とサービスデスクのスタッフが、ITSM のプラクティスの大半を担っています。アジャイルの考え方は、仕事を見える化し、ユーザーとのフィードバックループを短くし、改善を年次プロジェクトから小さな定期的な変更へ移すことで、役立てます。各 ITSM ルールの背後にある目的を説明し、同僚が賢明に適応できるようにします。

### リーダーシップとガバナンス

リーダーは、どれだけの構造を要求し、どれだけの証拠を求めるかを決めます。顧客が感じる成果と、チームが自分のツールから出せる少数の指標を求めます。フレームワークを合図として購入することには慎重になってください。Wikipedia の記事は多くを挙げていますが、どれも自分のサービスを知ることの代わりにはなりません。

### 顧客とユーザー

顧客とユーザーは、ITSM が存在する理由です。助けを求める明確な方法、何を期待できるかについての誠実な情報、各サービスにオーナーがいることを期待してください。その代わりに、何かがうまくいかないとき、プロバイダーがそこから学べるよう、タイムリーで具体的な情報を提供してください。

## よくある失敗パターン

- **プロセスのためのプロセス。** フォームと承認が増え、理由を誰も覚えていません。代わりに、各プラクティスを目的に結びつけ、もはや目的を果たさないものを削除します。
- **単一の窓口がない。** ユーザーは知っている人に頼り、需要が見えなくなります。代わりに、簡単な経路を一つ提供し、非公式な依頼をそこに取り込みます。
- **インシデント、要求、問題の混在。** レポートが誤解を招き、原因が隠れたままになります。代わりに、単純な定義を使い、チケットを一貫して分類します。
- **技術で記述されたサービス。** ユーザーは必要なものを見つけられず、オーナーが不明確です。代わりに、サービスを顧客の言葉で記述し、それぞれにオーナーを指名します。
- **フレームワークをそっくり採用する。** チームが大きなフレームワークをコピーして、プロセスに埋もれます。代わりに、問題から始め、役立つ部分だけを採ります。
- **ユーザーを無視する。** プロバイダーが、支払う顧客としか話しません。代わりに、顧客とユーザーの両方に耳を傾け、衝突を探します。
- **活動を測る。** チケットや通話の件数が、サービス品質の証拠の代わりになります。代わりに、可用性、サービス復旧時間、ユーザー満足度を測ります。
- **ITSM をデリバリーと切り離す。** デリバリーチームが出荷し、運用が対処を任されます。代わりに、共有のサービス、共有のデータ、共同のレビューで両者をつなぎます(トピック 5.1 — アジャイルサービスマネジメント を参照)。

## 成熟度モデル

| 次元 | 開始 | 発展 | 標準化 | 管理 | 最適化 |
|---|---|---|---|---|---|
| サービスの定義 | サービスは技術で記述されるか、記述されない | 一部のサービスがオーナー付きで一覧にされている | すべてのサービスが、名前のあるオーナー付きで顧客の言葉で記述されている | サービスの記述が、利用状況とフィードバックに照らして確認される | サービスの定義が顧客やサプライヤーと共有され、共同で調整される |
| サポートと依頼 | 助けは非公式な経路で求められる | 一部のチームにチケットツールまたは共有受信箱がある | インシデントと要求の明確なタイプを持つ一つの窓口がある | 需要と解決時間が追跡・レビューされる | サポートが、共有データでチームとサプライヤー間で調整される |
| 記録と測定 | 記録はほとんど残されない | 一部のチームがインシデントと変更を記録している | 記録が一貫しており、それぞれに述べられた目的がある | 顧客向けの測定が定期的にレビューされる | 測定がサービス横断で共有され、共同で優先順位を決めるのに使われる |
| 改善 | 修正は危機に続く | 一部のチームがインシデントをレビューしている | インシデントと依頼のデータの定期的なレビューが、計画的な変更につながる | 改善の仕事に資源が配分され、結果が確認される | 改善がチーム間と顧客とともに日常的に行われる |

## チェックリスト

- [ ] 顧客の言葉によるサービスの一覧がある。
- [ ] 各サービスに、名前のあるオーナーがいる。
- [ ] 各サービスについて、顧客とユーザーが誰かを把握している。
- [ ] ユーザーが助けや依頼を求める、明確な単一の窓口がある。
- [ ] インシデント、要求、問題が、別のものとして記録されている。
- [ ] 各種の記録に述べられた目的があり、使われない項目は削除されている。
- [ ] 可用性やサービス復旧時間など、顧客が感じることを少なくとも一つ測っている。
- [ ] インシデントと依頼のデータを定期的に見直し、それに基づいて行動している。
- [ ] どのフレームワークの考え方を使い、どれを除外したかを説明できる。
- [ ] 安全に自動化できる定型のタスクが特定されている。

## AIプロンプト

**目的: サービスの一覧を、顧客の言葉で下書きする。**

```text
Help me describe the services my team provides in the words our users would use.

Who we are and what we run: [describe the team and its main systems in a few sentences].
Who uses what: [list user groups and what each group does with our systems].
What we currently call our services: [paste a list, or write "none"].

Produce a draft list of 5 to 10 services, each with a one-sentence description from the user's point of view, the customer or user groups, and a suggested owner role. Mark each item that is a guess. Do not invent systems I did not mention. Ask clarifying questions first if information is missing, and list what you are unsure of.
```

**目的: 最近のチケットを、インシデント、要求、問題に分類する。**

```text
Here are [number] recent tickets or messages to our team: [paste short, anonymized descriptions, one per line].

Definitions to use: an incident is an unplanned disruption or potential disruption to a service; a service request is a routine request for something the service normally provides; a problem is the underlying cause of one or more incidents.

Classify each item as incident, request, or possible problem, with one sentence of reasoning that uses only what I wrote. List items you could not classify and the question I should ask to decide. At the end, tell me the share in each category from my list only. Do not invent details, and list what you are unsure of.
```

**目的: 自分の状況に合った、最初の小さな ITSM プラクティスの組を選ぶ。**

```text
Help me choose a first set of IT service management practices for a team in this situation.

Team size and type: [describe].
Our biggest pains (with a recent example for each): [list].
Existing tools and records: [list, or write "none"].
Rules we must follow (audit, security, contracts), with source text if you have it: [paste, or write "none known"].

From these practices: service desk, incident management, problem management, change enablement, service request management, service level management, service catalog management, knowledge management, continual improvement, propose the two or three to start with and say why, using only the information above. Say what you would leave for later. Mark assumptions, ask clarifying questions first, and list what you are unsure of.
```

**目的: デリバリーチームとサービスデスクの対話を準備する。**

```text
Plan a 45-minute conversation between a delivery team and the service desk about how new changes are handed over.

Delivery team: [describe]. Service desk: [describe].
Recent example of a handover that went badly: [describe factually].
What the service desk says it needs: [list, or write "unknown"].

Produce an agenda, five questions for each side, and a closing step that records one agreed change with an owner. Keep it free of any particular tool. Ask clarifying questions first if information is missing, mark assumptions, and list what you are unsure of.
```

## AIスキル

- [service-catalog](../../../../skills/service-catalog/SKILL.md): 顧客の言葉によるサービスの一覧を、オーナーと説明付きで下書きまたは見直すときに使います。
- [service-level-agreement](../../../../skills/service-level-agreement/SKILL.md): 顧客とどの水準のサービスを期待するかを合意する準備ができたときに使います。
- [incident-response-plan](../../../../skills/incident-response-plan/SKILL.md): インシデントが起きる前に、チームがそれをどう扱うかを準備するときに使います。
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md): どんな種類の依頼とインシデントが、どのくらいの量で届くかを理解するときに使います。
- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): 各サービスを誰が所有し、誰に相談し、誰に通知するかを明確にするときに使います。

## 主要な情報源

- **IT service management** (Wikipedia): 関連するフレームワークと標準の一覧を伴う短い定義で、地図として役立ちます。
- **ITIL** (Wikipedia): 最もよく知られた ITSM フレームワークの歴史とバージョンで、所有者の変遷を含みます。
- **ISO/IEC 20000** (Wikipedia): サービスマネジメントシステムの国際規格の背景です。
- **Enterprise service management** (Wikipedia): ITSM の考え方を IT の外に適用することの紹介です。

## 参考文献

1. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
2. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
3. ISO/IEC 20000 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_20000
4. COBIT — Wikipedia — https://en.wikipedia.org/wiki/COBIT
5. FitSM — Wikipedia — https://en.wikipedia.org/wiki/FitSM
6. CMMI — Wikipedia — https://en.wikipedia.org/wiki/CMMI
7. TOGAF — Wikipedia — https://en.wikipedia.org/wiki/TOGAF
8. Microsoft Operations Framework — Wikipedia — https://en.wikipedia.org/wiki/Microsoft_Operations_Framework
9. Application Services Library — Wikipedia — https://en.wikipedia.org/wiki/Application_Services_Library
10. Business Information Services Library — Wikipedia — https://en.wikipedia.org/wiki/Business_Information_Services_Library
11. Enterprise service management — Wikipedia — https://en.wikipedia.org/wiki/Enterprise_service_management
12. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
