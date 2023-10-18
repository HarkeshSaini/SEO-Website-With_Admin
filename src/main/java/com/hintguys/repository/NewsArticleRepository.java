package com.hintguys.repository;

import java.util.ArrayList;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.hintguys.entity.NewsArticle;

@Repository
public interface NewsArticleRepository extends JpaRepository<NewsArticle, Integer> {
 

	List<NewsArticle> findTop10ByStatusAndPageType(String status,String pageType);

	ArrayList<NewsArticle> findByPageTypeAndStatus(String pageType,String status);

	List<NewsArticle> findByTitleUrlAndPageTypeAndStatus(String titleUrl, String pageType, String status);

	List<NewsArticle> findByTitleUrl(String titleUrl);

	List<NewsArticle> findByStatus(String status);


}
