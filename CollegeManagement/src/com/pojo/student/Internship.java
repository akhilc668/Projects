package com.pojo.student;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "internship")
public class Internship {
	@Id
	@Column(name = "internid")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name = "department")
	private String department;
	@Column(name = "name")
	private String name;
	@Column(name = "rollnumber")
	private String rollnumber;
	@Column(name = "topic")
	private String topic;
	@Column(name = "duration")
	private String duration;
	@Column(name = "filename")
	private String filename;
	@Column(name = "studid")
	private int studid;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRollnumber() {
		return rollnumber;
	}
	public void setRollnumber(String rollnumber) {
		this.rollnumber = rollnumber;
	}
	public String getTopic() {
		return topic;
	}
	public void setTopic(String topic) {
		this.topic = topic;
	}
	public String getDuration() {
		return duration;
	}
	public void setDuration(String duration) {
		this.duration = duration;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public int getStudid() {
		return studid;
	}
	public void setStudid(int studid) {
		this.studid = studid;
	}
}
