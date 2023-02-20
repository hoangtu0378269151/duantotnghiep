package com.DuAnTT_LuckyMan.service;

import java.util.List;

import com.DuAnTT_LuckyMan.entity.Order;
import com.DuAnTT_LuckyMan.entity.ReportDetail;
import com.fasterxml.jackson.databind.JsonNode;

public interface OrderService {


	Order findById(Long id);
    
	List<Order> findByUsername(String username);

	public void deleteById(Long id);


	List<Order> findAll();

	Order create(JsonNode orderData);

	Order update(Order order);

	Order create1(Order order);

	Order update1(Order order);

	void save(Order a);

	List<ReportDetail> thongKeDoanhThu();



}	
