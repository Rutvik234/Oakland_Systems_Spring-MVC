package com.rutvik.os.config;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class AppInitilizer extends AbstractAnnotationConfigDispatcherServletInitializer {

	@Override
	protected Class<?>[] getRootConfigClasses() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		Class[] configFile = { AppConfig.class };
		return configFile;
	}

	@Override
	protected String[] getServletMappings() {
		String[] mapping = { "/" };
		return mapping;
	}
}
