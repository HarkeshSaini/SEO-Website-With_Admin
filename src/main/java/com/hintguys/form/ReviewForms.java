package com.hintguys.form;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class ReviewForms {
	
	 
	private int id;
	private String userName;
	private String userEmail;
	private String userPhone;
	private String reviewMessage;
	private String reviewDate;
	private String reviewRating;
	private String reviewRpyId;
	private String reviewStatus;
	private String reviewUrl;
}
