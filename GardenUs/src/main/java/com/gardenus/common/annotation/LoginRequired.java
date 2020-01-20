package com.gardenus.common.annotation;


import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * 스테레오 타입. @TODO
 * 
 * <p>일반사용자웹, 모바일사용자에서 사용</p>
 * 
 * @author	osm077
 * @since	2020-01-06
 */
@Target({ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
public @interface LoginRequired {

}
