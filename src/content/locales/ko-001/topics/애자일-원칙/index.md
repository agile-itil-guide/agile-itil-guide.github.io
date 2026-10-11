# 애자일 원칙

**애자일 선언문 뒤에 있는 열두 가지 원칙은 네 개의 가치 진술을 확인할 수 있는 습관으로 바꾸며, 각 원칙은 소프트웨어 프로젝트뿐 아니라 운영 중인 서비스에도 던질 수 있는 질문으로 읽을 수 있습니다.**

## 왜 중요한가

선언문의 네 가지 가치는 팀이 어느 쪽으로 기울어야 하는지 알려 줍니다(주제 1.1 — 애자일 선언문 참조). 열두 가지 원칙은 그렇게 기우는 것이 일상 업무에서 어떤 모습인지 말해 줍니다. 얼마나 자주 전달하는지, 바뀌는 요구사항을 어떻게 대하는지, 누가 누구와 이야기하는지, 무엇이 진척으로 인정되는지, 팀이 어떻게 계속 배우는지. 외울 만큼 짧고, 팀이 지난주에 한 일에 비추어 시험할 만큼 구체적입니다.

서비스를 운영하는 팀에게 이 원칙들이 유용한 것은 만드는 일과 운영하는 일 사이의 흔한 구분을 가로지르기 때문입니다. 일정한 속도, 기술적 품질에 대한 관심, 정기적인 회고 같은 몇몇 원칙은 기능을 내보내는 데만이 아니라 서비스를 수년간 건강하게 유지하는 데 필요한 것을 설명합니다. 다른 원칙들은 IT 서비스 관리(ITSM) 주변에서 자라난 습관, 예를 들어 모든 변경을 일어나기 전에 통제해야 할 위험으로 취급하는 습관과 부딪힙니다. 둘을 나란히 읽으면 긴장이 어디서 실제이고, 어디서 낡은 가정에서 오는지 드러납니다.

이 원칙들은 2001년에 소프트웨어 개발에 관해 쓰였으므로 인시던트, 서비스 수준, 당직 순번을 언급하지 않습니다. 그 간극은 해석으로 메우며, 그 해석이 이 주제의 일입니다. 아래의 해석은 저자들의 견해가 아니라 자신의 맥락에서 시험해 볼 제안으로 다루십시오.

## 핵심 개념

### 원칙의 출처

