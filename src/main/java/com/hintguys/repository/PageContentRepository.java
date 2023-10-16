package com.hintguys.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.hintguys.entity.PageContent;

@Repository
public interface PageContentRepository extends JpaRepository<PageContent, Integer> {

	List<PageContent> findByCategoryNameAndStatus(String page, String status);

}
