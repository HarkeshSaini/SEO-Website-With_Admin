package com.hintguys.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hintguys.form.Categories;
import com.hintguys.form.FaqsContents;
import com.hintguys.form.HomeContents;
import com.hintguys.form.IndexContents;
import com.hintguys.form.NewsArticles;
import com.hintguys.service.impl.NewsArticlesServiceImpl;
import com.hintguys.service.impl.PageServiceImpl;

@Controller
public class BlogController {

	@Autowired
	public NewsArticlesServiceImpl articlesServiceImpl;
	@Autowired
	public PageServiceImpl pageServiceImpl;

	@GetMapping("/{blogCategories}")
	public String cancelation(@PathVariable String blogCategories,HttpServletRequest request, Model model) {
		List<HomeContents> homeDetails = null;
		List<NewsArticles> blogData = null;
		IndexContents indexContents=null;
		try {
			indexContents = pageServiceImpl.findByPageTypeIndexContent(blogCategories);
			homeDetails = pageServiceImpl.findHomeContentDetails();
			blogData = this.articlesServiceImpl.findAllNewsArticlePageTypeAndStatus(blogCategories, "Active");
			if (blogData.size() == 0) {
				return "404-error";
			}
		} catch (Exception e) {
			System.out.println("Index: 0, Size: 0");
		}
		model.addAttribute("blogData", blogData);
		model.addAttribute("indexPage", indexContents);
		model.addAttribute("homeDetails", homeDetails.get(0));
		return "blog/index";
	}

	@GetMapping("/{blogCategories}/{titleUrl}")
	public String cancelationInnerPage(@PathVariable String blogCategories,@PathVariable String titleUrl, HttpServletRequest request, Model model) {
		List<NewsArticles> recentArticle = null;
		List<NewsArticles> articles = null;
		List<FaqsContents> faqsContents = null;
		List<HomeContents> homeDetails = null;
		try {
			recentArticle = articlesServiceImpl.findRecentNewsArticle("Active", blogCategories);
			articles = articlesServiceImpl.findNewsArticleByTitleUrlAndPageTypeAndStatus(titleUrl, blogCategories, "Active");
			model.addAttribute("technologys", articlesServiceImpl.findRecentNewsArticle("Active", "technology"));
			faqsContents = pageServiceImpl.findByUrlAndFaqStatus(titleUrl, "Active");
			homeDetails = pageServiceImpl.findHomeContentDetails();
			if (articles.size() == 0) {
				return "404-error";
			}
		} catch (Exception ex) {
			return "404-error";
		}
		model.addAttribute("blogFaqs", faqsContents);
		model.addAttribute("blogTitleData", articles);
		model.addAttribute("recentArticle", recentArticle);
		model.addAttribute("homeDetails", homeDetails.get(0));
		return "blog/innerPage";
	}
	
	@RequestMapping(value = "/categories" ,method = RequestMethod.GET)
	public @ResponseBody ResponseEntity<?> categories(HttpServletRequest request){
		List<Categories> findAllCategories = null;
		try {
			findAllCategories = articlesServiceImpl.findAllCategories("Active");
		} catch (Exception e) {
			System.out.println("Index: 0, Size: 0");
		}
		return new ResponseEntity<>((findAllCategories), HttpStatus.OK);
	}
}
