package com.hintguys.service;

import java.util.ArrayList;
import java.util.List;

import com.hintguys.form.Categories;
import com.hintguys.form.NewsArticles;

public interface NewsArticleService {

	ArrayList<NewsArticles> findNewsArticleByTitleUrlAndPageTypeAndStatus(String titleUrl, String pageType, String status);
	List<Categories> findAllCategories(String status,String code);
	ArrayList<NewsArticles> getAllRecentNewsArticle(String status);
	ArrayList<NewsArticles> findAllNewsArticlePageTypeAndStatus(String status, String pageType, String code);
	ArrayList<NewsArticles> findRecentNewsArticle(String status, String pageType, String code);

}
