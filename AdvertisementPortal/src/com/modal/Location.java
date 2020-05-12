package com.modal;

import com.modal.Category;

public class Location {
	  private int LocationId;
	  private String LocationName;
	  private Category category;
	  
	public int getLocationId() {
		return LocationId;
	}
	public void setLocationId(int LocationId) {
		this.LocationId = LocationId;
	}
	public String getLocationName() {
		return LocationName;
	}
	public void setLocationName(String LocationName) {
		this.LocationName = LocationName;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}

}
