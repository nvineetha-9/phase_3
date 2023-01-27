package com.cisco.sporty.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import java.util.*;
import com.cisco.sporty.entity.Product;

public interface Productrepo extends JpaRepository<Product, String>{

	

	List<Product> findBypname(String pname);

}
