package com.hintguys.repository;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.hintguys.entity.IndexContent;


@Repository
public interface IndexContentRepositroy extends JpaRepository<IndexContent, Integer>{

	List<IndexContent> findByPageType(String pageType);

}
