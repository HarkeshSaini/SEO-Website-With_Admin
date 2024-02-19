package com.hintguys.repository;

import java.util.ArrayList;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.hintguys.entity.ReviewForm;

@Repository
public interface ReviewFormRepository extends JpaRepository<ReviewForm, Integer> {

	List<ReviewForm> findByReviewUrlAndReviewStatus(String pageUrl, String status);

	ArrayList<ReviewForm> findByReviewStatus(String status);

	ArrayList<ReviewForm> findByCountryCode(String code);

}
