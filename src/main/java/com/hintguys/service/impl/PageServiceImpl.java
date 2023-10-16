package com.hintguys.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hintguys.entity.ContactForm;
import com.hintguys.entity.FaqsContent;
import com.hintguys.entity.HomeContent;
import com.hintguys.entity.PageContent;
import com.hintguys.entity.ReviewForm;
import com.hintguys.form.FaqsContents;
import com.hintguys.form.HomeContents;
import com.hintguys.form.PageContents;
import com.hintguys.form.ReviewForms;
import com.hintguys.repository.ContactFormRepository;
import com.hintguys.repository.FaqsContentRepository;
import com.hintguys.repository.HomeContentRepository;
import com.hintguys.repository.PageContentRepository;
import com.hintguys.repository.ReviewFormRepository;
import com.hintguys.service.PageService;

@Service
public class PageServiceImpl implements PageService {

	@Autowired
	public FaqsContentRepository faqsContentRepository;
	@Autowired
	public HomeContentRepository homeContentRepository;
	@Autowired
	public ModelMapper modelMapper;

	@Autowired
	public ReviewFormRepository formRepository;
	@Autowired
	public PageContentRepository contentRepository;
	@Autowired
	public ContactFormRepository contactFormRepository;

	@Override
	public List<FaqsContents> findByUrlAndFaqStatus(String pageUrl, String status) {
		List<FaqsContent> faqDetails = faqsContentRepository.findByUrlAndFaqStatus(pageUrl, status);
		ArrayList<FaqsContents> arrayList = new ArrayList<FaqsContents>();
		for (FaqsContent faqsContent : faqDetails) {
			FaqsContents contents = new FaqsContents();
			contents.setFaqAns(faqsContent.getFaqAns());
			contents.setFaqId(faqsContent.getFaqId());
			contents.setFaqStatus(faqsContent.getFaqStatus());
			contents.setFaQues(faqsContent.getFaQues());
			contents.setModifyBy(faqsContent.getModifyBy());
			contents.setPosttime(faqsContent.getPosttime());
			contents.setUrl(faqsContent.getUrl());
			arrayList.add(contents);
		}
		return arrayList;
	}

	@Override
	public List<PageContents> findByPageContentCategoryNameAndStatus(String page, String status) {
		List<PageContent> pageContent = contentRepository.findByCategoryNameAndStatus(page, status);
		ArrayList<PageContents> arrayList = new ArrayList<PageContents>();
		if (!pageContent.isEmpty()) {
			for (PageContent content : pageContent) {
				arrayList.add(modelMapper.map(content, PageContents.class));
			}
		}
		return arrayList;
	}

	@Override
	public void saveReviewsForm(ReviewForm revObj) {
		formRepository.save(revObj);
	}

	@Override
	public void saveContactForm(ContactForm contactUsForm) {
		contactFormRepository.save(contactUsForm);
	}

	@Override
	public List<HomeContents> findHomeContentDetails() {
		List<HomeContent> homeContents = homeContentRepository.findAll();
		ArrayList<HomeContents> arrayList = new ArrayList<HomeContents>();
		if (!homeContents.isEmpty()) {
			for (HomeContent content : homeContents) {
				arrayList.add(modelMapper.map(content, HomeContents.class));
			}
		}
		return arrayList;
	}

	@Override
	public List<ReviewForms> findByReviewUrl(String pageUrl, String status) {
		List<ReviewForm> details = formRepository.findByReviewUrlAndReviewStatus(pageUrl, status);
		ArrayList<ReviewForms> arrayList = new ArrayList<ReviewForms>();
		if (!details.isEmpty()) {
			for (ReviewForm content : details) {
				arrayList.add(modelMapper.map(content, ReviewForms.class));
			}
		}
		return arrayList;
	}

}
