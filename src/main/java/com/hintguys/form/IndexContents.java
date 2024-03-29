package com.hintguys.form;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class IndexContents {
	
	private int id;
	private String title;
	private String description;
	private String keywords;
	private String imgUrl;
	private String bannerContent;
	private String pageType;
	private String tfnHeader;
	private String tfnPopup;
	private String tfnFooter;
	private String countryCode;
}
