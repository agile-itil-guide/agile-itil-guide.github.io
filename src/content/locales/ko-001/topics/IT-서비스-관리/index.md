# IT 서비스 관리

**IT 서비스 관리(ITSM)는 고객이 필요로 하는 것을 중심으로 IT 서비스를 설계하고, 제공하고, 운영하고, 개선하는 학문 분야이며, 서비스를 운영하는 애자일 팀은 그 이름을 쓰든 쓰지 않든 이미 그것을 하고 있습니다.**

## 왜 중요한가

팀이 소프트웨어를 내보내고 그것을 운영하면 서비스 제공자가 됩니다. 사용자는 그것에 의존하고, 가용하기를 기대하며, 실패하면 도움을 원합니다. ITSM은 그 관계 주변에서 자라난 실천의 체계입니다. 이를 무시하는 팀은 흔히 어렵게 다시 발견합니다. 밤에 호출을 받거나, 무엇이 바뀌었는지 놓치거나, 약속된 것을 두고 고객과 다투면서입니다.

ITSM은 무거운 프로세스라는 평판이 있고, 그 평판의 일부는 정당합니다. 애자일 팀은 빠르게 움직이고 그 결과를 운영이 감당하게 둔다는 평판이 있습니다. 두 평판 모두 어느 분야의 의도가 아니라 실패를 설명합니다. ITSM은 고객이 서비스에서 무엇을 필요로 하고 제공자가 그것을 어떻게 전달하고 개선할지를 묻습니다. 애자일 팀도 신경 쓰는 질문입니다.

