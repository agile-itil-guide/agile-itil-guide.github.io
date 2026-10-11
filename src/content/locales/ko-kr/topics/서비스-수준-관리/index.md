# 서비스 수준 관리

**서비스 수준 관리는 사용자가 필요로 하는 것을 팀이 측정하고 방어할 수 있는 목표로 바꾸며, 애자일 팀에게 가장 유용한 형태는 소수의 사용자 중심 목표와 실패를 위한 명시적 예산입니다.**

## 왜 중요한가

모든 서비스에는 누군가 측정했든 아니든 품질 수준이 있습니다. 진술되지 않으면 사용자는 하나를 가정하고 팀은 다른 하나를 가정하며, 그 간극은 장애 중에 발견됩니다. 서비스 수준 관리는 수준을 진술하고, 측정하고, 결과에 따라 행동하는 실천입니다. 팀에게 조타할 것을 주고 고객에게 의지할 것을 줍니다.

애자일 팀은 서비스 수준을 계약과 벌금에 연결하기 때문에 흔히 저항합니다. 그러나 매주 릴리스하는 팀은 알든 모르든 가용성에 대해 얼마나 위험을 감수할지 결정을 내리고 있습니다. 명확한 목표는 그 결정을 명시적으로 만듭니다. Google의 『Site Reliability Engineering』 책은 서비스 수준 목표에 관한 장에서 빠르게 움직이는 팀에 맞는 방식으로 이를 하는 방법을 설명합니다. 사용자에게 중요한 소수의 지표를 고르고, 목표를 정하고, 완벽과 허용 가능 사이의 여지인 에러 버짓을 릴리스 시점을 결정하는 데 쓰라는 것입니다.

