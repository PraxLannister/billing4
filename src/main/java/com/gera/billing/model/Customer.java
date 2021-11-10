package com.gera.billing.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


//@Entity(id="table_name") if you want to use a different table name from customer
//changes entity name also
// to change only table name
//@Table(name="")
@Entity
public class Customer 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(updatable = false, nullable = false)
	private int id;
	private String pass;
	private String number;
	//@Transient- to drop a column
	
	//For different column name other than specified use-
	//@Column(name="student_color")
	private String fname;
	private String lname;
	private String mailid;
	
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getMailid() {
		return mailid;
	}
	public void setMailid(String mailid) {
		this.mailid = mailid;
	}
	
	
	
	
//	
//	@Override
//	public String toString()
//	{
//		return "Customer[ Id= "+id+" number= "+number+" color= "+color+" ]";
//	}

}
