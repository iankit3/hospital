package com.pack2;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.pack1.DBUtil;
import com.pack4.Bean;
import com.pack4.ReportBean;

public class UserDao {
ArrayList<String> als=new ArrayList<>();
ArrayList<Bean> als1=new ArrayList<>();
ArrayList<ReportBean> als2=new ArrayList<>();
public static int count2=100;
public static int count1=100;
public static int count3=0;
public boolean validateAdmin(String username,String password){
		
		boolean flag=false;
		
		Connection conn=DBUtil.getConnect();
		
		try {
			PreparedStatement ps=conn.prepareStatement("select * from Admin where username=? and password=?");
			
			ps.setString(1, username);
			ps.setString(2, password);
			
			java.sql.ResultSet rs=ps.executeQuery();
			
			if(rs.next())
				flag=true;
			
		    } catch (SQLException e) {
			e.printStackTrace();
		    }
		return flag;
        }


public boolean insertPatientDetail( String name,int age,String sex,String address,int weight,String phone_no ){
	boolean flag=false;
	
	Connection conn=DBUtil.getConnect();
	count1++;
	try {
		PreparedStatement ps=conn.prepareStatement("insert into patient values(?,?,?,?,?,?,?)");
		ps.setString(1,"pat"+count1);
		ps.setString(2,name);
		ps.setInt(3,age);
		ps.setString(4,sex);
		ps.setString(5, address);
		ps.setInt(6,weight);
		ps.setString(7, phone_no);
		int i=ps.executeUpdate();
		if(i>0)
			flag=true;
	}catch (SQLException e) {
		// TODO Auto-generated catch block  
		e.printStackTrace();
	}
	return flag;
}
public boolean deletePatient(String patient_id) {
	boolean flag=false;
	Connection conn=DBUtil.getConnect();
	try
	{
	PreparedStatement ps=conn.prepareStatement("delete from patient where patient_id=?");
	ps.setString(1,patient_id);
	int i=ps.executeUpdate();
	if(i>0){
		flag=true;
	}
	}
	catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		}
	return flag;
}
public ArrayList<String> getPatientId() {
	Connection conn=DBUtil.getConnect();
	try
	{
		PreparedStatement ps=conn.prepareStatement("select patient_id from  patient");
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			String patient_id=rs.getString(1);
			als.add(patient_id);
		}
	}
	catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return als;
}
public ArrayList<Bean> getAllInPatientDetail() {
	Connection conn=DBUtil.getConnect();
	try
	{
	PreparedStatement ps=conn.prepareStatement("select * from  patient natural join inpatient");
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{
		String patient_id=rs.getString(1);
		String name=rs.getString(2);
		int age=rs.getInt(3);
		String sex=rs.getString(4);
		String address=rs.getString(5);
		int weight=rs.getInt(6);
		String phone_no=rs.getString(7);
		String department=rs.getString(8);
		String room_no=rs.getString(9);
		String date_of_admitted=rs.getString(10);
		long advance=rs.getLong(11);
		String date_of_discharge=rs.getString(12);
		String doctor=rs.getString(13);
		String ward=rs.getString(14);
		Bean bn=new Bean();
		bn.setPatient_ID(patient_id);
		bn.setName(name);
		bn.setAge(age);
		bn.setSex(sex);
		bn.setAddress(address);
		bn.setWeight(weight);
		bn.setPhone_no(phone_no);
		bn.setDepartment(department);
		bn.setRoom_no(room_no);
		bn.setDate_of_admitted(date_of_admitted);
		bn.setAdvance(advance);
		bn.setDate_of_discharge(date_of_discharge);
		bn.setDoctor(doctor);
		bn.setWard(ward);
		als1.add(bn);
	}
	}
	catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return als1;
	}
