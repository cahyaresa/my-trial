package com.maven.trial.app.model;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="group_leader")
public class Groupleader {

	@Id
	/*@GeneratedValue(generator = "uuid")
	@GenericGenerator(name = "uuid", strategy = "uuid2")*/
	@Column(name = "id_groupleader")
	private String id;
	
	@Column(name="nrp_gl")
	private String nrpGl;
	
	@Column(name="nama_gl")
	private String namaGl;
	
	@Column(name="posisi_gl")
	private String posisiGl;
	
	@Column(name="dept_gl")
	private String deptGl;
	
	@Column(name="password")
	private String password;
	
	@Column(name="role")
	private String role;
	
	@Column(name="enabled", nullable=false)
	private boolean active;
	
	
	
	@OneToMany(mappedBy="groupleader")
	Set<Performance> performances;
	
	/*@OneToMany(mappedBy="groupleader")
	Set<FormCnm> formCnms;*/

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getNrpGl() {
		return nrpGl;
	}

	public void setNrpGl(String nrpGl) {
		this.nrpGl = nrpGl;
	}

	public String getNamaGl() {
		return namaGl;
	}

	public void setNamaGl(String namaGl) {
		this.namaGl = namaGl;
	}

	public String getPosisiGl() {
		return posisiGl;
	}

	public void setPosisiGl(String posisiGl) {
		this.posisiGl = posisiGl;
	}

	public String getDeptGl() {
		return deptGl;
	}

	public void setDeptGl(String deptGl) {
		this.deptGl = deptGl;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Set<Performance> getPerformances() {
		return performances;
	}

	public void setPerformances(Set<Performance> performances) {
		this.performances = performances;
	}

	/*public Set<FormCnm> getFormCnms() {
		return formCnms;
	}

	public void setFormCnms(Set<FormCnm> formCnms) {
		this.formCnms = formCnms;
	}*/

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}

	
	
	
}
