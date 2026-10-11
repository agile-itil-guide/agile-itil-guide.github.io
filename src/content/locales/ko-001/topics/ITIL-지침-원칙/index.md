# ITIL 지침 원칙

**ITIL의 일곱 가지 지침 원칙은 기억할 수 있을 만큼 짧고 어떤 서비스 결정에도 적용할 수 있을 만큼 넓으며, 애자일 원칙과 강하게 겹쳐서 팀이 둘 사이의 다리로 쓸 수 있습니다.**

## 왜 중요한가

애자일 팀과 서비스 관리 그룹이 의견이 갈릴 때 흔히 실천을 두고 다툽니다. 변경에 승인이 필요한지, 검토가 요구되는지, 문서가 필요한지. 각 편이 그 뒤의 원칙을 밝히지 않은 채 자기 실천을 옹호하기 때문에 논쟁은 제자리를 맴돕니다. ITIL의 지침 원칙은 어떤 실천에도 적용되도록 쓰였고 대부분의 애자일 실무자가 알아볼 것이므로 여기서 유용합니다.

이 원칙들은 ITIL이 무거운 프로세스를 처방한다는 흔한 불평에도 답합니다. ITIL 4 자신의 원칙에 "단순하고 실용적으로 유지하라"와 "지금 있는 곳에서 시작하라"가 포함되어 있습니다. 이를 인용하는 팀은 제안된 프로세스가 자신이 따른다고 주장하는 프레임워크와 어긋난다고 정당하게 말할 수 있습니다. 동시에 원칙은 애자일 팀에도 무언가를 요구합니다. "협력하고 가시성을 높이라"와 "전체적으로 생각하고 일하라"는 결과물을 운영하는 사람들을 희생하면서 자기 스프린트를 최적화하는 팀에 도전합니다.

