package com.hintguys.service.impl;

import java.util.ArrayList;
import java.util.List;

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
	public ArrayList<NewsArticles> findAllNewsArticlePageTypeAndStatus(String status, String pageType) {
		ArrayList<NewsArticle> detail = articleRepository.findByPageTypeAndStatus(status, pageType);
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
			arrayList.add(articles);
		}
		return arrayList;
	}

	@Override
	public ArrayList<NewsArticles> findRecentNewsArticle(String status, String pageType) {
		List<NewsArticle> details = articleRepository.findTop10ByStatusAndPageType(status, pageType);
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
			arrayList.add(articles);
		}
		return arrayList;
	}

	@Override
	public ArrayList<NewsArticles> findNewsArticleByTitleUrlAndPageTypeAndStatus(String titleUrl, String pageType,
			String status) {
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
			arrayList.add(articles);
		}
		return arrayList;
	}

	public List<Categories> findAllCategories(String status) {
		List<Category> findAll = categoriesRepository.findByStatus(status);
		ArrayList<Categories> arrayList = new ArrayList<Categories>();
		for (Category category : findAll) {
			Categories categories = new Categories();
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
			arrayList.add(articles);
		}
		return arrayList;
	}
}
