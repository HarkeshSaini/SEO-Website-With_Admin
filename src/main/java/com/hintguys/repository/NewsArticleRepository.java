package com.hintguys.repository;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.hintguys.entity.NewsArticle;
import com.hintguys.form.NewsArticles;

@Repository
public interface NewsArticleRepository extends JpaRepository<NewsArticle, Integer> {

	@Query("SELECT u FROM NewsArticle u WHERE u.status = :status And u.pageType = :pageType And u.countryCode = :countryCode order by id Desc")
	List<NewsArticle> findTop6ByStatusAndPageTypeAndCountryCode(@Param("status") String status, @Param("pageType") String pageType,@Param("countryCode") String countryCode);

	@Query("SELECT u FROM NewsArticle u WHERE u.pageType = :pageType And u.status = :status order by id Desc")
	ArrayList<NewsArticle> findByPageTypeAndStatus(@Param("pageType") String pageType, @Param("status") String status);

	List<NewsArticle> findByTitleUrlAndPageTypeAndStatus(String titleUrl, String pageType, String status);

	@Query("SELECT u FROM NewsArticle u WHERE u.titleUrl = :titleUrl order by id Desc")
	List<NewsArticle> findByTitleUrl(@Param("titleUrl") String titleUrl);

	@Query("SELECT u FROM NewsArticle u WHERE u.status = :status order by id Desc")
	List<NewsArticle> findByStatus(@Param("status") String status);

	@Query("SELECT u FROM NewsArticle u WHERE u.pageType = :pageType And u.status = :status And u.countryCode = :countryCode order by id Desc")
	ArrayList<NewsArticle> findByPageTypeAndStatusAndCountryCode(@Param("pageType") String pageType, @Param("status") String status,@Param("countryCode") String countryCode);

	@Query("SELECT u FROM NewsArticle u WHERE u.status = :status And u.pageType = :pageType order by id Desc")
	List<NewsArticle> findTop6ByStatusAndPageType(@Param("status") String status, @Param("pageType") String pageType);


}
