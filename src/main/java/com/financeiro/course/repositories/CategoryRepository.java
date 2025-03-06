package com.financeiro.course.repositories;

import com.financeiro.course.entities.Category;
import com.financeiro.course.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CategoryRepository extends JpaRepository<Category, Long> {


}
