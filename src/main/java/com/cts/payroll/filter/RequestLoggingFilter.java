/*package com.cts.payroll.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class RequestLoggingFilter implements Filter {

	private ServletContext context;

	public void init(FilterConfig fConfig) throws ServletException {
		this.context = fConfig.getServletContext();
		this.context.log("RequestLoggingFilter initialized");
	}

	@SuppressWarnings("unused")
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
	
		System.out.println("Inside Filter..");
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse res = (HttpServletResponse) response;

		String uri = req.getRequestURI();
		System.out.println("URI: " + uri);
		HttpSession session = req.getSession(false);
		
		System.out.println("Session: "+session);
		if (session != null) {
			System.out.println("User Session: "+session.getAttribute("user") == null);
		}
		System.out.println(!(uri.endsWith("/home") || uri.endsWith("/authenticate")));
		
		if ((uri.endsWith("/home") || uri.endsWith("/authenticate"))) {
			chain.doFilter(request, response);
			return;
		}
		
		if (session == null) {
			System.out.println("Inside condition 1");
			res.sendRedirect("/payroll/app/home");
			return;
		} else if (session.getAttribute("user") == null) {
			System.out.println("Inside condition 2");
			res.sendRedirect("/payroll/app/home");
			return;
		}
		
		System.out.println("before chaining");
		chain.doFilter(request, response);
		
	}

	public void destroy() {
		// we can close resources here
	}

}
*/