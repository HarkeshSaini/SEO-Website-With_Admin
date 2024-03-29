package com.hintguys.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import com.hintguys.entity.ContactForm;
import com.hintguys.entity.ReviewForm;
import com.hintguys.form.FaqsContents;
import com.hintguys.form.HomeContents;
import com.hintguys.form.PageContents;
import com.hintguys.form.ReviewForms;
import com.hintguys.service.impl.PageServiceImpl;

@Controller
public class PageController {

	@Autowired
	public PageServiceImpl pageServiceImpl;

	@GetMapping({ "/about-us", "/privacy-policy", "/terms-conditions", "/write-for-us" })
	public String aboutUs(HttpServletRequest request, Model model) {
		request.getSession().setAttribute("langCode", "EN");
		HomeContents homeDetails = new HomeContents();
		String page = request.getRequestURI().replace("/", "");
		List<PageContents> contents = null;
		try {
			homeDetails = pageServiceImpl.findHomeContentDetails("").get(0);
			contents = pageServiceImpl.findByPageContentCategoryNameAndStatus(page, "Active");
			if (contents.size() == 0) {
				return "404-error";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("homeDetails", homeDetails);
		model.addAttribute("blogTitleData", contents);
		return "landing/content";
	}

	@GetMapping("/faqs")
	public String faqs(HttpServletRequest request, Model model) {
		request.getSession().setAttribute("langCode", "EN");
		List<FaqsContents> faqsContents = new ArrayList<FaqsContents>();
		String pageUrl = request.getRequestURI().replace("/", "");
		try {
			faqsContents = pageServiceImpl.findByUrlAndFaqStatus(pageUrl, "Active");
			model.addAttribute("homeDetails", pageServiceImpl.findHomeContentDetails("").get(0));
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		model.addAttribute("blogTitleData", faqsContents);
		return "landing/faqs";
	}

	@GetMapping("/contact-us")
	public String contectUs(HttpServletRequest request, Model model) {
		request.getSession().setAttribute("langCode", "EN");
		HomeContents homeDetails = new HomeContents();
		try {
			homeDetails = pageServiceImpl.findHomeContentDetails("").get(0);
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("homeDetails", homeDetails);
		return "landing/contactUs";
	}

	@PostMapping("/contact-us")
	public String contactUsFormData(ContactForm contactUsForm,HttpServletRequest request, Model model) {
		request.getSession().setAttribute("langCode", "EN");
		pageServiceImpl.saveContactForm(contactUsForm);
		HomeContents homeDetails = new HomeContents();
		try {
			homeDetails = pageServiceImpl.findHomeContentDetails("").get(0);
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("homeDetails", homeDetails);
		model.addAttribute("contactSubmit", "Your Query has been submitted succesfully!");
		return "landing/contactUs";
	}

	@PostMapping("/reviewForm")
	public @ResponseBody String customerReviews(@RequestBody ReviewForms reviewForm, HttpServletRequest request) {
		final DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		final Date date = new Date();
		ReviewForm revObj = new ReviewForm();
		revObj.setUserName(reviewForm.getUserName());
		revObj.setUserEmail(reviewForm.getUserEmail());
		revObj.setReviewMessage(reviewForm.getReviewMessage());
		revObj.setReviewRating("00");
		revObj.setReviewDate(dateFormat.format(date));
		revObj.setReviewUrl(reviewForm.getReviewUrl());
		revObj.setReviewStatus("InActive");
		revObj.setReviewRpyId("0");
		revObj.setUserPhone(reviewForm.getUserPhone());
		revObj.setReviewRpyId("0");
		pageServiceImpl.saveReviewsForm(revObj);
		return "Data save successfully !!!..";
	}

	@GetMapping("/customerReviewsDetails/{pageUrl}")
	public @ResponseBody List<ReviewForms> customerReviews(@PathVariable String pageUrl) {
		List<ReviewForms> reviewForms = this.pageServiceImpl.findByReviewUrl(pageUrl, "Active");
		return reviewForms;
	}

}
