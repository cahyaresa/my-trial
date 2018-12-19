package com.maven.trial.app.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="Departemen")
public class Department {

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="idDepartemen")
	@SequenceGenerator(initialValue=1, name="idDepartemen", sequenceName="idDepartemen")
	private int id;
	
	@Column(name="nama_departemen")
	private String name;
	
	@Column(name="deskripsi")
	private String Desc;
	
	@Column(name="lokasi")
	private String location;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDesc() {
		return Desc;
	}

	public void setDesc(String desc) {
		Desc = desc;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}
	
	
}
