package com.cisco.sporty.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cisco.sporty.entity.Sales;

public interface Salesrepo extends JpaRepository<Sales,Integer>{

	

	List<Sales> findBydate(String dt);

}
