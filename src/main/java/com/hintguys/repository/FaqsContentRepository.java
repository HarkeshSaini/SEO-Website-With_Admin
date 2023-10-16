package com.hintguys.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.hintguys.entity.FaqsContent;

@Repository
public interface FaqsContentRepository extends JpaRepository<FaqsContent, Integer>{

	List<FaqsContent> findByUrlAndFaqStatus(String pageUrl,String status);


}
 