package com.hintguys.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.hintguys.entity.AirlineContent;

@Repository
public interface AirlineContentsRepository extends JpaRepository<AirlineContent, Integer>{

	List<AirlineContent> findByStatusAndUrlAndPageType(String ststus, String url,String pageType);

	List<AirlineContent> findTo10ByStatusAndPageType(String status, String pageType);

	List<AirlineContent> findByStatusAndPageType(String status, String pageType);



}
