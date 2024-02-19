package com.hintguys.controller;

import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.hintguys.form.HomeContents;
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
			String code =new String();
			model.addAttribute("blogData", articlesServiceImpl.findAllNewsArticlePageTypeAndStatus("blog", "Active", code));
			model.addAttribute("airlinesData", articlesServiceImpl.findAllNewsArticlePageTypeAndStatus("airlines", "Active", code));
			model.addAttribute("technologyData", articlesServiceImpl.findAllNewsArticlePageTypeAndStatus("technology", "Active", code));
			model.addAttribute("insuranceData", articlesServiceImpl.findAllNewsArticlePageTypeAndStatus("insurance", "Active", code));
			model.addAttribute("categories", articlesServiceImpl.findAllCategories("Active", code));
			model.addAttribute("reviewForms", serviceImpl.getAllCategoriesRecentComment("Active", code));
			List<HomeContents> listData = serviceImpl.findHomeContentDetails(code);
			model.addAttribute("homeDetails", listData.get(0));
			request.getSession().setAttribute("langCode", "EN");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "index";
	}

	@GetMapping(path = {"/es","fr"})
	public String countryChange(HttpServletRequest request, Model model) {
		String code=request.getRequestURI().replace("/", "");
		List<HomeContents> countryList = serviceImpl.findHomeContentDetails(code);
		List<String> countryCode = countryList.stream().map(x -> x.getCountryCode()).collect(Collectors.toList());
		List<String> collect = countryCode.stream().filter(x -> x.contains(code)).collect(Collectors.toList());
		for (String str : collect) {
			if (code.equals(str)) {
				try {
					model.addAttribute("blogData", articlesServiceImpl.findAllNewsArticlePageTypeAndStatus("articulos", "Active", code));
					model.addAttribute("airlinesData", articlesServiceImpl.findAllNewsArticlePageTypeAndStatus("aerolineas", "Active", code));
					model.addAttribute("technologyData", articlesServiceImpl.findAllNewsArticlePageTypeAndStatus("tecnologia", "Active", code));
					model.addAttribute("insuranceData", articlesServiceImpl.findAllNewsArticlePageTypeAndStatus("seguro", "Active", code));
					model.addAttribute("categories", articlesServiceImpl.findAllCategories("Active", code));
					model.addAttribute("reviewForms", serviceImpl.getAllCategoriesRecentComment("Active", code));
					List<HomeContents> listData = serviceImpl.findHomeContentDetails(code);
					request.getSession().setAttribute("langCode", code.toUpperCase());
					model.addAttribute("homeDetails", listData.get(0));
					return "index";
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		return "404-error";
	}
}
