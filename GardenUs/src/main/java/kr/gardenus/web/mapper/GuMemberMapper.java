package kr.gardenus.web.mapper;

import org.springframework.stereotype.Repository;
import org.springframework.ui.ModelMap;

/**
 * 가드너스 회원 관련 mapper
 * 
 * 관련 테이블 : gd_member
 * @author osm077
 * @since 2020-01-20
 * */
@Repository
public interface GuMemberMapper {
	
	int getMember(ModelMap map);
}
