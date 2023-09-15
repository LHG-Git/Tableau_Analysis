<div align="center">
  <h1>📝 Tableau 활용 개인 프로젝트<br><br>
   😡 소비자 불만 분석</h1>
</div>

<h4> 🛠  Tool : Tableau <br><br>
     📅 진행기간 : 2023.07.31 ~ 2023.08.07</h4>
     
### 👨‍👦‍👦 팀원소개
<table>
<tbody>
  <tr>
    <td align="left"><img src="" width="20px;" alt=""/><br /><b>팀원 : 이희구</b></a><br /></td>
   <tr/>
</tbody>
</table>
<br>

# 💡 분석 기획
* 금융 소비자 불만 데이터 활용<br>

* 금융 소비자 불만 데이터를 기반으로 Tableau를 사용하여 시각화 진행<br>

* <strong>접수된 총 불만 사항 건수 / 불만 사항에 대한 적기 대응 비율 / 처리중인 불만 사항 수 / 불쟁 비율 / 비용 해결이 아닌 비율 / 이슈에 의한 불만 / 미디어에 대한 불만 / 제품에 의한 불만 / 소비자 불만 전체 비율</strong> 등을 분석<br>

* 금융 소비자 불만 데이터를 Tableau로 나타낸 시각화를 기반으로 데이터 분석하여 새로운 인사이트 도출<br><br>

<br>

# 🔥 목표
* 금융 소비자 불만 데이터를 분석하여 어떤 종류의 제품이나 서비스에서 가장 많은 불만이 제기되고 있는지 파악

* 불만 데이터를 통해 불만 사례들 사이에 공통적으로 나타나는 요인이나 패턴을 찾아냄

* 이를 통해, 특정 제품 또는 서비스에 대한 고객의 특정 요구사항이나 선호사항을 파악할 수 있으며, 이를 기반으로 제품 개선이나 마케팅 전략을 세우는 데 도움이 됨

<br><br>


# 🔎 데이터 수집
|데이터셋|출처|
|------|:------:|
|금융 소비자 불만 데이터|Kaggle|

<br><br>

# 🔎 컬럼명
|컬럼|컬럼명|
|------|:------|
|Company|회사|
|Company public response|회사의 공공적인 응답|
|Company response to consumer|회사의 소비자에 대한 응답|
|Complaint ID|불만 소비자 아이디|
|Consumer consent provided|소비자 동의 제공|
|Consumer disputed|소비자 분쟁|
|Date Received|받은 날짜|
|Date Sumbited|제출된 날짜|
|Issue|이슈|
|Product|제품|
|Sub-issue|서브 이슈|
|Sub-product|서브 제품|
|Submitted via|다음을 통해 제출|
|Tags|항목|
|Timely response|적기 대응|
|ZIP code|우편번호|

<br><br>

# 🔎 파생 변수 생성
|파생 변수|생성 이유|
|------|:------|
|% Customer Disputed|소비자 분쟁인것을 비율로 표현하기 위한 컬럼 생성|
|% Customer Undisputed|소비자 분쟁이 아닌것을 비율로 표현하기 위한 컬럼 생성|
|Calculation1|해당 데이터셋의 총 행의 개수를 구하기 위한 컬럼 생성|
|Count of monetary relief|금전적 보상 건수를 분석하기 위한 컬럼 생성|
|Count of non-monetary relief (copy)|금전적인 보상이 아닌 다른 형태의 보상을 분석하기 위한 컬럼 생성|
|In Progress|기업이 아직 처리 중인 불만 건의 개수를 분석하기 위한 컬럼 생성|
|In Progress %|기업이 아직 처리 중인 불만 건의 개수를 비율로 분석하기 위한 컬럼 생성|
|Max Complaint by Category|카테고리별 최대 불만 건수를 분석하기 위한 컬럼 생성|
|Non-timely Response|제때 응답하지 못한 상태의 건수를 분석하기 위한 컬럼 생성|
|SUM(0)|합계 0 컬럼 생성|
|Timely Response %|시간적으로 적절한 응답을 받은 불만 건의 비율을 분석하기 위한 컬럼 생성|
|Total Complaints|총 컴플레인 수를 분석하기 위한 컬럼 생성|


<br><br>

# 📊 데이터 분석 및 인사이트
## 1) 접수된 총 불만 사항 건수
<img src= "https://github.com/LHG-Git/Tableau_Analysis/assets/100845169/35988792-0028-45e7-9c73-030847797261">


<br><br>

* 접수된 총 불만 사항 건수가 75,513회인 것을 확인

<br><br>

## 2) 불만 사항에 대한 적기 대응 비율
<img src= "https://github.com/LHG-Git/Tableau_Analysis/assets/100845169/a1a829a9-b024-4d8c-a99e-8b5335ee7360">


<br><br>

