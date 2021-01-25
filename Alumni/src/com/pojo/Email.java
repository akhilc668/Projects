package com.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "emails")
public class Email {
	@Id
	@Column(name = "eid")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name = "eto")
	private String eto;
	@Column(name = "efrom")
	private String efrom;
	@Column(name = "esubject")
	private String esubject;
	@Column(name = "econtent")
	private String econtent;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEto() {
		return eto;
	}
	public void setEto(String eto) {
		this.eto = eto;
	}
	public String getEfrom() {
		return efrom;
	}
	public void setEfrom(String efrom) {
		this.efrom = efrom;
	}
	public String getEsubject() {
		return esubject;
	}
	public void setEsubject(String esubject) {
		this.esubject = esubject;
	}
	public String getEcontent() {
		return econtent;
	}
	public void setEcontent(String econtent) {
		this.econtent = econtent;
	}
	
	
}
