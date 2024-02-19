package com.hintguys.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;

@Entity
@Data
public class PageContent {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	@Column(length=1000)
	private String title;
	@Column(columnDefinition="LONGTEXT")
	private String content;
	@Column(length=1000)
	private String description;
	@Column(length=1000)
	private String keywords;
	private String posttime;
	private String status;
	@Column(length=1000)
	private String heading;
	private String imgUrl;
	private String categoryName;
	private String tfnHeader;
	private String tfnPopup;
	private String tfnFooter;
	private String countryCode;
}