원칙은 [agilemanifesto.org](https://agilemanifesto.org/principles.html)에 "Principles behind the Agile Manifesto"라는 제목으로, "We follow these principles."라는 말로 시작해 게시되어 있습니다. 2001년 2월 유타주 스노버드에서 모인 그룹이 쓴 선언문에 딸려 있습니다. [애자일 소프트웨어 개발에 관한 위키백과 문서](https://en.wikipedia.org/wiki/Agile_software_development)는 이를 선언문 뒤에 있는 열두 가지 원칙으로 나열합니다.

선언문의 서명이 붙은 것은 네 가지 가치뿐입니다. 원칙은 그 가치를 풀어 쓴 그룹의 설명이며, 대부분의 팀은 어떤 실천을 점검하고 싶을 때 이 원칙을 인용합니다. 각 원칙의 본문은 원문에서 볼 수 있으며, 이 주제는 각 원칙을 자체 표현으로 요약하고 짧은 구절만 인용합니다.

### 열두 가지 원칙 한눈에 보기

표는 원칙을 주제별로 묶고 각각을 쉬운 말로 다시 진술합니다. 번호는 agilemanifesto.org의 순서를 따릅니다.

| # | 요약 | 서비스를 운영하는 팀에게 의미할 수 있는 것 |
|---|---|---|
| 1 | 가치를 일찍, 지속적으로 전달하여 고객을 만족시킨다 | 서비스의 유용한 개선을 큰 출시를 위해 모아 두지 말고 작은 단계로 릴리스합니다. 계획이 말한 것이 아니라 사용자가 얻는 것으로 성공을 판단합니다. |
| 2 | 개발 후반에라도 요구사항 변경을 환영한다 | 고객이 필요로 하는 것의 변화를 계획에 대한 모욕이 아니라 정보로 취급합니다. 변경을 환영할 수 있을 만큼 변경 프로세스를 빠르게 만듭니다. |
| 3 | 작동하는 소프트웨어를 자주 전달하되, 더 짧은 주기를 선호한다 | 릴리스 간격을 며칠에서 몇 주로 짧게 유지합니다. 작은 릴리스는 건당 위험이 적고 롤백하기 쉽습니다. |
| 4 | 비즈니스 담당자와 개발자가 매일 함께 일한다 | 비즈니스 필요를 이해하는 사람을 서비스를 만들고 운영하는 사람과 같은 대화에, 분기별 검토가 아니라 매일 참여시킵니다. |
| 5 | 의욕 있는 개인을 중심으로 프로젝트를 구성하고, 지원하고 신뢰한다 | 허락의 사슬 없이 문제를 해결할 수 있도록 팀에 접근 권한, 도구, 권한을 줍니다. 신뢰는 명확한 책임과 짝을 이루어야 합니다. |
| 6 | 대면 대화가 정보를 전달하는 가장 좋은 방법이다 | 서비스가 실패하고 있을 때는 이야기합니다. 결과는 나중에 적습니다. 같은 장소에 없다면 화상이나 공유 통화를 씁니다. |
| 7 | 작동하는 소프트웨어가 진척의 주된 척도이다 | 산출된 문서나 닫힌 작업이 아니라, 사용 중인 기능이나 더는 재발하지 않는 인시던트처럼 사용자에게 실제로 작동하는 것을 측정합니다. |
| 8 | 지속 가능한 개발: 무기한 일정한 속도 | 사람들을 영구적인 영웅주의로부터 보호합니다. 소수의 지친 개인에게 의존하는 당직 순번은 서비스에 대한 위험입니다. |
| 9 | 기술적 탁월함과 좋은 설계에 대한 지속적인 관심 | 반복되는 실패의 원인을 고치고 플랫폼을 유지보수 가능하게 유지합니다. 오늘의 품질 높은 작업이 나중에 빠르게 변경할 수 있게 해 줍니다. |
| 10 | 단순함: 하지 않은 일의 양을 극대화한다 | 더는 목적에 기여하지 않는 서비스, 단계, 승인, 문서를 없앱니다. 유지하는 모든 항목은 운영되고, 갱신되고, 설명되어야 합니다. |
| 11 | 최고의 설계는 자기 조직화 팀에서 나온다 | 일에 가장 가까운 사람들이 명확한 경계 안에서 일하는 방법을 결정하게 합니다. 상세한 지시가 아니라 가드레일을 제공합니다. |
| 12 | 정기적으로 돌아보고 조정한다 | 인시던트 이후를 포함해 팀이 일하는 방식을 정기적으로 검토하고, 매번 적어도 하나의 실제 변화를 만듭니다. |

### 네 가지 주제

원칙은 대화를 계획할 때 유용한 네 그룹으로 나뉩니다.

- **가치와 변화(1, 2, 3):** 일찍, 자주 전달하고 변화를 정상으로 취급합니다. 무거운 변경 통제와 가장 긴장 관계에 있는 원칙입니다.
- **사람과 소통(4, 5, 6):** 매일의 협업, 신뢰, 직접 대화. 인시던트와 인수인계 중에 가장 중요한 원칙입니다.
- **품질과 지속 가능성(7, 8, 9, 10):** 진척의 척도로서의 작동하는 결과, 사람들이 유지할 수 있는 속도, 기술적 품질, 단순함. 서비스를 수년간 지켜 주는 원칙입니다.
- **학습과 자기 조직화(11, 12):** 일하는 방법을 스스로 정하고 그 방식을 개선하는 팀. 지속적 개선과 연결되는 원칙입니다(주제 3.15 — 지속적 개선 참조).

### 원칙과 실천법은 같지 않습니다

원칙은 방향을 진술합니다. 실천법은 그것을 따르는 한 가지 방법입니다. 스크럼, 칸반, 익스트림 프로그래밍은 사용자들이 원칙을 따른다고 말하는 실천법의 묶음입니다(주제 1.4 — 전달 예측과 계획 지표, 주제 1.5 — 칸반, 주제 1.6 — 익스트림 프로그래밍 참조). 팀은 실천법을 따르면서 그 뒤에 있는 원칙을 어길 수 있습니다. 관리자에게 하는 상태 보고로 변해 버린 데일리 스탠드업은 의식은 유지하면서 원칙 4와 원칙 5의 요점은 잃습니다.

### 원칙이 침묵하거나 논쟁이 되는 곳

원칙은 보안, 감사, 규제, 장애의 비용에 대해 아무 말도 하지 않습니다. 새벽 3시에 누가 당직인지도 말하지 않습니다. 서비스 팀은 ITSM과 자신의 맥락에서 그 지식을 가져와야 합니다. 비평가들은 원칙 6이 시간대가 다른 팀에게는 지키기 어려울 수 있으며, "주된 척도인 작동하는 소프트웨어"가 문서를 무시하는 것으로 읽힐 수 있다고도 지적합니다. 애자일 소프트웨어 개발에 관한 위키백과 문서는 이런 종류의 비판을 기록하고, 애자일 방법의 이점에 대한 증거가 제한적이라고 밝힙니다. 원칙을 자신의 결과에 비추어 시험하십시오.

## 모범 사례

1. **원칙을 검토 체크리스트로 사용하십시오.** 매달 두세 개의 원칙을 골라 최근의 릴리스, 인시던트, 프로젝트에서 팀의 행동이 부합했는지 물어보십시오. 일반론이 아닌 실제 사건을 쓰십시오. 가치는 발견한 간극에 있습니다.
2. **자동화하기 전에 릴리스 간격부터 줄이십시오.** 원칙 3은 더 짧은 주기를 선호합니다. 월간이 아닌 주간으로 릴리스하지 못하게 막는 것이 무엇인지 묻고, 장애물을 나열해 순서대로 제거하십시오. 그러면 자동화는 이미 가진 리듬을 뒷받침합니다.
3. **늦은 변경을 위한 경로를 만드십시오.** 원칙 2는 변경을 환영하라고 하지만, 빠르고 안전하게 받아들일 방법이 있어야만 가능합니다. 저위험 변경을 위한 가벼운 경로를 정의하고, 위험한 변경에는 더 충분한 검토를 유지하십시오(주제 3.4 — 변경 실현 참조).
4. **비즈니스 담당자와 기술 담당자를 매일 한자리에 두십시오.** 원칙 4는 매일의 협업을 요구합니다. 서비스 팀에서는 데일리 미팅에 참석하는 서비스 오너, 또는 일주일에 한 번 서비스 데스크 옆에 앉는 제품 담당자가 될 수 있습니다.
5. **신뢰에 책임을 짝지으십시오.** 원칙 5는 의욕 있는 사람을 신뢰하라고 합니다. 각 팀이 무엇을 소유하는지, 단독으로 무엇을 결정할 수 있는지, 무엇을 상향 보고해야 하는지 명확히 밝히십시오. 신뢰는 결정과 그 결과가 보일 때 자랍니다.
6. **먼저 이야기하고, 나중에 기록하십시오.** 인시던트 중에는 대면이든 통화든 적절한 사람들을 하나의 대화에 모으고, 누군가가 결정과 시각을 그때그때 적도록 하십시오. 이는 원칙 6에 부합하며 나중의 검토를 위한 기록을 남깁니다(주제 3.2 — 인시던트 관리 참조).
7. **활동이 아니라 결과를 세십시오.** 원칙 7은 작동하는 소프트웨어를 진척의 척도로 삼습니다. 서비스에서는 서비스 복구 시간, 새 기능을 쓰는 사용자 수, 실패가 재발하는 빈도 같은 지표를 고르십시오. 아무것도 고치지 않고 티켓만 빨리 닫는 것에 보상하는 지표는 피하십시오(주제 5.6 — 지표와 측정 참조).
8. **속도를 지키십시오.** 원칙 8은 팀이 영원히 유지할 수 있는 속도를 요구합니다. 당직 부담, 초과 근무, 긴급한 중단 횟수를 검토하고, 증가하는 추세를 개인의 결함이 아니라 서비스 위험으로 다루십시오.
9. **기술 부채를 일정에 따라 갚으십시오.** 원칙 9는 품질을 민첩성과 연결합니다. 각 주기의 눈에 보이는 일부를 수리, 업그레이드, 테스트에 배정하고, 이를 문제 기록과 연결하여 작업이 증거에 기반하도록 하십시오(주제 3.3 — 문제 관리 참조).
10. **없애십시오.** 원칙 10은 하지 않은 일을 가치 있게 봅니다. 분기마다 서비스, 보고서, 양식, 승인 단계를 나열하여 아무도 쓰지 않거나 더는 위험을 줄이지 않는 것을 퇴역시키십시오.
11. **팀에 대본이 아니라 가드레일을 주십시오.** 원칙 11은 좋은 설계가 자기 조직화 팀에서 나온다고 봅니다. 보안 규칙, 예산, 서비스 수준 같은 경계를 정하고, 그것을 충족하는 방법은 팀이 고르게 하십시오.
12. **모든 회고를 변화로 마무리하십시오.** 원칙 12는 팀이 돌아본 다음 조정하라고 합니다. 각 회고나 인시던트 사후 검토마다 하나의 변화에 합의하고, 책임자를 지정하고, 다음 검토에서 확인하십시오.

## 팀과 논의할 질문

**열두 가지 원칙 중 오늘 우리가 가장 잘 따르는 것은 무엇이고, 가장 덜 따르는 것은 무엇인가?**

각자에게 목록을 주고, 팀이 잘 따른다고 생각하는 원칙 하나와 못 따른다고 생각하는 원칙 하나에 표시해 달라고 한 뒤 비교합니다. 의견 차이는 사람들이 일을 다르게 본다는 것을 보여 주므로 유용합니다. 각 표시 뒤의 최근 사례를 요청하십시오. 진행자는 대화를 사건에 두고 인격에서 떼어 놓아야 합니다. 팀이 다룰 원칙 하나를 고르며 끝냅니다.

**작고 유용한 개선을 사용자에게 보여 주는 데 얼마나 걸리고, 무엇이 그것을 늦추는가?**

이 질문은 원칙 1과 3을 시험합니다. 최근의 작은 변경 하나를 요청부터 릴리스까지 따라가며 각 대기를 적습니다. 흔한 답은 승인 회의, 수동 테스트, 릴리스 창구입니다. 이 대기 중 일부는 실제 위험을 막아 주므로, 각각이 무엇을 지키는지 물어보십시오. 이어서 단축할 대기 하나를 고릅니다.

**고객이 원하는 것이 늦게 바뀌어 우리가 마지막으로 곤란했던 때는 언제였고, 무엇이 있었다면 받아들일 수 있었을까?**

일반론은 피하고 실제 사례를 요청하십시오. 사람들은 계약 조건, 고정된 범위, 이미 동결된 릴리스를 꼽는 경우가 많습니다. "예"라고 답하는 데 비용이 거의 들지 않았을 시점을 찾고, 무엇이 그것을 가능하게 했을지 물어보십시오. 이 질문은 원칙 2를 팀의 계획 방식과 연결합니다.

**비즈니스 쪽에서 우리 서비스를 운영하고 만드는 사람들과 매일 이야기하는 사람은 누구이며, 누구여야 하는가?**

한 서비스에 관련된 사람들을 지도로 그립니다. 오너, 사용자, 지원 담당자, 개발자. 각 쌍이 얼마나 자주 이야기하는지 표시합니다. 간극은 흔히 지원 담당자와 개발자 사이, 또는 사용자와 결정 권한을 가진 사람 사이에 나타납니다. 진행자는 지난 6개월 동안 어느 간극이 가장 큰 문제를 일으켰는지 묻고, 그것을 메울 작고 정기적인 접촉을 제안할 수 있습니다.

**이 속도로 앞으로 5년을 더 일하려면 무엇이 필요한가?**

이 질문은 원칙 8을 시험합니다. 당직 부담, 주말 근무, 휴가를 쓰는 데 대한 팀의 느낌을 물어보십시오. 영웅주의를 정상으로 취급하는 답에 주의하십시오. 지난 당직 순번이 업무 시간 외 호출을 몇 번 만들었는지와 같은 사실을 요청하고, 논의를 개인이 아닌 시스템에 두십시오. 부담을 낮추는 변화 하나로 이어 갑니다.

**고객에게 해를 끼치지 않고 그만둘 수 있는 우리의 일은 무엇인가?**

이 질문은 원칙 10을 적용합니다. 아무도 읽지 않는 보고서, 서로 겹치는 회의, 한 번도 거절하지 않는 승인을 말해 보라고 하십시오. 각각을 없애면 누가 알아차릴지 물어보십시오. 답은 실행 전에 확인이 필요하므로 누군가에게 알아보는 일을 맡기십시오. 팀은 여기서 빠른 성과를 발견하는 경우가 많고, 이 연습은 낡은 규칙에 의문을 품는 습관을 길러 줍니다.

## 실전 사례: 애자일 ITIL 예시

지역 병원의 IT 부서는 6명의 서비스 데스크와, 자체 개발 도구를 유지보수하는 소규모 개발 팀으로 약 40개의 임상 및 행정 애플리케이션을 지원합니다. 임상 직원은 진료 예약 도구의 수정에 몇 달이 걸린다고 불평하고, 개발자들은 그 시간 대부분을 월간 변경 심의회와 배포하기에 조용한 주말을 기다리는 데 쓴다고 말합니다.

부서장은 열두 가지 원칙을 체크리스트로 삼아 반나절 워크숍을 엽니다. 그룹은 예약 도구의 최근 변경 여섯 건을 살펴봅니다. 다섯 건은 작은 수정이었고, 각각 평균 5주 동안 변경 심의회를 기다렸습니다. 그룹은 원칙 2와 3이 실제로는 지켜지지 않고 있으며, 예약 도구의 임상 책임자가 변경이 만들어진 후에야 보기 때문에 원칙 4도 약하다는 것을 알게 됩니다.

부서는 시범 운영에 합의합니다. 한 화면에만 영향을 주고, 자동화된 테스트를 통과하며, 몇 분 안에 되돌릴 수 있는 수정은 표준 변경으로 취급해 미리 승인하고, 임상 책임자에게는 자동으로 알립니다. 임상 책임자, 개발자 한 명, 서비스 데스크 분석가가 매주 10분간 모여 다음에 무엇을 고칠지 정합니다. 팀은 변경 유형이 어떻게 작동하는지 월간 검토를 추가하며, 이는 원칙 12에 부합합니다.

석 달 뒤 작은 수정은 약 일주일 만에 사용자에게 도달합니다. 서비스 데스크는 알려진 버그에 대한 반복 전화가 줄었다고 보고합니다. 어려움 하나가 남아 있습니다. 임상 책임자가 병동에 있어서 주간 회의 두 번이 건너뛰어졌고, 책임자의 승인이 필요한 결정이 일주일간 기다렸습니다. 부서는 대리인을 지정하기로 합니다. 또 일부 직원이 "팀을 신뢰한다"를 알림 단계를 건너뛰어도 된다는 허가로 읽는다는 것을 알게 되어, 사람이 보내는 데 의존하지 않고 알림을 자동화합니다.

## 네 가지 관점

### 제품 및 전달 팀

전달 팀은 원칙을 자신의 업무를 시험하는 도구로 쓸 수 있습니다. 기능이 곧 릴리스할 만큼 작은지, 모니터링하고 롤백할 수 있는지, 지원 담당자가 알고 있는지 물어보십시오. 원칙 3, 7, 9는 릴리스가 운영해야 하는 사람들에게 선물인지 짐인지를 가장 자주 가르는 원칙입니다.

### 서비스 및 운영 팀

운영 팀은 여러 원칙을 오래된 진리로 알아볼 것입니다. 인시던트 중에는 서로 이야기하고, 지속 가능한 속도를 유지하고, 단순하게 유지하라는 것입니다. 이를 근거로 반복되는 문제를 고칠 시간, 감당할 수 있는 당직 순번, 설계 단계의 조기 참여를 요구하십시오. 어떤 ITSM 통제가 정당한 이유로 존재하는지 설명할 준비를 하여, 대화가 구호가 아니라 목적에 관한 것이 되게 하십시오.

### 리더십과 거버넌스

리더는 원칙을 어디까지 따를 수 있는지를 좌우합니다. 변경을 환영한다는 것은 계획이 움직임을 받아들이는 것이고, 팀을 신뢰한다는 것은 모든 결정을 승인하지는 않을 것임을 받아들이는 것입니다. 그 신뢰를 편안하게 느끼려면 서비스 수준 보고서, 감사 추적, 인시던트 검토 같은 어떤 증거가 필요한지 묻고, 팀이 무거운 수작업 없이 그것을 만들어 낼 수 있게 하십시오.

### 고객과 사용자

고객에게 원칙은 빈번하고 유용한 변경과 다음에 올 것에 대한 발언권을 약속합니다. 또한 대가로 매일, 적어도 정기적인 접촉, 빠른 결정, 작은 릴리스를 시도할 의지도 요구합니다. 프로젝트의 시작과 끝에만 나타나는 고객은 가장 느린 형태의 이점을 받게 될 것입니다.

## 흔한 실패 유형

- **원칙을 규정집으로 취급하는 것.** 팀이 문구를 두고 다투며 취지를 놓칩니다. 대신 원칙으로 실제 사건에 대한 대화를 시작하고 무엇을 바꿀지 결정하십시오.
- **"변경을 환영한다"를 "무엇이든 받아들인다"로 읽는 것.** 한계가 없으면 서비스는 모든 요청에 흔들립니다. 대신 위험, 비용, 가치를 빠르게 확인하는 정해진 경로로 변경을 환영하십시오.
- **품질 없이 자주 릴리스하는 것.** 약한 테스트로 자주 릴리스하면 자주 장애가 납니다. 대신 원칙 9를 원칙 3의 조건으로 다루고, 속도를 높이기 전에 테스트와 롤백에 투자하십시오.
- **일정한 속도를 느린 속도와 혼동하는 것.** "지속 가능"을 힘든 일을 피하는 데 쓰는 팀은 신뢰를 잃습니다. 대신 꾸준하면서도 의욕적인 속도가 어떤 모습인지 합의하고 몇 달에 걸쳐 측정하십시오.
- **대면 대화를 도구로 대체하는 것.** 채팅 채널과 티켓이 아무도 읽지 않는 세부 사항으로 가득 찹니다. 대신 사안이 급하거나 불분명할 때는 대화하고, 결정은 나중에 기록하십시오.
- **활동으로 진척을 측정하는 것.** 닫은 티켓이나 출시한 릴리스를 세면 움직임에 보상하게 됩니다. 대신 복구된 서비스, 채택된 기능, 줄어든 반복 인시던트처럼 사용자가 볼 수 있는 결과를 추적하십시오.
- **아무것도 바꾸지 않는 회고를 하는 것.** 팀이 이야기하지만 다음 주기도 똑같습니다. 대신 매 회고마다 하나의 변화에 합의하고 다음 회고에서 가장 먼저 확인하십시오.
- **원칙이 위험에 침묵한다는 점을 무시하는 것.** 원칙이 언급하지 않는다는 이유로 팀이 보안과 컴플라이언스를 건너뜁니다. 대신 이를 명시적 제약으로 추가하고 작은 단계로 충족하는 방법을 논의하십시오.

## 성숙도 모델

| 차원 | 시작 | 발전 | 표준화 | 관리 | 최적화 |
|---|---|---|---|---|---|
| 전달 리듬(원칙 1–3) | 릴리스가 드물고 크다 | 일부 팀이 작은 단계로 릴리스한다 | 팀이 짧은 릴리스 리듬과 늦은 변경을 위한 경로를 공유한다 | 릴리스 간격과 리드 타임이 추적·검토된다 | 릴리스 리듬이 서비스와 공급자 간에 조율된다 |
| 협업(원칙 4–6) | 비즈니스와 기술 담당자가 이정표 때만 만난다 | 일부 팀이 비즈니스 대표와 매일 만난다 | 모든 서비스에 이름이 있는 오너와 사용자와의 정기 접촉이 있다 | 협업의 간극이 검토에서 발견되고 고쳐진다 | 고객과 공급자가 계획과 인시던트 검토에 참여한다 |
| 지속 가능성과 품질(원칙 7–10) | 압박을 초과 근무로 처리하고 품질 문제를 용인한다 | 일부 팀이 당직 부담과 기술 부채를 추적한다 | 수리를 위한 시간과 공정한 당직 순번이 계획에 포함된다 | 결과, 부담, 반복 실패가 측정되고 대응된다 | 단순화가 조직 전반에서 일상이다 |
| 학습과 자기 조직화(원칙 11–12) | 검토는 심각한 실패 뒤에만 이루어진다 | 일부 팀이 정기 회고를 한다 | 모든 팀이 정해진 리듬으로 업무를 검토하고 하나의 변화를 기록한다 | 검토 조치가 완료까지 추적되고 결과가 확인된다 | 한 팀의 개선이 중앙의 지시 없이 다른 팀으로 퍼진다 |

## 체크리스트

- [ ] 모든 팀원이 agilemanifesto.org의 열두 가지 원칙을 읽었다.
- [ ] 최근의 릴리스나 인시던트 하나를 적어도 세 가지 원칙에 비추어 검토했다.
- [ ] 우리의 릴리스 간격을 알고, 그것을 줄이지 못하게 막는 것을 나열했다.
- [ ] 저위험 변경에는 빠른 승인 경로가, 위험한 변경에는 더 충분한 경로가 있다.
- [ ] 각 서비스에 사용자와 정기적으로 이야기하는, 이름이 있는 오너가 있다.
- [ ] 인시던트가 적절한 사람들을 하나의 대화에 모으고 결정이 기록된다.
- [ ] 당직 부담을 추적하고 적어도 분기에 한 번 검토한다.
- [ ] 각 주기의 눈에 보이는 일부가 수리와 기술 부채에 쓰인다.
- [ ] 지난 분기에 적어도 하나의 보고서, 단계, 서비스를 퇴역시켰다.
- [ ] 모든 회고가 합의된 하나의 변화, 책임자, 확인할 날짜로 끝난다.

## AI 프롬프트

**목적: 최근의 릴리스나 인시던트를 열두 가지 원칙에 비추어 검토한다.**

```text
You are helping a team review a recent event against the twelve principles behind the Agile Manifesto.

The twelve principles, in short: (1) satisfy the customer through early and continuous delivery; (2) welcome changing requirements; (3) deliver frequently, preferring shorter timescales; (4) business people and developers work together daily; (5) build around motivated individuals and trust them; (6) face-to-face conversation; (7) working software is the primary measure of progress; (8) a sustainable, constant pace; (9) attention to technical excellence and good design; (10) simplicity, maximizing the work not done; (11) self-organizing teams; (12) regular reflection and adjustment.

Event: [paste a factual, blameless description of a release, incident, or delayed change, in the order things happened].

Pick the three principles most relevant to this event. For each, say in two or three sentences whether the team's behavior matched the principle, citing only details from the event text. Then suggest two questions for the team to discuss. Ask me up to three clarifying questions first if the event description is too thin. Mark assumptions, and list what you are unsure of.
```

**목적: 원칙 2와 3을 이용해 작은 변경을 늦추는 것이 무엇인지 찾는다.**

```text
I want to understand why small changes take a long time to reach our users. Here is the sequence of steps for one recent small change, with how long each step took: [paste the steps and durations; for example "request raised, 1 day; waiting for change board, 9 days"].

Our change process is described as: [paste a short description of the change approval process, including who approves what].

List the waits in order of length. For each wait, suggest what risk it may be protecting against and one lighter way to manage that risk. Do not claim that any standard or regulation requires a step unless I have pasted its text. Mark where you are guessing, and list what you are unsure of.
```

**목적: 원칙을 회고를 위한 질문으로 바꾼다.**

```text
Create a 45-minute retrospective plan for a team of [number and type of people, e.g. "seven people who build and run an internal payroll service"]. The retrospective should use the twelve Agile Manifesto principles to look at the last [period, e.g. "four weeks"].

Context: [paste 3-5 sentences about what happened in the period, including any incident, release, or conflict].

Include a timed agenda, one activity that surfaces facts, one that groups them by principle, and a closing step where the team agrees exactly one change with an owner and a date to review. Keep it free of any specific tool. If information is missing, ask me clarifying questions first, and list what you are unsure of.
```

**목적: 제안된 프로세스의 단순함을 점검한다(원칙 10).**

```text
Here is a process we use: [paste the steps, who does them, and the forms or approvals involved].

For each step, ask what purpose it serves, who benefits, and what would happen if it were removed. Then propose a shorter version that keeps the purposes that matter. Flag any step that exists because of an external requirement I have named: [list any laws, contracts, or standards you are certain apply, or write "none known"]. Do not invent requirements. List your assumptions and what you are unsure of.
```

## AI 스킬

- [agile-principles](../../../../skills/agile-principles/SKILL.md): 팀의 실천이나 결정을 원칙에 비추어 점검하고 각 원칙이 맥락에서 무엇을 뜻하는지 논의할 때 사용합니다.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): 원칙 12가 요구하는 정기적 회고를 진행하고 실제 변화로 이어 가도록 할 때 사용합니다.
- [kaizen](../../../../skills/kaizen/SKILL.md): 회고나 검토 뒤에 작고 지속적인 개선을 계획할 때 사용합니다.
- [agile-delivery](../../../../skills/agile-delivery/SKILL.md): 원칙 1과 3에 맞춰 잦고 작은 릴리스를 계획할 때 사용합니다.
- [agile-coaching](../../../../skills/agile-coaching/SKILL.md): 팀이 의식을 따르는 단계에서 그 뒤의 원칙을 이해하는 단계로 나아가도록 도울 때 사용합니다.

