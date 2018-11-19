package com.aikam.service;

import com.aikam.entity.Order;
import com.aikam.repos.OrderRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class OrderService {
    @Autowired
    private OrderRepo orderRepo;

    public List<Order> findOrders() {
        List<Order> orderList = orderRepo.findAll();
        List<Order> ordersById = new ArrayList<>();
        for (Order order : orderList) {
            if (!ordersById.contains(order)) {
                ordersById.add(order);
            }
        }
        return ordersById;
    }

    public List<Order> getAllByOrderId(long id) {
        return orderRepo.findAllByOrderId(id);
    }
}
