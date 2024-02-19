package com.hintguys.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hintguys.entity.Category;
import com.hintguys.entity.NewsArticle;
import com.hintguys.form.Categories;
import com.hintguys.form.NewsArticles;
import com.hintguys.repository.CategoriesRepository;
import com.hintguys.repository.NewsArticleRepository;
import com.hintguys.service.NewsArticleService;

@Service
public class NewsArticlesServiceImpl implements NewsArticleService {

	@Autowired
	public NewsArticleRepository articleRepository;

	@Autowired
	public CategoriesRepository categoriesRepository;

	@Override
	public ArrayList<NewsArticles> findAllNewsArticlePageTypeAndStatus(String pageType,String status,String code) {
		List<NewsArticle> detail = new ArrayList<NewsArticle>();
		if (!code.isEmpty()) {
			detail = articleRepository.findByPageTypeAndStatusAndCountryCode(pageType,status,code);
		} else {
			detail = articleRepository.findByPageTypeAndStatus(pageType,status).stream().filter(x->x.getCountryCode() == null).collect(Collectors.toList());
		}
		ArrayList<NewsArticles> arrayList = new ArrayList<NewsArticles>();
		for (NewsArticle newsArticle : detail) {
			NewsArticles articles = new NewsArticles();
			articles.setCategoryName(newsArticle.getCategoryName());
			articles.setContent(newsArticle.getContent());
			articles.setDescription(newsArticle.getDescription());
			articles.setExtraTag(newsArticle.getExtraTag());
			articles.setHeading(newsArticle.getHeading());
			articles.setId(newsArticle.getId());
			articles.setImgUrl(newsArticle.getImgUrl());
			articles.setKeywords(newsArticle.getKeywords());
			articles.setPageType(newsArticle.getPageType());
			articles.setPosttime(newsArticle.getPosttime());
			articles.setStatus(newsArticle.getStatus());
			articles.setTfnFooter(newsArticle.getTfnFooter());
			articles.setTfnPopup(newsArticle.getTfnPopup());
			articles.setTfnHeader(newsArticle.getTfnHeader());
			articles.setTitle(newsArticle.getTitle());
			articles.setTitleUrl(newsArticle.getTitleUrl());
			articles.setCountryCode(newsArticle.getCountryCode());
			arrayList.add(articles);
		}
		return arrayList;
	}

	@Override
	public ArrayList<NewsArticles> findRecentNewsArticle(String status, String pageType, String code) {
		List<NewsArticle> details = new ArrayList<NewsArticle>();
		if (!code.isEmpty()) {
			details = articleRepository.findTop6ByStatusAndPageTypeAndCountryCode(status, pageType,code);
		} else {
			details = articleRepository.findTop6ByStatusAndPageType(status, pageType).stream().filter(x->x.getCountryCode() == null).collect(Collectors.toList());
		}
		ArrayList<NewsArticles> arrayList = new ArrayList<NewsArticles>();
		for (NewsArticle newsArticle : details) {
			NewsArticles articles = new NewsArticles();
			articles.setCategoryName(newsArticle.getCategoryName());
			articles.setContent(newsArticle.getContent());
			articles.setDescription(newsArticle.getDescription());
			articles.setExtraTag(newsArticle.getExtraTag());
			articles.setHeading(newsArticle.getHeading());
			articles.setId(newsArticle.getId());
			articles.setImgUrl(newsArticle.getImgUrl());
			articles.setKeywords(newsArticle.getKeywords());
			articles.setPageType(newsArticle.getPageType());
			articles.setPosttime(newsArticle.getPosttime());
			articles.setStatus(newsArticle.getStatus());
			articles.setTfnFooter(newsArticle.getTfnFooter());
			articles.setTfnPopup(newsArticle.getTfnPopup());
			articles.setTfnHeader(newsArticle.getTfnHeader());
			articles.setTitle(newsArticle.getTitle());
			articles.setTitleUrl(newsArticle.getTitleUrl());
			articles.setCountryCode(newsArticle.getCountryCode());
			arrayList.add(articles);
		}
		return arrayList;
	}

