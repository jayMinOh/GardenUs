package com.gardenus.common.interceptor;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.gardenus.common.constant.Server;

/**
 * 파라미터 로깅 및 로그인 정보 저장.
 * 
 * <p>
 * Server.DEBUG 가 true 일 경우 request 에 담긴 파라미터값을 출력
 * </p>
 * 
 * @author osm077
 * @since 2020-01-06
 */
public class CommonInterceptor extends HandlerInterceptorAdapter {

	private static final Logger log = LoggerFactory.getLogger(CommonInterceptor.class);

	@Override
	public boolean preHandle(HttpServletRequest req, HttpServletResponse resp, Object handler) throws Exception {

		if (Server.NOCACHE) {
			// request 마다 랜덤한 숫자를 발급하여 "?1234567890" 형태로
			// request의 attribute로 추가하여 JSP(header.include)에서 사용하도록 한다.
			req.setAttribute(Server.CACHE_ID, "?" + System.currentTimeMillis());
		}
		return true;
	}

	@SuppressWarnings("unused")
	private void print(HttpServletRequest req) {
		log.info("requestURI : " + req.getRequestURI());
		log.info("==[+]==========================================================================================");
		log.info("requestURL  = {}", req.getRequestURL());
		log.info("remoteAddr  = {}", req.getRemoteAddr());

		for (Enumeration<String> parameterNames = req.getParameterNames(); parameterNames.hasMoreElements();) {
			String name = parameterNames.nextElement();
			String[] values = req.getParameterValues(name);

			if (values.length > 1) {
				for (int i = 0; i < values.length; i++) {
					log.info("{}[{}] = {}", name, i, values[i]);
				}
			} else {
				log.info("{} = {}", name, values[0]);
			}
		}

		log.info("===[-]=========================================================================================");
	}

	/**
	 * Controller 수행 후 View 를 호출하기 전에 호출된다.
	 * modelAndView 파라미터는 컨트롤러가 돌려준 정보로 컨트롤러 작업 결과를 참조하거나 조작할 수 있다
	 */
	@Override
	public void postHandle (HttpServletRequest req, HttpServletResponse res, Object handler, ModelAndView modelAndView) throws Exception
	{
	}

	/**
	 * View 에서 최종 결과를 생성하는 등의 모든 작업이 완료된 후 실행된다.
	 * 요청처리 중에 사용한 리소스를 반환해주기에 적당한 메소드다
	 */
	@Override
	public void afterCompletion (HttpServletRequest req, HttpServletResponse res, Object handler, Exception e) throws Exception
	{
	}
}
