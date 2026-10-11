# ITSM 프레임워크와 표준

**IT 서비스 관리에는 서로 겹치는 많은 프레임워크와 표준이 있으며, 유용한 기술은 각각이 무엇을 위한 것인지 아는 것입니다. 배울 만한 지침인지, 인증받을 수 있는 표준인지, 무엇을 통제할지 알려 주는 거버넌스 모델인지.**

## 왜 중요한가

다섯 사람에게 "우리는 ITSM 모범 사례를 따른다"가 무슨 뜻인지 물으면 다섯 가지 답을 들을 수 있습니다. ITIL, ISO/IEC 20000, COBIT, FitSM, 또는 "벤더의 도구가 하는 것 무엇이든." 용어는 느슨하게 쓰이고, 차이는 중요합니다. ISO/IEC 20000 인증을 요청한 고객은 ITIL 교육으로 만족시킬 수 없습니다. COBIT 통제에 대해 묻는 감사인에게 서비스 데스크 프로세스 지도는 도움이 되지 않습니다.

애자일 팀에게 질문은 실용적입니다. 이 중 어느 것을 우리가 다뤄야 하고, 어느 것을 아이디어의 원천으로 대할 수 있는가? 많은 팀은 가장 잘 알려진 ITIL이 조직이 아니라 개인이 인증받는 지침이라는 것을 알고 놀랍니다. 다른 이들은 주된 ITSM 표준이 최근 애자일과 DevOps 일하기 방식에 대한 지침을 추가했다는 것을 알고 놀랍니다.

