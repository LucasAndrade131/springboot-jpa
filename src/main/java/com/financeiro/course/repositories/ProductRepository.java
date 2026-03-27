package com.financeiro.course.repositories;

import com.financeiro.course.entities.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface ProductRepository extends JpaRepository<Product, Long> {

    @Query("SELECT p FROM Product p WHERE p.price > :value")
    List<Product> findByPriceGreaterThan(@Param("value") Double value);

}