* 불만 사항에 대한 적기 대응 비율은 99.68%를 나타내는 것으로 확인


<br><br>

## 3) 불만 사항 처리 건수 및 비율
<img src= "https://github.com/LHG-Git/Tableau_Analysis/assets/100845169/aa9f3fda-6f7f-4ed5-a861-84ad1d7857f5">

* 현재 처리 진행 중인 불만 사항 건수는 283건

* 불만 사항 건수를 비율로 환산하여 전체 대비 0.37%의 비율을 나타낸다는 것을 확인

<br><br>

## 4) 금융 소비자 분쟁 비율
<img src= "https://github.com/LHG-Git/Tableau_Analysis/assets/100845169/2e2e676b-dfd6-4ead-9f94-5b8bc4b1fb22">


<br><br>

* 금융 소비자의 분쟁 비율이 약 9.75%를 나타내는 것을 확인

<br><br>

## 5) 비용으로 인한 해결이 아닌 비율 
<img src= "https://github.com/LHG-Git/Tableau_Analysis/assets/100845169/857798b9-9302-4974-ab47-4a3e1ff53ebe">


<br><br>

* 비용을 들이지 않고 소비자 불만 사항을 해결한 비율이 약 84.52%을 차지하는 것을 확인

<br><br>

## 6) 문제에 의한 불만 사항 
<img src= "https://github.com/LHG-Git/Tableau_Analysis/assets/100845169/118e4509-2091-4f90-9077-b2304f30a30a">

* 계정 관리에 의한 불만 사항이 8,849건으로 가장 많은 것을 확인할 수 있음

* 그 뒤로 입금과 인출에 의한 불만 사항이 6,127건으로 두 번째로 많은 불만 사항을 나타냄

* 결제 과정 중 문제, 주택 담보 대출 상환에 어려움, 구매 항목의 문제가 뒤를 잇따르고 있음

* <strong>금융 소비자 불만이 많이 일어나는 분야를 사전에 인지하여 해결 방안을 모색하는 과정이 필요</strong>

* <strong>눈에 띄게 높은 불만 사항을 나타내는 계정 관리 문제를 해결하기 위해 새로운 관리 방법을 도입 하는 등과 같은 노력 필요</strong>


<br><br>

## 7) 제품에 의한 불만 사항
<img src= "https://github.com/LHG-Git/Tableau_Analysis/assets/100845169/7582e765-b6f0-4af3-b221-95358f0cb5c2">

* 신용카드에 의한 불만 사항이 19,176건으로 가장 많음

* 그 뒤로 당좌 계좌 / 저축 계좌, 주택 담보 대출, 신용카드 / 선불 카드 제품에 대한 불만 사항이 뒤를 잇따르는 것을 확인

* <strong>사람들이 가장 많이 찾고 불만 사항이 많은 제품을 파악하여 그에 따른 대비책 마련 구축 필요</strong>

* <strong>신용카드에 대한 불만 사항이 많다는 것을 확인할 수 있으므로 먼저 신용카드에 대한 문제 해결에 초점을 맞추는 노력이 필요</strong>

<br><br>

## 8) 미디어에 의한 불만 사항
<img src= "https://github.com/LHG-Git/Tableau_Analysis/assets/100845169/b33b61d7-9c2e-483b-b75e-0bb01dc87a1c">

* 웹사이트나 추천, 핸드폰에 의한 불만 사항이 가장 많은 것을 확인

* 사람들이 평소 많이 쓰는 미디어인 만큼 그에 따른 불만 사항도 가장 많이 발생한다는 것을 확인

* <strong>접근성이 많은 미디어에 대한 서비스를 개선해 나가는 방향성이 필요</strong>

<br><br>

## 9) 분쟁 고객 비율
<img src= "https://github.com/LHG-Git/Tableau_Analysis/assets/100845169/02b55369-c03b-484b-8f09-e2571fe6931a">

* 분쟁 고객은 7,363건으로 9.75%의 비율을 차지

* 분쟁 해결 고객은 31,203건으로 41.32%의 비율을 차지

* 분쟁이 애초에 발생하지 않은 고객은 36,947건으로 48.93%의 가장 높은 비율을 차지

* <strong>분쟁이 발생하는 고객이 전체 대비 10% 정도의 비율을 차지</strong>

* <strong>눈에 띄게 많은 비율을 차지하고 있는것은 아니지만, 그에 따른 해결방안 구축 등을 통해 향후 분쟁 고객이 늘어나는 상황이 발생하지 않도록 하는 것이 중요하다고 판단됨</strong>

<br><br>

# 📈 최종 대시보드
<img src= https://github.com/LHG-Git/Tableau_Analysis/assets/100845169/01c93163-597a-46a0-a710-259a5e7d36de>

[태블로 바로가기] : https://public.tableau.com/app/profile/heegu.lee/viz/_16907084424620/1

