package com.cts.payroll.bean;

public class AuthenticationStatus {
	
	private boolean authenticated;

	public AuthenticationStatus() {
		
	}

	public boolean isAuthenticated() {
		return authenticated;
	}

	public void setAuthenticated(boolean authenticated) {
		this.authenticated = authenticated;
	}

	@Override
	public String toString() {
		return "AuthenticationStatus [authenticated]";
	}
	
}