이 주제는 그 장을 협약의 정의를 위한 [서비스 수준 협약에 관한 위키백과 문서](https://en.wikipedia.org/wiki/Service-level_agreement), 그리고 이 가이드가 프레임워크 소유자의 본문과 대조할 수 없었던 널리 쓰이는 ITIL 어휘와 결합합니다. SRE 장은 한 조직의 실천을 반영하고 특정 접근을 주장합니다. 보편적 규칙이 아니라 잘 설명된 하나의 선택지로 읽으십시오.

## 핵심 개념

### 지표, 목표, 협약

SRE 장은 흔히 뒤섞이는 세 용어를 구분합니다.

| 용어 | 의미 | 예 |
|---|---|---|
| **서비스 수준 지표(SLI)** | 서비스 수준의 어떤 측면에 대해 신중하게 정의된 정량적 측정 | 올바른 형식의 요청 중 성공하는 비율 |
| **서비스 수준 목표(SLO)** | SLI에 대한 목표값 또는 범위 | 한 달 동안 요청의 99.9% 이상이 성공 |
| **서비스 수준 협약(SLA)** | 목표를 충족하거나 놓친 데 대한 결과(대개 금전적)를 포함하는, 사용자와의 명시적 또는 암묵적 계약 | 가용성이 명시된 수준 아래로 떨어지면 환불 |

SLA와 SLO를 구분하는 이 장의 시험은 명시적 결과가 있는지입니다. 없으면 SLO입니다. 표의 예시 숫자는 권고가 아니라 설명용입니다.

위키백과 문서는 SLA를 품질, 가용성, 책임 같은 서비스의 측면을 정의하는, 제공자와 고객 사이의 합의로 보통 구속력 있는 계약이라고 설명합니다. 전형적인 내용을 나열합니다. 서비스의 설명, 성능 수준, 모니터링과 보고, 문제를 보고하는 방법, 응답 및 해결 기간, 불이행의 결과. 평균 고장 간격, 평균 수리 시간, 가동 시간, 첫 통화 해결, 처리 시간 같은 흔한 지표를 꼽습니다. 대조직이 흔히 부서 사이의 내부 SLA를 쓴다고 언급합니다. 범위에 따라 유형을 설명합니다. 고객 기반, 서비스 기반, 다수준.

### 지표 고르기

SRE 장은 추적할 수 있는 모든 지표가 아니라 사용자가 신경 쓰는 것을 반영하는 소수의 지표를 고르라고 조언합니다. 사용자 대면 시스템은 보통 가용성, 지연, 처리량에 초점을 맞춥니다. 저장 시스템은 내구성을 더하고, 모든 시스템은 정확성을 추적해야 합니다. 클라이언트 쪽 측정이 서버 쪽 지표가 놓치는 문제를 잡을 수 있다고 제안합니다. 서비스 팀에 대한 실용적인 결론: "예약할 수 있고 몇 초가 걸린다"와 같은 사용자의 경험에서 시작한 다음, 그것에 근접하는 지표를 찾으십시오.

### 평균은 고통을 숨깁니다

이 장은 평균에 의존하는 것에 반대합니다. "대부분의 지표는 평균이 아니라 분포로 생각하는 것이 낫다." 99번째나 99.9번째 같은 높은 백분위수는 그럴듯한 최악의 경우를 보여 주고, 중앙값은 전형적인 경우를 보여 줍니다. 평균은 느린 요청의 긴 꼬리를 숨길 수 있습니다. 지표가 평균이라면 소수의 사용자가 숫자가 움직이지 않은 채 매우 나쁜 시간을 보내고 있을 수 있습니다.

### 목표 고르기

목표에 대한 이 장의 지침은 직접적이고 유용합니다.

- **사용자에서 시작하십시오.** "측정할 수 있는 것이 아니라 사용자가 신경 쓰는 것을 생각하는(또는 알아내는!) 것으로 시작하라."
- **현재 성능에 닻을 내리지 마십시오.** 지금 달성하는 것에 기반해 목표를 고르면 영웅적인 노력이 고착될 수 있습니다.
- **단순하게 유지하십시오.** 복잡한 집계는 변화를 가리고 추론하기 어렵습니다.
- **절대적인 것을 피하십시오.** "항상" 가용하다는 약속은 비현실적입니다.
- **SLO를 가능한 한 적게 두십시오.** 각각이 우선순위 논의에서 방어할 가치가 있어야 합니다.
- **완벽은 기다릴 수 있습니다.** 나중에 완화해야 하는 목표보다 조일 느슨한 목표로 시작하는 것이 낫습니다.

### 에러 버짓

이 장은 100% 준수를 요구하는 것이 비현실적이며 혁신을 늦춘다고 말합니다. 대신 팀은 **에러 버짓**을 허용합니다. SLO를 놓칠 수 있는 비율로, 일, 주, 월 단위로 추적합니다. 버짓은 릴리스에 대한 결정에 정보를 줍니다. 버짓이 충분히 남아 있으면 팀은 변경에 더 많은 위험을 감수할 수 있고, 거의 소진되면 변경을 늦추고 신뢰성에 투자합니다. 이는 애자일 팀과 운영에게 권위에 의한 논쟁 대신 속도 대 안정성을 두고 논쟁하는 공유된 수치적 방법을 줍니다.

### 기대 설정

이 장은 SLO를 게시하면 사용자의 기대가 설정된다고 언급합니다. 팀은 더 빡빡한 내부 목표로 안전 마진을 유지할 수 있습니다. 또한 초과 달성에 대해서도 경고합니다. 사용자는 관찰하는 성능에 의존하게 되기 때문입니다. 서비스가 명시된 목표보다 훨씬 좋으면 사용자는 그 위에 구축할 것이고, 목표는 더는 팀을 보호하지 못합니다.

### 제어 루프

이 장은 SLI와 SLO를 제어 루프의 기초로 설명합니다. SLI를 모니터링하고, SLO와 비교하고, 행동이 필요한지 결정하고, 어떤 행동이 목표를 충족할지 파악하고, 취합니다. SLO가 없으면 팀은 행동할지, 언제 할지 알 수 없습니다(주제 3.10 — 모니터링과 이벤트 관리 참조).

### 내부와 외부 협약

SLA는 제공자와 고객 사이입니다. 제공자 안에서 팀은 서로와 공급자에게 의존합니다. 위키백과 문서는 SLA가 운영 수준 협약(OLA)으로 뒷받침될 수 있다고 언급하지만 설명하지는 않습니다. ITIL 어휘에서 OLA는 SLA를 뒷받침하는 내부 팀 간의 협약이고, 기반 계약(underpinning contract)은 외부 공급자와의 동등한 것입니다. 여기서 읽은 출처들은 그 정의를 확인하지 않으므로 ITIL 발행물과 대조해 확인하십시오. 실용적인 요점은 고객에 대한 약속은 그 뒤의 약속만큼만 좋다는 것입니다(주제 3.14 — 공급자 관리 참조).

### 칸반의 서비스 수준 기대

칸반에서 **서비스 수준 기대**는 과거 사이클 타임에 기반한 작업 항목이 걸릴 시간의 예측입니다(주제 1.5 — 칸반 참조). 협약은 아니지만 작업 항목에 대해 비슷한 목적을 하며, 요청과 인시던트의 목표에 입력이 될 수 있습니다.

## 모범 사례

1. **사용자가 필요로 하는 것에서 시작하십시오.** 사용자와 고객에게 무엇이 가장 중요하고 실패하면 무엇이 아픈지 물어보십시오. 측정을 고르기 전에 그들의 말로 적으십시오.
2. **소수의 지표를 고르십시오.** 각 서비스에 대해 성공률과 속도처럼 사용자 경험을 반영하는 지표를 둘에서 넷 고르십시오. 이것들을 써 보기 전에는 더하는 것을 참으십시오.
3. **속도에는 백분위수를 쓰십시오.** 평균뿐 아니라 분포의 느린 쪽을 측정하여 나쁜 경험을 한 사용자가 보이게 하십시오.
4. **먼저 느슨한 목표를 정하고 조이십시오.** 충족하고 방어할 수 있는 목표로 시작하고, 데이터와 확신이 생기면 조이십시오. 완벽은 기다릴 수 있다는 이 장의 조언을 따릅니다.
5. **현재 성능을 베끼지 마십시오.** 서비스가 지금 훌륭하더라도 사용자가 필요로 하지 않는 한 그 수준에서 목표를 정하지 마십시오. 더 느슨한 목표가 변경의 여지를 주고 영웅적 노력을 피합니다.
6. **에러 버짓에 합의하고 쓰십시오.** 한 기간에 얼마나 많은 실패가 허용되는지 정의하고, 남은 버짓이 릴리스 결정을 안내하게 하십시오. 전달과 운영이 함께하는 정기 회의에서 검토하십시오.
7. **협약을 평이한 말로 쓰십시오.** SLA는 무엇이 제공되는지, 어떻게 측정되는지, 문제를 어떻게 보고하는지, 목표를 놓치면 어떻게 되는지, 언제 검토되는지를 말해야 합니다. 변호사나 엔지니어만 읽을 수 있는 용어를 피하십시오.
8. **목표와 협약을 분리하십시오.** 서명하는 협약보다 더 빡빡한 내부 목표를 유지하십시오. 마진이 무언가를 빚지기 전에 대응할 여지를 줍니다.
9. **약속이 무엇에 의존하는지 아십시오.** 서비스 수준이 의존하는 팀과 공급자를 나열하고 그들의 약속이 여러분의 것을 뒷받침하는지 확인하십시오.
10. **고객이 쓸 수 있는 형태로 보고하십시오.** 무슨 일이 있었고 무엇을 하고 있는지 짧은 설명과 함께 결과를 정기적으로 공유하십시오. 설명 없는 대시보드는 피하십시오.
11. **고객과 목표를 검토하십시오.** 적어도 매년 수준이 여전히 고객이 필요로 하고 여러분이 전달할 수 있는 것과 맞는지 물어보십시오. 답이 아니라면 바꾸십시오.
12. **서비스 수준을 사람을 벌하는 데 쓰지 마십시오.** 대화와 결정을 시작하는 데 쓰십시오. 막대기로 쓰이는 목표는 조작될 것입니다(주제 5.6 — 지표와 측정 참조).

## 팀과 논의할 질문

**사용자에게 좋은 하루는 어떤 모습이며, 우리는 그것을 어떻게 알 수 있는가?**

팀에게 서비스의 좋은 경험이 무엇인지 사용자의 말로 기술해 달라고 합니다. 그런 다음 그에 대응하는 무엇을 측정하는지 물어보십시오. 우리가 가진 지표가 사용자의 경험이 아니라 우리 시스템을 기술하는 경우가 많습니다. 진행자는 사용자 집단이 나쁜 하루를 보냈을 때 우리가 알아차릴지 물을 수 있습니다. 추가하거나 바꿀 지표 하나를 고르십시오.

**우리가 약속하거나 지향하는 숫자가 있으며, 누가 합의했는가?**

공식적이든 비공식적이든 존재하는 목표를 나열합니다. 각각에 대해 누가, 언제, 어떤 근거로 정했는지 물어보십시오. 많은 목표가 습관이나 떠난 누군가가 정한 것으로 드러납니다. 어느 것을 확인하고, 바꾸고, 버릴지 논의합니다. 각각의 오너에 합의하십시오.

**우리는 얼마나 많은 실패를 감당할 수 있으며, 그 여지로 무엇을 하겠는가?**

에러 버짓의 아이디어를 소개합니다. 사용자가 어느 정도의 불가용을 용인할지, 팀이 더 빠른 릴리스 같은 여지로 무엇을 할 수 있을지 물어보십시오. 목적은 트레이드오프를 숫자로 보는 것입니다. 정밀한 답을 기대하지 말고 시험할 첫 추측을 요청하십시오.

**우리의 평균은 어디서 나쁜 경험을 숨기고 있는가?**

평균을 보고하는 지표 하나를 봅니다. 가장 느린 1%의 사용자가 무엇을 경험하는지 물어보십시오. 모른다면 알아낼 방법을 논의합니다. 작은 사용자 집단이나 특정 시간대가 훨씬 나쁜 경험을 하는 경우가 흔합니다. 한 달 동안 한 백분위수를 보도록 계획하십시오.

**우리가 의존하지만 물어보지 않은 것은 무엇인가?**

서비스가 의존하는 서비스, 공급자, 팀을 나열합니다. 각각에 대해 무엇을 약속했고 놓쳤을 때 어떻게 알겠는지 물어보십시오. 많은 의존성에는 명시된 수준이 없습니다. 가장 중요한 것을 골라 대화를 여십시오.

**목표가 마지막으로 바뀐 것은 언제였고, 무엇이 계기였는가?**

가장 최근의 변경을 요청하십시오. 오래전이라면 그 후 사용자의 필요나 팀의 능력에서 무엇이 바뀌었는지 물어보십시오. 정기적인 검토를 논의합니다. 좋은 계기는 새로운 사용자 필요, 비현실적인 목표를 드러낸 인시던트, 아키텍처의 변경입니다.

## 실전 사례: 애자일 ITIL 예시

국가 복권 운영사는 온라인 복권 구매 서비스를 운영합니다. 12명의 팀이 이를 만들고 운영합니다. 사업에는 서비스가 "항상 가동"되어야 한다는 비공식적 규칙이 있는데, 팀은 주 2회 릴리스하고 1년에 네 번의 짧은 장애가 있었습니다. 나쁜 주말 뒤에 경영진 후원자가 "100% 가용성"을 요구하고, 팀 리더는 이것이 잦은 릴리스를 끝낼까 걱정합니다.

팀 리더와 후원자는 고객 서비스 책임자와 함께 워크숍을 엽니다. 플레이어에게 무엇이 중요한지 묻습니다. 답은 플레이어가 추첨이 마감되기 한 시간 전에 복권을 살 수 있어야 한다는 것이며, 그 시간 밖에서는 서비스가 몇 분 다운되어도 해가 없습니다. 그들은 지표를 정의합니다. 각 추첨이 마감되기 전 두 시간 동안 성공하는 구매 시도의 비율. 팀이 충족할 수 있다고 믿는 목표를 최근 성능보다 약간 낮게 정하고, 매월의 에러 버짓에 합의합니다. 또한 버짓이 거의 소진되면 구매에 영향을 주는 릴리스는 다음 달까지 멈추고 팀이 신뢰성에 투자한다는 데 합의합니다.

석 달 뒤 버짓은 결제 제공자의 장애가 있었던 달에 한 번 소진되고, 팀은 충돌 없이 2주 동안 위험한 릴리스를 멈춥니다. 목표는 팀과 후원자에게 이야기할 공유된 방법을 줍니다. 어려움이 남아 있습니다. 결제 제공자 자신의 약속이 팀의 목표보다 약해서, 팀의 약속이 그것에 합의하지 않은 공급자에 의존합니다. 지표는 또 성공만 세기 때문에 사용자가 불평하는 느린 결제 페이지를 무시합니다. 팀은 99번째 백분위수의 속도 지표를 추가하고 제공자의 서비스 수준에 대한 대화를 시작합니다.

## 네 가지 관점

### 제품 및 전달 팀

전달 팀은 지표를 고르는 것을 돕고 계획에서 에러 버짓을 써야 합니다. 숫자가 믿을 만하도록 측정을 서비스에 내장하십시오. 소진된 버짓을 처벌이 아니라 신뢰성 작업을 할 이유로 다루십시오.

### 서비스 및 운영 팀

운영 팀은 보통 모니터링을 운영하고 수준을 보고합니다. 지표의 집합을 작게 유지하고, 설명과 함께 보이고, 데이터를 계획 논의에 가져오십시오. 서비스가 의존하는 것의 목록을 유지하고 약속이 맞아떨어지는지 확인하십시오.

### 리더십과 거버넌스

리더와 후원자가 기대를 설정합니다. 완벽을 요구하지 말고 사용자가 필요로 하는 것과 트레이드오프의 비용을 물어보십시오. 에러 버짓을 공유 규칙으로 쓰는 것을 지원하고, 자신의 요청에도 적용되게 하십시오. 일정에 따라 고객과 서비스 수준을 검토하십시오.

### 고객과 사용자

고객과 사용자는 서비스 수준이 진술되고 충족될 때 이득을 봅니다. 언제를 포함해 여러분에게 무엇이 중요한지 말하십시오. 이해할 수 있는 형태의 보고를 요청하고, 명시된 수준이 더는 필요에 맞지 않으면 제공자에게 알리십시오.

## 흔한 실패 유형

- **지표가 너무 많은 것.** 아무도 어느 것이 중요한지 모릅니다. 대신 사용자 경험을 반영하는 소수를 고르십시오.
- **평균만 쓰는 것.** 평균은 괜찮아 보이는데 한 사용자 집단이 고통받습니다. 대신 높은 백분위수 지표를 포함시키십시오.
- **현재 성능에서 베낀 목표.** 팀이 영웅주의에 묶입니다. 대신 사용자의 필요에서 목표를 정하고 데이터로 조이십시오.
- **100%를 요구하는 것.** 릴리스가 멈추고 혁신이 느려집니다. 대신 에러 버짓과 그것을 쓰는 규칙에 합의하십시오.
- **뒷받침할 수 없는 약속.** 서비스 수준이 합의하지 않은 공급자에 의존합니다. 대신 의존성을 확인하고 약속을 정렬하십시오.
- **아무도 읽지 않는 협약.** 조건이 법률 용어로 되어 있습니다. 대신 평이하게 쓰고 고객과 검토하십시오.
- **설명 없는 대시보드.** 숫자가 의미 없이 보고됩니다. 대신 무슨 일이 있었고 무엇이 바뀔지 짧은 설명을 더하십시오.
- **놓친 것을 처벌하는 것.** 사람들이 문제를 숨깁니다. 대신 놓침을 결정과 학습의 촉진제로 쓰십시오.

## 성숙도 모델

| 차원 | 시작 | 발전 | 표준화 | 관리 | 최적화 |
|---|---|---|---|---|---|
| 수준 정의 | 수준이 가정되거나 비공식적이다 | 일부 서비스에 진술된 목표가 있다 | 각 서비스에 오너가 있는 사용자 기반 지표와 목표가 있다 | 목표가 사용자의 필요와 데이터에 비추어 검토된다 | 수준이 고객 및 공급자와 함께 설정된다 |
| 측정 | 측정이 즉흥적이다 | 일부 지표가 측정된다 | 백분위수를 포함해 지표가 신뢰할 수 있게 측정된다 | 측정의 질이 검토되고 간극이 고쳐진다 | 측정이 팀과 공급자 간에 공유·검증된다 |
| 에러 버짓 사용 | 실패가 계획되지 않는다 | 일부 팀이 허용 가능한 실패를 논의한다 | 버짓이 핵심 서비스의 릴리스 결정을 안내한다 | 버짓 사용이 검토되고 규칙이 조정된다 | 버짓이 의존하는 서비스 간에 조율된다 |
| 협약과 의존성 | 약속이 비공식적이다 | 일부 협약이 있다 | 협약이 평이한 말로 쓰이고 의존성이 알려져 있다 | 협약과 공급자의 약속이 결과에 비추어 점검된다 | 협약이 팀, 공급자, 고객에 걸친 일관된 사슬을 이룬다 |

## 체크리스트

- [ ] 각 서비스에 대해 좋은 상태가 무엇인지 사용자의 말로 기술했다.
- [ ] 각 서비스에 사용자 경험을 반영하는 둘에서 넷의 지표가 있다.
- [ ] 적어도 하나의 속도 지표가 평균뿐 아니라 높은 백분위수를 쓴다.
- [ ] 목표를 현재 성능뿐 아니라 사용자의 필요에서 정한다.
- [ ] 적어도 한 서비스에 에러 버짓이 있고 릴리스 결정을 안내한다.
- [ ] 협약이 평이한 말로 쓰이고 고객과 검토된다.
- [ ] 다른 팀과 공급자에 대한 의존성이 그들의 약속과 함께 나열되어 있다.
- [ ] 결과가 설명과 함께 정기적으로 보고된다.
- [ ] 목표를 적어도 1년에 한 번 검토한다.
- [ ] 서비스 수준 데이터가 막대기가 아니라 계획에 쓰인다.

## AI 프롬프트

**목적: 사용자의 필요를 후보 지표와 목표로 바꾼다.**

```text
Help me move from user needs to indicators and objectives for [service].

What users do with the service and what matters to them (in their words, with any feedback or complaints): [paste].
Measurements we can already collect: [list].
Rules or contracts that set levels, with the source text: [paste, or write "none known"].

Propose two to four candidate indicators that reflect the user experience, say how each would be measured with the data I listed, and suggest how to express an objective for each, leaving numeric targets as [to be agreed with users and data]. Mark any indicator we cannot measure yet. Do not invent targets or performance figures. Ask clarifying questions first, and list what you are unsure of.
```

**목적: 평균이 나쁜 경험을 숨기고 있는지 분석한다.**

```text
Here are response times (or other measurements) for [service] over [period]: [paste a column of real values, or summary figures such as median, 90th, 99th percentile if you have them].

Using only my data, compute or describe the average, the median, and the high percentiles if the data allows. Explain in plain words what the gap between the average and the high percentiles suggests for users. Suggest one indicator and one question to ask. Do not invent data, and say if the data is too thin. List what you are unsure of.
```

**목적: 평이한 말의 서비스 수준 협약 개요 초안을 작성한다.**

```text
Draft an outline for a service level agreement for [service] between [provider] and [customer].

What we provide: [describe].
Measures and targets already agreed or being proposed: [paste, or write "to be agreed"].
Support hours and contacts: [describe].
Dependencies on suppliers: [list].
Terms we must include because of contract or law, with source text: [paste, or write "none known"].

Produce an outline with plain-language sections: service description, hours, measures and how they are measured, how to report a problem, response and resolution expectations (marked [to be agreed]), what happens if targets are missed, reporting, review date. Do not invent legal terms. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**목적: 에러 버짓 정책을 계획한다.**

```text
Help me draft an error budget policy for [service].

Objective and period: [for example, "success rate of purchase attempts in the two hours before a draw closes, measured monthly"].
Current performance if known: [paste, or write "unknown"].
Release rhythm: [describe].
Who decides, and who is affected: [roles].

Draft a one-page policy: how the budget is calculated from the objective, how its use is tracked and shown, what happens at three stages of consumption (use [to be agreed] for thresholds), who may override and how, and how the policy is reviewed. Do not invent numbers. Ask clarifying questions first, and list what you are unsure of.
```

## AI 스킬

- [service-level-agreement](../../../../skills/service-level-agreement/SKILL.md): 평이한 말로 협약을 작성하거나 검토할 때 사용합니다.
- [software-engineering-metrics](../../../../skills/software-engineering-metrics/SKILL.md): 전달과 서비스 성과의 지표를 고르고 해석할 때 사용합니다.
- [key-risk-indicators](../../../../skills/key-risk-indicators/SKILL.md): 서비스 수준이 위험에 처했음을 보여 주는 조기 경보 지표를 선택할 때 사용합니다.
- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): 용량이 약속하는 수준을 뒷받침하는지 점검할 때 사용합니다.
- [vendor-management](../../../../skills/vendor-management/SKILL.md): 공급자의 약속을 제공하는 수준에 맞출 때 사용합니다.

## 주요 출처

- **Service Level Objectives** (『Site Reliability Engineering』, Google, sre.google): 지표, 목표, 협약, 백분위수, 에러 버짓에 대한 가장 명확한 공개 설명입니다.
- **Service-level agreement** (Wikipedia): SLA의 정의, 전형적인 내용, 유형, 역사입니다.
- **DORA's software delivery performance metrics** (dora.dev): 전달 속도와 안정성의 관련 지표입니다.
- **Quality of service** (Wikipedia): 서비스 품질이 어떻게 기술되고 측정되는지에 대한 배경입니다.

## 참고 문헌

1. Service Level Objectives — Google SRE book, sre.google — https://sre.google/sre-book/service-level-objectives/
2. Service-level agreement — Wikipedia — https://en.wikipedia.org/wiki/Service-level_agreement
3. DORA's software delivery performance metrics — DORA, dora.dev — https://dora.dev/guides/dora-metrics-four-keys/
4. Quality of service — Wikipedia — https://en.wikipedia.org/wiki/Quality_of_service
5. Percentile — Wikipedia — https://en.wikipedia.org/wiki/Percentile
6. Service-level objective — Wikipedia — https://en.wikipedia.org/wiki/Service-level_objective
7. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
8. Goodhart's law — Wikipedia — https://en.wikipedia.org/wiki/Goodhart%27s_law
9. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
