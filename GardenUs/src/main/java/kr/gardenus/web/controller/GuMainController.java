package kr.gardenus.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.gardenus.web.service.GuMainService;

@Controller
@RequestMapping("/web/main")
public class GuMainController {
	
	private static final Logger logger = LoggerFactory.getLogger (GuMainController.class);
	
	@Autowired
	private GuMainService service;
	
	
	/**
	 * 로그인 페이지.
	 * 
	 * @param req	HttpServletRequest
	 * @param res	HttpServletResponse
	 * 
	 * @return ModelAndView
	 */
	@RequestMapping(value="/loginPage.do")
	public ModelAndView loginPage (HttpServletRequest req, HttpServletResponse res) throws Exception
	{
		service.getMember(req);
		logger.debug("호출");
		return null;
	}
}
