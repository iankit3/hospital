package com.pack4;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Bean implements Serializable {


	String patient_ID;
	String name;
	int age;
	String sex;
	String address;
	int weight;
	String phone_no;
	public String getPatient_ID() {
		return patient_ID;
	}
	public void setPatient_ID(String patient_ID) {
		this.patient_ID = patient_ID;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getWeight() {
		return weight;
	}
	public void setWeight(int weight) {
		this.weight = weight;
	}
	public String getPhone_no() {
		return phone_no;
	}
	public void setPhone_no(String phone_no) {
		this.phone_no = phone_no;
	}
	
	String doctor;
	String room_no;
	String date_of_admitted;
	long advance;
	String date_of_discharge;
	String date;
	String Case;
	String department;
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getDoctor() {
		return doctor;
	}
	public void setDoctor(String doctor) {
		this.doctor = doctor;
	}
	public String getRoom_no() {
		return room_no;
	}
	public void setRoom_no(String room_no) {
		this.room_no = room_no;
	}
	public String getDate_of_admitted() {
		return date_of_admitted;
	}
	public void setDate_of_admitted(String date_of_admitted) {
		this.date_of_admitted = date_of_admitted;
	}
	public long getAdvance() {
		return advance;
	}
	public void setAdvance(long advance) {
		this.advance = advance;
	}
	public String getDate_of_discharge() {
		return date_of_discharge;
	}
	public void setDate_of_discharge(String date_of_discharge) {
		this.date_of_discharge = date_of_discharge;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getCase() {
		return Case;
	}
	public void setCase(String case1) {
		Case = case1;
	}
	String ward;
	public String getWard() {
		return ward;
	}
	public void setWard(String ward) {
		this.ward = ward;
	}
	
	
}
