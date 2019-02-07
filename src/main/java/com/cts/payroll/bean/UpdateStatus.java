package com.cts.payroll.bean;

public class UpdateStatus {
	
	private boolean updated;

	public UpdateStatus() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UpdateStatus(boolean updated) {
		super();
		this.updated = updated;
	}

	public boolean isUpdated() {
		return updated;
	}

	public void setUpdated(boolean updated) {
		this.updated = updated;
	}

	@Override
	public String toString() {
		return "UpdateStatus [updated=" + updated + "]";
	}
	
	

}
