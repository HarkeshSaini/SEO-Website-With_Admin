package com.hintguys.controller;

import java.awt.PageAttributes.MediaType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import javax.validation.constraints.Size;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
			model.addAttribute("blogData", articlesServiceImpl.findAllNewsArticlePageTypeAndStatus("blog", "Active"));
			model.addAttribute("airlinesData", articlesServiceImpl.findAllNewsArticlePageTypeAndStatus("airlines", "Active"));
			model.addAttribute("technologyData", articlesServiceImpl.findAllNewsArticlePageTypeAndStatus("technology", "Active"));
			model.addAttribute("insuranceData", articlesServiceImpl.findAllNewsArticlePageTypeAndStatus("insurance", "Active"));
			model.addAttribute("homeDetails", serviceImpl.findHomeContentDetails().get(0));
			model.addAttribute("categories", articlesServiceImpl.findAllCategories("Active"));
			model.addAttribute("reviewForms", serviceImpl.getAllCategoriesRecentComment("Active"));
			request.getSession().setAttribute("code", request.getRequestURI());
			request.getSession().setAttribute("langCode", "EN");
		} catch (Exception e) {
			System.out.println("Size 0: index 0:");
		}
		return "index";
	}
	 
	@RequestMapping(value = {"/es","/fr","/pt","/de","/hi"},method = RequestMethod.GET)
	public String countryChange(HttpServletRequest request,Model model) {
		String code = request.getRequestURI().replace("/", "");
		List<String> arrayList=Arrays.asList("es","fr","pt","de","hi");
		List<String> collect = arrayList.stream().filter(x->x.contains(code)).collect(Collectors.toList());
		if(code.equals(collect.get(0))) {
			try {
				request.getSession().setAttribute("code", code);
				request.getSession().setAttribute("langCode", code.toUpperCase());
			} catch (Exception e) {
				System.out.println("Size 0: index 0:");
			}
		}
	    return "index";
	}
}
