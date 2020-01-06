package com.gardenus.common.constant;
/**
 * 
 *  모바일, web 공통 적용 
 *  전역변수 정의 
 *	@author osm077
 *	@since 2020-01-06
 * 
 * */
public class Server {

	/**
	 * 생성자.
	 */
	public Server()
	{
		super();
	}
	
	/** 서버 위치 ("LOCAL", "DEV", "RELEASE" */
	public static String			LOCATION;
	
	/** 디버깅 여부 */
	public static boolean			DEBUG						= false;

	/** HttpServletRequest.getContextPath() */
	public static String			PATH_CONTEXT;

	/** Context Resl Path */
	public static String			PATH_CONTEXT_REAL;

	/** css, js 등의 파일에 대한  cache 사용 */
	public static boolean			NOCACHE						= false;

	/** CACHE ID */
	public static String			CACHE_ID					= "noCache";
	
	//#########################################################################
	// 쿠키
	//#########################################################################
	
	/** 쿠키:도메인 (일반사용자) */
	public static String			COOKIE_DOMAIN_WEB;
	
	/** 쿠키:도메인 (모바일사용자) */
	public static String			COOKIE_DOMAIN_MO;
	
	
	/** 일반사용자 쿠키이름 */
	public static String			COOKIE_NAME_WEB;
	
	/** 모바일 쿠키이름 */
	public static String			COOKIE_NAME_MO;
	/** 쿠키:경로 */
	public static final String		COOKIE_PATH					= "/";

	/** 쿠키:보안 */
	public static boolean			COOKIE_SECURE;

	/** 쿠키:암호화키 (일반사용자) */
	public static String			COOKIE_KEY_WEB;

	/** 쿠키:암호화키 (모바일사용자) */
	public static String			COOKIE_KEY_MO;
	//#########################################################################
	// 갯수 관련
	//#########################################################################

	/** 한 화면에 보여줄 게시물 수( default ) */
	public static final int			COUNT_ARTICLE				= 5;
	
	/** 한 화면에 보여줄 페이지 수( default ) */
	public static final int			COUNT_PAGING				= 5;
	
	public static final int			DEFAULT_PAGE_SIZE			= 10;

	public final static int NO_PAGING = -1;
	
	public final static int NoPaging() {
		return NO_PAGING;
	}

	/** 이미지 디렉토리 URL */
	public static String			IMAGE_URL						= "/images";

	
	//#########################################################################
	// 키 (일반적인 것만 정의하고 나머지는 하드코딩)
	//#########################################################################

	/** 로그인정보를 담을 key (request 시마다 세팅하므로 관리자,사용자 공통 사용) */
	public static final String		KEY_LOGIN			= "login";

	/** ResultVO 를 담을 key */
	public static final String		KEY_RESULT			= "result";
	
	/** 목록을 담을 key */
	public static final String		KEY_LIST			= "list";
	
	/** viewName */
	public static final String		KEY_VIEWNAME		="viewName";

	/** 자바스크립트명을 담을 key */
	public static final String		KEY_JS				= "js";
	
	/** 자바스크립트 파일 목록을 담을 key */
	public static final String 		KEY_JS_LIST = "jsList";

	//#########################################################################
	// tiles 사용 확장자
	//#########################################################################

	/** 사용자 레이아웃 */
	public static final	String		TILES_USER			= ".web";
	
	/** 모바일 레이아웃 */
	public static final	String		TILES_M				= ".mo";
	
	/** 로그인 유효 시각 (10분) */
	public static long expireTimes = 30 * 60 * 1000;
	
}
