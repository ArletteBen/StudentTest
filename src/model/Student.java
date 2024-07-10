package model;

import javax.persistence.Entity;
import javax.persistence.Id;
@Entity
public class Student {
@Id
private int id;
private String names;
private String phoneNo;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getNames() {
	return names;
}
public void setNames(String names) {
	this.names = names;
}
public String getPhoneNo() {
	return phoneNo;
}
public void setPhoneNo(String phoneNo) {
	this.phoneNo = phoneNo;
}
@Override
public String toString() {
	return "Student [id=" + id + ", names=" + names + ", phoneNo=" + phoneNo + "]";
}

}
