package com.spring.security.test;

import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.ProviderManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.jdbc.JdbcDaoImpl;
import org.springframework.security.web.authentication.AuthenticationFilter;

import java.security.Principal;

public class ClassInfo {
    UsernamePasswordAuthenticationToken usernamePasswordAuthenticationToken;
    AuthenticationFilter authenticationFilter;
    SecurityContext securityContext;
    Authentication authentication;
    Principal principal;

    AuthenticationManager authenticationManager;
    AuthenticationManagerBuilder authenticationManagerBuilder;
    AuthenticationProvider authenticationProvider;
    ProviderManager providerManager;

    UserDetailsService userDetailsService;
    UserDetails userDetails;
    User user;

    JdbcDaoImpl jdbcDao;
    DaoAuthenticationProvider daoAuthenticationProvider;
}
