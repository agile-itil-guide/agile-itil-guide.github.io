# 애자일 선언문

**애자일 소프트웨어 개발 선언문은 두 가지 좋은 것이 서로 당길 때 무엇을 우선해야 하는지 팀에 알려 주는 네 개의 짧은 가치 진술이며, 그 선택은 서비스를 만들 때만큼이나 운영 중인 서비스를 돌볼 때에도 중요합니다.**

## 왜 중요한가

애자일 선언문은 이 가이드의 거의 모든 내용의 뿌리입니다. 스크럼, 칸반, 익스트림 프로그래밍, DevOps는 모두 선언문이 밝힌 가치에 따라 행동하는 방법입니다. 실천법만 알면 의식(ritual)을 흉내 내면서 그 이유를 놓치게 되고, 의식이 더는 통하지 않을 때 길잡이로 삼을 것이 없어집니다.

IT 서비스 관리(ITSM)에도 현실적인 이유로 중요합니다. 오늘날 서비스를 운영하는 팀 대부분은 그 서비스를 직접 만들기도 하며, 이 두 일은 서로 다른 방향으로 잡아당깁니다. 만드는 일은 변화와 속도에 보상하고, 운영하는 일은 안정성과 예측 가능성에 보상합니다. 선언문이 이 긴장을 없애 주지는 않지만, 팀이 그것을 이야기할 공통의 방식을 줍니다. 지금 우리는 어느 가치를 우선하고 있으며, 그 대가로 무엇을 치르고 있는가 하는 질문입니다.