	@Override
	public ArrayList<NewsArticles> findNewsArticleByTitleUrlAndPageTypeAndStatus(String titleUrl, String pageType, String status) {
		List<NewsArticle> details = articleRepository.findByTitleUrlAndPageTypeAndStatus(titleUrl, pageType, status);
		ArrayList<NewsArticles> arrayList = new ArrayList<NewsArticles>();
		for (NewsArticle newsArticle : details) {
			NewsArticles articles = new NewsArticles();
			articles.setCategoryName(newsArticle.getCategoryName());
			articles.setContent(newsArticle.getContent());
			articles.setDescription(newsArticle.getDescription());
			articles.setExtraTag(newsArticle.getExtraTag());
			articles.setHeading(newsArticle.getHeading());
			articles.setId(newsArticle.getId());
			articles.setImgUrl(newsArticle.getImgUrl());
			articles.setKeywords(newsArticle.getKeywords());
			articles.setPageType(newsArticle.getPageType());
			articles.setPosttime(newsArticle.getPosttime());
			articles.setStatus(newsArticle.getStatus());
			articles.setTfnFooter(newsArticle.getTfnFooter());
			articles.setTfnPopup(newsArticle.getTfnPopup());
			articles.setTfnHeader(newsArticle.getTfnHeader());
			articles.setTitle(newsArticle.getTitle());
			articles.setTitleUrl(newsArticle.getTitleUrl());
			articles.setCountryCode(newsArticle.getCountryCode());
			arrayList.add(articles);
		}
		return arrayList;
	}

	public List<Categories> findAllCategories(String status, String code) {
		List<Category> findAll = new ArrayList<Category>();
		if (!code.isEmpty()) {
			findAll = categoriesRepository.findByCountryCode(code);
		} else {
			findAll = categoriesRepository.findByActiveCategory(status).stream().filter(x->x.getCountryCode() == null).collect(Collectors.toList());
		}
		ArrayList<Categories> arrayList = new ArrayList<Categories>();
		for (Category category : findAll) {
			Categories categories = new Categories();
			categories.setCategoryName(category.getCategoryName());
			categories.setCategoryUrl(category.getCategoryUrl());
			categories.setId(category.getId());
			categories.setImgUrl(category.getImgUrl());
			categories.setPostTime(category.getPostTime());
			categories.setStatus(category.getStatus());
			categories.setCountryCode(category.getCountryCode());
			arrayList.add(categories);
		}
		return arrayList;
	}

	@Override
	public ArrayList<NewsArticles> getAllRecentNewsArticle(String status) {
		List<NewsArticle> details = articleRepository.findByStatus(status);
		ArrayList<NewsArticles> arrayList = new ArrayList<NewsArticles>();
		for (NewsArticle newsArticle : details) {
			NewsArticles articles = new NewsArticles();
			articles.setCategoryName(newsArticle.getCategoryName());
			articles.setContent(newsArticle.getContent());
			articles.setDescription(newsArticle.getDescription());
			articles.setExtraTag(newsArticle.getExtraTag());
			articles.setHeading(newsArticle.getHeading());
			articles.setId(newsArticle.getId());
			articles.setImgUrl(newsArticle.getImgUrl());
			articles.setKeywords(newsArticle.getKeywords());
			articles.setPageType(newsArticle.getPageType());
			articles.setPosttime(newsArticle.getPosttime());
			articles.setStatus(newsArticle.getStatus());
			articles.setTfnFooter(newsArticle.getTfnFooter());
			articles.setTfnPopup(newsArticle.getTfnPopup());
			articles.setTfnHeader(newsArticle.getTfnHeader());
			articles.setTitle(newsArticle.getTitle());
			articles.setTitleUrl(newsArticle.getTitleUrl());
			articles.setCountryCode(newsArticle.getCountryCode());
			arrayList.add(articles);
		}
		return arrayList;
	}

}
