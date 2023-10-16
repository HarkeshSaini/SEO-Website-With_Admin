package com.hintguys.form;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class FaqsContents {

	private Integer faqId;
	private String pageType;
	private String faQues;
	private String faqAns;
	private String url;
	private String faqStatus;
	private String modifyBy;
	private String posttime;
	 
}