public ArrayList<Bean> getAllOutPatientDetail() {
	Connection conn=DBUtil.getConnect();
	try
	{
	PreparedStatement ps=conn.prepareStatement("select * from  patient natural join outpatient");
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{
		String patient_Id=rs.getString(1);
		String name=rs.getString(2);
		int age=rs.getInt(3);
		String sex=rs.getString(4);
		String address=rs.getString(5);
		int weight=rs.getInt(6);
		String phone_no=rs.getString(7);
		String Case=rs.getString(8);
		String date=rs.getString(9);
		String department=rs.getString(10);
		String doctor=rs.getString(11);
		Bean bn=new Bean();
		bn.setPatient_ID(patient_Id);
		bn.setName(name);
		bn.setAge(age);
		bn.setSex(sex);
		bn.setAddress(address);
		bn.setWeight(weight);
		bn.setPhone_no(phone_no);
		bn.setCase(Case);
		bn.setDate(date);
		bn.setDepartment(department);
		bn.setDoctor(doctor);
		als1.add(bn);
	}
	}
	catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
return als1;
}
public ArrayList<Bean> getAllOutPatientDetail(String patient_id) {
	Connection conn=DBUtil.getConnect();
	try
	{
	PreparedStatement ps=conn.prepareStatement("select * from  patient natural join outpatient where patient_id=?");
	ps.setString(1, patient_id);
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{
		String patient_Id=rs.getString(1);
		String name=rs.getString(2);
		int age=rs.getInt(3);
		String sex=rs.getString(4);
		String address=rs.getString(5);
		int weight=rs.getInt(6);
		String phone_no=rs.getString(7);
		String Case=rs.getString(8);
		String date=rs.getString(9);
		String department=rs.getString(10);
		String doctor=rs.getString(11);
		Bean bn=new Bean();
		bn.setPatient_ID(patient_Id);
		bn.setName(name);
		bn.setAge(age);
		bn.setSex(sex);
		bn.setAddress(address);
		bn.setWeight(weight);
		bn.setPhone_no(phone_no);
		bn.setCase(Case);
		bn.setDate(date);
		bn.setDepartment(department);
		bn.setDoctor(doctor);
		als1.add(bn);
	}
	}
	catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
return als1;
}
public ArrayList<Bean> getAllInPatientDetail(String patient_id) {
	Connection conn=DBUtil.getConnect();
	try
	{
	PreparedStatement ps=conn.prepareStatement("select * from  patient natural join inpatient where patient_id=?");
	ps.setString(1, patient_id);
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{
		String patient_Id=rs.getString(1);
		String name=rs.getString(2);
		int age=rs.getInt(3);
		String sex=rs.getString(4);
		String address=rs.getString(5);
		int weight=rs.getInt(6);
		String phone_no=rs.getString(7);
		String department=rs.getString(8);
		String room_no=rs.getString(9);
		String date_of_admitted=rs.getString(10);
		long advance=rs.getLong(11);
		String date_of_discharge=rs.getString(12);
		String doctor=rs.getString(13);
		String ward=rs.getString(14);
		Bean bn=new Bean();
		bn.setPatient_ID(patient_Id);
		bn.setName(name);
		bn.setAge(age);
		bn.setSex(sex);
		bn.setAddress(address);
		bn.setWeight(weight);
		bn.setPhone_no(phone_no);
		bn.setDepartment(department);
		bn.setRoom_no(room_no);
		bn.setDate_of_admitted(date_of_admitted);
		bn.setAdvance(advance);
		bn.setDate_of_discharge(date_of_discharge);
		bn.setDoctor(doctor);
		bn.setWard(ward);
		als1.add(bn);
	}
	}
	catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
return als1;
}
public boolean insertOutPatient(String patient_ID, String Case,String date,String department,String doctor ){
	boolean flag=false;
	
	Connection conn=DBUtil.getConnect();
	try {
		PreparedStatement ps=conn.prepareStatement("insert into outpatient values(?,?,?,?,?)");
		ps.setString(1,patient_ID);
		ps.setString(2,Case);
		ps.setString(3, date);
		ps.setString(4, department);
		ps.setString(5, doctor);
		int i=ps.executeUpdate();
		if(i>0)
			flag=true;
	}catch (SQLException e) {
		// TODO Auto-generated catch block  
		e.printStackTrace();
	}
	return flag;
}
public boolean insertInPatient(String patient_Id, String department,String room_no,String date_of_admitted,long advance,String date_of_discharge,String doctor, String ward ){
	boolean flag=false;
	Connection conn=DBUtil.getConnect();
	try {
		PreparedStatement ps=conn.prepareStatement("insert into inpatient values(?,?,?,?,?,?,?,?)");
		ps.setString(1,patient_Id);
		ps.setString(2,department);
		ps.setString(3,room_no);
		ps.setString(4, date_of_admitted);
		ps.setLong(5,advance);
		ps.setString(6, date_of_discharge);
		ps.setString(7, doctor);
		ps.setString(8, ward);
		int i=ps.executeUpdate();
		if(i>0)
			flag=true;
	}catch (SQLException e) {
		// TODO Auto-generated catch block  
		e.printStackTrace();
	}
	return flag;
}
public ArrayList<String> getDoctor(String Department) {
	Connection conn=DBUtil.getConnect();
	try
	{
	PreparedStatement ps=conn.prepareStatement("select doctor from  doctor where department=?");
	ps.setString(1, Department);
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{
		String department=rs.getString(1);
		als.add(department);
	}
	}
	catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
return als;
}
public int outCount(String patient_id) {
	Connection conn=DBUtil.getConnect();
	int count=0;
	try
	{
	PreparedStatement ps=conn.prepareStatement("select count(patient_id) from  outpatient where patient_id=?");
	ps.setString(1, patient_id);
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{
		count=rs.getInt(1);
	}
	
	}
	catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
return count;
}
public int inCount(String patient_id) {
	Connection conn=DBUtil.getConnect();
	int count=0;
	try
	{
	PreparedStatement ps=conn.prepareStatement("select count(patient_id) from  inpatient where patient_id=?");
	ps.setString(1, patient_id);
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	count=rs.getInt(1);
	}
	catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
return count;
}
public boolean fetchType1(String pid){
	boolean flag=false;
	
	Connection conn=DBUtil.getConnect();
	
	try {
		PreparedStatement ps=conn.prepareStatement("select * from inpatient where patient_id=?");
		
		ps.setString(1, pid);
		
		java.sql.ResultSet rs=ps.executeQuery();
		
		if(rs.next())
			flag=true;
		
	    } catch (SQLException e) {
		e.printStackTrace();
	    }
	return flag;
}
public boolean fetchType2(String pid){
	boolean flag=false;
	
	Connection conn=DBUtil.getConnect();
	
	try {
		PreparedStatement ps=conn.prepareStatement("select * from outpatient where patient_id=?");
		
		ps.setString(1, pid);
		
		java.sql.ResultSet rs=ps.executeQuery();
		
		if(rs.next())
			flag=true;
		
	    } catch (SQLException e) {
		e.printStackTrace();
	    }
	return flag;
}


