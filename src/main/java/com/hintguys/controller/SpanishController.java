package com.hintguys.controller;

import java.util.ArrayList;
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
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hintguys.entity.ContactForm;
import com.hintguys.form.AirlineContents;
import com.hintguys.form.Categories;
import com.hintguys.form.FaqsContents;
import com.hintguys.form.HomeContents;
import com.hintguys.form.IndexContents;
import com.hintguys.form.NewsArticles;
import com.hintguys.form.PageContents;
import com.hintguys.service.impl.AirlineServiceImpl;
import com.hintguys.service.impl.NewsArticlesServiceImpl;
import com.hintguys.service.impl.PageServiceImpl;

@Controller
public class SpanishController {
	
   @Autowired
   public NewsArticlesServiceImpl articlesServiceImpl;
   
   @Autowired
   public PageServiceImpl pageServiceImpl;
   
	@Autowired
	public AirlineServiceImpl airlineContentsRepository;

	@GetMapping("/es/vuelos")
	public String flights(HttpServletRequest request, Model model) {
		request.getSession().setAttribute("langCode", "ES");
		List<AirlineContents> airlineContents =new ArrayList<AirlineContents>();
		HomeContents homeDetails = new HomeContents();
		try {
			homeDetails = pageServiceImpl.findHomeContentDetails("es").get(0);
			airlineContents = airlineContentsRepository.FindAllAirlinesContents("Active", "airlineES");
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("blogData", airlineContents);
		model.addAttribute("homeDetails", homeDetails);
		return "flights-es/index";
	}

	@GetMapping("/es/vuelos/{airlineName}")
	public String flightsInner(@PathVariable("airlineName") String airlineName, HttpServletRequest request, Model model) {
		request.getSession().setAttribute("langCode", "ES");
		List<AirlineContents> airlineContents = new ArrayList<AirlineContents>();
		List<AirlineContents> recentAirline = new ArrayList<AirlineContents>();
		HomeContents homeDetails = new HomeContents();
		try {
			homeDetails = pageServiceImpl.findHomeContentDetails("es").get(0);
			airlineContents = airlineContentsRepository.findByStatusAndUrl("Active", airlineName, "airlineES");
			recentAirline = airlineContentsRepository.findRecentAirlineContent("Active", "airlineES");
			if(airlineContents.size() == 0) {
				return "404-error";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("homeDetails", homeDetails);
		model.addAttribute("blogTitleData", airlineContents);
		model.addAttribute("recentAirline", recentAirline);
		return "flights-es/innerPages";
	}
   
   @GetMapping({"/es/{spainContent}"})
   public String cancelation(@PathVariable String spainContent, HttpServletRequest request, Model model) {
	  request.getSession().setAttribute("langCode", "ES");
      List<NewsArticles> blogData = new ArrayList<NewsArticles>();
      IndexContents indexContents = new IndexContents();
      try {
         indexContents = this.pageServiceImpl.findByPageTypeIndexContent(spainContent);
         blogData = this.articlesServiceImpl.findAllNewsArticlePageTypeAndStatus(spainContent, "Active", "es");
         model.addAttribute("homeDetails", this.pageServiceImpl.findHomeContentDetails("es").get(0));
      } catch (Exception var7) {
         var7.printStackTrace();
      }
      model.addAttribute("blogData", blogData);
      model.addAttribute("indexPage", indexContents);
      List<Categories> listData = this.articlesServiceImpl.findAllCategories("Active", "es");
      List<Categories> collect = listData.stream().filter(x->x.getCategoryUrl().equals(spainContent)).collect(Collectors.toList());
      try {
          if (collect.size() ==0) {
        	  if(blogData.size() !=0) {
        		  return "blog-es/index";
        	  }
          } if(collect.size() !=0) {
    		  if(blogData.size() ==0) {
        		  return "blog-es/index";
        	  } 
    	  } if(collect.size() !=0) {
    		  if(blogData.size() !=0) {
        		  return "blog-es/index";
        	  } 
    	  } 
       } catch (Exception e) {
         e.getMessage();
       }
      return "404-error";
   }

   @GetMapping({"/es/{spainContent}/{titleUrl}"})
   public String cancelationInnerPage(@PathVariable String spainContent, @PathVariable String titleUrl, HttpServletRequest request, Model model) {
	  request.getSession().setAttribute("langCode", "ES");
	  List<NewsArticles> recentArticle = new ArrayList<NewsArticles>();
      List<NewsArticles> articles = new ArrayList<NewsArticles>();
      List<FaqsContents> faqsContents = new ArrayList<FaqsContents>();
      try {
         recentArticle = this.articlesServiceImpl.findRecentNewsArticle("Active", spainContent,"es");
         articles = this.articlesServiceImpl.findNewsArticleByTitleUrlAndPageTypeAndStatus(titleUrl, spainContent, "Active");
         model.addAttribute("technologys", this.articlesServiceImpl.findRecentNewsArticle("Active", "tecnologia", "es"));
         faqsContents = this.pageServiceImpl.findByUrlAndFaqStatus(titleUrl, "Active");
         model.addAttribute("homeDetails", this.pageServiceImpl.findHomeContentDetails("es").get(0));
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
      return "blog-es/innerPage";
   }
   
	@GetMapping({ "/es/sobre-nosotros", "/es/politica-de-privacidad", "/es/terminos-y-condiciones", "/es/escribe-para-nosotros" })
	public String aboutUs(HttpServletRequest request, Model model) {
		request.getSession().setAttribute("langCode", "ES");
		HomeContents homeDetails = new HomeContents();
		String page = request.getRequestURI().replace("/es/", "");
		List<PageContents> contents = null;
		try {
			homeDetails = pageServiceImpl.findHomeContentDetails("es").get(0);
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

	@GetMapping("/es/preguntas-frecuentes")
	public String faqs(HttpServletRequest request, Model model) {
		request.getSession().setAttribute("langCode", "ES");
		List<FaqsContents> faqsContents = new ArrayList<FaqsContents>();
		String pageUrl = request.getRequestURI().replace("/es/", "");
		try {
			faqsContents = pageServiceImpl.findByUrlAndFaqStatus(pageUrl, "Active");
			model.addAttribute("homeDetails", pageServiceImpl.findHomeContentDetails("es").get(0));
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		model.addAttribute("blogTitleData", faqsContents);
		return "landing/faqs";
	}

	@GetMapping("/es/contacta-con-nosotras")
	public String contectUs(HttpServletRequest request, Model model) {
		request.getSession().setAttribute("langCode", "ES");
		HomeContents homeDetails = new HomeContents();
		try {
			homeDetails = pageServiceImpl.findHomeContentDetails("es").get(0);
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("homeDetails", homeDetails);
		return "landing/contactUs-es";
	}

	@PostMapping("/es/contacta-con-nosotras")
	public String contactUsFormData(ContactForm contactUsForm,HttpServletRequest request, Model model) {
		request.getSession().setAttribute("langCode", "ES");
		pageServiceImpl.saveContactForm(contactUsForm);
		HomeContents homeDetails = new HomeContents();
		try {
			homeDetails = pageServiceImpl.findHomeContentDetails("es").get(0);
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("homeDetails", homeDetails);
		model.addAttribute("contactSubmit", "Your Query has been submitted succesfully!");
		return "landing/contactUs-es";
	}
   
    @GetMapping({ "/es/categories" })
	public @ResponseBody ResponseEntity<?> categories(HttpServletRequest request) {
    	request.getSession().setAttribute("langCode", "ES");
		List<Categories> listData = new ArrayList<Categories>();
		try {
			listData = this.articlesServiceImpl.findAllCategories("Active", "es");
		} catch (Exception var4) {
			var4.getMessage();
		}
		return new ResponseEntity<>(listData, HttpStatus.OK);
	}
}