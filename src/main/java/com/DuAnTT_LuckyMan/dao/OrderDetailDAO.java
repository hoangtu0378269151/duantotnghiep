package com.DuAnTT_LuckyMan.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.DuAnTT_LuckyMan.entity.Account;
import com.DuAnTT_LuckyMan.entity.OrderDetail;
import com.DuAnTT_LuckyMan.entity.ReportDetail;

public interface OrderDetailDAO extends JpaRepository<OrderDetail, Integer> {
	
	@Query("SELECT new ReportDetail(d.order.account.username, d.order.createDate , sum(d.price * d.quantity), sum(d.quantity)) FROM OrderDetail d GROUP BY d.order.account.username, d.order.createDate ") 
	List<ReportDetail> thongKeDoanhThu();
	
	@Query("SELECT p FROM OrderDetail p WHERE p.order.id = ?1 ")
	List<OrderDetail> findByName(Long id);

}