public String doctorCall1(String pid) {
	Connection conn=DBUtil.getConnect();
	String doc=null;
	try
	{
	PreparedStatement ps=conn.prepareStatement("select doctor from  inpatient where patient_id=?");
	ps.setString(1, pid);
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	doc=rs.getString(1);
	}
	catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return doc;
}


public String doctorCall2(String pid) {
	Connection conn=DBUtil.getConnect();
	String doc=null;
	try
	{
	PreparedStatement ps=conn.prepareStatement("select doctor from  outpatient where patient_id=?");
	ps.setString(1, pid);
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	doc=rs.getString(1);
	}
	catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return doc;
}


public int weight(String pid) {
	Connection conn=DBUtil.getConnect();
	int w=0;
	try
	{
	PreparedStatement ps=conn.prepareStatement("select weight from  patient where patient_id=?");
	ps.setString(1, pid);
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	w=rs.getInt(1);
	}
	catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
return w;
}


public boolean validateReception(String username, String password) {
	boolean flag=false;
	
	Connection conn=DBUtil.getConnect();
	
	try {
		PreparedStatement ps=conn.prepareStatement("select * from reception where email=? and password=?");
		
		ps.setString(1, username);
		ps.setString(2, password);
		
		java.sql.ResultSet rs=ps.executeQuery();
		
		if(rs.next())
			flag=true;
		
	    } catch (SQLException e) {
		e.printStackTrace();
	    }
	return flag;
}



public boolean insertDoc( String did,String doctor, String dept, String phno) {
boolean flag=false;
	
	Connection conn=DBUtil.getConnect();
	try {
		PreparedStatement ps=conn.prepareStatement("insert into doctor values(?,?,?,?)");
		ps.setString(1,dept);
		ps.setString(2,doctor);
		ps.setString(3,did);
		ps.setString(4,phno);
		int i=ps.executeUpdate();
		if(i>0)
			flag=true;
	}catch (SQLException e) {
		// TODO Auto-generated catch block  
		e.printStackTrace();
	}
	return flag;
}


public boolean searchRoom(String p4) {
	boolean flag=false;
	
	Connection conn=DBUtil.getConnect();
	
	try {
		PreparedStatement ps=conn.prepareStatement("select * from inpatient where room_no=?");
		
		ps.setString(1, p4);
		
		java.sql.ResultSet rs=ps.executeQuery();
		
		if(rs.next())
			flag=true;
		
	    } catch (SQLException e) {
		e.printStackTrace();
	    }
	return flag;
}


