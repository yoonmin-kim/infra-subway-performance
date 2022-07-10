## 2단계 - 스케일 아웃 (with ASG)
### 미션 요구사항
- [x] 미션1: 모든 정적 자원에 대해 no-cache, private 설정을 하고 테스트 코드를 통해 검증합니다.
- [x] 미션2: 확장자는 css 인 경우는 max-age 를 1년, js인 경우는 no-cache, private 설정을 합니다.
- [x] 미션3: 모든 정적 자원에 대해 no-cache, no-store 설정을 한다. 가능한가요?
    - no-cache: 캐시가 유효한지 확인하기 위해 매번 서버에 요청한다.
    - no-store: 어떤 요청도 캐시로 저장하지 않는다.  
    no-store 만으로 캐시가 무효화되어야 하지만 모호한 부분이 존재한다고 하네요.  
    (참고 : https://www.inflearn.com/questions/112647)  
    완벽한 캐싱 방지를 위해서는 헤더 설정을 Cache-Control: no-cache, no-store, must-revalidate 해야 합니다.
     
### 요구사항
- [x] springboot 에 HTTP Cache, gzip 설정하기
- [x] Launch Template 작성하기
- [x] Auto Scaling Group 생성하기
- [ ] Smoke, Load, Stress 테스트 후 결과를 기록