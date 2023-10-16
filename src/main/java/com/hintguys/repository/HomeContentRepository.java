package com.hintguys.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.hintguys.entity.HomeContent;

@Repository
public interface HomeContentRepository extends JpaRepository<HomeContent, Integer> {
	
}
