package com.hintguys.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.hintguys.form.Categories;
import com.hintguys.form.HomeContents;
import com.hintguys.form.NewsArticles;
import com.hintguys.form.ReviewForms;
import com.hintguys.service.impl.NewsArticlesServiceImpl;
import com.hintguys.service.impl.PageServiceImpl;

@Controller
public class HomeController {

	@Autowired
	public NewsArticlesServiceImpl articlesServiceImpl;

	@Autowired
	public PageServiceImpl serviceImpl;

	@GetMapping("/")
	public String index(HttpServletRequest request, Model model) {
		try {
			List<ReviewForms> reviewForms = serviceImpl.getAllCategoriesRecentComment("Active");
			List<Categories> categories = articlesServiceImpl.findAllCategories("Active");
			HomeContents homeDetails = serviceImpl.findHomeContentDetails().get(0);
			ArrayList<NewsArticles> recentArticle = articlesServiceImpl.getAllRecentNewsArticle("Active");
			model.addAttribute("homeDetails", homeDetails);
			model.addAttribute("blogData", recentArticle);
			model.addAttribute("categories", categories);
			model.addAttribute("reviewForms", reviewForms);
		} catch (Exception e) {
			System.out.println("Size 0: index 0:");
		}
		return "index";
	}
}
