# GardenUs
가드너스 프로젝트입니다.

# Interceptor 
 controller에서 uriMapping시, interceptor tiles를 연결할 예정:
 target : Mobile (반응형) , Web(반응형)으로 처리하여
 # Common Interceptor 
     공통으로 interceptor 처리 해야할 부분에서 사용
 # GuMoInterceptor , GuInterceptor 
 interceptor에서 Mobile, web의 로긴등 세션을 관리한다.

# Server.java
 웹실행시 필요한 전역변수들을 관리한다.
 javascript등, 페이지에 필요한 script loader등, 
 페이지 새로고침 시, 스크립트에 cash값을 붙혀 바로 적용 될 수 있게 등등.. 붙힐 예정


# robot.txt 
크롤링 방지용 참고(https://support.google.com/webmasters/answer/6062596?hl=ko)