public ArrayList<String> getRoom() {
	Connection conn=DBUtil.getConnect();
	try
	{
		PreparedStatement ps=conn.prepareStatement("select room_no from  inpatient");
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			String room_no=rs.getString(1);
			als.add(room_no);
		}
	}
	catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return als;
}


public String fetchId(String room_no) {
	Connection conn=DBUtil.getConnect();
	String pid=null;
	try
	{
	PreparedStatement ps=conn.prepareStatement("select patient_id from  inpatient where room_no=?");
	ps.setString(1, room_no);
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	pid=rs.getString(1);
	}
	catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return pid;
}


public ArrayList<String> fetchDocId() {
	Connection conn=DBUtil.getConnect();
	try
	{
		PreparedStatement ps=conn.prepareStatement("select did from  doctor");
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			String did=rs.getString(1);
			als.add(did);
		}
	}
	catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return als;
}


public boolean deleteDoc(String did) {
	boolean flag=false;
	Connection conn=DBUtil.getConnect();
	try
	{
	PreparedStatement ps=conn.prepareStatement("delete from doctor where did=?");
	ps.setString(1,did);
	int i=ps.executeUpdate();
	if(i>0){
		flag=true;
	}
	}
	catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		}
	return flag;
}


public boolean insertRecep(String id, String email, String pass, String name,
		String phno, String sex) {
boolean flag=false;
	
	Connection conn=DBUtil.getConnect();
	try {
		PreparedStatement ps=conn.prepareStatement("insert into reception values(?,?,?,?,?,?)");
		ps.setString(1,email);
		ps.setString(2,pass);
		ps.setString(3,name);
		ps.setString(4,phno);
		ps.setString(5,sex);
		ps.setString(6,id);
		int i=ps.executeUpdate();
		if(i>0)
			flag=true;
	}catch (SQLException e) {
		// TODO Auto-generated catch block  
		e.printStackTrace();
	}
	return flag;
}


public boolean insertPatho(String id, String name, String phno, String email,
		String pass) {
boolean flag=false;
	
	Connection conn=DBUtil.getConnect();
	try {
		PreparedStatement ps=conn.prepareStatement("insert into pathologist values(?,?,?,?,?)");
		ps.setString(1,id);
		ps.setString(2,name);
		ps.setString(3,phno);
		ps.setString(4,email);
		ps.setString(5,pass);
		int i=ps.executeUpdate();
		if(i>0)
			flag=true;
	}catch (SQLException e) {
		// TODO Auto-generated catch block  
		e.printStackTrace();
	}
	return flag;
}


public ArrayList<String> getPathologistId() {
	Connection conn=DBUtil.getConnect();
	try
	{
		PreparedStatement ps=conn.prepareStatement("select id from  pathologist");
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			String id=rs.getString(1);
			als.add(id);
		}
	}
	catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return als;
}


public ArrayList<String> getReceptionistId() {
	Connection conn=DBUtil.getConnect();
	try
	{
		PreparedStatement ps=conn.prepareStatement("select id from  reception");
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			String id=rs.getString(1);
			als.add(id);
		}
	}
	catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return als;
}


public boolean deletePatho(String id) {
	boolean flag=false;
	Connection conn=DBUtil.getConnect();
	try
	{
	PreparedStatement ps=conn.prepareStatement("delete from pathologist where id=?");
	ps.setString(1,id);
	int i=ps.executeUpdate();
	if(i>0){
		flag=true;
	}
	}
	catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		}
	return flag;
}


public boolean deleteRecep(String id) {
	boolean flag=false;
	Connection conn=DBUtil.getConnect();
	try
	{
	PreparedStatement ps=conn.prepareStatement("delete from reception where id=?");
	ps.setString(1,id);
	int i=ps.executeUpdate();
	if(i>0){
		flag=true;
	}
	}
	catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		}
	return flag;
}


public boolean validatePathology(String username, String password) {
boolean flag=false;
	
	Connection conn=DBUtil.getConnect();
	
	try {
		PreparedStatement ps=conn.prepareStatement("select * from pathologist where email=? and password=?");
		
		ps.setString(1, username);
		ps.setString(2, password);
		
		java.sql.ResultSet rs=ps.executeQuery();
		
		if(rs.next())
			flag=true;
		
	    } catch (SQLException e) {
		e.printStackTrace();
	    }
	return flag;
}


