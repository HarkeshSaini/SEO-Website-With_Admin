package com.hintguys.controller;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@SuppressWarnings("deprecation")
@Configuration
@EnableWebSecurity
public class SecurityController extends WebSecurityConfigurerAdapter {

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.csrf().disable().authorizeRequests().antMatchers("/admin/**").hasRole("ADMIN").and().formLogin()
		.permitAll().defaultSuccessUrl("/admin/dashboard", true).and().logout()
		.logoutRequestMatcher(new AntPathRequestMatcher("/logout")).and().exceptionHandling()
		.accessDeniedPage("/admin/dashboard").and().sessionManagement().maximumSessions(1)
		.expiredUrl("/login?expired");
	}

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.inMemoryAuthentication().withUser("admin@hintguys.com").password("hintguys@snva.com").roles("ADMIN")
		.and().passwordEncoder(NoOpPasswordEncoder.getInstance());
	}
	
	
}