이 주제는 [IT 서비스 관리](https://en.wikipedia.org/wiki/IT_service_management), [ISO/IEC 20000](https://en.wikipedia.org/wiki/ISO/IEC_20000), [COBIT](https://en.wikipedia.org/wiki/COBIT), [FitSM](https://en.wikipedia.org/wiki/FitSM)에 관한 위키백과 문서를 사용해 주요 프레임워크와 표준을 비교합니다. 이 문서들은 품질이 제각각이고 여럿에 유지보수 표시가 붙어 있습니다. 약한 곳에서는 이 주제가 그렇다고 말합니다. 계약이나 감사를 위해 어떤 세부 사항에 의존하기 전에 소유자 자신의 발행물을 확인하십시오.

## 핵심 개념

### 세 종류의 것

이 주제의 이름들은 세 집단으로 나뉩니다. 이를 구분하면 많은 혼란스러운 대화를 피할 수 있습니다.

| 종류 | 주는 것 | ITSM 위키백과 문서에서 이름이 오르는 예 |
|---|---|---|
| **지침(프레임워크 또는 라이브러리)** | 조정해 쓸 아이디어와 기술된 실천 | ITIL, Microsoft Operations Framework, Application Services Library, Business Information Services Library |
| **인증 가능한 표준** | 조직이 감사받고 인증받을 수 있는 요구사항 | ISO/IEC 20000 |
| **거버넌스 또는 역량 모델** | IT를 지시하고, 통제하고, 평가하는 방법 | COBIT, CMMI, TOGAF |

FitSM은 아래에서 설명하듯 처음 두 가지 사이에 놓입니다.

### ITIL

ITIL은 ITSM과 IT 자산 관리에 대한 지침입니다. 인증은 개인을 위한 것이며, 조직의 ITIL 준수에 대한 독립적 평가는 존재하지 않습니다(주제 2.2 — ITIL 참조). 어휘의 가장 널리 쓰이는 원천입니다.

### ISO/IEC 20000

ISO/IEC 20000은 IT 서비스 관리의 국제 표준입니다. 위키백과에 따르면 1부는 서비스의 계획, 전달, 개선을 다루는 서비스 관리 시스템에 대한 요구사항을 정합니다. BSI Group이 만든 BS 15000에서 개발되었고 2005년 12월에 처음 발행되었습니다. 이후 개정이 이어졌습니다. 2011년 6월의 1부와, 2018년 7월 15일에 발표된 두 번째 개정판 ISO/IEC 20000-1:2018이며, 이후 인증 조직에는 3년의 전환 기간이 주어졌습니다. 2018판은 ISO 상위 구조를 따르는 열 개의 조항을 갖습니다.

이 표준에는 많은 부가 있습니다. 문서는 서비스 관리 시스템 적용에 대한 지침(2부), 범위와 적용 가능성에 대한 지침(3부), 구현 지침(5부), 인증 기관에 대한 요구사항(6부), 개념과 어휘(10부), ITIL 4와의 관계에 대한 기술 사양(11부)을 비롯해 나열합니다. 또한 2023년부터 2025년까지 최근 발행된 부로서 서비스 통합 및 관리(SIAM), 애자일과 DevOps, 지속 가능성에 대한 지침을 나열합니다. 위키백과는 어느 부 번호가 어느 주제를 다루는지 말하지 않으므로, 인용하기 전에 ISO 카탈로그를 확인하십시오.

조직은 인증받을 수 있고, 개인은 APMG-International, EXIN, PECB 같은 기관에서 자격을 취득할 수 있습니다. 문서는 2024년 ISO 조사가 27,332개의 인증서를 집계했으며 그중 24,056개가 중국에 있었다고 보고합니다. 인증이 국가마다 얼마나 고르지 않게 분포하는지 보여 주므로, 다른 곳의 고객이 이를 요청하리라고 가정하지 마십시오.

위키백과는 이 표준이 원래 ITIL 모범 사례를 반영하도록 개발되었다고 말하지만 그 주장에 "출처 필요" 표시를 붙입니다. 관계를 가깝지만 동일하지는 않은 것으로 다루십시오. 문서는 또 이 표준이 Microsoft Operations Framework와 COBIT의 일부 같은 다른 프레임워크를 지원한다고 말합니다.

### COBIT

위키백과에 따르면 COBIT은 ISACA가 만든 IT 관리와 거버넌스의 프레임워크입니다. 비즈니스 목표를 IT 목표에 연결하고 비즈니스와 IT 팀의 책임을 정의합니다. 문서는 다섯 가지 프로세스 영역을 설명합니다. 평가, 지시 및 모니터링(Evaluate, Direct and Monitor), 정렬, 계획 및 조직(Align, Plan and Organize), 구축, 획득 및 구현(Build, Acquire and Implement), 제공, 서비스 및 지원(Deliver, Service and Support), 모니터링, 평가 및 사정(Monitor, Evaluate and Assess). 날짜는 1996년에 처음 발표되었고, 2012년에 버전 5가 나왔으며, ISACA가 COBIT 2019와 COBIT 5에 대한 인증을 제공한다고 말합니다. 문서는 COBIT을 ITIL, ISO 27000, CMMI, TOGAF, 프로젝트 관리 협회의 PMBOK Guide와 연결합니다.

문서 자체에 일차 출처와 빠진 인용에 대한 유지보수 표시가 붙어 있으며, 프레임워크가 기업이 법을 따르고 더 민첩해지도록 돕는다는 한 주장은 단일 출처에 기댑니다. 권위를 위해서는 COBIT 자신의 발행물을 사용하십시오.

### FitSM

FitSM은 경량 표준의 계열입니다. 위키백과는 이것이 연합 e-인프라의 서비스 관리를 개선하기 위한 EU 자금 지원 프로젝트인 FedSM에서 자라났으며, 수정된 산출물이 2013년 5월부터 FitSM이라는 이름으로 발행되었다고 말합니다. FitSM-1은 일반 요구사항과 14개 프로세스를 다루는 약 85개의 감사 가능한 요구사항을 담고 있으며, 범위와 스타일은 비슷하지만 ISO/IEC 20000 1부보다 훨씬 짧습니다. 모든 부가 크리에이티브 커먼즈 라이선스로 발행됩니다. 조직은 FitSM 적합으로 인증받을 수 없지만 적합성은 감사할 수 있으며, 요원 인증 체계가 2013년에 시작되었습니다.

FitSM은 짧은 요구사항 집합을 원하는 소규모 팀에 유용합니다. 문서는 현재 버전이나 이를 유지하는 그룹의 상태를 밝히지 않으므로, 의존하기 전에 확인하십시오.

### 그 밖의 이름들

ITSM 문서는 다음도 나열합니다. 이 가이드는 이들을 더 다루지 않습니다.

- **CMMI:** 서비스와 프로세스를 수립하고, 관리하고, 개선하는 모델.
- **TOGAF:** 비즈니스 목표를 아키텍처 목표에 연결하는 프레임워크.
- **Microsoft Operations Framework:** 마이크로소프트 기술에 기반한 서비스 관리 지침.
- **Application Services Library와 Business Information Services Library:** 애플리케이션 관리와 정보 관리를 위한 프레임워크.
- **USM:** 네덜란드 정부가 채택한 원칙 기반 체계.

문서는 ITSM 프레임워크가 ISO 9000, ISO/IEC 27000, CMMI를 활용해 왔다고 덧붙입니다. 보안 관리에는 자체 표준 계열이 있습니다(주제 3.13 — 정보 보안 관리 참조).

### 표준 속의 애자일과 DevOps

ISO/IEC 20000 문서는 표준의 최근 부 하나가 애자일과 DevOps에 대한 지침을 담고 있다고 나열합니다. 이는 표준 기구가 애자일 일하기 방식을 서비스 관리 시스템이 수용해야 하는 것으로 다룬다는 것을 보여 주므로 주목할 만합니다. 문서는 그 내용에 대한 세부 사항을 주지 않으므로 필요하면 표준 자체를 읽으십시오. 한편 ITIL 4는 스스로를 애자일, DevOps, 린과 정렬되었다고 설명하고(주제 2.2 — ITIL 참조), ITSM에 관한 위키백과 문서는 애자일을 전혀 언급하지 않습니다. 출처마다 얼마나 따라잡았는지가 다릅니다.

### 선택하기

하나의 올바른 프레임워크는 없습니다. 합리적인 선택 방법은 무엇이 필요한지 묻는 것입니다.

| 필요한 것이… | 고려할 것… |
|---|---|
| 실천을 위한 공통 어휘와 아이디어 | ITIL |
| 고객이나 입찰을 위한 서비스 관리 시스템의 인증 | ISO/IEC 20000 |
| 소규모 팀을 위한 짧고 감사 가능한 요구사항 집합 | FitSM |
| 비즈니스 목표와 연결된 전사 IT의 거버넌스와 통제 | COBIT |
| 프로세스 역량의 평가 | CMMI |

이 표는 이 가이드의 요약이며 어떤 프레임워크 소유자의 권고가 아닙니다.

## 모범 사례

1. **답해야 할 질문에서 시작하십시오.** 어휘, 인증, 통제, 평가 중 무엇이 필요한지 적으십시오. 마케팅이 가장 좋은 것이 아니라 그 질문에 답하는 프레임워크를 고르십시오.
2. **지침과 표준의 차이를 배우십시오.** 팀에게 ITIL 인증은 개인을 위한 것이고, ISO/IEC 20000 인증은 조직을 위한 것이며, COBIT은 거버넌스 모델임을 가르치십시오. 계약과 감사의 많은 혼란이 여기서 시작됩니다.
3. **고객과 규제 기관이 실제로 무엇을 요구하는지 알아내십시오.** 정확한 조항이나 요구사항을 요청하십시오. 흔히 요청은 "인정받는 프레임워크"에 대한 것이고, 실천에 대한 짧고 정직한 설명이면 충분합니다.
4. **준수를 위해서는 요약이 아니라 표준 본문을 쓰십시오.** 적합성을 주장할 때는 ISO 표준이나 프레임워크 소유자의 발행물에서 작업하십시오. 이 문서를 포함한 요약은 방향 잡기용일 뿐입니다.
5. **실천을 네 번이 아니라 한 번 대응시키십시오.** 둘 이상의 프레임워크를 충족해야 한다면, 실천에 대한 단일 설명을 만들고 각각에 대응시키십시오. 별도의 문서를 쓰지 마십시오.
6. **시스템을 가능한 한 작게 유지하십시오.** ISO/IEC 20000은 서비스 관리 시스템과 기록을 요구합니다. 각 요구사항을 작동하는 가장 가벼운 접근으로 충족하고 도구에서 증거를 자동화하십시오.
7. **범위에 주의하십시오.** 인증서는 명시된 범위를 다룹니다. 실제 서비스와 팀을 반영하는 범위를 고르고, 인증을 어렵게 만드는 부분을 제외하지 마십시오.
8. **사용하는 표준의 애자일 및 DevOps 지침을 확인하십시오.** 표준에 애자일과 DevOps에 대한 지침이 있다면, 애자일 팀이 요구사항을 어떻게 충족할 수 있는지 감사인과 논쟁하기 전에 읽으십시오.
9. **소규모 팀에는 더 가벼운 선택지를 고려하십시오.** FitSM이나 ITIL의 일부는 완전한 인증 시스템보다 소규모 팀에 더 잘 맞을 수 있습니다. 외부 인증처럼 포기하는 것을 기록하십시오.
10. **보안과 서비스 관리를 정렬해 유지하십시오.** 정보 보안에 ISO/IEC 27001을 쓴다면, 중복 작업을 피하기 위해 기록과 검토를 서비스 관리 시스템과 공유하십시오(주제 3.13 — 정보 보안 관리 참조).
11. **조정한 내용을 문서화하십시오.** 프레임워크의 어느 부분을 쓰고 어느 부분을 쓰지 않는지, 이유와 함께 기록하십시오. 감사에서 여러분을 보호하고 새 직원을 돕습니다.
12. **매년 검토하십시오.** 표준과 프레임워크는 바뀝니다. 업데이트를 따라가고 팀에 중요한 것을 보고할 사람을 지정하십시오(주제 6.4 — 학습 경로와 자격증 참조).

## 팀과 논의할 질문

**이 프레임워크나 표준 중 어느 것을 우리가 써야 하고, 어느 것을 습관으로 쓰는가?**

고객, 계약, 규제 기관, 관리자가 실제로 요구하는 것을, 그렇게 말하는 문서와 함께 나열합니다. 그런 다음 요구 없이 팀이 쓰는 것을 나열합니다. 두 목록은 예상보다 더 다른 경우가 많습니다. 진행자는 누가 각각을 처음 도입했고 왜 그랬는지 물을 수 있습니다. 일을 이끄는 요구사항의 정확한 문구를 찾으며 이어 갑니다.

**고객이 우리가 "ITIL 인증"을 받았는지 묻는다면 무엇이라고 답하겠는가?**

정직한 답을 연습합니다. 개인은 인증받을 수 있고 조직은 받을 수 없으며, 우리가 하는 것은 이렇다. 답을 비교합니다. 일부는 과장할 것입니다. 고객이 아마 필요로 하는 것과, ISO/IEC 20000 인증이나 실천에 대한 설명처럼 그것을 충족할 증거가 무엇인지 논의합니다. 모두가 쓸 수 있는 한 문장에 합의하십시오.

**ISO/IEC 20000 인증을 받는 데 얼마가 들고, 무엇을 얻는가?**

어떤 고객이나 시장이 이를 가치 있게 여길지, 팀이 무엇을 바꿔야 할지 물어보십시오. 비용을 짐작하지 말고 실제 견적을 모으거나 해 본 동료에게 물어보십시오. 설명할 수 있는 이점을 나열합니다. 인정받는 표지, 규율 있는 시스템, 입찰에의 접근. 더 조사할지 결정하십시오.

**감사를 위한 기록은 어디서 오며, 우리 도구가 이를 자동으로 만들 수 있는가?**

감사인이 요청하는 기록과 각각이 어디서 오는지 나열합니다. 이를 염두에 두고 구성하면 많은 것이 버전 관리, 티켓 도구, 모니터링에서 나올 수 있습니다. 어떤 기록이 수작업으로 만들어지며 그 이유가 무엇인지 물어보십시오. 자동화할 하나를 고르십시오.

**우리의 애자일 실천은 표준이 기대하는 것과 어떻게 맞고, 간극은 어디인가?**

변경 승인처럼 감사인이 신경 쓰는 요구사항을 가져다가 애자일 팀이 이를 어떻게 충족하는지 설명합니다. 표준에 애자일과 DevOps에 대한 지침이 있다면 관련 본문을 함께 읽습니다. 의도가 아니라 증거의 간극을 기록하십시오.

**우리를 위해 이 프레임워크들의 변화를 따라가는 사람은 누구인가?**

프레임워크 소유자와 표준 기구의 발표를 누가 읽는지 물어보십시오. 흔한 답은 "아무도"입니다. 누가, 어떻게 보고하고, 언제 할지 결정하십시오. 진행자는 무엇이 바뀌었고 중요한지 나열하는 분기별 짧은 메모를 제안할 수 있습니다.

## 실전 사례: 애자일 ITIL 예시

직원 120명의 소프트웨어 회사는 병원과 대학에 호스팅 일정 관리 제품을 판매합니다. 한 대형 대학 고객의 입찰은 "인증된 IT 서비스 관리 시스템"을 요구합니다. 창업자들은 ITIL 교육을 받은 지원 책임자로 충분하리라고 가정했습니다. 지원 책임자는 ITIL 인증이 개인에게 적용되며, 입찰이 뜻하는 것은 아마 ISO/IEC 20000일 것이라고 설명합니다.

운영 책임자가 조사합니다. ISO/IEC 20000-1을 명시한 입찰 문구를 읽고, 고객에게 어떤 범위를 기대하는지 묻습니다. 표준의 목차를 읽고 열 개의 조항을 회사의 기존 기록, 주로 티켓 도구, 변경 이력, 인시던트 검토에서 나오는 것과 비교합니다. 증거 상당수가 이미 존재하지만, 문서화된 서비스 관리 정책, 공식 공급자 검토, 경영 검토가 없음을 발견합니다. 또한 표준에 이제 애자일과 DevOps 지침에 관한 부가 있음을 알게 되어, 예비 심사원에게 회사의 주간 릴리스를 설명하는 데 도움이 됩니다.

회사는 호스팅 제품에 한해 소박한 문서 묶음과 분기별 경영 검토로 인증을 추진하기로 결정합니다. 약 1년의 작업을 계획합니다. 모든 것이 매끄럽지는 않습니다. 엔지니어 두 명은 추가 기록에 저항하고, 한 공급자는 공식 서비스 검토 보고서 제공을 거절합니다. 운영 책임자는 일부 수작업 기록을 회사 도구의 내보내기로 대체하고, 공급자와 더 가벼운 검토 방식을 협상합니다. 회사는 입찰에서 이기고, 다음 사후 심사에서 이 시스템이 주간 릴리스에 도움이 되는지 방해가 되는지 검토하기로 합니다.

## 네 가지 관점

### 제품 및 전달 팀

전달 팀은 고객과 감사인의 요구사항으로 이 프레임워크들을 만납니다. 어떤 요구사항이 적용되는지 알아내고 어떤 증거가 받아들여지는지 물어보십시오. 이미 쓰는 도구로 충족할 수 있는 요구사항이 많습니다. 표준의 언어로 릴리스 프로세스를 설명해 주겠다고 제안하십시오.

### 서비스 및 운영 팀

운영 팀이 보통 관리 시스템을 맡습니다. 기록을 각각 명시된 목적이 있는 쓸모 있는 것으로 유지하십시오. 프레임워크 간에 서로 중복되는 요구사항을 살펴 한 번에 대응시키십시오. 기록이 별도의 작업이 아니라 일의 부산물이 되도록 전달 팀과 계획을 공유하십시오.

### 리더십과 거버넌스

리더는 어떤 프레임워크를 채택하고 인증에 얼마나 투자할지 결정합니다. 사업상 근거가 무엇이고 고객이 실제로 무엇을 요구하는지 물어보십시오. 표지로서 인증을 사는 것을 경계하십시오. 시스템이 조직의 개선을 돕고 누군가 이를 소유하도록 하십시오.

### 고객과 사용자

인증을 요청하는 고객은 흔히 보증을 원합니다. 제공자에게 인증서가 어떤 표준과 범위를 다루고 무엇이 그 밖에 있는지 물어보십시오. 인증서는 관리 시스템의 증거이지 개별 결과에 대한 보증이 아닙니다.

## 흔한 실패 유형

- **개인 인증과 조직 인증을 혼동하는 것.** 팀이 회사에 대해 "ITIL 인증"을 주장합니다. 대신 정확히 무엇이 누구에 의해 인증되었는지 밝히십시오.
- **표지로서 인증을 쫓는 것.** 시스템이 개선이 아니라 감사를 위해 존재합니다. 대신 먼저 기록이 팀에 쓸모 있게 만드십시오.
- **프레임워크마다 문서를 중복하는 것.** 표준마다 자체 바인더가 생깁니다. 대신 실천을 한 번 기술하고 대응시키십시오.
- **어려운 부분을 피하려고 범위를 좁히는 것.** 인증서가 고객이 신경 쓰는 서비스를 제외합니다. 대신 실제 서비스를 반영하는 범위를 고르십시오.
- **요약에 의존하는 것.** 적합성 주장이 블로그 글에 기반합니다. 대신 표준이나 프레임워크 소유자의 본문에서 작업하십시오.
- **애자일 지침을 무시하는 것.** 팀이 애자일과 DevOps를 다루는 표준의 부분을 읽지 않고 감사인과 논쟁합니다. 대신 읽고 예시를 준비하십시오.
- **과잉 문서화.** 시스템이 아무도 읽지 않는 기록으로 불어납니다. 대신 각 기록을 목적에 묶고 증거를 자동화하십시오.
- **변화를 잊는 것.** 표준이 앞서 가는데 팀이 알아차리지 못합니다. 대신 업데이트를 따라갈 사람을 지명하십시오.

## 성숙도 모델

| 차원 | 시작 | 발전 | 표준화 | 관리 | 최적화 |
|---|---|---|---|---|---|
| 프레임워크에 대한 이해 | 이름이 느슨하게 쓰인다 | 일부 직원이 각 프레임워크가 무엇을 위한 것인지 말할 수 있다 | 팀이 쓰는 프레임워크에 대한 짧고 정확한 설명을 공유한다 | 프레임워크의 사용이 요구사항과 결과에 비추어 검토된다 | 팀, 고객, 공급자가 정확한 이해를 공유한다 |
| 요구사항과 범위 | 요구사항이 가정된다 | 일부 요구사항이 문서로 추적된다 | 요구사항과 범위가 문서화되어 있다 | 준수와 범위가 검토되고 간극이 추적된다 | 요구사항이 파트너 및 고객과 정렬된다 |
| 증거 | 요청마다 수작업으로 증거를 모은다 | 일부 기록이 도구에서 나온다 | 증거가 대부분 도구에서 나오고 일관되게 기술된다 | 증거의 질이 측정되고 개선된다 | 증거가 감사인 및 파트너와 자동으로 공유된다 |
| 최신성 | 프레임워크의 변화가 알려지지 않는다 | 일부 사람이 발표를 따라간다 | 이름이 있는 사람이 정해진 간격으로 변화를 보고한다 | 변화가 평가되고 대응된다 | 변화가 예상되고 파트너와 함께 다뤄진다 |

## 체크리스트

- [ ] 고객, 계약, 규제 기관이 실제로 요구하는 프레임워크와 표준을 말할 수 있다.
- [ ] 어느 것이 지침이고, 인증 가능한 표준이고, 거버넌스 모델인지 안다.
- [ ] 인증에 대한 우리의 주장이 정확하며 범위를 명시한다.
- [ ] 준수 주장을 위해 표준이나 소유자의 본문에서 작업한다.
- [ ] 실천이 한 번 기술되어 충족해야 하는 각 프레임워크에 대응되어 있다.
- [ ] 감사 증거가 대부분 우리 도구에서 나온다.
- [ ] 우리에게 적용되는 표준의 애자일 및 DevOps 지침을 읽었다.
- [ ] 업데이트를 따라가고 보고할 사람이 지명되어 있다.
- [ ] 조정 결정이 적혀 있다.
- [ ] 범위가 실제 서비스와 맞는지 검토했다.

## AI 프롬프트

**목적: 고객의 요구사항을 이를 뒷받침하는 프레임워크 본문에 대응시킨다.**

```text
A customer or auditor has made this requirement: [paste the exact wording and where it appeared, for example a tender clause].

Here is the text of the relevant standard or framework, which I have copied from the owner's publication: [paste only text you are entitled to use; keep it short].

Using only the pasted text, say what the requirement appears to ask for, what is unclear, and what questions I should put to the customer. Do not describe the contents of any standard that I have not pasted. Do not say whether we comply. Ask clarifying questions first, and list what you are unsure of.
```

**목적: 실천을 한 번 기술하여 여러 프레임워크에 대응시킬 수 있게 한다.**

```text
Help me write a single plain-language description of how we handle [practice, e.g. "changes to production"].

How it works today, in steps, with the tools and records involved: [paste].
Frameworks we need to map it to: [list names; I will paste the relevant requirement text for each].

Produce a description in short numbered steps, then a table with one row per step and one column per framework showing which pasted requirement the step seems to address (only from my pasted text). Mark gaps as questions, not conclusions. Do not claim conformance. Ask clarifying questions first, and list what you are unsure of.
```

**목적: "ITIL 인증을 받았습니까?"에 정직하게 답할 준비를 한다.**

```text
Write a short, honest reply to a customer who asks whether our company is "ITIL certified."

Facts I have verified from official sources: [paste, for example that certification in ITIL applies to individuals; and list the certifications our staff hold].
What we actually do: [describe our practice in a few sentences].
Other certifications we hold or are considering: [list].

The reply should be polite, accurate, under 150 words, and avoid overclaiming. Offer evidence we could share. Use only the facts I gave. Ask clarifying questions first if anything is missing, and list what you are unsure of.
```

**목적: 서비스 관리 감사가 요청할 증거를 계획한다.**

```text
We expect an audit of our service management against [standard name and edition].

The records we produce today, and the tool each comes from: [list].
The requirement areas I know of, with the wording I have from the standard: [paste, or write "not yet read"].

Create a table of likely evidence by requirement area (from my pasted text only), the record we already have, the gap, and whether the record could come from a tool automatically. Do not invent requirements. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## AI 스킬

- [enterprise-architecture](../../../../skills/enterprise-architecture/SKILL.md): 서비스 관리 프레임워크를 전사 아키텍처와 거버넌스라는 더 넓은 그림 안에 놓을 때 사용합니다.
- [legal-compliance-audit](../../../../skills/legal-compliance-audit/SKILL.md): 표준이나 계약 요구사항에 대한 감사 준비 방법을 계획할 때 사용합니다.
- [compliance-testing](../../../../skills/compliance-testing/SKILL.md): 적합성의 증거를 자동으로 만들어 내는 점검을 설계할 때 사용합니다.
- [vendor-management](../../../../skills/vendor-management/SKILL.md): 인증 범위가 공급자에 의존하고 공급자 검토를 계획해야 할 때 사용합니다.
- [project-management-body-of-knowledge](../../../../skills/project-management-body-of-knowledge/SKILL.md): COBIT이나 PMBOK Guide 같은 프레임워크가 프로젝트 사무국과 만날 때 사용합니다.

## 주요 출처

- **ISO/IEC 20000-1** (국제표준화기구): 표준 자체입니다. 주장하기 전에 ISO 카탈로그에서 범위와 조항 제목을 읽으십시오.
- **ISO/IEC 20000** (Wikipedia): 인용을 갖춘 표준의 역사, 부, 인증 환경입니다.
- **COBIT** (ISACA 및 Wikipedia): ISACA 자신의 발행물이 권위가 있습니다. 위키백과 문서는 역사와 구조를 주지만 출처가 약합니다.
- **FitSM** (Wikipedia와 FitSM 프로젝트): 짧고 자유롭게 라이선스된 대안입니다. 현재 버전은 프로젝트 페이지를 확인하십시오.

## 참고 문헌

1. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
2. ISO/IEC 20000 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_20000
3. COBIT — Wikipedia — https://en.wikipedia.org/wiki/COBIT
4. FitSM — Wikipedia — https://en.wikipedia.org/wiki/FitSM
5. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
6. CMMI — Wikipedia — https://en.wikipedia.org/wiki/CMMI
7. TOGAF — Wikipedia — https://en.wikipedia.org/wiki/TOGAF
8. ISACA — Wikipedia — https://en.wikipedia.org/wiki/ISACA
9. ISO/IEC 27001 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_27001
10. Microsoft Operations Framework — Wikipedia — https://en.wikipedia.org/wiki/Microsoft_Operations_Framework
