package com.hintguys.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.hintguys.entity.Category;

@Repository
public interface CategoriesRepository extends JpaRepository<Category, Integer>{

}
