package com.hintguys.form;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class NewsArticles {

    private int id;
    private String title;
    private String titleUrl;
    private String content;
    private String description;
    private String keywords;
    private String posttime;
    private String status;
    private String imgUrl;
    private String heading;
    private String categoryName;
    private String pageType;
    private String extraTag;
	private String tfnHeader;
	private String tfnFooter;
	private String tfnPopup;
}