이 주제는 일곱 가지 원칙을 설명하고, 주제 1.2 — 애자일 원칙의 애자일 원칙과 비교하며, 이를 의사결정 보조 도구로 쓰는 법을 보입니다. 원칙의 이름은 [ITIL에 관한 위키백과 문서](https://en.wikipedia.org/wiki/ITIL)에서 왔으며 참조한 훈련 및 벤더 출처들에서 일관됩니다. 설명은 이 가이드 자신의 것이며 ITIL 발행물의 인용이 아닙니다. 소유자의 표현이 필요하면 ITIL 4 발행물을 직접 읽으십시오.

## 핵심 개념

### 일곱 가지 원칙

위키백과에 따르면 지침 원칙은 다음과 같습니다.

1. 가치에 집중하라
2. 지금 있는 곳에서 시작하라
3. 피드백을 받으며 반복적으로 진행하라
4. 협력하고 가시성을 높이라
5. 전체적으로 생각하고 일하라
6. 단순하고 실용적으로 유지하라
7. 최적화하고 자동화하라

위키백과는 이를 ITIL 5 절 아래에 나열합니다. 훈련 제공자와 벤더가 요약한 ITIL 4의 원칙과 일치하며, 이 가이드는 이를 PeopleCert의 ITIL 5 자료가 이어받았을 수 있는 ITIL 4 원칙으로 다룹니다. 정확한 문구와 ITIL 5가 이를 바꾸는지는 소유자의 최신 발행물을 확인하십시오(주제 2.2 — ITIL 참조).

### 각 원칙이 요구하는 것

표는 이 가이드를 위해 쓴 각 원칙의 평이한 해석을, 주제 1.2 — 애자일 원칙에서 가장 가까운 애자일 대응과 함께 보여 줍니다.

| 원칙 | 여러분에게 요구하는 것 | 가장 가까운 애자일 아이디어 |
|---|---|---|
| **가치에 집중하라** | 모든 활동을 고객, 사용자, 조직을 위한 가치에 묶고, 기여하지 않는 활동은 버립니다 | 애자일 원칙 1: 가치 있는 소프트웨어를 일찍, 지속적으로 전달하여 고객을 만족시킨다 |
| **지금 있는 곳에서 시작하라** | 새로 만들기 전에 있는 것을 살펴보고, 이미 작동하는 것을 재사용합니다 | 애자일 원칙 10: 단순함, 하지 않은 일의 양을 극대화한다 |
| **피드백을 받으며 반복적으로 진행하라** | 작은 단계로 일하고, 각각에서 배우고, 조정합니다. 모든 것을 먼저 계획하려 하지 않습니다 | 애자일 원칙 3과 12: 자주 전달하고, 정기적으로 돌아보고 조정한다 |
| **협력하고 가시성을 높이라** | 경계를 넘어 일하고, 정보를 공개적으로 공유하고, 일을 눈에 보이게 합니다 | 애자일 원칙 4와 6: 매일의 협업과 대면 대화 |
| **전체적으로 생각하고 일하라** | 서비스를 분리된 부분이 아니라 사람, 정보, 기술, 파트너의 전체 시스템으로 봅니다 | 단일한 애자일 원칙은 없음. 가장 가까운 것은 전체를 최적화한다는 린의 아이디어(주제 1.7 — 린 소프트웨어 개발 참조) |
| **단순하고 실용적으로 유지하라** | 결과에 도달하는 데 필요한 최소한의 단계를 쓰고, 프로세스를 위한 프로세스를 피합니다 | 애자일 원칙 10 다시, 그리고 좋은 설계에 관한 원칙 9 |
| **최적화하고 자동화하라** | 먼저 일을 개선한 다음, 기술로 일상적 노력을 제거합니다 | 애자일 원칙 9, 그리고 지속적 통합 같은 실천(주제 1.6 — 익스트림 프로그래밍 참조) |

애자일 원칙은 agilemanifesto.org의 번호를 따릅니다. 대응은 이 가이드의 판단이며, 어떤 출처도 공식적인 대응을 주장하지 않습니다.

### 두 묶음이 다른 곳

겹침은 크지만 강조점은 유용한 방식으로 다릅니다.

- **ITIL은 전체를 강조합니다.** "전체적으로 생각하고 일하라"는 공급자와 사용자를 포함한 엔드 투 엔드 서비스를 고려하라고 요구합니다. 선언문의 원칙은 주로 팀과 고객에 대해 말하고 더 넓은 시스템에 대해서는 거의 말하지 않습니다.
- **애자일은 팀과 속도를 강조합니다.** 애자일 원칙은 의욕 있는 개인, 지속 가능한 속도, 자기 조직화 팀을 요구합니다. ITIL의 원칙은 사람들의 근로 조건을 직접 언급하지 않지만, "조직과 사람" 차원이 이를 다룹니다(주제 2.5 — 서비스 관리의 네 가지 차원 참조).
- **ITIL은 가시성을 강조합니다.** "협력하고 가시성을 높이라"는 공개적인 공유를 요구합니다. 애자일 팀은 보드와 시연으로 이를 하지만 서비스를 지원하는 그룹을 빠뜨릴 수 있습니다.
- **애자일은 기술적 품질을 강조합니다.** 기술적 탁월함에 관한 애자일 원칙에는 직접적인 대응이 없지만, "최적화하고 자동화하라"가 관련됩니다.

### 원칙을 의사결정 보조 도구로 쓰기

ITIL의 지침 원칙은 쓰라고 있는 것입니다. 간단한 방법은 승인 단계를 추가하는 것 같은 결정을 가져다가, 각 원칙에 대해 그 선택지가 원칙을 지지하는지, 충돌하는지, 중립인지 묻는 것입니다. 결과는 트레이드오프의 짧고 정직한 목록입니다. 원칙은 규칙이 아니며 서로 당길 수 있습니다. 기존 도구가 형편없을 때 "지금 있는 곳에서 시작하라"는 "최적화하고 자동화하라"와 충돌할 수 있고, 시스템이 복잡할 때 "단순하게 유지하라"는 "전체적으로 생각하라"와 충돌할 수 있습니다. 원칙 사이의 논의가 가치입니다.

### 원칙과 실천

원칙은 실천의 선택을 이끌고, 실천은 일하는 방식입니다(주제 2.3 — ITIL 서비스 가치 시스템 참조). 어떤 원칙으로도 설명할 수 없는 실천은 제거 후보입니다. 아무도 일상 업무에서 볼 수 없는 원칙은 구호입니다. 두 점검 모두 해 볼 만합니다.

### 한계

원칙은 넓습니다. 두 사람이 같은 원칙을 내세워 정반대의 결정을 뒷받침할 수 있습니다. 위키백과 문서는 원칙에 대한 비판을 언급하지 않으며, 이 가이드도 지어내지 않습니다. 실용적인 한계는 원칙이 다음에 무엇을 할지 알려 주지 않고 선택지를 어떻게 판단할지 알려 준다는 것입니다. 자신의 서비스에서 나온 증거와 결합하십시오.

## 모범 사례

1. **일곱 가지 원칙을 팀이 일하는 곳에 두십시오.** 프로세스 문서 옆이나 제안서 템플릿에 게시하십시오. 보이지 않는 원칙은 쓰이지 않습니다.
2. **제안을 원칙에 비추어 시험하십시오.** 새 프로세스나 도구마다 원칙당 한 줄을 쓰십시오. 지지, 충돌, 중립. 승인을 요청할 때 결과를 공유하십시오.
3. **"누가 이득을 보는가?"를 물어 가치에 집중하십시오.** 각 작업에 대해 이득을 보는 사람이나 집단의 이름을 대십시오. 하나도 댈 수 없다면 그 작업에 의문을 가지십시오.
4. **있는 것을 감사하여 지금 있는 곳에서 시작하십시오.** 도구를 사거나 프로세스를 설계하기 전에 팀이 이미 쓰는 것과 그것이 필요를 충족하는지 나열하십시오. 교체하기 전에 재사용하고 확장하십시오.
5. **반복을 실질적으로 만드십시오.** 프로세스 변경을 작은 첫 단계로 쪼개고, 검토 날짜를 정하고, 어떤 증거를 볼지 미리 정하십시오. 빅뱅 출시는 피하십시오.
6. **일에 의존하는 사람들에게 일을 보이게 하십시오.** 보드, 릴리스 계획, 인시던트 상태를 지원 직원과 고객에게 공유하십시오. 각 대상에게 필요한 세부 수준을 합의하십시오.
7. **한 부분을 바꾸기 전에 서비스 전체를 그리십시오.** 관련된 사람, 정보, 기술, 공급자를 스케치하고, 한 부분의 변경이 다른 것에 무엇을 하는지 물어보십시오.
8. **자동화하기 전에 단계를 제거하십시오.** 단계가 가치를 더하지 않으면 삭제하십시오. 더한다면 자동화하십시오. 낭비 프로세스를 자동화하면 낭비가 더 빨라집니다.
9. **원칙 사이의 충돌을 공개적으로 해결하십시오.** 두 원칙이 다른 방향으로 당기면 그렇다고 말하고, 결정과 이유를 기록하십시오. 팀이 어떻게 생각하는지에 대한 공유 기록이 쌓입니다.
10. **원칙으로 주장에 도전하십시오.** 누군가 "ITIL이 요구한다"거나 "애자일이 말한다"고 하면, 어떤 원칙이나 실천이 그것을 뒷받침하고 무엇을 막는 것인지 물어보십시오.
11. **원칙을 지표에 연결하십시오.** 원칙이 작동하는지 보여 주는 몇 가지 지표를 고르십시오. "가치에 집중하라"에는 서비스 복구 시간, "최적화하고 자동화하라"에는 제거된 수작업 단계 수 같은 것입니다. 정밀한 목표를 지어내는 것은 피하십시오.
12. **회고에서 원칙을 검토하십시오.** 분기마다 팀이 어느 원칙을 가장 잘 따랐고 어느 것을 소홀히 했는지 각각의 사례와 함께 물어보십시오.

## 팀과 논의할 질문

**일곱 가지 원칙 중 우리 팀이 가장 잘 따르는 것은 무엇이고, 소홀히 하는 것은 무엇인가?**

사람들에게 목록을 주고 각각 하나씩 골라 지난달의 사례와 함께 말해 달라고 합니다. 비교합니다. 차이는 사람들이 일을 어떻게 보는지 보여 줍니다. 소홀히 한 원칙은 팀의 맹점을 가리키는 경우가 많습니다. 예를 들어 전달 팀은 가시성을, 운영 팀은 반복을 소홀히 할 수 있습니다. 진행자는 팀이 실천할 원칙 하나를 고르며 끝내야 합니다.

**우리 프로세스에서 아무도 가치와 연결할 수 없는 단계가 추가된 곳은 어디인가?**

프로세스 하나를 따라가며 각 단계에서 "누가 이득을 보는가?"를 묻습니다. 답이 없는 단계는 제거 후보입니다. 감사나 안전과 관련된 설명이 나올 준비를 하십시오. 정당한 이유이며 기록해야 합니다. 의심스러운 각 단계는 삭제하기 전에 이득을 보는 사람에게 확인하십시오.

**이미 가진 것을 중복해서 새로 시작한 것은 마지막으로 언제였는가?**

예를 모읍니다. 다른 도구가 있는데 산 도구, 기존 템플릿과 중복되는 템플릿. 있는 것을 쓰기보다 새로 시작하기가 왜 더 쉬웠는지 물어보십시오. 원인은 흔히 낮은 발견 가능성이나 소유권입니다. 도구의 공유 목록처럼 발견을 개선할 곳 하나를 고르십시오.

**다음 변경에서 우리가 할 수 있는 가장 작은 첫 단계는 무엇이며, 계속할지 어떻게 결정할 것인가?**

앞으로 있을 실제 변경을 고릅니다. 우리에게 무언가를 가르쳐 줄 가장 작은 버전과, 멈추거나 계속할 신호로 무엇을 칠지 물어보십시오. 이 질문은 반복과 피드백을 시험합니다. 진행자는 누가 언제 증거를 볼지 물으며 이어 갈 수 있습니다.

**우리 일에 의존하지만 그것을 볼 수 없는 사람은 누구인가?**

팀이 하는 일에 의존하는 사람들을 나열합니다. 서비스 데스크, 파트너 팀, 고객. 각자가 무엇이 바뀌고 있는지 어떻게 알게 되는지 물어보십시오. 전형적인 간극은 조용한 릴리스와 문서화되지 않은 결정입니다. 한 집단에게 일을 보이게 할 변경 하나에 합의하십시오.

**이 원칙들 중 둘이 서로 당긴 적은 어디였고, 어떻게 결정했는가?**

단순함이 전체 시스템 관점과 충돌하거나 재사용이 자동화와 충돌한 최근의 결정을 요청하십시오. 어떻게 정리되었는지와 그 근거가 기록되었는지 논의합니다. 목적은 트레이드오프를 명시적으로 만들고 누가 결정했는지 알아차리는 것입니다. 다음 것을 기록하는 간단한 방법에 합의하십시오.

## 실전 사례: 애자일 ITIL 예시

지역 병원의 IT 부서는 접근 요청을 추적하는 새 도구를 도입하려 합니다. 보안 팀은 양식이 다섯 개인 7단계 승인 프로세스를 초안으로 작성했습니다. 2주 단위의 전달 리듬을 쓰는 임상 시스템 팀은 이 프로세스가 신규 직원의 온보딩에 몇 주를 더할 것이라고 불평하고, 보안 팀은 감사가 그 단계를 요구한다고 답합니다.

IT 책임자는 한 시간짜리 세션을 열고 일곱 가지 원칙을 벽에 붙입니다. 각 원칙에 대해 그룹은 제안된 프로세스가 이를 지지하는지 말합니다. 가치에 집중하라: 일곱 단계 중 세 단계만 위험과 연결됩니다. 지금 있는 곳에서 시작하라: 병원에는 필요한 데이터 대부분을 담은 신원 시스템이 이미 있습니다. 반복적으로 진행하라: 초안에는 검토 계획이 없습니다. 협력하고 가시성을 높이라: 요청자는 자기 요청이 어디에 있는지 볼 수 없습니다. 전체적으로 생각하라: 프로세스가 공급자를 통해 오는 외주 인력을 무시합니다. 단순하게 유지하라: 양식이 다섯 개입니다. 최적화하고 자동화하라: 초안은 아무것도 자동화하지 않습니다.

그룹은 신원 시스템의 데이터를 사용해 가장 흔한 역할에 대한 3단계 프로세스를 시범 운영하고, 요청자에게 보이는 상태와 두 달 뒤의 검토를 두기로 합의합니다. 보안 팀은 환자 데이터에 접근하는 역할에 대한 추가 단계를 유지합니다. 두 달 뒤 흔한 요청은 9일 대신 이틀이 걸리고, 감사는 시범 역할에 대해 더 짧은 경로를 받아들입니다. 남은 어려움에는 여전히 공급자를 통해 이메일로 요청이 도착하는 외주 인력과, 네 번째 역할이 시범에 속하는지에 대한 논쟁이 있습니다. 그룹은 둘 다 미결 항목으로 기록하고 공급자에게 다음 검토에 참여해 달라고 요청합니다.

## 네 가지 관점

### 제품 및 전달 팀

원칙을 사용해 선택 뒤의 이유를 운영과 거버넌스에 설명하십시오. 더 가벼운 프로세스를 요청할 때 그것이 봉사하는 원칙을 가리키십시오. 릴리스를 설계할 때 가시성과 전체의 원칙을 물어보십시오. 누가 알아야 하고, 이것은 또 무엇에 영향을 주는가?

### 서비스 및 운영 팀

운영 팀은 원칙으로 좋은 실천을 옹호하고 물려받은 것에 의문을 제기할 수 있습니다. 오래된 단계마다 어떤 원칙에 봉사하는지 물어보십시오. 전달 팀을 초대해 같은 목록으로 여러분의 프로세스를 검토하게 하고, 함께 변경을 합의하십시오.

### 리더십과 거버넌스

리더는 프로세스와 도구에 대한 결정의 공통 언어로 원칙을 채택할 수 있습니다. 변경을 승인할 때 원칙별 요약을 요청하십시오. 자신의 결정을 눈에 보이게 하고 작게 시작함으로써 스스로 원칙의 본을 보이십시오.

### 고객과 사용자

고객과 사용자는 원칙이 지켜질 때 이득을 봅니다. 서비스가 그들의 가치에 집중하고, 작은 단계로 바뀌고, 요청이 어디에 있는지 보여 줍니다. 제공자에게 무엇을 할지 어떻게 결정하는지 물어보고, 가치와 눈에 보이는 진척의 관점에서 답이 오기를 기대하십시오.

## 흔한 실패 유형

- **원칙을 외우기만 하고 쓰지 않는 것.** 원칙이 슬라이드에 머뭅니다. 대신 실제 결정에 적용하고 결과를 기록하십시오.
- **한 원칙으로 나머지를 압도하는 것.** "단순하게 유지하라"가 실제 위험을 일축하는 데 쓰입니다. 대신 일곱 가지를 모두 따져 보고 트레이드오프를 적어 두십시오.
- **"지금 있는 곳에서 시작하라"를 "아무것도 바꾸지 말라"로 취급하는 것.** 형편없는 기존 실천이 옹호됩니다. 대신 있는 것을 평가하고, 작동하는 것은 유지하고, 그렇지 않은 것은 바꾸십시오.
- **단순화하기 전에 자동화하는 것.** 낭비 프로세스가 더 빨라집니다. 대신 불필요한 단계를 먼저 제거하십시오.
- **감시로서의 가시성.** 대시보드가 개인을 평가하는 데 쓰입니다. 대신 사람들이 서로 돕고 계획할 수 있도록 일을 보이게 하십시오.
- **전체 시스템을 무시하는 것.** 팀이 자기 몫을 개선하고 문제를 다른 곳으로 옮깁니다. 대신 한 부분을 바꾸기 전에 엔드 투 엔드 서비스를 스케치하십시오.
- **권위를 위해 프레임워크를 인용하는 것.** "ITIL이 그렇게 말한다"가 대화를 끝냅니다. 대신 어떤 원칙이나 실천을 뜻하는지, 무엇을 막는지 물어보십시오.
- **이차 요약에 의존하는 것.** 원칙의 표현이 그것을 바꾼 슬라이드에서 옵니다. 대신 표현이 중요할 때는 소유자의 발행물을 확인하십시오.

## 성숙도 모델

| 차원 | 시작 | 발전 | 표준화 | 관리 | 최적화 |
|---|---|---|---|---|---|
| 인식 | 원칙을 아는 사람이 거의 없다 | 일부 팀이 알고 인용한다 | 모든 팀이 공유 목록과 평이한 해석을 안다 | 결정에서의 원칙 사용이 검토된다 | 팀, 공급자, 고객이 같은 원칙의 언어를 공유한다 |
| 결정에서의 활용 | 결정이 습관이나 권위에 의존한다 | 일부 제안이 원칙에 비추어 점검된다 | 제안에 짧은 원칙 점검이 포함된다 | 원칙 점검이 결과와 비교된다 | 원칙이 조직 전체의 결정을 일상적으로 형성한다 |
| 반복과 피드백 | 변경이 크고 거의 검토되지 않는다 | 일부 변경이 작게 시작한다 | 변경이 계획된 검토가 있는 작은 단계를 따른다 | 검토 증거가 수집되고 대응된다 | 피드백 루프가 팀 간과 고객과 함께 돌아간다 |
| 가시성 | 일이 그 팀에게만 보인다 | 일부 팀이 보드나 계획을 공유한다 | 다른 이에게 영향을 주는 일이 그들과 공유된다 | 가시성 필요가 각 대상과 점검된다 | 일과 결정이 팀, 공급자, 고객 간에 보인다 |

## 체크리스트

- [ ] 일곱 가지 원칙이 팀이 일하는 곳에 게시되어 있다.
- [ ] 각 팀원이 원칙의 이름을 대거나 빠르게 찾을 수 있다.
- [ ] 새 프로세스나 도구의 제안에 원칙에 비추어 본 짧은 점검이 포함된다.
- [ ] 새로 시작하기 전에 있는 것을 나열한다.
- [ ] 변경은 작은 단계와 계획된 검토로 시작한다.
- [ ] 다른 팀이나 고객에게 영향을 주는 일을 그들에게 보이게 한다.
- [ ] 한 부분을 바꾸기 전에 서비스 전체를 스케치한다.
- [ ] 자동화하기 전에 단순화한다.
- [ ] 원칙 사이의 트레이드오프가 기록된다.
- [ ] 소유자의 최신 발행물에서 원칙의 정확한 문구를 확인했다.

## AI 프롬프트

**목적: 제안된 프로세스를 일곱 가지 지침 원칙에 비추어 점검한다.**

```text
Help me check a proposed process against ITIL's seven guiding principles: focus on value; start where you are; progress iteratively with feedback; collaborate and promote visibility; think and work holistically; keep it simple and practical; optimize and automate.

The proposed process (steps, roles, forms, tools): [paste].
What it is meant to achieve: [describe].
What already exists that it might replace or build on: [describe, or write "unknown"].

For each principle, say whether the proposal supports it, conflicts with it, or is neutral, with one sentence of reasoning that uses only the text I gave. Then list the main trade-offs and three questions we should answer before approving it. Do not claim that a standard requires any step unless I have pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**목적: 결정을 위해 애자일 원칙과 ITIL 원칙을 비교한다.**

```text
We are deciding whether to [describe the decision, e.g. "require a peer review for every change"].

Agile principles I want to consider (paste the ones you consider relevant, from agilemanifesto.org): [paste].
ITIL guiding principles I want to consider: [paste the ones you consider relevant].
Our context: [describe team, service, and any rules we must follow].

Build a table showing, for each pasted principle, which option it supports and why, using only my text. Identify where principles agree and where they conflict. Suggest a small experiment to resolve any conflict, and what evidence would show whether it worked. Mark assumptions, and list what you are unsure of.
```

**목적: 프로세스에서 아무도 가치와 연결할 수 없는 단계를 찾는다.**

```text
Here is a process, step by step: [paste the steps, who does each, and what forms or approvals are involved].

For each step, ask: who benefits, what risk it addresses, and what would happen if it were removed. Use only the text I gave. If the answer is unknown, write "unknown" and tell me who I should ask. Then group steps into: clearly valuable, unclear, and candidates for removal or automation. Do not assume any rule or standard applies unless I have pasted its text: [paste rule text, or write "none known"]. List what you are unsure of.
```

**목적: 지침 원칙을 중심으로 회고를 계획한다.**

```text
Plan a 45-minute retrospective for a team of [number] people using ITIL's seven guiding principles as the frame.

The period we are reviewing: [period]. What happened, in a few sentences: [describe].

Give a timed agenda that has each person pick one principle we followed well and one we neglected with an example, groups the answers, and ends with exactly one agreed change with an owner and a date. Add three prompts a facilitator can use. Keep it free of any particular tool. Ask clarifying questions first if information is missing, and list what you are unsure of.
```

## AI 스킬

- [agile-principles](../../../../skills/agile-principles/SKILL.md): ITIL의 원칙과 함께 실천을 애자일 원칙과 비교할 때 사용합니다.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): 팀을 원칙에 비추어 검토하는 회고를 진행할 때 사용합니다.
- [kaizen](../../../../skills/kaizen/SKILL.md): 원칙 검토 뒤에 작고 반복적인 개선을 계획할 때 사용합니다.
- [decision-records](../../../../skills/decision-records/SKILL.md): 결정과 그로 이끈 원칙 사이의 트레이드오프를 기록할 때 사용합니다.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md): 프로세스에서 가치를 더하지 않는 단계를 분석할 때 사용합니다.

## 주요 출처

- **ITIL** (Wikipedia): 일곱 가지 지침 원칙과 프레임워크의 역사를 나열합니다.
- **ITIL 4 Foundation** (PeopleCert): 공부하는 주제 중에 지침 원칙을 명시한 소유자의 페이지입니다.
- **Principles behind the Agile Manifesto** (agilemanifesto.org): ITIL의 원칙 옆에서 읽을 수 있을 만큼 짧은 애자일의 짝입니다.
- **ITIL certifications** (PeopleCert): 정확한 본문을 주는 발행물을 찾는 데 유용한 소유자의 최신 카탈로그입니다.

## 참고 문헌

1. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
2. ITIL 4 Foundation — PeopleCert — https://www.peoplecert.org/browse-certifications/it-governance-and-service-management/ITIL-1/itil-4-foundation-2565
3. ITIL certifications — PeopleCert — https://www.peoplecert.org/browse-certifications/it-governance-and-service-management/ITIL-1
4. Principles behind the Agile Manifesto — Beck et al., agilemanifesto.org — https://agilemanifesto.org/principles.html
5. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
6. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
7. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
8. Systems thinking — Wikipedia — https://en.wikipedia.org/wiki/Systems_thinking
9. Kaizen — Wikipedia — https://en.wikipedia.org/wiki/Kaizen
