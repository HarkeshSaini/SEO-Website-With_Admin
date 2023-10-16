package com.hintguys.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;

@Entity
@Data
public class ReviewForm {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String userName;
	private String userEmail;
	private String userPhone;
	@Column(columnDefinition="LONGTEXT")
	private String reviewMessage;
	private String reviewDate;
	private String reviewRating;
	private String reviewRpyId;
	private String reviewStatus;
	private String reviewUrl;
}
