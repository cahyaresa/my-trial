package com.maven.trial.app.model;

import java.util.Date;

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
@Table(name="form_cnm")
public class FormCnm {

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="idForm")
	@SequenceGenerator(initialValue=111, name="idForm", sequenceName="idForm")
	private int id;

	@Column(name="nrp_opt")
	private int nrpOpt;
	
	@Column(name="materi")
	private int materi;
	
	@Column(name="tanggal")
	private Date tanggal;
	
	@Column(name="foto")
	private String foto;

	
	@ManyToOne()
	@JoinColumn(name="id_groupleader")
	Groupleader groupleader;


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public int getNrpOpt() {
		return nrpOpt;
	}


	public void setNrpOpt(int nrpOpt) {
		this.nrpOpt = nrpOpt;
	}


	public int getMateri() {
		return materi;
	}


	public void setMateri(int materi) {
		this.materi = materi;
	}


	public Date getTanggal() {
		return tanggal;
	}


	public void setTanggal(Date tanggal) {
		this.tanggal = tanggal;
	}


	public String getFoto() {
		return foto;
	}


	public void setFoto(String foto) {
		this.foto = foto;
	}


	public Groupleader getGroupleader() {
		return groupleader;
	}


	public void setGroupleader(Groupleader groupleader) {
		this.groupleader = groupleader;
	}
	
	
}