public boolean insertCbc(String pid, float wbc, float rbc, float hbhgb, float hct,
		float mcv, float mch, float mchc, float rdw, float pc, float mpv, float neut,
		float lymph, float mono, float eos, float baso, float neutA, float lymphA,
		float monoA, float eosA, float basoA, float rc, String date) {
boolean flag=false;
	
	Connection conn=DBUtil.getConnect();
	try {
		PreparedStatement ps=conn.prepareStatement("insert into cbc values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1,pid);
		ps.setFloat(2,wbc);
		ps.setFloat(3,rbc);
		ps.setFloat(4,hbhgb);
		ps.setFloat(5,hct);
		ps.setFloat(6,mcv);
		ps.setFloat(7,mch);
		ps.setFloat(8,mchc);
		ps.setFloat(9,rdw);
		ps.setFloat(10,pc);
		ps.setFloat(11,mpv);
		ps.setFloat(12,neut);
		ps.setFloat(13,lymph);
		ps.setFloat(14,mono);
		ps.setFloat(15,eos);
		ps.setFloat(16,baso);
		ps.setFloat(17,neutA);
		ps.setFloat(18,lymphA);
		ps.setFloat(19,monoA);
		ps.setFloat(20,eosA);
		ps.setFloat(21,basoA);
		ps.setFloat(22,rc);
		ps.setString(23,date);
		int i=ps.executeUpdate();
		if(i>0)
			flag=true;
	}catch (SQLException e) {
		// TODO Auto-generated catch block  
		e.printStackTrace();
	}
	return flag;
}


public boolean insertCoagulation(String pid, float pt, float aptt, float fa,
		float qdd, float tt, float ttms, float rt, float fan, float faar,
		String date) {
boolean flag=false;
	
	Connection conn=DBUtil.getConnect();
	try {
		PreparedStatement ps=conn.prepareStatement("insert into coagulation values(?,?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1,pid);
		ps.setFloat(2,pt);
		ps.setFloat(3,aptt);
		ps.setFloat(4,fa);
		ps.setFloat(5,qdd);
		ps.setFloat(6,tt);
		ps.setFloat(7,ttms);
		ps.setFloat(8,rt);
		ps.setFloat(9,fan);
		ps.setFloat(10,faar);
		ps.setString(11,date);
		int i=ps.executeUpdate();
		if(i>0)
			flag=true;
	}catch (SQLException e) {
		// TODO Auto-generated catch block  
		e.printStackTrace();
	}
	return flag;
}


public boolean insertBlood(String pid, String bno, String bg, String hiv, String hbsag,
		String hcv, String vdrl,String bmp, float hb, String date) {
boolean flag=false;
	
	Connection conn=DBUtil.getConnect();
	try {
		PreparedStatement ps=conn.prepareStatement("insert into blood_test values(?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1,pid);
		ps.setString(2,bno);
		ps.setString(3,bg);
		ps.setString(4,hiv);
		ps.setString(5,hbsag);
		ps.setString(6,hcv);
		ps.setString(7,vdrl);
		ps.setString(8,bmp);
		ps.setFloat(9,hb);
		ps.setString(10,date);
		int i=ps.executeUpdate();
		if(i>0)
			flag=true;
	}catch (SQLException e) {
		// TODO Auto-generated catch block  
		e.printStackTrace();
	}
	return flag;
}


public boolean insertEmp(String emp, String type, long salary, String phno) {
boolean flag=false;	
count2++;
	Connection conn=DBUtil.getConnect();
	try {
		PreparedStatement ps=conn.prepareStatement("insert into employee values(?,?,?,?,?)");
		
		ps.setString(1,"emp"+count2);
		ps.setString(2,emp);
		ps.setString(3,type);
		ps.setLong(4,salary);
		ps.setString(5,phno);
		int i=ps.executeUpdate();
		if(i>0)
			flag=true;
	}catch (SQLException e) {
		// TODO Auto-generated catch block  
		e.printStackTrace();
	}
	
	return flag;
}


public String getPatient_id(String name, String phone_no) {
	Connection conn=DBUtil.getConnect();
	String pid=null;
	try
	{
	PreparedStatement ps=conn.prepareStatement("select patient_id from  patient where name=? and phone_no=?");
	ps.setString(1, name);
	ps.setString(2, phone_no);
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	pid=rs.getString(1);
	}
	catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return pid;
}


public ArrayList<String> getEmployeeId() {
	Connection conn=DBUtil.getConnect();
	try
	{
		PreparedStatement ps=conn.prepareStatement("select emp_id from  employee");
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			String emp_id=rs.getString(1);
			als.add(emp_id);
		}
	}
	catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return als;
}


public boolean deleteEmp(String id) {
	boolean flag=false;
	Connection conn=DBUtil.getConnect();
	try
	{
	PreparedStatement ps=conn.prepareStatement("delete from employee where emp_id=?");
	ps.setString(1,id);
	int i=ps.executeUpdate();
	if(i>0){
		flag=true;
	}
	}
	catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		}
	return flag;
}


public boolean insertNotice(String headline, String detail) {
boolean flag=false;
	
	Connection conn=DBUtil.getConnect();
	count3++;
	try {
		PreparedStatement ps=conn.prepareStatement("insert into notice values(?,?,?)");
		ps.setString(1,headline);
		ps.setString(2,detail);
		ps.setInt(3,count3);
		int i=ps.executeUpdate();
		if(i>0)
			flag=true;
	}catch (SQLException e) {
		// TODO Auto-generated catch block  
		e.printStackTrace();
	}
	return flag;
}
public ArrayList<String> getHead() {
	Connection conn=DBUtil.getConnect();
	try
	{
		int i=0;
		PreparedStatement ps=conn.prepareStatement("select headline from  notice order by id desc");
		ResultSet rs=ps.executeQuery();
		
		while(rs.next())
		{
			if(i<10)
			{
			String headline=rs.getString(1);
			als.add(headline);
			i++;
			}
		}
	}
	catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return als;
}


public String fetchDetail(String headline) {
	Connection conn=DBUtil.getConnect();
	String detail=null;
	try
	{
	PreparedStatement ps=conn.prepareStatement("select details from  notice where headline=?");
	ps.setString(1, headline);
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	detail=rs.getString(1);
	}
	catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return detail;
}


public boolean insertPatientDetail1(String patient_id, String e2, int age,
		String e4, String e5, int weight, String e7) {
boolean flag=false;
	
	Connection conn=DBUtil.getConnect();
	
	try {
		PreparedStatement ps=conn.prepareStatement("insert into patient values(?,?,?,?,?,?,?)");
		ps.setString(1,patient_id);
		ps.setString(2,e2);
		ps.setInt(3,age);
		ps.setString(4,e4);
		ps.setString(5, e5);
		ps.setInt(6,weight);
		ps.setString(7, e7);
		int i=ps.executeUpdate();
		if(i>0)
			flag=true;
	}catch (SQLException e) {
		// TODO Auto-generated catch block  
		e.printStackTrace();
	}
	return flag;
}


public boolean validatePatient(String pid, String phno) {
	boolean flag=false;
	
	Connection conn=DBUtil.getConnect();
	
	try {
		PreparedStatement ps=conn.prepareStatement("select * from patient where patient_id=? and phone_no=?");
		
		ps.setString(1, pid);
		ps.setString(2, phno);
		
		java.sql.ResultSet rs=ps.executeQuery();
		
		if(rs.next())
			flag=true;
		
	    } catch (SQLException e) {
		e.printStackTrace();
	    }
	return flag;
}


public boolean checkCbc(String pid) {
	boolean flag=false;
	
	Connection conn=DBUtil.getConnect();
	
	try {
		PreparedStatement ps=conn.prepareStatement("select * from cbc where patient_id=?");
		
		ps.setString(1, pid);
		
		java.sql.ResultSet rs=ps.executeQuery();
		
		if(rs.next())
			flag=true;
		
	    } catch (SQLException e) {
		e.printStackTrace();
	    }
	return flag;
}


public boolean checkCoagulation(String pid) {
boolean flag=false;
	
	Connection conn=DBUtil.getConnect();
	
	try {
		PreparedStatement ps=conn.prepareStatement("select * from coagulation where patient_id=?");
		
		ps.setString(1, pid);
		
		java.sql.ResultSet rs=ps.executeQuery();
		
		if(rs.next())
			flag=true;
		
	    } catch (SQLException e) {
		e.printStackTrace();
	    }
	return flag;
}


public boolean checkUrinalysis(String pid) {
boolean flag=false;
	
	Connection conn=DBUtil.getConnect();
	
	try {
		PreparedStatement ps=conn.prepareStatement("select * from urinalysis where patient_id=?");
		
		ps.setString(1, pid);
		
		java.sql.ResultSet rs=ps.executeQuery();
		
		if(rs.next())
			flag=true;
		
	    } catch (SQLException e) {
		e.printStackTrace();
	    }
	return flag;
}


public boolean checkBlood(String pid) {
boolean flag=false;
	
	Connection conn=DBUtil.getConnect();
	
	try {
		PreparedStatement ps=conn.prepareStatement("select * from blood_test where patient_id=?");
		
		ps.setString(1, pid);
		
		java.sql.ResultSet rs=ps.executeQuery();
		
		if(rs.next())
			flag=true;
		
	    } catch (SQLException e) {
		e.printStackTrace();
	    }
	return flag;
}


public ArrayList<ReportBean> getCbc(String pid) {
	Connection conn=DBUtil.getConnect();
	try
	{
	PreparedStatement ps=conn.prepareStatement("select * from  cbc where patient_id=?");
	ps.setString(1, pid);
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{
		String patient_Id=rs.getString(1);
		float wbc=rs.getFloat(2);
		float rbc=rs.getFloat(3); 
		float hbhgb=rs.getFloat(4);
		float hct=rs.getFloat(5);
		float mcv=rs.getFloat(6);
		float mch=rs.getFloat(7);
		float mchc=rs.getFloat(8);
		float rdw=rs.getFloat(9);
		float pc=rs.getFloat(10);
		float mpv=rs.getFloat(11);
		float neut=rs.getFloat(12);
		float lymph=rs.getFloat(13);
		float mono=rs.getFloat(14); 
		float eos=rs.getFloat(15);
		float baso=rs.getFloat(16);
		float neutA=rs.getFloat(17);
		float lymphA=rs.getFloat(18);
		float monoA=rs.getFloat(19);
		float eosA=rs.getFloat(20);
		float basoA=rs.getFloat(21);
		float rc=rs.getFloat(22);
		String date=rs.getString(23);

		ReportBean bn=new ReportBean();
		bn.setPid(patient_Id);
		bn.setWbc(wbc);
		bn.setRbc(rbc);
		bn.setHbhgb(hbhgb);
		bn.setHct(hct);
		bn.setMcv(mcv);
		bn.setMch(mch);
		bn.setMchc(mchc);
		bn.setRdw(rdw);
		bn.setPc(pc);
		bn.setMpv(mpv);
		bn.setNeut(neut);
		bn.setLymph(lymph);
		bn.setMono(mono);
		bn.setEos(eos);
		bn.setBaso(baso);
		bn.setNeutA(neutA);
		bn.setLymphA(lymphA);
		bn.setMonoA(monoA);
		bn.setEosA(eosA);
		bn.setBasoA(basoA);
		bn.setRc(rc);
		bn.setDate(date);
		als2.add(bn);
		
	}
	}
	catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
return als2;
}


public ArrayList<ReportBean> getCoagulation(String pid) {
	Connection conn=DBUtil.getConnect();
	try
	{
	PreparedStatement ps=conn.prepareStatement("select * from  coagulation where patient_id=?");
	ps.setString(1, pid);
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{
		String patient_Id=rs.getString(1);
		float pt=rs.getFloat(2);
		float aptt=rs.getFloat(3); 
		float fa=rs.getFloat(4);
		float qdd=rs.getFloat(5);
		float tt=rs.getFloat(6);
		float ttms=rs.getFloat(7);
		float rt=rs.getFloat(8);
		float fan=rs.getFloat(9);
		float faar=rs.getFloat(10);
		String date=rs.getString(11);

		ReportBean bn=new ReportBean();
		bn.setPid(patient_Id);
		bn.setPt(pt);
		bn.setAptt(aptt);
		bn.setFa(fa);
		bn.setQdd(qdd);
		bn.setTt(tt);
		bn.setTtms(ttms);
		bn.setRt(rt);
		bn.setFan(fan);
		bn.setFaar(faar);
		bn.setDate(date);
		als2.add(bn);	
	}
	}
	catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
return als2;
}


public ArrayList<ReportBean> getUrinalysis(String pid) {
	Connection conn=DBUtil.getConnect();
	try
	{
	PreparedStatement ps=conn.prepareStatement("select * from  urinalysis where patient_id=?");
	ps.setString(1, pid);
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{
		String patient_Id=rs.getString(1);
		String app=rs.getString(2);
		String glu=rs.getString(3);
		String bili=rs.getString(4);
		String ket=rs.getString(5);
		String bl=rs.getString(6);
		float sg=rs.getFloat(7);
		float ph=rs.getFloat(8);
		String pro=rs.getString(9);
		float uro=rs.getFloat(10);
		String nit=rs.getString(11);
		String le=rs.getString(12);
		String rb=rs.getString(13);
		String wb=rs.getString(14);
		String ec=rs.getString(15);
		String ba=rs.getString(16);
		String col=rs.getString(17);
		String date=rs.getString(18);

		ReportBean bn=new ReportBean();
		bn.setPid(patient_Id);
		bn.setApp(app);
		bn.setGlu(glu);
		bn.setBili(bili);
		bn.setKet(ket);
		bn.setBl(bl);
		bn.setSg(sg);
		bn.setPh(ph);
		bn.setPro(pro);
		bn.setUro(uro);
		bn.setNit(nit);
		bn.setLe(le);
		bn.setRb(rb);
		bn.setWb(wb);
		bn.setEc(ec);
		bn.setBa(ba);
		bn.setCol(col);
		bn.setDate(date);
		als2.add(bn);	
	}
	}
	catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
return als2;
}


public ArrayList<ReportBean> getBlood(String pid) {
	Connection conn=DBUtil.getConnect();
	try
	{
	PreparedStatement ps=conn.prepareStatement("select * from  blood_test where patient_id=?");
	ps.setString(1, pid);
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{
		String patient_Id=rs.getString(1);
		String bno=rs.getString(2);
		String bg=rs.getString(3);
		String hiv=rs.getString(4);
		String hbsag=rs.getString(5);
		String hcv=rs.getString(6);
		String vdrl=rs.getString(7);
		String bmp=rs.getString(8);
		float hb=rs.getFloat(9);
		String date=rs.getString(10);

		ReportBean bn=new ReportBean();
		bn.setPid(patient_Id);
		bn.setBno(bno);
		bn.setBg(bg);
		bn.setHiv(hiv);
		bn.setHbsag(hbsag);
		bn.setHcv(hcv);
		bn.setVdrl(vdrl);
		bn.setBmp(bmp);
		bn.setHb(hb);
		bn.setDate(date);
		als2.add(bn);	
	}
	}
	catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
return als2;
}


public boolean insertUrinalysis(String pid, String app, String glu,
		String bili, String ket, String bl, float sg, float ph, String pro,
		float uro, String nit, String le, String rbc, String wbc, String ec,
		String ba, String col, String date) {
boolean flag=false;
	
	Connection conn=DBUtil.getConnect();
	try {
		PreparedStatement ps=conn.prepareStatement("insert into urinalysis values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1,pid);
		ps.setString(2,app);
		ps.setString(3,glu);
		ps.setString(4,bili);
		ps.setString(5,ket);
		ps.setString(6,bl);
		ps.setFloat(7,sg);
		ps.setFloat(8,ph);
		ps.setString(9,pro);
		ps.setFloat(10,uro);
		ps.setString(11,nit);
		ps.setString(12,le);
		ps.setString(13,rbc);
		ps.setString(14,wbc);
		ps.setString(15,ec);
		ps.setString(16,ba);
		ps.setString(17,col);
		ps.setString(18,date);
		int i=ps.executeUpdate();
		if(i>0)
			flag=true;
	}catch (SQLException e) {
		// TODO Auto-generated catch block  
		e.printStackTrace();
	}
	return flag;
}


public int wardCost(String pid) {
	Connection conn=DBUtil.getConnect();
	int cost=0;
	try
	{
	PreparedStatement ps=conn.prepareStatement("select ward.cost from ward,inpatient where inpatient.patient_id=? and ward.ward=inpatient.ward");
	ps.setString(1, pid);
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{
		cost=rs.getInt(1);
	}
	
	}
	catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
return cost;
}


public int departmentCost(String pid) {
	Connection conn=DBUtil.getConnect();
	int cost=0;
	try
	{
	PreparedStatement ps=conn.prepareStatement("select department.cost from department,inpatient where inpatient.patient_id=? and department.department=inpatient.department");
	ps.setString(1, pid);
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{
		cost=rs.getInt(1);
	}
	
	}
	catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return cost;
}


public int labCost( String test) {
	Connection conn=DBUtil.getConnect();
	int cost=0;
	try
	{
	PreparedStatement ps=conn.prepareStatement("select cost from report where test=?");
	ps.setString(1, test);
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{
		cost=rs.getInt(1);
	}
	
	}
	catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return cost;
}


public int departmentCost1(String pid) {
	Connection conn=DBUtil.getConnect();
	int cost=0;
	try
	{
	PreparedStatement ps=conn.prepareStatement("select department.cost from department,outpatient where outpatient.patient_id=? and department.department=outpatient.department");
	ps.setString(1, pid);
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{
		cost=rs.getInt(1);
	}
	
	}
	catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return cost;
}
}
