package com.financeiro.course.repositories;

import com.financeiro.course.entities.OrderItem;
import com.financeiro.course.entities.pk.OrderItemPK;
import org.springframework.data.jpa.repository.JpaRepository;

public interface OrderItemRepository extends JpaRepository<OrderItem, OrderItemPK> {


}
