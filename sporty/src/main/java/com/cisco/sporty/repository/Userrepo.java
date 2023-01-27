package com.cisco.sporty.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cisco.sporty.entity.User;

public interface Userrepo extends JpaRepository<User,String> {

}
