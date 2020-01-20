package kr.gardenus.web.service;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;

import kr.gardenus.web.mapper.GuMemberMapper;

/**
 * web main Service (BizLogic)
 * 
 * @author 오승민
 * @since 2020-01-20
 **/

@Service
public class GuMainService {
	private static final Logger logger = LoggerFactory.getLogger(GuMainService.class);
	
	@Autowired
	private GuMemberMapper memberMapper;
	
	
	public ModelAndView getMember(HttpServletRequest req) throws Exception {
		ModelMap map = new ModelMap();
		
		
		int a = memberMapper.getMember(map);
		logger.debug(a + "");
		
		return null;
	}
}
