package com.hintguys.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;

@Entity
@Data
public class FaqsContent {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer faqId;
	private String pageType;
	@Column(length=1000)
	private String faQues;
	@Column(length=10000)
	private String faqAns;
	@Column(length=1000)
	private String url;
	private String faqStatus;
	private String modifyBy;
	private String posttime;
}
