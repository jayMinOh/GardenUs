package kr.gardenus.mo.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

/**
 * 모바일 용 인터셉터
 * 세션등을 체크할 용도.
 * 
 * @author osm077
 * @since 2020-01-06
 * */
public class GuMoInterceptor extends HandlerInterceptorAdapter {
	
	@Override
	public boolean preHandle (HttpServletRequest req, HttpServletResponse res, Object handler) throws Exception
	{
		String uri = req.getRequestURI();
		System.out.println(uri);
//		LoginVO login = LoginVO.of(LoginManager.getFC(req));  
//		ValidateTool.isTrue(login.isLogined(), new LoginRequiredException());
//		ValidateTool.isTrue(login.isFranchiseHqOrStaff() == true || login.isAdminGlobal() == true, new AuthenticationException());
		
		// 쿠키 갱신
//		LoginManager.setFC(res, login);
		// top.jsp에서 사용. menu 
//		req.setAttribute (Server.KEY_LOGIN, null);	
			
		return true;
	}
	
}
