package com.maven.trial.app.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.springframework.validation.annotation.Validated;


@Entity
@Table(name="karyawan")
@Validated
public class Employee {

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="idEmployee")
	@SequenceGenerator(initialValue=1, name="idEmployee", sequenceName="idEmployee")
	private int Id;
	
	@Column(name="nama_depan")
	private String firstName;
	
	@Column(name="name_belakang")
	private String lastName;
	
	@Column(name="nip")
	private String nip;
	
	@Column(name="id_departemen")
	private int idDepartment;
	
	@Column(name="id_manager")
	private int idManager;
	
	@Column(name="status")
	private String status;

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	
	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getNip() {
		return nip;
	}

	public void setNip(String nip) {
		this.nip = nip;
	}

	public int getIdDepartment() {
		return idDepartment;
	}

	public void setIdDepartment(int idDepartment) {
		this.idDepartment = idDepartment;
	}

	public int getIdManager() {
		return idManager;
	}

	public void setIdManager(int idManager) {
		this.idManager = idManager;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	
}
