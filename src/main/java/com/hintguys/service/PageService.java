package com.hintguys.service;

import java.util.List;

import com.hintguys.entity.ContactForm;
import com.hintguys.entity.ReviewForm;
import com.hintguys.form.FaqsContents;
import com.hintguys.form.HomeContents;
import com.hintguys.form.PageContents;
import com.hintguys.form.ReviewForms;

public interface PageService {

	public void saveReviewsForm(ReviewForm revObj);

	public void saveContactForm(ContactForm contactUsForm);

	List<FaqsContents> findByUrlAndFaqStatus(String pageUrl, String status);

	List<PageContents> findByPageContentCategoryNameAndStatus(String page, String status);

	List<ReviewForms> findByReviewUrl(String pageUrl, String status);

	List<HomeContents> findHomeContentDetails(String code);

}
