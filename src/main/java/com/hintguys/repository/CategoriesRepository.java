package com.hintguys.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.hintguys.entity.Category;

@Repository
public interface CategoriesRepository extends JpaRepository<Category, Integer> {

	List<Category> findByStatus(String status);
	@Query("SELECT u FROM Category u WHERE u.status = 'Active' order by id Desc")
	List<Category> findByActiveCategory(@Param("status") String status);
	
	@Query("SELECT u FROM Category u WHERE u.countryCode = :countryCode order by id Desc")
	List<Category> findByCountryCode(@Param("countryCode") String countryCode);

}
