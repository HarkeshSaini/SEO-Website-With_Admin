package com.hintguys.service.impl;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.hintguys.entity.AirlineContent;
import com.hintguys.entity.Category;
import com.hintguys.entity.ContactForm;
import com.hintguys.entity.FaqsContent;
import com.hintguys.entity.HomeContent;
import com.hintguys.entity.IndexContent;
import com.hintguys.entity.NewsArticle;
import com.hintguys.entity.PageContent;
import com.hintguys.entity.ReviewForm;
import com.hintguys.form.AirlineContents;
import com.hintguys.form.Categories;
import com.hintguys.form.FaqsContents;
import com.hintguys.form.HomeContents;
import com.hintguys.form.IndexContents;
import com.hintguys.form.NewsArticles;
import com.hintguys.form.PageContents;
import com.hintguys.form.ReviewForms;
import com.hintguys.repository.AirlineContentsRepository;
import com.hintguys.repository.CategoriesRepository;
import com.hintguys.repository.ContactFormRepository;
import com.hintguys.repository.FaqsContentRepository;
import com.hintguys.repository.HomeContentRepository;
import com.hintguys.repository.IndexContentRepositroy;
import com.hintguys.repository.NewsArticleRepository;
import com.hintguys.repository.PageContentRepository;
import com.hintguys.repository.ReviewFormRepository;
import com.hintguys.service.AdminContentService;

@Service
public class AdminServiceImpl implements AdminContentService {

	@Value("${imgPath}")
	public String path;
	
	@Autowired
	private NewsArticleRepository articleRepository;
	@Autowired 
	private ReviewFormRepository reviewRepository;
	@Autowired
	private ContactFormRepository formRepository;
	@Autowired
	private FaqsContentRepository faqsContentRepository;
	@Autowired
	private PageContentRepository contentRepository;
	@Autowired
	private AirlineContentsRepository airlineContentsRepository;
	
	@Autowired
	private HomeContentRepository homeContentRepository;
	
	@Autowired
	private IndexContentRepositroy indexContentRepositroy;
	
	@Autowired
	private CategoriesRepository categoriesRepository;
	
	@Autowired
	private ModelMapper modelMapper;
	@Autowired
	private ObjectMapper mapper;

	public static String UPLOAD_IMGFILE;

	public void saveImgFile(HttpServletRequest request, MultipartFile file) {
		UPLOAD_IMGFILE = String.valueOf(request.getServletContext().getRealPath("") + path+"resources"+path+"admin"+path+"images"+path);
		if (file.getSize() != 0) {
			try {
				Path path = Paths.get(UPLOAD_IMGFILE + file.getOriginalFilename());
				Files.copy(file.getInputStream(), path, StandardCopyOption.REPLACE_EXISTING);
			} catch (Exception ex) {
			}
		}
	}

	public void saveHomeContent(HomeContent homeContent,MultipartFile file,HttpServletRequest request) {
		homeContent.setImgUrl(file.getOriginalFilename());
		homeContentRepository.save(homeContent);
	}

	public List<HomeContents> findAllHomeContent() {
		return homeContentRepository.findAll().stream().map(homeContent -> modelMapper.map(homeContent, HomeContents.class)).collect(Collectors.toList());
	}

	public HomeContent editHomeContent(HomeContents homeContents, Integer id,MultipartFile file,HttpServletRequest request) {
		homeContents.setImgUrl(file.getOriginalFilename());
		if (file.getSize() == 0) {
			Optional<HomeContent> imgurls = homeContentRepository.findById(id);
			homeContents.setImgUrl(imgurls.get().getImgUrl());
		}
		HomeContent contents = mapper.convertValue(homeContents, HomeContent.class);  
		return homeContentRepository.save(contents);
	}

	public Object findByIdHomeContent(int id) {
		return homeContentRepository.findById(id);
	}

	public void saveIndexContent(IndexContent indexContent,MultipartFile file,HttpServletRequest request) {
		indexContent.setImgUrl(file.getOriginalFilename());
		indexContentRepositroy.save(indexContent);
	}

	public List<IndexContents> findAllIndexContent() {
		return indexContentRepositroy.findAll().stream().map(indexContent -> modelMapper.map(indexContent, IndexContents.class)).collect(Collectors.toList());
	}
	
	
	
	public List<NewsArticles> findAllNewsArticle() {
		return articleRepository.findAll().stream().map(newsArticle -> this.modelMapper.map(newsArticle, NewsArticles.class)).collect(Collectors.toList());
	}

	public List<NewsArticle> findByTitleUrl(String titleUrl) {
		return articleRepository.findByTitleUrl(titleUrl);
	}
	
	public void saveAllNewsArticle(NewsArticle newsArticle, MultipartFile file, Date date) {
		newsArticle.setPosttime(String.valueOf(date));
		newsArticle.setImgUrl(file.getOriginalFilename());
		newsArticle.setTitleUrl(newsArticle.getTitleUrl().toLowerCase().replace(" ", "-").toString());
		articleRepository.save(newsArticle);
	}

	public Object findByIdNewsArticle(Integer id) {
		return articleRepository.findById(id);
	}

	public void editNewsArticleById(NewsArticles newsArticles, Integer id, MultipartFile file) {
		newsArticles.setImgUrl(file.getOriginalFilename());
		if (file.getSize() == 0) {
			Optional<NewsArticle> content = articleRepository.findById(id);
			newsArticles.setImgUrl(content.get().getImgUrl());
		}
		newsArticles.setTitleUrl(newsArticles.getTitleUrl().toLowerCase().replace(" ", "-").toString());
		NewsArticle article = mapper.convertValue(newsArticles, NewsArticle.class);
		articleRepository.save(article);
	}

