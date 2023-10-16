package com.hintguys.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;

@Entity
@Data
public class IndexContent {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	@Column(length=1000)
	private String title;
	@Column(length=1000)
	private String description;
	@Column(length=1000)
	private String keywords;
	private String imgUrl;
	@Column(length=1000)
	private String bannerContent;
	private String pageType;
	private String tfnHeader;
	private String tfnPopup;
	private String tfnFooter;
}
