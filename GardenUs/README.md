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

# CODE 작성 규칙

1. Gu*controller ( domain 의 앞을 따서, 만든다 )
	--> tiles로 구분하기 위해, mobile은 mo/ web의 경우 web/으로 모든 도메인에 들어간다.
	ex) GuMainController 
	
2. Gu*Service ( service bizlogic이 위치한다.)
	--> GuMainService
	==> 해당 파일안에는 mapper를 autowrired 하여, 여러 bizlogic 을 처리한 뒤 controller로 반납한다.
	
	ex)  
		GuMainService {
			@Autowired 
			private GuMainMapper mapper;
			
			@Autowired
			private GuTestMapper testMapper;
			
			public ModelAndView bizLogix(HttpServletRequest req )throws Exception {
			
				ModelAndView view = new ModelAndView("/main/bixLogixPage");
				
				List<T> list1 = mapper.getList1();
				List<T> list2 = testMapper.getList2();
				
				List<T> bizLogixList = new ArrayList<T>();
				
				/** bizLogic */
				for ( T a : list1 ) {
					for ( T b : list2) {
						if (a.property == b.property) {
							bizLogixList.add(a);
						}
					}
				}
				
				
				view.addObject("list", bizLogixList);
				return view; 
			}
		} 

3. Gu*Mapper ( mybatis로 연결되는 mapper)	 
		
  