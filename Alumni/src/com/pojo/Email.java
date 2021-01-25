package com.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
<<<<<<< Updated upstream
@Table(name = "email")
=======
@Table(name = "emails")
>>>>>>> Stashed changes
public class Email {
	@Id
	@Column(name = "eid")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
<<<<<<< Updated upstream
	@Column(name = "to")
	private String to;
	@Column(name = "from")
	private String from;
	@Column(name = "subject")
	private String subject;
	@Column(name = "content")
	private String content;
=======
	@Column(name = "eto")
	private String eto;
	@Column(name = "efrom")
	private String efrom;
	@Column(name = "esubject")
	private String esubject;
	@Column(name = "econtent")
	private String econtent;
>>>>>>> Stashed changes
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
<<<<<<< Updated upstream
	public String getTo() {
		return to;
	}
	public void setTo(String to) {
		this.to = to;
	}
	public String getFrom() {
		return from;
	}
	public void setFrom(String from) {
		this.from = from;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
=======
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
	
	
>>>>>>> Stashed changes
}
