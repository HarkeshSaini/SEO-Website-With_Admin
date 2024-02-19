package com.hintguys.form;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class PageContents {

	private int id;
	private String title;
	private String content;
	private String description;
	private String keywords;
	private String posttime;
	private String status;
	private String heading;
	private String imgUrl;
	private String categoryName;
	private String tfnHeader;
	private String tfnPopup;
	private String tfnFooter;
	private String countryCode;
}
