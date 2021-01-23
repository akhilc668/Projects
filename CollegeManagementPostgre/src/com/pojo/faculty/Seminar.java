package com.pojo.faculty;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "seminar")
public class Seminar {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "sid")
	private int id;

	@Column(name = "department")
	private String department;

	@Column(name = "name")
	private String name;

	@Column(name = "position")
	private String position;

	@Column(name = "format")
	private String format;

	@Column(name = "date")
	private String date;

	@Column(name = "topic")
	private String topic;

	@Column(name = "place")
	private String place_of_seminar;

	@Column(name = "fid")
	private int fid;

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

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getFormat() {
		return format;
	}

	public void setFormat(String format) {
		this.format = format;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getTopic() {
		return topic;
	}

	public void setTopic(String topic) {
		this.topic = topic;
	}

	public String getPlace_of_seminar() {
		return place_of_seminar;
	}

	public void setPlace_of_seminar(String place_of_seminar) {
		this.place_of_seminar = place_of_seminar;
	}

	public int getFid() {
		return fid;
	}

	public void setFid(int fid) {
		this.fid = fid;
	}

}
