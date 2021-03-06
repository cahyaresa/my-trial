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
	private String nrpOpt;
	
	@Column(name="nama_opt")
	private String namaOpt;
	
	@Column(name="materi")
	private String materi;
	
	@Column(name="tanggal")
	private Date tanggal;
	
	@Column(name="foto")
	private String foto;
	
	@Column(name="nama_gl")
	private String namaGl;
	
	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getNrpOpt() {
		return nrpOpt;
	}


	public void setNrpOpt(String nrpOpt) {
		this.nrpOpt = nrpOpt;
	}


	public String getMateri() {
		return materi;
	}


	public void setMateri(String materi) {
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


	public String getNamaGl() {
		return namaGl;
	}


	public void setNamaGl(String namaGl) {
		this.namaGl = namaGl;
	}


	public String getNamaOpt() {
		return namaOpt;
	}


	public void setNamaOpt(String namaOpt) {
		this.namaOpt = namaOpt;
	}

	
	
}
