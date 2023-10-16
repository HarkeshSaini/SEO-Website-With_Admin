package com.hintguys.service;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import com.hintguys.entity.AirlineContent;
import com.hintguys.entity.Category;
import com.hintguys.entity.ContactForm;
import com.hintguys.entity.NewsArticle;
import com.hintguys.form.AirlineContents;
import com.hintguys.form.Categories;
import com.hintguys.form.FaqsContents;
import com.hintguys.form.NewsArticles;
import com.hintguys.form.PageContents;
import com.hintguys.form.ReviewForms;

public interface AdminContentService {

	public void saveImgFile(HttpServletRequest request, MultipartFile file);

	public List<NewsArticles> findAllNewsArticle();

	public void saveAllNewsArticle(NewsArticle newsArticle, MultipartFile file, Date date);

	public Object findByIdNewsArticle(Integer id);

	public List<ReviewForms> findAllReviewsForm();

	public List<ContactForm> findAllContactDetails();

	public void editNewsArticleById(NewsArticles newsArticles, Integer id, MultipartFile file);

	public void saveFaqsContent(FaqsContents faqsContents);

	public List<FaqsContents> findAllFaqsContent();

	public Object findByIdFaqsContent(Integer id);

	public void editByIdFaqsContent(FaqsContents faqsContents, Integer id);

	public List<PageContents> findAllPagesContent();

	public void savePageContent(PageContents pageContents, MultipartFile file);

	public Object editByIdPageContent(Integer id);

	public void editByIdPageContent(PageContents pageContents, Integer id, MultipartFile file);

	public List<AirlineContents> findAllAirlines();

	public void saveAirlineContent(AirlineContent airlineContent, MultipartFile file, Date date);

	public Object findByIdAirlineContent(int id);

	public void editByIdAirlineContent(AirlineContents airlineContents, int id, MultipartFile file);

	List<Categories> findAllCategories();

	public void saveNewCategories(Category category, Date date, MultipartFile file);
}
