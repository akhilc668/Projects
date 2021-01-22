package com.pojo.faculty;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "guestlecture")
public class GuestLecture {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "gid")
	private int id;

	@Column(name = "department")
	private String department;

	@Column(name = "name")
	private String name;

	@Column(name = "position")
	private String position;

	@Column(name = "topic")
	private String topic;

	@Column(name = "date_of_event")
	private String date_of_event;

	@Column(name = "profile_of_guest_faculty")
	private String profile_of_guest_faculty;

	@Column(name = "description_of_event")
	private String description_of_event;

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

	public String getTopic() {
		return topic;
	}

	public void setTopic(String topic) {
		this.topic = topic;
	}

	public String getDate_of_event() {
		return date_of_event;
	}

	public void setDate_of_event(String date_of_event) {
		this.date_of_event = date_of_event;
	}

	public String getProfile_of_guest_faculty() {
		return profile_of_guest_faculty;
	}

	public void setProfile_of_guest_faculty(String profile_of_guest_faculty) {
		this.profile_of_guest_faculty = profile_of_guest_faculty;
	}

	public String getDescription_of_event() {
		return description_of_event;
	}

	public void setDescription_of_event(String description_of_event) {
		this.description_of_event = description_of_event;
	}

	public int getFid() {
		return fid;
	}

	public void setFid(int fid) {
		this.fid = fid;
	}

	

}
