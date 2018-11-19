package com.aikam.controller;

import com.aikam.entity.Order;
import com.aikam.service.OrderService;
import com.aikam.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

@Controller
public class MainController {
    @Autowired
    private ProductService productService;

    @Autowired
    private OrderService orderService;

    @GetMapping("/")
    public String starting(Model model) {
        model.addAttribute("orders", orderService.findOrders());
        return "orderList";
    }

    @GetMapping("/order/{id}")
    public String getById(
            @PathVariable("id") long id,
            Model model
    ) {
        List<Order> orderList = orderService.getAllByOrderId(id);
        model.addAttribute("orders", orderList);
        model.addAttribute("orderId", orderList.get(0).getOrderId());
        return "showOrder";
    }
}
