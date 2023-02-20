package com.DuAnTT_LuckyMan.Controller;



import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.DuAnTT_LuckyMan.entity.Order;
import com.DuAnTT_LuckyMan.service.OrderService;



@Controller
public class OrderController {
	
	@Autowired
	OrderService orderService;
	
    @RequestMapping("/order/checkout")
    public String checkout() {
    	return "cart/checkout";
    }
    
    @RequestMapping("/order/list")
    public String list(Model m, HttpServletRequest request,Order order) {
    	String username = request.getRemoteUser();
    	m.addAttribute("orders", orderService.findByUsername(username));
    	return "order/list";
    }
    
    @RequestMapping("/order/detail/{id}")
    public String detail(@PathVariable("id")Long id, Model m) {
    	m.addAttribute("order", orderService.findById(id));
    	return "order/detail";
    }
    
    @RequestMapping("/huydon/{id}")
    public String huydon(@PathVariable("id")Long id,Model m,HttpServletRequest request,Order order) {
    	 Order a = orderService.findById(id);
    	 a.setStatus("Hủy đơn hàng");
    	 orderService.save(a);
    	 m.addAttribute("tb", "Đã hủy ID đơn hàng: " + a.getId());
    	 String username = request.getRemoteUser();
     	 m.addAttribute("orders", orderService.findByUsername(username));
    	 return "/order/list";
    }
    
}