	public List<ReviewForms> findAllReviewsForm() {
		return reviewRepository.findAll().stream().map(reviewForm ->modelMapper.map(reviewForm, ReviewForms.class)).collect(Collectors.toList());
	}

	public List<ContactForm> findAllContactDetails() {
		return formRepository.findAll();
	}

	public void saveFaqsContent(FaqsContents faqsContents) {
		FaqsContent content=mapper.convertValue(faqsContents, FaqsContent.class);
		faqsContentRepository.save(content);
	}

	public List<FaqsContents> findAllFaqsContent() {
		return faqsContentRepository.findAll().stream().map(faqsContent ->modelMapper.map(faqsContent, FaqsContents.class)).collect(Collectors.toList());
	}

	public Object findByIdFaqsContent(Integer id) {
		return faqsContentRepository.findById(id);
	}

	public void editByIdFaqsContent(FaqsContents faqsContents, Integer id) {
		faqsContentRepository.deleteById(id);
		FaqsContent content=mapper.convertValue(faqsContents, FaqsContent.class);
		faqsContentRepository.save(content);
	}

	public List<PageContents> findAllPagesContent() {
		return contentRepository.findAll().stream().map(pageContent -> modelMapper.map(pageContent, PageContents.class)).collect(Collectors.toList());
	}

	public void savePageContent(PageContents pageContents, MultipartFile file) {
		pageContents.setImgUrl(file.getOriginalFilename());
		PageContent pageContent=mapper.convertValue(pageContents, PageContent.class);
		contentRepository.save(pageContent);
	}

	public Object editByIdPageContent(Integer id) {
		return contentRepository.findById(id);
	}

	public void editByIdPageContent(PageContents pageContents, Integer id, MultipartFile file) {
		pageContents.setImgUrl(file.getOriginalFilename());
		if (file.getSize() == 0) {
			Optional<PageContent> content = contentRepository.findById(id);
			pageContents.setImgUrl(content.get().getImgUrl());
		}
		PageContent content = mapper.convertValue(pageContents, PageContent.class);
		contentRepository.save(content);
	}

	public List<AirlineContents> findAllAirlines() {
		return airlineContentsRepository.findAll().stream().map(airlineContent -> modelMapper.map(airlineContent, AirlineContents.class)).collect(Collectors.toList());
	}

	public void saveAirlineContent(AirlineContent airlineContent, MultipartFile file, Date date) {
		airlineContent.setContentImage(file.getOriginalFilename());
		airlineContent.setModifyDate(String.valueOf(date));
		airlineContent.setUrl(airlineContent.getUrl().toLowerCase().replace(" ", "-"));
		airlineContentsRepository.save(airlineContent);
	}

	public Object findByIdAirlineContent(int id) {
		return airlineContentsRepository.findById(id);
	}

	public void editByIdAirlineContent(AirlineContents airlineContents, int id, MultipartFile file) {
		airlineContents.setContentImage(file.getOriginalFilename());
		if (file.getSize() == 0) {
			Optional<AirlineContent> content = airlineContentsRepository.findById(id);
			airlineContents.setContentImage(content.get().getContentImage());
		} 
		AirlineContent airline=mapper.convertValue(airlineContents, AirlineContent.class);
		airlineContentsRepository.save(airline);
	}

	public List<Categories> findAllCategories() {
		List<Category> findAll = categoriesRepository.findAll();
		ArrayList<Categories>  arrayList=new ArrayList<Categories>();
		for(Category category:findAll) {
			Categories categories=new Categories();
			categories.setCategoryName(category.getCategoryName());
			categories.setCategoryUrl(category.getCategoryUrl());
			categories.setId(category.getId());
			categories.setImgUrl(category.getImgUrl());
			categories.setPostTime(category.getPostTime());
			categories.setStatus(category.getStatus());
			arrayList.add(categories);
		}
		return arrayList;
	}

	public void saveNewCategories(Category category, Date date, MultipartFile file) {
		category.setImgUrl(file.getOriginalFilename());
		category.setPostTime(String.valueOf(date));
		categoriesRepository.save(category);
	}

	public Object findByIdCategories(int id) {
		return categoriesRepository.findById(id);
	}

	public void editNewCategories(int id, Categories categories, MultipartFile file) {
		try {
			if(file.getSize() == 0) {
				 Category category = categoriesRepository.findById(id).get();
				  String imgUrl  = category.getImgUrl();
				  categories.setImgUrl(imgUrl);
			}
		} catch (Exception e) {
			 e.printStackTrace();
		}
		Category category=mapper.convertValue(categories, Category.class);
		categoriesRepository.save(category);
	}

	public ReviewForm editStatusReviewsForm(int id, String checkboxValue) {
		ReviewForm reviewForm = reviewRepository.findById(id).get();
		if (checkboxValue.contains("false") == false) {
		    reviewForm.setReviewStatus("Active");
		  } else {
			  reviewForm.setReviewStatus("InActive");
		  }
		return reviewRepository.save(reviewForm);
	}

	public Object findByIdIndexContent(int id) {
		return indexContentRepositroy.findById(id);
	}

	
	public void editIndexContent(int id, IndexContent indexContent, MultipartFile file, HttpServletRequest request) {
		indexContent.setImgUrl(file.getOriginalFilename());
		if (file.getSize() == 0) {
			Optional<IndexContent> content = indexContentRepositroy.findById(id);
			indexContent.setImgUrl(content.get().getImgUrl());
		}
		IndexContent content = mapper.convertValue(indexContent, IndexContent.class);
		indexContentRepositroy.save(content);
	}

	
}
