package com.modal;
import java.util.Set;
import com.modal.Location;

public class Category {

	private int cateID;
	private String categoryName;
	private Set<Location>locations;
	private Set<Publisher>publishers;
	
	public int getCateID() {
		return cateID;
	}
	public void setCateID(int cateID) {
		this.cateID = cateID;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public Set<Publisher> getPublishers() {
		return publishers;
	}
	public void setPublishers(Set<Publisher> publishers) {
		this.publishers = publishers;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public Set<Location> getLocations() {
		return locations;
	}
	public void setLocations(Set<Location> locations) {
		this.locations = locations;
	}
	
}
