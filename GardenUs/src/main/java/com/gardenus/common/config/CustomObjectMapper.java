package com.gardenus.common.config;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.ser.DefaultSerializerProvider;

public class CustomObjectMapper extends ObjectMapper {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public CustomObjectMapper() {
		
		
		
        DefaultSerializerProvider.Impl sp = new DefaultSerializerProvider.Impl();
        sp.setNullValueSerializer(new NullSerializer());
        
//        ObjectMapper m = new ObjectMapper();
//    	m.setSerializationInclusion(Include.NON_EMPTY);
//    	m.setSerializerProvider(sp);
        
        this.setSerializerProvider(sp);
        
//    	StdSerializerProvider sp = new StdSerializerProvider();
//    	sp.setNullValueSerializer(new NullSerializer());
    	
    }
}
