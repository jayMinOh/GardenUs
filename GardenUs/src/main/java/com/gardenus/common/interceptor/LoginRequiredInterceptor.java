package com.gardenus.common.interceptor;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.gardenus.common.annotation.LoginRequired;

/**
 * LoginRequired 가 적용된 컨트롤러의 메소드에 대해 로그인 여부 체크.
 * 
 * @author	osm077
 * @since	2020-01-06
 */
public class LoginRequiredInterceptor extends AnnotationHandlerInterceptorAdapter<LoginRequired> {
	@SuppressWarnings("unused")
	private static final Logger logger = LoggerFactory.getLogger (LoginRequiredInterceptor.class);
	
	public LoginRequiredInterceptor()
	{
		super (LoginRequired.class);
	}
}