## 주요 출처

- **Principles behind the Agile Manifesto** (agilemanifesto.org): 열두 가지 원칙의 일차 텍스트입니다. 전문을 읽으십시오.
- **Manifesto for Agile Software Development** (agilemanifesto.org): 원칙이 풀어 쓴 네 가지 가치입니다.
- **History: The Agile Manifesto** (agilemanifesto.org): 그룹이 어떻게 모였고 무엇을 바꾸고 싶어 했는지에 대한 저자들의 기록입니다.
- **Agile software development** (Wikipedia): 역사, 실천법, 비판을 담은 개요로, 더 읽을거리를 찾는 데 유용합니다.

## 참고 문헌

1. Principles behind the Agile Manifesto — Beck et al., agilemanifesto.org — https://agilemanifesto.org/principles.html
2. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
3. History: The Agile Manifesto — Jim Highsmith for the Agile Alliance, agilemanifesto.org — https://agilemanifesto.org/history.html
4. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
5. Manifesto for Agile Software Development — Wikipedia — https://en.wikipedia.org/wiki/Manifesto_for_Agile_Software_Development
6. Continuous delivery — Wikipedia — https://en.wikipedia.org/wiki/Continuous_delivery
7. Technical debt — Wikipedia — https://en.wikipedia.org/wiki/Technical_debt
8. Self-organization — Wikipedia — https://en.wikipedia.org/wiki/Self-organization
9. Kaizen — Wikipedia — https://en.wikipedia.org/wiki/Kaizen
