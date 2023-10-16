package com.hintguys.controller;

import java.sql.Date;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.hintguys.entity.AirlineContent;
import com.hintguys.entity.Category;
import com.hintguys.entity.ContactForm;
import com.hintguys.entity.HomeContent;
import com.hintguys.entity.IndexContent;
import com.hintguys.entity.NewsArticle;
import com.hintguys.form.AirlineContents;
import com.hintguys.form.Categories;
import com.hintguys.form.FaqsContents;
import com.hintguys.form.HomeContents;
import com.hintguys.form.IndexContents;
import com.hintguys.form.NewsArticles;
import com.hintguys.form.PageContents;
import com.hintguys.form.ReviewForms;
import com.hintguys.service.impl.AdminServiceImpl;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private AdminServiceImpl adminServiceImpl;

	@GetMapping("/dashboard")
	private String dashboard(HttpServletRequest request,Model model) {
		List<HomeContents> homeContents = this.adminServiceImpl.findAllHomeContent();
		List<IndexContents> indexContents = this.adminServiceImpl.findAllIndexContent();
		model.addAttribute("contents", homeContents);
		model.addAttribute("index", indexContents);
		return "admin/dashboard";
	}
	
	@PostMapping("/dashboard")
	private String dashboards(HomeContents code, IndexContents indexs, HttpServletRequest request, Model model) {
		List<HomeContents> homeContents = this.adminServiceImpl.findAllHomeContent().stream().filter(x -> x.getCountryCode().equals(code.getCountryCode())).collect(Collectors.toList());
		List<IndexContents> indexContents = this.adminServiceImpl.findAllIndexContent().stream().filter(x -> x.getPageType().equals(indexs.getPageType())).collect(Collectors.toList());
		List<HomeContents> contents = this.adminServiceImpl.findAllHomeContent();
		List<IndexContents> index = this.adminServiceImpl.findAllIndexContent();
		model.addAttribute("homeContent", homeContents);
		model.addAttribute("contents", contents);
		model.addAttribute("index", index);
		model.addAttribute("indexContents", indexContents);
		return "admin/dashboard";
	}
	
	@GetMapping("/homeContent")
	private String homeContent(HttpServletRequest request, Model model) {
		model.addAttribute("homeContent", "Submit New Home Content!.");
		return "admin/homeContent";
	}

	@PostMapping("/homeContent")
	private String homeContents(HttpServletRequest request, HomeContent homeContent, MultipartFile file, Model model) {
		this.adminServiceImpl.saveHomeContent(homeContent,file,request);
		this.adminServiceImpl.saveImgFile(request, file);
		model.addAttribute("homeContent", "Submit Content Successfully!.");
		return "admin/homeContent";
	}
	
	@GetMapping("/homeEditContent/{id}")
	private String homeContents(@PathVariable int id,HttpServletRequest request, HomeContents homeContent, Model model) {
		model.addAttribute("id", id);
		model.addAttribute("command", this.adminServiceImpl.findByIdHomeContent(id));
		model.addAttribute("homeContent", "Edit Content!.");
		return "admin/edithomeContent";
	}
	
	@PostMapping("/homeEditContent/{id}")
	private String homeContent(@PathVariable int id,HttpServletRequest request, HomeContents homeContent, MultipartFile file, Model model) {
		this.adminServiceImpl.editHomeContent(homeContent, id,file,request);
		this.adminServiceImpl.saveImgFile(request, file);
		model.addAttribute("homeContent", "Edit Successfully!.");
		return "admin/homeContent";
	}
	
	@GetMapping("/indexContent")
	private String contentIndex(HttpServletRequest request,Model model) {
		model.addAttribute("indexContent", "Submit New Index Content!.");
		return "admin/indexContent";
	}
	
	@PostMapping("/indexContent")
	private String contentIndexs(IndexContent indexContent,HttpServletRequest request, MultipartFile file, Model model) {
		this.adminServiceImpl.saveIndexContent(indexContent,file,request);
		this.adminServiceImpl.saveImgFile(request, file);
		model.addAttribute("indexContent", "Submit New Index Content!.");
		return "admin/indexContent";
	}
	
	@GetMapping("/editIndexContent")
	private String editIndexContent() {
		return "admin/editIndexContent";
	}
	
	@GetMapping("/articleContent")
	private String articleContent(HttpServletRequest request, Model model) {
		List<NewsArticles> articles = this.adminServiceImpl.findAllNewsArticle();
		model.addAttribute("newsArticle", articles);
		model.addAttribute("article", "All Article Content");
		return "admin/article/showArticle";
	}

	@GetMapping("/addArticle")
	private String addArticle(HttpServletRequest request, Model model) {
		List<Categories> categories= null;
		try {
			categories=adminServiceImpl.findAllCategories();
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("categories", categories);
		model.addAttribute("article", "Add new article");
		return "admin/article/addArticle";
	}

	@PostMapping("/addArticle")
	private String addArticles(NewsArticle newsArticle, MultipartFile file, Date date, HttpServletRequest request, Model model) {
		try {
			List<NewsArticle> articles = this.adminServiceImpl.findByTitleUrl(newsArticle.getTitleUrl());
			if (newsArticle.getTitleUrl().equals(articles.get(0).getTitleUrl())) {
				model.addAttribute("article", "'" + articles.get(0).getTitleUrl() + "'" + " already exists!. Please Url Change...");
				return "admin/article/addArticle";
			}
		} catch (Exception ex) {
			//ex.printStackTrace();
		}
		this.adminServiceImpl.saveImgFile(request, file);
		this.adminServiceImpl.saveAllNewsArticle(newsArticle, file, date);
		model.addAttribute("article", "Successfully add content");
		return "admin/article/addArticle";
	}

	@GetMapping("/editNewsArticle/{id}")
	private String editNewsArticle(@PathVariable Integer id, Model model) {
		List<Categories> categories= null;
		try {
			categories=adminServiceImpl.findAllCategories();
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("categories", categories);
		model.addAttribute("id", id);
		model.addAttribute("command", this.adminServiceImpl.findByIdNewsArticle(id));
		model.addAttribute("article", "Edit Content");
		return "admin/article/editArticle";
	}

	@PostMapping("/editNewsArticle/{id}")
	private String editNewsArticles(@PathVariable Integer id, NewsArticles newsArticles, MultipartFile file, Date date, HttpServletRequest request, Model model) {
		this.adminServiceImpl.saveImgFile(request, file);
		this.adminServiceImpl.editNewsArticleById(newsArticles, id, file);
		model.addAttribute("article", "successfully edit");
		return "admin/article/addArticle";
	}
	
	@GetMapping("/customerReviews")
	private String customerReviews(HttpServletRequest request,Model model) {
		List<ReviewForms> reviewForms=adminServiceImpl.findAllReviewsForm();
		model.addAttribute("reviewForms", reviewForms);
		model.addAttribute("review", "All Customer reviews");
		return "admin/reviews";
	}
	
	@GetMapping("/contactform")
	private String contactUs(HttpServletRequest request,Model model) {
		List<ContactForm> contactForms=adminServiceImpl.findAllContactDetails();
		model.addAttribute("reviewForms", contactForms);
		model.addAttribute("review", "All Contact Details");
		return "admin/contactUs";
	}
	
	@GetMapping("/faqs")
	private String faqs(HttpServletRequest request,Model model) {
		List<FaqsContents> contents= adminServiceImpl.findAllFaqsContent();
		model.addAttribute("faqsContent", contents);
		model.addAttribute("faqs", "All Content");
		return "admin/faqs/showFaqs";
	}
	
	@GetMapping("/addFaqs")
	private String addFaqs(HttpServletRequest request,Model model) {
		model.addAttribute("faqs", "Add faq Content");
		return "admin/faqs/addFaqs";
	}
	
	@PostMapping("/addFaqs")
	private String addFaq(FaqsContents faqsContents,Date date,HttpServletRequest request,Model model) {
		faqsContents.setPosttime(String.valueOf(date));
		adminServiceImpl.saveFaqsContent(faqsContents);
		model.addAttribute("faqs", "Add Content successfully");
		return "admin/faqs/addFaqs";
	}
	
	@GetMapping("/editFaqs/{id}")
	private String editFaqs(@PathVariable Integer id,Model model) {
		model.addAttribute("id", id);
		model.addAttribute("command", this.adminServiceImpl.findByIdFaqsContent(id));
		model.addAttribute("faqs", "edit Faqs Content");
		return "admin/faqs/editFaqs";
	}
	
	@PostMapping("/editFaqs/{id}")
	private String editFaq(@PathVariable Integer id,FaqsContents faqsContents,HttpServletRequest request,Model model) {
		adminServiceImpl.editByIdFaqsContent(faqsContents,id);
		model.addAttribute("faqs", "Edit Content successfully");
		return "admin/faqs/addFaqs";
	}
	
	@GetMapping("/pageContent")
	private String pageContent(Model model) {
		List<PageContents> contents=adminServiceImpl.findAllPagesContent();
		model.addAttribute("contentDetails", contents);
		model.addAttribute("content", "All Content");
		return "admin/content/showContent";
	}
	
	@GetMapping("/addPageContent")
	private String addPageContent(HttpServletRequest request,Model model) {
		model.addAttribute("content", "Add new Page Content!.");
		return "admin/content/addContent";
	}
	
	@GetMapping("/viewContent/{id}")
	private @ResponseBody List<PageContents> viewContent(@PathVariable Integer id){
		List<PageContents> contents=adminServiceImpl.findAllPagesContent();
		List<PageContents> collect = contents.stream().filter(x->x.getId() == id).collect(Collectors.toList());
		return collect;
	}
	
	@PostMapping("/addPageContent")
	private String addPageContents(PageContents contents,HttpServletRequest request,MultipartFile file,Model model) {
		this.adminServiceImpl.saveImgFile(request, file);
		adminServiceImpl.savePageContent(contents,file);
		model.addAttribute("content", "Add Page successfully!.");
		return "admin/content/addContent";
	}
	
	@GetMapping("/editPageContent/{id}")
	private String editPageContent(@PathVariable Integer id,Model model) {
		model.addAttribute("id", id);
		model.addAttribute("command", this.adminServiceImpl.editByIdPageContent(id));
		model.addAttribute("faqs", "Edit Page Content");
		return "admin/content/editContent";
	}
	
	@PostMapping("/editPageContent/{id}")
	private String editPageContents(@PathVariable Integer id,PageContents contents,HttpServletRequest request,MultipartFile file,Model model) {
		this.adminServiceImpl.saveImgFile(request, file);
		adminServiceImpl.editByIdPageContent(contents,id,file);
		model.addAttribute("content", "Edit Page successfully!.");
		return "admin/content/addContent";
	}
	
	@GetMapping("/airlineContent")
	private String airlineContent(HttpServletRequest request,Model model) {
		List<AirlineContents> airlineContents=this.adminServiceImpl.findAllAirlines();
		model.addAttribute("airlineDetails", airlineContents);
		model.addAttribute("airline", "All Airline Content Details");
		return "admin/airline/showAirline";
	}
	
	@GetMapping("/addAirlineContent")
	private String addAirlineContent(HttpServletRequest request,Model model) {
		model.addAttribute("airline", "Add Airline Details");
		return "admin/airline/addAirline";
	}
	
	@PostMapping("/addAirlineContent")
	private String addAirlineContents(AirlineContent airlineContent,MultipartFile file,Date date,HttpServletRequest request,Model model) {
		this.adminServiceImpl.saveImgFile(request, file);
		try {
			List<AirlineContents> airline=this.adminServiceImpl.findAllAirlines();
			List<AirlineContents> collectAirline = airline.stream().filter(x->x.getUrl().equals(airlineContent.getUrl())).collect(Collectors.toList());
			if(airlineContent.getUrl().equals(collectAirline.get(0).getUrl())) {
				model.addAttribute("airline", "'" + collectAirline.get(0).getUrl() + "'" + " already exists!. Please Url Change...");
				return "admin/airline/addAirline";
			}
		} catch (Exception ex) {
			adminServiceImpl.saveAirlineContent(airlineContent,file,date);
			model.addAttribute("airline", "Add Airline successfully");
		}
		return "admin/airline/addAirline";
	}
	
	@GetMapping("/editAirlineContent/{id}")
	private String editAirlineContent(@PathVariable int id,Model model) {
		model.addAttribute("id", id);
		model.addAttribute("command", this.adminServiceImpl.findByIdAirlineContent(id));
		model.addAttribute("airline", "Edit airline Content!..");
		return "admin/airline/editAirline";
	}
	
	@PostMapping("/editAirlineContent/{id}")
	private String editAirlineContent(@PathVariable int id,AirlineContents airlineContents,MultipartFile file,HttpServletRequest request,Model model) {
		this.adminServiceImpl.saveImgFile(request, file);
		adminServiceImpl.editByIdAirlineContent(airlineContents,id,file);
		model.addAttribute("airline", "Edit Airline successfully");
		return "admin/airline/addAirline";
	}
	
	@GetMapping("/contactDetails/{id}")
	private @ResponseBody List<ContactForm> contactDetails(@PathVariable int id) {
		List<ContactForm> contactForms=adminServiceImpl.findAllContactDetails();
		return contactForms.stream().filter(x->x.getId()== id).collect(Collectors.toList());
	}
	
	
	
	
	@GetMapping("/category")
	private String category(HttpServletRequest request,Model model) {
		List<Categories> categories=adminServiceImpl.findAllCategories();
		model.addAttribute("category", "Categories content !.");
		model.addAttribute("categories", categories);		
		return "admin/category/showContent";
	}
	
	@GetMapping("/addCategories")
	private String addCategories(HttpServletRequest request,Model model) {
		model.addAttribute("categories", "Add new categories content !.");
		return "admin/category/addContent";
	}
	
	@PostMapping("/addCategories")
	private String addCategoriess(Category category,HttpServletRequest request,MultipartFile file,Date date,Model model) {
		this.adminServiceImpl.saveImgFile(request, file);
		adminServiceImpl.saveNewCategories(category,date,file);
		model.addAttribute("categories", "Categories successfully add !.");
		return "admin/category/addContent";
	}
	
	@GetMapping("/editCategories/{id}")
	public String editCategories(@PathVariable int id,HttpServletRequest request,Model model) {
		model.addAttribute("id", id);
		model.addAttribute("command", adminServiceImpl.findByIdCategories(id));
		model.addAttribute("categories", "Edit categories content !.");
		return "admin/category/editContent";
	}
	
	
	@PostMapping("/editCategories/{id}")
	private String editCategoriess(@PathVariable int id,Categories categories,HttpServletRequest request,MultipartFile file,Model model) {
		this.adminServiceImpl.saveImgFile(request, file);
		adminServiceImpl.editNewCategories(id,categories,file);
		model.addAttribute("categories", "Categories successfully Edit !.");
		return "admin/category/addContent";
	}
}


