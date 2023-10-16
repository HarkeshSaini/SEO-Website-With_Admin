package com.hintguys.service;

import java.util.ArrayList;
import java.util.List;

import com.hintguys.entity.Category;
import com.hintguys.form.Categories;
import com.hintguys.form.NewsArticles;

public interface NewsArticleService {

	ArrayList<NewsArticles> findRecentNewsArticle(String status, String pageType);
	ArrayList<NewsArticles> findNewsArticleByTitleUrlAndPageTypeAndStatus(String titleUrl, String pageType, String status);
	ArrayList<NewsArticles> findAllNewsArticlePageTypeAndStatus(String status, String pageType);
	List<Categories> findAllCategories();

}
