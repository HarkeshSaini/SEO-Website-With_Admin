package com.hintguys.entity;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;

@Entity
@Data
public class NewsArticle {

	    @Id
	    @GeneratedValue(strategy = GenerationType.AUTO)
	    private int id;
	    private String title;
	    @Column(length=1000) 
	    private String titleUrl;
	    @Column(columnDefinition="LONGTEXT")
	    private String content;
	    @Column(length=1000) 
	    private String description;
	    @Column(length=1000) 
	    private String keywords;
	    private String posttime;
	    private String imgUrl;
	    private String status;
	    private String heading;
	    private String categoryName;
	    private String pageType;
	    private String extraTag;
		private String tfnHeader;
		private String tfnFooter;
		private String tfnPopup;
}
