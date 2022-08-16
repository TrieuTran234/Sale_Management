package com.controller;

import javax.servlet.http.HttpServletRequest;

public class Utility {
	public static String getsiteURL(HttpServletRequest request) {
		String siteURL=request.getRequestURL().toString();
		return siteURL.replace(request.getServletPath(), "");
		
	}
}
