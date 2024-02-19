package com.hintguys.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;


@Entity
@Data
public class AirlineContent {

	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
	private String pageType; 
	private String pageValue;
	private String pageName;
	@Column(length=1000)
	private String metaTitle;
	@Column(length=1000)
	private String metaKeyword;
	@Column(length=1000)
	private String metaDesc;
	@Column(length=1000)
	private String otherMeta;
	private String dealCode;
	@Column(length=1000)
	private String dealTitle;
	@Column(length=1000)
	private String contentTitle;
	@Column(columnDefinition="LONGTEXT")
	private String contentData;
	private String contentImage;
	private String status;
	private String count;
	@Column(length=1000)
	private String url;
	private String modifyBy;
	private String modifyDate;
	private String tfnHeader;
	private String tfnPopup;
	private String tfnFooter;
	private String countryCode;
}
