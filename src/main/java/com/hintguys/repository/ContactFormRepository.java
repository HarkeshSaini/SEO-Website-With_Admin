package com.hintguys.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.hintguys.entity.ContactForm;

@Repository
public interface ContactFormRepository extends JpaRepository<ContactForm, Integer>{


}