선언문이 무엇이 아닌지 아는 것도 도움이 됩니다. 선언문은 프로세스도, 자격증도 아니며, 따르기만 하면 프로젝트가 성공한다는 약속도 아닙니다. [애자일 소프트웨어 개발에 관한 위키백과 문서](https://en.wikipedia.org/wiki/Agile_software_development)는 애자일 방법의 이점을 뒷받침하는 증거가 제한적이며 결정적이지 않다고 밝힙니다. 선언문을 경전이 아니라, 자신의 맥락에서 검증해야 할 잘 다듬어진 가설의 모음으로 다루십시오.

## 핵심 개념

### 기원

17명의 실무자가 2001년 2월 11일부터 13일까지 유타주 와사치산맥의 스노버드 스키 리조트에 모여 선언문을 함께 썼습니다. [agilemanifesto.org의 기록](https://agilemanifesto.org/history.html)에 따르면 이들은 익스트림 프로그래밍, 스크럼, 크리스털 같은 방법 출신이었고, 무겁고 문서 중심적인 프로세스의 대안을 원했습니다. "가벼운(Light)"이라는 이름이 거론되었으나 앨리스터 코번이 반대했고, 이 모임은 이후 스스로를 애자일 얼라이언스라고 부르게 되었습니다.

서명자는 켄트 벡, 마이크 비들, 아리 판 베네쿰, 앨리스터 코번, 워드 커닝햄, 마틴 파울러, 제임스 그레닝, 짐 하이스미스, 앤드루 헌트, 론 제프리스, 존 컨, 브라이언 매릭, 로버트 C. 마틴, 스티브 멜러, 켄 슈웨이버, 제프 서덜랜드, 데이브 토머스입니다. 이들 중 여럿은 이미 자신이 가져온 방법을 만들어 둔 상태였습니다. 벡과 커닝햄은 [익스트림 프로그래밍](https://en.wikipedia.org/wiki/Extreme_programming)에, 슈웨이버와 서덜랜드는 [스크럼](https://en.wikipedia.org/wiki/Scrum_(software_development))에 관여했습니다.

선언문은 프로젝트 전체를 처음에 계획하고, 긴 단계로 만들고, 결과물이 원하던 것인지 늦게야 알게 되는 일하기 방식에 대한 반작용이었습니다. 이런 방식은 흔히 [폭포수 모델](https://en.wikipedia.org/wiki/Waterfall_model)이라고 불립니다. 저자들이 반복적 작업을 발명한 것은 아니지만(위키백과 문서는 반복적·점진적 방법의 기원을 1957년까지 거슬러 올라갑니다), 여기에 공통의 이름과 짧은 가치 진술을 부여했습니다.

### 네 가지 가치

선언문은 가치를 다음과 같이 진술합니다. 저작권 표시는 전체를 그대로 복사하는 경우에 한해 어떤 형태로든 자유롭게 복사하도록 허용하므로, 여기서는 전문을 인용합니다.

> We are uncovering better ways of developing software by doing it and helping others do it. Through this work we have come to value:
>
> **Individuals and interactions** over processes and tools
> **Working software** over comprehensive documentation
> **Customer collaboration** over contract negotiation
> **Responding to change** over following a plan
>
> That is, while there is value in the items on the right, we value the items on the left more.

참고 번역(이 가이드의 비공식 번역): 우리는 소프트웨어를 직접 개발하고 다른 사람의 개발을 도우면서 더 나은 개발 방법을 찾아내고 있습니다. 이 작업을 통해 우리는 다음을 가치 있게 여기게 되었습니다.

- 공정과 도구보다 **개인과 상호작용**을
- 포괄적인 문서보다 **작동하는 소프트웨어**를
- 계약 협상보다 **고객과의 협력**을
- 계획을 따르는 것보다 **변화에 대응하기**를

즉, 오른쪽에 있는 것들에도 가치가 있지만, 우리는 왼쪽에 있는 것들에 더 높은 가치를 둡니다.

표현에서 놓치기 쉬운 세 가지 세부 사항이 의미를 바꿉니다.

- **"보다(over)"는 "대신(instead of)"이 아닙니다.** 마지막 문장은 오른쪽 항목에도 여전히 가치가 있다고 말합니다. 모든 문서나 모든 계획을 버리는 팀은 선언문을 잘못 읽은 것입니다.
- **선택해야 할 때의 선호입니다.** 가치는 매일 무엇을 해야 하는지 알려 주지 않습니다. 프로세스, 문서, 계약, 계획이 더 나은 결과를 가로막을 때 어느 쪽으로 기울어야 하는지를 알려 줍니다.
- **"직접 해 보면서(by doing it)."** 첫 문장은 저자들이 이 가치를 실천을 통해 발견했다고 말합니다. 이 주장은 경험적이며, 그래서 여러분도 자신의 경험에 비추어 확인해 보도록 초대받습니다.

### 서비스 업무의 관점에서 각 가치 읽기

이 가치들은 소프트웨어 개발에 관해 쓰였습니다. 서비스도 운영하는 팀에게 각 가치가 어떤 의미일 수 있는지 살펴봅니다.

| 가치 | 막아 주는 것 | 서비스 업무에서의 의미 |
|---|---|---|
| 공정과 도구보다 개인과 상호작용 | 문서상으로는 작동하지만 압박 속에서는 누구도 따를 수 없는 프로세스 | 중대한 인시던트 중에는 시스템을 아는 사람들이 직접 대화합니다. 인시던트 프로세스는 그 대화를 돕되 대체하지 않습니다. |
| 포괄적인 문서보다 작동하는 소프트웨어 | 더는 존재하지 않는 시스템을 설명하는 문서 | 이를 쓰는 당직 엔지니어가 검증한 런북은 아무도 펼쳐 보지 않은 긴 매뉴얼보다 가치가 큽니다. |
| 계약 협상보다 고객과의 협력 | 고객의 진짜 필요는 채워지지 않은 채 서비스 수준 협약(SLA)을 두고 다투는 일 | 고객과 정기적으로 서비스 수준을 검토하고, 고객의 필요가 바뀌면 함께 바꿉니다. |
| 계획을 따르는 것보다 변화에 대응하기 | 상황이 이미 달라졌는데도 계획을 고정하는 일 | 작고 위험이 낮은 변경을 몇 분 안에 승인할 수 있는 변경 프로세스는 팀이 대응하게 해 줍니다. 모든 변경을 똑같이 다루는 프로세스는 그렇지 못합니다. |

### 열두 가지 원칙

선언문에는 가치를 풀어 쓴 열두 가지 원칙이 함께 있습니다. 이는 다음 주제에서 다룹니다(주제 1.2 — 애자일 원칙 참조). 가치와 원칙을 합쳐 애자일 마인드셋이라고 부르기도 합니다.

### 알아 둘 만한 비판

비평가들은 선언문이 엔지니어링의 규율을 훼손한다고 반대해 왔습니다. 위키백과 문서는 스티븐 라키틴이 『IEEE Computer』에 보낸 편지에서 애자일을 "소프트웨어 엔지니어링 규율을 훼손하려는 또 하나의 시도"라고 부르고, "포괄적인 문서보다 작동하는 소프트웨어"를 문서를 건너뛰어도 된다는 허락으로 읽었다고 인용합니다. 옹호하는 쪽은 문서가 스콧 앰블러가 쓴 표현대로 "겨우 충분히 좋은 정도"여야 하며, 문서가 너무 적으면 유지보수와 지식 공유가 손해를 본다고 답합니다.

서비스 팀에게 이 비판은 날카롭습니다. 운영 담당자는 개발 팀이 남긴 것을 물려받고, 부실한 문서는 느린 인시던트 대응과 긴 인수인계로 드러납니다. 선언문을 공정하게 읽으면, 문서가 없다는 뜻이 아니라 문서가 자기 자리를 얻어야 한다는 뜻입니다.

## 모범 사례

1. **가치를 규칙 모음이 아니라 의사결정 보조 도구로 다루십시오.** 팀의 의견이 갈리면 어느 가치가 긴장 관계에 있는지, 팀이 어느 쪽으로 기울어야 하는지 물어보십시오. 취향에 관한 논쟁이 트레이드오프에 관한 대화로 바뀝니다.
2. **가치 뒤에 오는 문장을 읽으십시오.** 오른쪽 항목에도 여전히 가치가 있음을 팀에 자주 상기시키십시오. 어떤 프로세스, 문서, 계약, 계획을 유지하는지와 그 이유를 적어 두십시오.
3. **각 가치를 최근의 사건에 비추어 시험하십시오.** 실제 인시던트나 릴리스를 골라, 팀이 반대쪽으로 기울었다면 일이 어떻게 진행되었을지 물어보십시오. 자신의 업무에서 나온 증거는 인용문보다 더 설득력이 있습니다.
4. **문서를 유지하되 살아 있게 하십시오.** 한 번 쓰고 마는 긴 문서보다 런북이나 서비스 설명처럼 쓰이고, 검증되고, 책임자가 있는 짧은 문서를 선호하십시오. 아무도 읽지 않는 것은 삭제하십시오.
5. **고객과의 협력을 일상으로 만드십시오.** 서비스를 사용하는 사람들과 정기적으로 대화하고, 배운 것을 백로그에 반영하십시오. 계약 검토를 기다리지 마십시오.
6. **변경을 예상하는 계획을 세우십시오.** 명시적인 검토 시점을 둔 짧은 주기로 계획하십시오. 더 긴 방향은 유지하되, 그곳으로 가는 단계는 움직일 것임을 받아들이십시오.
7. **프로세스에 책임자를 두고 진화하게 하십시오.** 서비스 관리 체계의 모든 프로세스에는 이름이 있는 책임자와, 사용자가 변경을 제안할 수 있는 경로가 있어야 합니다. 아무도 바꿀 수 없는 프로세스는 우회됩니다.
8. **채용과 온보딩에 가치를 활용하십시오.** 새 구성원에게 팀의 실제 사례를 들어 가치를 설명하여, 가치가 일상의 선택에서 어떻게 드러나는지 보게 하십시오.
9. **규모가 커진 뒤에 가치를 다시 살펴보십시오.** 큰 조직은 프로세스와 도구 쪽으로 흘러갑니다. 아마 1년에 두 번쯤 정기적으로 대화를 나누며, 지금의 균형이 여전히 고객에게 도움이 되는지 물어보십시오.
10. **선언문을 무기로 쓰지 마십시오.** 감사나 안전에 대한 동료의 우려를 "개인이 프로세스보다 우선"이라고 인용하며 일축하면, 시작되었어야 할 대화가 끝나 버립니다. 토론에서 이기려 하지 말고 토론을 열기 위해 쓰십시오.

## 팀과 논의할 질문

**우리 팀은 네 가지 가치 중 실제로 어느 것을 이미 우선하고 있으며, 어느 것은 말로만 우선한다고 하는가?**

최근의 결정을 나열하는 것부터 시작합니다. 서류 때문에 미뤄진 릴리스, 계약에 없다는 이유로 거절된 요청, 의미를 잃은 뒤에도 유지된 계획. 각각을 하나의 가치와 짝지어 봅니다. 팀은 말하는 것과 행동하는 것 사이에 간극이 있음을 자주 발견하며, 그 간극이 쓸모 있는 발견입니다. 진행자는 비난을 피하고 각 선택을 낳은 압력이 무엇이었는지 물어야 합니다. 이어서 그 압력 중 팀이 바꿀 수 있는 것이 무엇인지 묻습니다.

**우리의 프로세스와 도구는 어디서 사람들의 소통을 돕고, 어디서 방해하는가?**

노력을 덜어 주는 프로세스 하나와 노력을 더 들게 하는 프로세스 하나를 말해 달라고 합니다. 비용이 큰 쪽은 사소한 변경에 승인이 네 번 필요한 티켓 워크플로처럼, 좋은 프로세스가 경직되게 적용된 경우가 많습니다. 사람들이 도구를 피하고 채팅이나 복도 대화를 쓰는 곳을 찾아보십시오. 보통 불일치의 신호입니다. 이번 달에 단순화할 프로세스 하나로 마무리합니다.

**어떤 문서를 잃으면 아쉽고, 내일 당장 지워도 되는 문서는 무엇인가?**

이 질문은 "포괄적인 문서보다 작동하는 소프트웨어"라는 가치를 극단으로 몰지 않고 시험합니다. 지난달에 쓴 문서가 무엇인지 물어보십시오. 런북, 아키텍처 다이어그램, 고객용 서비스 설명이 자주 나옵니다. 아무도 언급하지 않는 문서는 삭제나 통합의 후보입니다. 삭제도 하나의 결정이므로 책임자를 지정하라고 팀에 일깨우십시오.

**고객은 우리 서비스를 만드는 데 어떻게 참여하며, 그것이 충분한지 어떻게 아는가?**

고객의 의견이 결정을 바꾼 사례를 모읍니다. 목록이 짧다면 이유를 묻습니다. 원인은 대개 구조적입니다. 중간에 낀 계정 관리자, 1년에 한 번뿐인 SLA 검토, 불만은 기록하지만 전달하지 않는 서비스 데스크. 가능하다면 고객에게 직접 무엇을 바꾸고 싶은지 물어보십시오. 진행자를 위한 안내는 고객과 팀 사이의 경로를 단축할 구체적인 방법 하나를 찾는 것입니다.

**작고 위험이 낮은 변경을 한 시간 안에 승인하려면 무엇이 필요하며, 그렇게 해야 하는가?**

이 질문은 네 번째 가치를 변경 통제와 연결합니다(주제 3.4 — 변경 실현 참조). 지금 작은 변경을 늦추는 것이 무엇인지 물어보십시오. 주간 회의, 수작업 위험 양식, 없는 테스트. 팀이 안심하려면 어떤 증거가 필요한지 물어보십시오. 자동화된 테스트나 빠른 롤백 같은 것입니다. "예"를 밀어붙이지 마십시오. 목표는 팀이 필요하다고 믿는 것을 알아내는 것이며, 그것이 계획의 시작입니다.

**규제 기관, 감사인, 주요 고객이 선언문을 읽는다면 무엇을 우려할 것이며, 그 우려는 타당한가?**

일부 우려는 타당합니다. 감사인은 증거를 원하고, 고객은 약속을 원합니다. 팀이 이런 우려를 진지하게 받아들이고, 어떤 가벼운 증거와 약속이면 그들을 만족시킬지 묻도록 초대하십시오. 애자일 업무가 감사 추적을 만들어 내는 방법을 보여 줄 수 있는 팀은 보통 더 적은 자유가 아니라 더 많은 자유를 얻습니다. 우려 사항은 주제 5.7 — 거버넌스, 리스크, 컴플라이언스의 거버넌스 논의를 위해 기록해 두십시오.

## 실전 사례: 애자일 ITIL 예시

중견 온라인 소매업체에는 결제 서비스를 만들고 운영하는 8명의 플랫폼 팀이 있습니다. 이 팀은 최근 분기별 릴리스에서 주간 릴리스로 전환했고, 이제 문제가 생겼습니다. 서비스 데스크는 변경이 예고 없이 도착한다고 불평하고, 플랫폼 팀은 월요일에 준비된 변경을 승인하는 데 변경 승인 회의가 일주일이나 걸린다고 불평합니다.

팀장은 네 가지 가치를 틀로 삼아 한 시간짜리 세션을 엽니다. 벽에 최근의 사건을 나열합니다. 할인 코드 수정이 승인을 기다리며 9일을 보냈습니다. 데이터베이스 변경은 빨리 승인되었지만 장애를 일으켰습니다. 결제 실패용 런북이 1년 전에 퇴역한 시스템을 설명하고 있었습니다. 그룹은 각 사건을 하나의 가치에 놓아 봅니다. 지연 사례 대부분은 "공정과 도구보다 개인과 상호작용" 아래에 놓입니다. 프로세스가 프로세스 자체를 위해 운영되었다는 뜻입니다. 장애는 "계획을 따르는 것보다 변화에 대응하기" 아래에 놓입니다. 승인 회의가 모든 변경을 동등하게 취급했고, 위험한 변경을 자세히 보지 않았기 때문입니다.

팀은 세 가지 변경에 합의합니다. 첫째, 저위험 패턴의 짧은 목록에 맞고, 자동화된 테스트를 통과하며, 검증된 롤백이 있는 변경은 사전 승인되어 자동으로 기록됩니다. 둘째, 위험한 변경은 동료와 운영 대표가 하루 안에 검토합니다. 셋째, 모든 런북에는 이름이 있는 책임자를 두고, 인시던트 중에 쓰일 때마다 점검합니다.

두 달 뒤 팀장은 서비스 데스크와 결과를 검토합니다. 사전 승인된 변경은 빠르게 흐르고, 서비스 데스크는 이제 공유 피드에서 모든 변경을 봅니다. 문제 하나가 남아 있습니다. 사전 승인된 패턴 두 개가 너무 넓게 그려져서 경미한 인시던트가 뒤따랐습니다. 팀은 패턴을 좁히고 접근법은 유지합니다. 또 공유 피드가 대화를 대신하지 못한다는 것도 알게 되어, 서비스 데스크 책임자가 플랫폼 팀의 주간 계획 회의에 합류합니다.

## 네 가지 관점

### 제품 및 전달 팀

전달 팀에게 선언문은 작동하는 소프트웨어에 작동하는 운영이 포함된다는 것을 상기시킵니다. 모니터링하거나, 지원하거나, 롤백할 수 없는 기능은 끝난 것이 아닙니다. 가치를 근거로 릴리스를 안전하게 만드는 운영 업무를 주장하고, 운영 담당자를 계획 단계에 일찍 초대하십시오.

### 서비스 및 운영 팀

운영 담당자는 흔히 선언문이 개발자를 위해 말한다고 느낍니다. 다르게 읽어 보십시오. 가치는 사람들의 대화, 검증된 산출물, 변화에 대한 빠른 대응을 선호하며, 이는 모두 좋은 운영에 어울립니다. ITIL 실천법을 무엇이 잘못되는지에 대한 축적된 경험으로 테이블에 가져오고, 목적은 유지하되 더 가벼운 버전을 제안하십시오.

### 리더십과 거버넌스

리더는 가치가 작동하도록 조건을 만듭니다. 모든 릴리스에 서명이 다섯 개 필요하다면, 벽에 포스터가 아무리 많이 걸려 있어도 팀은 변화에 대한 대응을 우선할 수 없습니다. 팀에 리더 자신의 규칙이 어디서 팀을 늦추는지 물어보고, 목적을 다른 방식으로 달성할 수 있다면 규칙을 바꿀 준비를 하십시오.

### 고객과 사용자

네 가지 가치 중 두 곳에 고객이 명시되어 있습니다. 고객에게 선언문이 약속하는 것은 단순한 전달이 아니라 협력입니다. 무엇이 필요한지 질문받고, 작동하는 변경을 자주 보고, 마음을 바꿀 수 있기를 기대하십시오. 그 대신 팀은 여러분의 시의적절한 피드백과 결정을 필요로 합니다.

## 흔한 실패 유형

- **"보다"를 "대신"으로 쓰는 것.** 팀이 문서, 계획, 계약을 완전히 버렸다가 고생합니다. 대신 그것들이 각각 무엇을 달성해야 하는지 정하고, 그것을 달성하는 가장 가벼운 형태를 유지하십시오.
- **가치를 규율을 건너뛸 허가로 취급하는 것.** "우리는 애자일이다"가 테스트, 기록, 인수인계를 하지 않는 핑계가 됩니다. 대신 각 가치를 구체적인 실천과 연결하고, 그 실천이 실제로 이루어지는지 확인하십시오.
- **확인 없이 선언문을 외우기만 하는 것.** 구호가 생각을 대체합니다. 대신 정기적으로 실제 사건을 가치에 비추어 검토하십시오.
- **동료를 상대로 쓰는 것.** 감사, 보안, 운영의 우려를 가치를 인용해 일축하면 신뢰가 손상됩니다. 대신 그 우려가 무엇을 지키려는 것인지, 어떻게 가볍게 충족할 수 있는지 물으십시오.
- **가치 없이 실천법만 채택하는 것.** 데일리 미팅과 보드는 생기지만, 결정은 여전히 승인 사슬을 기다립니다. 대신 어떤 결정이 일하는 사람 가까이로 옮겨져야 하는지 물으십시오.
- **선언문이 운영 질문에 답한다고 가정하는 것.** 선언문은 2001년에 소프트웨어 개발에 관해 쓰였고 서비스 운영에 관해서는 거의 말하지 않습니다. 대신 서비스 관리 실천법과 결합하고 둘 다 맞춰 가십시오.

## 성숙도 모델

| 차원 | 시작 | 발전 | 표준화 | 관리 | 최적화 |
|---|---|---|---|---|---|
| 가치에 대한 공통의 이해 | 몇 사람이 선언문을 읽었다 | 일부 팀이 논의하며, 해석이 서로 다르다 | 팀들이 자신의 맥락에 맞춘 짧은 서면 해석을 공유한다 | 팀이 정기 검토에서 최근 결정을 가치에 비추어 확인한다 | 팀, 공급자, 고객이 트레이드오프에 대한 공통 어휘를 쓴다 |
| 프로세스와 사람의 균형 | 프로세스가 사람에 따라 지켜지거나 무시된다 | 일부 프로세스를 개별 팀이 단순화한다 | 각 프로세스에 책임자와 변경 요청 경로가 있다 | 변경당 대기 시간 등 프로세스 마찰이 측정된다 | 프로세스가 공유된 증거에 따라 팀 간에 조정된다 |
| 고객과의 협력 | 피드백이 불만으로 도착한다 | 일부 팀이 고객을 정기적으로 만난다 | 모든 서비스에 고객 의견을 모으는 정해진 방법이 있다 | 고객 의견이 추적되고 이루어진 변경과 연결된다 | 고객이 서비스 전반의 우선순위 설정을 돕는다 |
| 문서와 계획 | 문서가 드물거나 낡았다 | 팀이 유용하다고 여기는 문서를 유지한다 | 필수 문서는 적고, 책임자가 있으며, 검토된다 | 문서 사용이 관찰되고 쓰이지 않는 것은 제거된다 | 문서가 전달의 일부로 생성되거나 검증된다 |

## 체크리스트

- [ ] 모든 팀원이 선언문과 열두 가지 원칙을 한 번씩 읽었다.
- [ ] 팀이 각 가치를 자신의 말로, 자기 업무의 사례와 함께 설명할 수 있다.
- [ ] 어떤 프로세스, 문서, 계약, 계획을 유지하는지와 그 이유를 나열했다.
- [ ] 사용 중인 모든 프로세스에 이름이 있는 책임자와 변경 제안 경로가 있다.
- [ ] 런북과 서비스 설명에 책임자와 검토 날짜가 있다.
- [ ] 적어도 한 서비스의 고객과 정기적으로 대화한다.
- [ ] 최근의 인시던트나 릴리스 하나 이상을 네 가지 가치에 비추어 검토했다.
- [ ] 팀을 늦추는, 리더십이 정한 규칙을 나열하고 논의했다.
- [ ] 감사인과 규제 기관에 우리가 하는 일을 어떻게 보여 줄지 적어 두었다.

## AI 프롬프트

**목적: 네 가지 가치를 우리 팀을 위한 짧은 해석으로 바꾼다.**

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

**목적: 최근의 사건을 가치에 비추어 검토한다.**

```text
Below is a short description of a recent event in our team (an incident, a release, or a delayed change). Help me review it against the four values of the Agile Manifesto.

Event: [paste a factual description of what happened, in order, without blaming anyone].

For each value, say whether the event shows the team leaning toward the value on the left, toward the item on the right, or neither, and explain your reasoning in two sentences. Then suggest up to three questions our team could discuss. Separate what you can see in the text from what you are assuming, and list what you are unsure of.
```

**목적: 애자일 업무 방식에 대한 감사인의 우려에 답할 준비를 한다.**

```text
I need to explain to an auditor how our agile team keeps adequate records. The auditor's concern is: [paste the concern, e.g. "no evidence of who approved changes"].

Our current practice is: [describe what you do now: tools, reviews, approvals, where records are kept].

List what evidence our current practice already produces, what gaps the auditor might notice, and three lightweight ways to close each gap without adding a heavy manual process. Do not state that any law, standard, or regulation requires something unless I have pasted its text above. List your assumptions and what you are unsure of at the end.
```

**목적: 선언문에 관한 한 시간짜리 팀 세션을 설계한다.**

```text
Design a one-hour facilitated session for a team of [number] people on the Agile Manifesto. The team works on [services or products] and its biggest current frustration is [frustration].

Include: a five-minute opening, a 20-minute activity where the team matches recent real events to the four values, a 20-minute discussion of two or three of the six questions below, and a 10-minute close with one agreed action.

Questions available: [paste the questions you want to use from the "Questions to discuss" section].

Give a timed agenda, what the facilitator says, and what to watch for. Keep it practical and do not assume any tool. Ask clarifying questions if information is missing, and list what you are unsure of.
```

## AI 스킬

- [agile-principles](../../../../skills/agile-principles/SKILL.md): 팀의 실천이나 프로세스 결정을 선언문의 원칙에 비추어 점검하고 싶을 때 사용합니다.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): 최근 사건을 가치에 비추어 검토하고 실제 변화로 이어지는 회고를 진행할 때 사용합니다.
- [agile-liftoff](../../../../skills/agile-liftoff/SKILL.md): 새 팀이나 프로젝트를 시작하며 첫날부터 가치에 대한 공통의 해석을 갖고 싶을 때 사용합니다.
- [agile-coaching](../../../../skills/agile-coaching/SKILL.md): 팀이 의식을 흉내 내는 단계에서 그 이유를 이해하는 단계로 나아가도록 도울 때 사용합니다.

## 주요 출처

- **Manifesto for Agile Software Development** (agilemanifesto.org): 일차 텍스트입니다. 전문을 읽으십시오. 2분이면 됩니다.
- **Principles behind the Agile Manifesto** (agilemanifesto.org): 열두 가지 원칙으로, 가치에 가장 유용한 짝입니다.
- **History: The Agile Manifesto** (agilemanifesto.org): 스노버드 모임에 대한 저자들 자신의 짧은 기록입니다.
- **Agile software development** (Wikipedia): 역사, 방법, 실천법, 비판을 아우르는 폭넓은 개요이며, 더 읽을거리를 찾는 지도로 쓸모가 있습니다.

## 참고 문헌

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
