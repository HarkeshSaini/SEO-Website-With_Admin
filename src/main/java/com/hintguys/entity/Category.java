package com.hintguys.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;

@Entity
@Data
public class Category {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public int id;
	public String categoryName;
	public String imgUrl;
	public String categoryUrl;
	public String postTime;
	public String status;
	private String countryCode;
}
