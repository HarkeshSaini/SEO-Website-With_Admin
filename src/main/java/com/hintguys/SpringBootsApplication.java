package com.hintguys;

import org.modelmapper.ModelMapper;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;

import com.fasterxml.jackson.databind.ObjectMapper;

@SpringBootApplication
public class SpringBootsApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringBootsApplication.class, args);
	}

	public void addResourceHandlers(final ResourceHandlerRegistry registry) {
		registry.setOrder(Integer.MIN_VALUE);
	}

	@Bean
	public ModelMapper modelMapper() {
		return new ModelMapper();
	}

	@Bean
	public ObjectMapper objectMapper() {
		return new ObjectMapper();
	}
}