이 주제는 이 가이드의 나머지에서 쓰이는 어휘를 줍니다. 서비스란 무엇인지, 고객과 사용자는 누구인지, ITSM이 무엇을 다루는지, 주요 프레임워크가 어디서 왔는지. [IT 서비스 관리에 관한 위키백과 문서](https://en.wikipedia.org/wiki/IT_service_management)를 지도로 삼습니다. 그 문서는 짧고 프레임워크를 설명하기보다 나열하는 편이므로, 이 주제는 실용적인 해석을 더하고 그렇게 했음을 밝힙니다.

## 핵심 개념

### ITSM이란

위키백과 문서는 ITSM을 고객에게 제공되는 IT 서비스를 설계하고, 구축하고, 전달하고, 운영하고, 통제하기 위해 조직이 수행하는 활동의 집합으로 정의합니다. ITSM을 네트워크 관리나 시스템 관리 같은 기술 지향 접근과 대비합니다. 문서에 따르면 ITSM은 프로세스 접근을 취하고, 시스템이 아니라 고객의 필요에 초점을 맞추며, 지속적 개선을 강조합니다.

문서는 CIO WaterCooler의 2017년 조사를 인용하는데, 기업이 ITSM을 주로 고객 경험(35%)과 서비스 품질(48%)을 지원하는 데 쓴다고 보고합니다. 하나의 조사이고 문서에는 표본이 설명되어 있지 않으므로, 이 수치는 각 목표가 얼마나 흔한지의 측정이 아니라 실무자들이 자신의 목표를 어떻게 기술하는지의 예시로 다루십시오.

### 서비스, 고객, 사용자

**서비스**는 다른 이들이 비용과 위험을 직접 소유하지 않고도 가치를 전달받는 방법입니다. 은행의 온라인 결제, 병원의 진료 예약, 회사의 공유 파일 저장소는 모두 서비스입니다. 문서는 서비스를 쓰는 **사용자**와 비용을 내거나 위탁하는 **고객**을 구분합니다. 회사의 내부 IT에서는 고객이 사업 부문의 책임자이고 사용자가 그 직원일 수 있습니다. 공공 서비스에서는 고객이 부처이고 사용자가 시민일 수 있습니다. 두 집단은 필요가 다르며, 고객의 말만 듣는 제공자는 사용자가 겪는 것을 놓칠 수 있습니다.

### 전형적인 ITSM 활동

문서는 몇 가지 핵심 아이디어를 언급하고, 표준 ITSM 실천이 다른 것을 더합니다. 합치면 알아볼 수 있는 모양이 됩니다.

| 활동 | 목적 | 이 가이드에서 다루는 곳 |
|---|---|---|
| **서비스 데스크** | 제공자와 사용자 사이의 단일 접점. 인시던트와 서비스 요청을 처리 | 주제 3.1 — 서비스 데스크 |
| **인시던트 처리** | 무언가가 서비스를 방해하거나 위협할 때 서비스를 복구 | 주제 3.2 — 인시던트 관리 |
| **서비스 요청** | 접근이나 장비처럼 사용자가 요청하는 일상적인 것을 제공 | 주제 3.6 — 서비스 요청 관리 |
| **문제와 변경** | 근본 원인을 찾아 고치고, 서비스에 대한 수정을 통제 | 주제 3.3 — 문제 관리와 주제 3.4 — 변경 실현 |
| **서비스 수준과 카탈로그** | 무엇이 제공되고 얼마나 잘 제공되는지 합의 | 주제 3.7 — 서비스 수준 관리와 주제 3.8 — 서비스 카탈로그 관리 |
| **지속적 개선** | 시간에 걸쳐 서비스를 더 낫게 만듦 | 주제 3.15 — 지속적 개선 |

문서는 **인시던트**를 서비스 가용성이나 품질의 중단 또는 중단의 가능성으로, **서비스 요청**을 서비스에 대한 일상적 요청으로 정의합니다. **서비스 수준 협약(SLA)**은 스치듯만 언급하므로, 이 가이드는 주제 3.7 — 서비스 수준 관리에서 설명합니다.

### 전사 서비스 관리와 자동화

문서는 두 가지 확장을 언급합니다. **전사 서비스 관리(ESM)**는 인사나 시설 관리처럼 요청을 받고 서비스를 전달하는 사업의 다른 부분에 ITSM의 도구와 아이디어를 적용합니다. **IT 프로세스 자동화**는 일상적인 수작업 단계를 자동화된 단계로 대체하여 직원이 우선순위 높은 일에 집중하게 합니다. 둘 다 애자일 팀에 중요합니다. ESM은 이 분야가 IT에 묶여 있지 않음을 보여 주고, 자동화는 소규모 팀이 물량을 따라가는 방법입니다.

### 프레임워크와 표준

문서는 많은 프레임워크와 표준을 나열합니다. 아래 목록은 그 한 줄 설명을 되풀이하며, 주제 2.7 — ITSM 프레임워크와 표준에서 확장됩니다.

| 이름 | 문서가 말하는 것 |
|---|---|
| [ITIL](https://en.wikipedia.org/wiki/ITIL) | IT를 비즈니스 목표에 맞추는 ITSM과 IT 자산 관리의 상세한 실천 |
| [ISO/IEC 20000](https://en.wikipedia.org/wiki/ISO/IEC_20000) | 조직이 인증받을 수 있는 서비스 관리 시스템의 국제 표준 |
| [COBIT](https://en.wikipedia.org/wiki/COBIT) | 통제 목표, 지표, 성숙도 모델을 갖춘 IT 거버넌스 프레임워크 |
| [FitSM](https://en.wikipedia.org/wiki/FitSM) | ISO/IEC 20000과 대체로 정렬된 경량 표준 |
| [CMMI](https://en.wikipedia.org/wiki/CMMI) | 서비스를 수립하고, 관리하고, 개선하기 위한 모델 |
| [TOGAF](https://en.wikipedia.org/wiki/TOGAF) | 비즈니스 목표를 아키텍처 목표에 연결하는 프레임워크 |
| [Microsoft Operations Framework](https://en.wikipedia.org/wiki/Microsoft_Operations_Framework) | 마이크로소프트 기술에 기반한 서비스 관리 지침 |
| [Application Services Library](https://en.wikipedia.org/wiki/Application_Services_Library) | 전문적인 애플리케이션 관리를 위한 프레임워크 |
| [Business Information Services Library](https://en.wikipedia.org/wiki/Business_Information_Services_Library) | 정보 관리를 위한 모범 사례 프레임워크 |
| Business Process Framework (eTOM) | 통신 사업자를 위한 프로세스 프레임워크 |

문서는 ITSM 프레임워크가 ISO 9000, ISO/IEC 27000, CMMI를 활용해 왔고, ITIL 버전 2와 ISO/IEC 20000의 전신인 BS 15000이 서로 정렬되었다고 덧붙입니다. 또한 네덜란드 정부가 채택한 원칙 기반 관리 시스템 USM도 설명합니다.

### 문서가 다루지 않는 것

문서에는 역사 절도, 비판도, 애자일이나 DevOps에 대한 언급도 없습니다. 그 침묵이 중요합니다. ITSM은 프로세스 오버헤드와 느린 변경으로 비판을 받았고, 애자일 팀은 운영을 소홀히 한다고 비판을 받았지만, 어느 쪽 비판도 거기서는 찾을 수 없습니다. 이 가이드는 5부에서 주제 5.1 — 애자일 서비스 관리부터 그 간극을 메웁니다. 이 주제가 문제를 언급하는 곳에서는 가이드의 다른 출처와 실무 경험에서 끌어오며 그렇게 밝힙니다.

### ITSM과 ITAM

ITIL 문서는 ITIL이 ITSM과 IT 자산 관리(ITAM)를 모두 다룬다고 설명합니다. ITAM은 조직이 어떤 IT 자산을 갖고 있고, 비용이 얼마이며, 어떻게 쓰이는지 아는 분야입니다. 서비스는 자산에 의존하고 두 분야는 정보를 공유하며, 그래서 4부가 ITSM 바로 뒤를 따릅니다(주제 4.1 — IT 자산 관리 참조).

## 모범 사례

1. **서비스를 고객 쪽에서 정의하십시오.** 고객과 사용자가 실제로 쓰는 것을 "로그인", "진료 예약", "청구서 발송"처럼 그들의 말로 나열하십시오. 각각 뒤의 기술을 묶으십시오. 서비스 카탈로그의 시작입니다(ITIL은 "service catalogue"로 씁니다. 주제 3.8 — 서비스 카탈로그 관리 참조).
2. **고객과 사용자가 누구인지 밝히십시오.** 각 서비스에 대해 누가 비용을 내거나 위탁하고 누가 사용하는지 적으십시오. 다른 사람이라면 양쪽 집단 모두에게 발언권이 있는지 확인하십시오.
3. **모든 서비스에 오너를 두십시오.** 서비스가 어떻게 수행되고 시간이 지나며 개선되는지에 책임지는 한 사람을 지정하십시오. 오너가 없으면 서비스의 문제는 누구의 일도 아닙니다.
4. **가장 아픈 활동부터 시작하십시오.** 장애가 고통이라면 인시던트 처리를 먼저 강화하십시오. 아무도 무엇이 바뀌었는지 모른다면 변경 기록부터 시작하십시오. 모든 ITSM 실천을 한꺼번에 도입하지 마십시오.
5. **단일 창구를 쓰십시오.** 사용자에게 도움과 요청을 위한 한 곳을 주고 쉽게 만드십시오. 닿기 어려운 서비스 데스크는 우회되고, 그러면 ITSM이 의존하는 정보를 잃습니다.
6. **인시던트, 요청, 문제를 구분하십시오.** 인시던트는 중단이고, 요청은 일상적인 부탁이고, 문제는 근본 원인입니다. 뒤섞인 대기열은 패턴을 숨기고 지표를 왜곡합니다.
7. **중요한 것만, 그 이상은 기록하지 마십시오.** 결정을 내리는 데 쓸 인시던트, 변경, 자산의 기록을 유지하십시오. 아무도 읽지 않는 필드는 삭제하십시오. 기록은 비용이며 각각이 무엇을 위한 것인지 말할 수 있어야 합니다.
8. **유행이 아니라 문제로 프레임워크를 고르십시오.** ITIL, ISO/IEC 20000, COBIT, 또는 더 가벼운 모델을 가진 문제에 대한 아이디어의 원천으로 쓰십시오. 도움이 되는 부분을 채택하고 무엇을 뺐는지 밝히십시오.
9. **일상을 자동화하십시오.** 비밀번호 재설정과 접근 권한 부여처럼 반복되는 단계를 찾아 조심스럽게 자동화하십시오. 자동화된 동작이 사용자의 필요에서 벗어나지 않도록 주기적으로 검토하십시오.
10. **고객이 느끼는 것을 측정하십시오.** 내부 활동을 세기 전에 가용성, 서비스 복구 시간, 사용자 만족도를 추적하십시오. 위키백과 문서의 조사를, 실무자들이 이미 고객 경험과 품질을 주된 목표로 꼽는다는 알림으로 쓰십시오.
11. **IT 너머를 보십시오.** 조직의 다른 부분이 요청을 서툴게 처리한다면, 전사 서비스 관리를 통해 공유 도구와 실천을 고려하십시오. IT의 어휘를 그들에게 강요하지 마십시오.
12. **지속적으로 개선하십시오.** 인시던트와 요청 데이터를 이용해 무엇이 효과가 있는지 검토하고 작은 변경을 할 정기적인 시간을 따로 두십시오(주제 3.15 — 지속적 개선 참조).

## 팀과 논의할 질문

**사용자가 쓸 말로, 우리는 어떤 서비스를 제공하는가?**

각자에게 사용자가 가장 자주 우리에게 의존하는 세 가지를 적어 달라고 합니다. 목록을 비교합니다. 차이는 보통 팀이 서비스에 대해 서로 다른 그림을 갖고 있거나, 서비스를 용도가 아닌 기술로 기술하고 있음을 보여 줍니다. 진행자는 어떤 서비스에 명확한 오너가 없는지 물을 수 있습니다. 서비스의 첫 목록에 합의하며 이어 갑니다.

**주요 서비스의 고객과 사용자는 누구이며, 같은 것을 원하는가?**

위탁하거나 비용을 내는 사람과 사용하는 사람의 이름을 댑니다. 각각이 서비스에서 무엇을 원하는지 물어보십시오. 내부 IT에서 고객은 비용과 위험을, 사용자는 속도와 편의를 신경 쓸 수 있습니다. 어디서 충돌하고 팀이 그것을 어떻게 알게 되는지 물어보십시오. 실제 사람들과 이야기해 볼 충돌 하나를 고르십시오.

**사용자는 도움이 필요할 때 어디로 가며, 경로가 몇 개나 되는가?**

방법을 셉니다. 포털, 전화번호, 이메일, 채팅, 동료의 책상. 사용자가 어느 경로를 선호하는지와 이유를 물어보십시오. 비공식 경로가 여럿이면 일부 수요는 보이지 않습니다. 논의는 어떤 경로를 유지하고, 어떤 경로를 합치며, 비공식 경로로 오는 것을 어떻게 포착할지에 대한 결정으로 끝나야 합니다.

**인시던트, 요청, 문제를 얼마나 잘 구별하며, 섞으면 어떻게 되는가?**

최근 티켓 열 개를 가져와 분류합니다. 의견 차이는 팀 안에서 정의가 다르다는 것을 보여 줍니다. 뒤섞인 분류가 보고서와 우선순위에 어떤 영향을 주는지 물어보십시오. 예를 들어 인시던트 대기열 안에 요청이 많으면 인시던트 처리가 느려 보일 수 있습니다. 단순한 정의와 예시에 합의하십시오.

**어떤 ITSM 실천이 빠져 있거나 서류상으로만 하고 있는가?**

위 표의 실천을 나열하고 각각을 작동함, 부분적으로 작동함, 서류상으로만으로 평가합니다. 작동함으로 평가한 각각의 최근 사례를 요청하십시오. 진행자는 모든 간극을 메우려는 충동을 억제하고, 어떤 간극이 고객에게 가장 큰 해를 끼치는지 물어야 합니다.

**프레임워크가 우리에게 무엇을 해 주기를 바라며, 우리에게 무엇을 할까 봐 두려운가?**

ITIL이나 ISO/IEC 20000 도입에 대한 희망과 두려움을 모읍니다. 희망은 흔히 일관성과 신뢰성입니다. 두려움은 흔히 서류 작업과 느림입니다. 두 번째 없이 첫 번째를 얻는 방법을 물어보십시오. 예를 들어 어휘와 몇 가지 실천을 채택하고 양식은 피하는 것입니다. 팀에 필요한 조건을 기록하십시오.

## 실전 사례: 애자일 ITIL 예시

중견 온라인 소매업체는 창업자의 웹사이트에서 12명의 엔지니어 팀, 늘어나는 고객 기반, 소규모 지원 인력을 가진 사업으로 성장했습니다. 고객은 문제를 공용 받은편지함으로 이메일로 보내고, 결제가 실패하면 개인 휴대전화 번호로 전화합니다. 엔지니어는 들은 것을 고치고 거의 아무것도 기록하지 않습니다. 세 시간 동안 지속된 결제 장애 뒤에 창업자는 고객이 전화하기 전까지 아무도 몰랐던 이유를 묻습니다.

엔지니어링 책임자는 가능한 한 가장 가벼운 ITSM을 제안합니다. 팀은 서비스를 고객의 용어로 나열합니다. 둘러보기와 검색, 결제와 대금 지불, 주문 추적, 고객 계정. 각각에 오너가 생깁니다. 공용 지원 주소가 단일 창구가 되어, 인시던트와 요청의 별도 유형이 있는 간단한 티켓 도구로 연결됩니다. 30분 넘게 지속된 인시던트는 공유 문서에 쓰는 짧은 검토를 받습니다. 결제 변경은 일어나기 전에 팀 채널에 공지됩니다.

석 달 뒤 팀은 처리하는 인시던트가 몇 건인지 알게 되고 대부분이 두 가지 원인에서 오는 것을 발견합니다. 둘 다 고치자 결제 장애는 재발하지 않습니다. 어려움이 남아 있습니다. 고객은 화가 나면 여전히 창업자에게 전화하므로 일부 수요는 티켓 도구를 우회합니다. 엔지니어들도 검토를 쓰는 데 시간이 든다고 투덜대고, 바쁜 달에는 검토 두 건이 건너뛰어졌습니다. 엔지니어링 책임자는 검토를 짧게 유지하고, 창업자에게 전화를 지원 주소로 전달해 달라고 요청하며, 한 분기의 데이터를 더 본 뒤 더 충실한 ITIL식 프로세스가 필요한지 다시 살펴보기로 합니다.

## 네 가지 관점

### 제품 및 전달 팀

자신이 만든 것을 운영하는 전달 팀은 이미 ITSM을 하고 있습니다. 서비스에 이름을 붙이고, 인시던트와 변경을 가볍게 기록하고, 서비스를 지원하는 사람과 데이터를 공유하십시오. 서비스 데스크를 사용자가 무엇 때문에 힘들어하는지에 대한 증거의 원천으로 대하십시오.

### 서비스 및 운영 팀

운영과 서비스 데스크 직원이 ITSM 실천 대부분을 맡습니다. 애자일 아이디어는 업무를 눈에 보이게 하고, 사용자와의 피드백 루프를 단축하고, 개선을 연간 프로젝트에서 작은 정기적 변경으로 옮겨 도울 수 있습니다. 각 ITSM 규칙 뒤의 목적을 설명하여 동료들이 분별 있게 조정할 수 있게 하십시오.

### 리더십과 거버넌스

리더는 얼마나 많은 구조를 요구하고 얼마나 많은 증거를 요청할지 결정합니다. 고객이 느끼는 결과와, 팀이 자기 도구로 만들 수 있는 몇 가지 지표를 요청하십시오. 신호로 삼으려고 프레임워크를 사는 것은 조심하십시오. 위키백과 문서는 많은 프레임워크를 나열하지만 어느 것도 자신의 서비스를 아는 것의 대체물이 아닙니다.

### 고객과 사용자

고객과 사용자는 ITSM이 존재하는 이유입니다. 도움을 구하는 명확한 방법, 무엇을 기대할지에 대한 솔직한 정보, 각 서비스를 소유하는 사람을 기대하십시오. 그 대신 무언가 잘못되었을 때 제공자가 배울 수 있도록 시의적절하고 구체적인 정보를 주십시오.

## 흔한 실패 유형

- **프로세스를 위한 프로세스.** 양식과 승인이 늘어나고 아무도 이유를 기억하지 못합니다. 대신 각 실천을 목적에 묶고 더는 목적에 기여하지 않는 것은 삭제하십시오.
- **단일 창구가 없는 것.** 사용자가 아는 사람에게 접근하고 수요가 보이지 않습니다. 대신 쉬운 경로 하나를 제공하고 비공식 요청을 그곳으로 포착하십시오.
- **인시던트, 요청, 문제를 섞는 것.** 보고서가 오도하고 원인이 숨겨집니다. 대신 단순한 정의를 쓰고 티켓을 일관되게 분류하십시오.
- **기술로 서술된 서비스.** 사용자가 필요한 것을 찾지 못하고 오너가 불분명합니다. 대신 서비스를 고객의 용어로 기술하고 각각에 오너를 지명하십시오.
- **프레임워크를 통째로 채택하는 것.** 팀이 큰 프레임워크를 베껴 프로세스에 파묻힙니다. 대신 문제에서 시작해 도움이 되는 부분만 가져오십시오.
- **사용자를 무시하는 것.** 제공자가 비용을 내는 고객하고만 이야기합니다. 대신 고객과 사용자 모두의 말을 듣고 충돌을 찾으십시오.
- **활동을 측정하는 것.** 티켓과 전화 수가 서비스 품질의 증거를 대신합니다. 대신 가용성, 서비스 복구 시간, 사용자 만족도를 측정하십시오.
- **ITSM을 전달과 분리해서 보는 것.** 전달 팀은 내보내고 운영이 감당합니다. 대신 공유 서비스, 공유 데이터, 합동 검토로 연결하십시오(주제 5.1 — 애자일 서비스 관리 참조).

## 성숙도 모델

| 차원 | 시작 | 발전 | 표준화 | 관리 | 최적화 |
|---|---|---|---|---|---|
| 서비스 정의 | 서비스가 기술로 기술되거나 전혀 기술되지 않는다 | 일부 서비스가 오너와 함께 나열된다 | 모든 서비스가 이름 있는 오너와 함께 고객의 용어로 기술된다 | 서비스 설명이 사용과 피드백에 비추어 점검된다 | 서비스 정의가 고객과 공급자와 공유되고 함께 조정된다 |
| 지원과 요청 | 비공식 경로로 도움을 요청한다 | 일부 팀에 티켓 도구나 공용 받은편지함이 있다 | 인시던트와 요청의 명확한 유형을 가진 하나의 창구가 있다 | 수요와 해결 시간이 추적·검토된다 | 지원이 공유 데이터로 팀과 공급자 간에 조율된다 |
| 기록과 지표 | 기록이 거의 유지되지 않는다 | 일부 팀이 인시던트와 변경을 기록한다 | 기록이 일관되고 각각에 명시된 목적이 있다 | 고객 대면 지표가 정기적으로 검토된다 | 지표가 서비스 간에 공유되어 함께 우선순위를 정하는 데 쓰인다 |
| 개선 | 수정이 위기를 따라온다 | 일부 팀이 인시던트를 검토한다 | 인시던트와 요청 데이터의 정기 검토가 계획된 변경으로 이어진다 | 개선 업무에 자원이 주어지고 결과가 확인된다 | 개선이 팀 간과 고객과 일상적이다 |

## 체크리스트

- [ ] 고객의 언어로 쓴 서비스 목록이 있다.
- [ ] 각 서비스에 이름이 있는 오너가 있다.
- [ ] 각 서비스의 고객이 누구이고 사용자가 누구인지 안다.
- [ ] 사용자에게 도움과 요청을 위한 명확한 단일 창구가 있다.
- [ ] 인시던트, 요청, 문제가 서로 다른 것으로 기록된다.
- [ ] 각 종류의 기록에 명시된 목적이 있고 쓰이지 않는 필드는 제거된다.
- [ ] 가용성이나 서비스 복구 시간처럼 고객이 느끼는 것을 적어도 하나 측정한다.
- [ ] 인시던트와 요청 데이터를 정기적으로 검토하고 그에 따라 행동한다.
- [ ] 어떤 프레임워크 아이디어를 쓰고 어떤 것을 뺐는지 말할 수 있다.
- [ ] 안전하게 자동화할 수 있는 일상 작업을 식별했다.

## AI 프롬프트

**목적: 고객의 언어로 서비스 목록 초안을 작성한다.**

```text
Help me describe the services my team provides in the words our users would use.

Who we are and what we run: [describe the team and its main systems in a few sentences].
Who uses what: [list user groups and what each group does with our systems].
What we currently call our services: [paste a list, or write "none"].

Produce a draft list of 5 to 10 services, each with a one-sentence description from the user's point of view, the customer or user groups, and a suggested owner role. Mark each item that is a guess. Do not invent systems I did not mention. Ask clarifying questions first if information is missing, and list what you are unsure of.
```

**목적: 최근 티켓을 인시던트, 요청, 문제로 분류한다.**

```text
Here are [number] recent tickets or messages to our team: [paste short, anonymized descriptions, one per line].

Definitions to use: an incident is an unplanned disruption or potential disruption to a service; a service request is a routine request for something the service normally provides; a problem is the underlying cause of one or more incidents.

Classify each item as incident, request, or possible problem, with one sentence of reasoning that uses only what I wrote. List items you could not classify and the question I should ask to decide. At the end, tell me the share in each category from my list only. Do not invent details, and list what you are unsure of.
```

**목적: 우리 상황에 맞는 ITSM 실천의 작은 첫 묶음을 고른다.**

```text
Help me choose a first set of IT service management practices for a team in this situation.

Team size and type: [describe].
Our biggest pains (with a recent example for each): [list].
Existing tools and records: [list, or write "none"].
Rules we must follow (audit, security, contracts), with source text if you have it: [paste, or write "none known"].

From these practices: service desk, incident management, problem management, change enablement, service request management, service level management, service catalog management, knowledge management, continual improvement, propose the two or three to start with and say why, using only the information above. Say what you would leave for later. Mark assumptions, ask clarifying questions first, and list what you are unsure of.
```

**목적: 전달 팀과 서비스 데스크 사이의 대화를 준비한다.**

```text
Plan a 45-minute conversation between a delivery team and the service desk about how new changes are handed over.

Delivery team: [describe]. Service desk: [describe].
Recent example of a handover that went badly: [describe factually].
What the service desk says it needs: [list, or write "unknown"].

Produce an agenda, five questions for each side, and a closing step that records one agreed change with an owner. Keep it free of any particular tool. Ask clarifying questions first if information is missing, mark assumptions, and list what you are unsure of.
```

## AI 스킬

- [service-catalog](../../../../skills/service-catalog/SKILL.md): 오너와 설명이 있는, 고객 언어의 서비스 목록을 작성하거나 검토할 때 사용합니다.
- [service-level-agreement](../../../../skills/service-level-agreement/SKILL.md): 고객과 어떤 수준의 서비스를 기대할지 합의할 준비가 되었을 때 사용합니다.
- [incident-response-plan](../../../../skills/incident-response-plan/SKILL.md): 인시던트가 일어나기 전에 팀이 어떻게 처리할지 준비할 때 사용합니다.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md): 어떤 종류의 요청과 인시던트가 어느 양으로 도착하는지 이해할 때 사용합니다.
- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): 누가 각 서비스를 소유하고 누가 자문을 받거나 통보받는지 분명히 할 때 사용합니다.

## 주요 출처

- **IT service management** (Wikipedia): 관련 프레임워크와 표준의 목록을 갖춘 짧은 정의로, 지도로 유용합니다.
- **ITIL** (Wikipedia): 소유권 변경을 포함해 가장 잘 알려진 ITSM 프레임워크의 역사와 버전입니다.
- **ISO/IEC 20000** (Wikipedia): 서비스 관리 시스템에 대한 국제 표준의 배경입니다.
- **Enterprise service management** (Wikipedia): ITSM 아이디어를 IT 너머로 적용하는 것에 대한 소개입니다.

## 참고 문헌

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
