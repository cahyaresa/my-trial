package com.maven.trial.app.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="performance")
public class Performance {

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="idPerform")
	@SequenceGenerator(initialValue=1111, name="idPerform", sequenceName="idPerform")
	private int id;
	
	@Column(name="nrp_opt")
	private int nrpOPT;
	
	@Column(name="nama_opt")
	private String namaOPT;
	
	@Column(name="status_opt")
	private String statusOPT;
	
	@Column(name="dept_opt")
	private String deptOPT;
	
	@Column(name="mdr")
	private int mdr;
	
	@Column(name="prodty")
	private int prodty;
	
	@Column(name="safety")
	private int safety;
	
	@Column(name="discipline")
	private int discipline;
	
	@Column(name="fpi")
	private int fpi;
	
	@Column(name="atr_opt")
	private int atrOpt;
	
	@Column(name="izin")
	private int izin;
	
	@Column(name="sakit")
	private int sakit;
	
	@Column(name="alpha")
	private int alpha;
	
	@ManyToOne()
	@JoinColumn(name="id_groupleader")
	Groupleader groupleader;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getNrpOPT() {
		return nrpOPT;
	}

	public void setNrpOPT(int nrpOPT) {
		this.nrpOPT = nrpOPT;
	}

	public String getNamaOPT() {
		return namaOPT;
	}

	public void setNamaOPT(String namaOPT) {
		this.namaOPT = namaOPT;
	}

	public String getStatusOPT() {
		return statusOPT;
	}

	public void setStatusOPT(String statusOPT) {
		this.statusOPT = statusOPT;
	}

	public String getDeptOPT() {
		return deptOPT;
	}

	public void setDeptOPT(String deptOPT) {
		this.deptOPT = deptOPT;
	}

	public int getMdr() {
		return mdr;
	}

	public void setMdr(int mdr) {
		this.mdr = mdr;
	}

	public int getProdty() {
		return prodty;
	}

	public void setProdty(int prodty) {
		this.prodty = prodty;
	}

	public int getSafety() {
		return safety;
	}

	public void setSafety(int safety) {
		this.safety = safety;
	}

	public int getDiscipline() {
		return discipline;
	}

	public void setDiscipline(int discipline) {
		this.discipline = discipline;
	}

	public int getFpi() {
		return fpi;
	}

	public void setFpi(int fpi) {
		this.fpi = fpi;
	}

	public int getAtrOpt() {
		return atrOpt;
	}

	public void setAtrOpt(int atrOpt) {
		this.atrOpt = atrOpt;
	}

	public int getIzin() {
		return izin;
	}

	public void setIzin(int izin) {
		this.izin = izin;
	}

	public int getSakit() {
		return sakit;
	}

	public void setSakit(int sakit) {
		this.sakit = sakit;
	}

	public int getAlpha() {
		return alpha;
	}

	public void setAlpha(int alpha) {
		this.alpha = alpha;
	}

	public Groupleader getGroupleader() {
		return groupleader;
	}

	public void setGroupleader(Groupleader groupleader) {
		this.groupleader = groupleader;
	}

	
	
}
