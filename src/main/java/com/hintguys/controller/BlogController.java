package com.hintguys.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hintguys.form.Categories;
import com.hintguys.form.FaqsContents;
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

   @GetMapping({"/{blogCategories}"})
   public String cancelation(@PathVariable String blogCategories, HttpServletRequest request, Model model) {
      List<NewsArticles> blogData = new ArrayList<NewsArticles>();
      IndexContents indexContents = new IndexContents();
      try {
         indexContents = this.pageServiceImpl.findByPageTypeIndexContent(blogCategories);
         blogData = this.articlesServiceImpl.findAllNewsArticlePageTypeAndStatus(blogCategories, "Active");
         model.addAttribute("homeDetails", this.pageServiceImpl.findHomeContentDetails().get(0));
      } catch (Exception var7) {
         var7.printStackTrace();
      }
      model.addAttribute("blogData", blogData);
      model.addAttribute("indexPage", indexContents);
      List<Categories> listData = this.articlesServiceImpl.findAllCategories("Active");
      List<Categories> collect = listData.stream().filter(x->x.getCategoryUrl().equals(blogCategories)).collect(Collectors.toList());
      try {
          if (collect.size() ==0) {
        	  if(blogData.size() !=0) {
        		  return "blog/index";
        	  }
          } if(collect.size() !=0) {
    		  if(blogData.size() ==0) {
        		  return "blog/index";
        	  } 
    	  } if(collect.size() !=0) {
    		  if(blogData.size() !=0) {
        		  return "blog/index";
        	  } 
    	  } 
       } catch (Exception e) {
         e.getMessage();
       }
      return "404-error";
   }

   @GetMapping({"/{blogCategories}/{titleUrl}"})
   public String cancelationInnerPage(@PathVariable String blogCategories, @PathVariable String titleUrl, HttpServletRequest request, Model model) {
      List<NewsArticles> recentArticle = new ArrayList<NewsArticles>();
      List<NewsArticles> articles = new ArrayList<NewsArticles>();
      List<FaqsContents> faqsContents = new ArrayList<FaqsContents>();
      try {
         recentArticle = this.articlesServiceImpl.findRecentNewsArticle("Active", blogCategories);
         articles = this.articlesServiceImpl.findNewsArticleByTitleUrlAndPageTypeAndStatus(titleUrl, blogCategories, "Active");
         model.addAttribute("technologys", this.articlesServiceImpl.findRecentNewsArticle("Active", "technology"));
         faqsContents = this.pageServiceImpl.findByUrlAndFaqStatus(titleUrl, "Active");
         model.addAttribute("homeDetails", this.pageServiceImpl.findHomeContentDetails().get(0));
      } catch (Exception var9) {
         var9.printStackTrace();
      }
      try {
         if (articles.isEmpty()) {
            return "404-error";
         }
      } catch (Exception var10) {
         return "404-error";
      }
      model.addAttribute("blogFaqs", faqsContents);
      model.addAttribute("blogTitleData", articles);
      model.addAttribute("recentArticle", recentArticle);
      return "blog/innerPage";
   }

   @GetMapping({"/categories"})
   public @ResponseBody ResponseEntity<?> categories(HttpServletRequest request) {
	   List<Categories> listData = new ArrayList<Categories>();
       try {
    	   listData = this.articlesServiceImpl.findAllCategories("Active");
       } catch (Exception var4) {
         var4.getMessage();
       }
       return new ResponseEntity<>(listData, HttpStatus.OK);
	}
}