package com.DuAnTT_LuckyMan.Controller;

import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.text.NumberFormat;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ThreadLocalRandom;
import java.util.regex.Pattern;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.DuAnTT_LuckyMan.Config;
import com.DuAnTT_LuckyMan.dao.OrderDAO;
import com.DuAnTT_LuckyMan.dao.OrderDetailDAO;
import com.DuAnTT_LuckyMan.dao.ProductDAO;
import com.DuAnTT_LuckyMan.dao.ProductDetailDAO;
import com.DuAnTT_LuckyMan.entity.Order;
import com.DuAnTT_LuckyMan.entity.OrderDetail;
import com.DuAnTT_LuckyMan.entity.Product;
import com.DuAnTT_LuckyMan.entity.ProductDetail;
import com.DuAnTT_LuckyMan.service.MailService;
import com.DuAnTT_LuckyMan.service.OrderService;

@Controller
@RequestMapping("/pay")
public class PaymentController {
	@Autowired
	OrderDAO orDao;
	@Autowired
	OrderService orService;
	@Autowired
	OrderDetailDAO ordetailDao;
	@Autowired
	ProductDAO proDao;
	@Autowired
	ProductDetailDAO proDetailDao;
	@Autowired
	MailService mailService;
	@Autowired
	HttpServletRequest req;
	
	@RequestMapping("/ipn")
	public String ipn(Model m) throws ServletException, IOException{
		
		Map fields = new HashMap();
	    for (Enumeration params = req.getParameterNames(); params.hasMoreElements();) {
	        //String fieldName = (String) params.nextElement();
	        //String fieldValue = request.getParameter(fieldName);
	        String fieldName = URLEncoder.encode((String) params.nextElement(), StandardCharsets.US_ASCII.toString());
	        String fieldValue = URLEncoder.encode(req.getParameter(fieldName), StandardCharsets.US_ASCII.toString());
	        if ((fieldValue != null) && (fieldValue.length() > 0)) {
	            fields.put(fieldName, fieldValue);
	        }
	    }
	    
	    String id = req.getParameter("vnp_TxnRef");
	    		
	    String vnp_SecureHash = req.getParameter("vnp_SecureHash");
	    if (fields.containsKey("vnp_SecureHashType")) {
	        fields.remove("vnp_SecureHashType");
	    }
	    if (fields.containsKey("vnp_SecureHash")) {
	        fields.remove("vnp_SecureHash");
	    }
	    String signValue = Config.hashAllFields(fields);
	    if (signValue.equals(vnp_SecureHash)) {
	        //Kiem tra chu ky OK
	        /* Kiem tra trang thai don hang trong DB: checkOrderStatus, 
	        - Neu trang thai don hang OK, tien hanh cap nhat vao DB, tra lai cho VNPAY RspCode=00
	        - Neu trang thai don hang (da cap nhat roi) => khong cap nhat vao DB, tra lai cho VNPAY RspCode=02
	         */
	        boolean checkOrderId = true; // vnp_TxnRef đơn hàng có tồn tại trong database merchant
	        boolean checkAmount = true; // vnp_Amount is valid  (so sánh số tiền VNPAY request và sô tiền của giao dịch trong database merchant)
	        boolean checkOrderStatus = true; // PaymnentStatus = 0 (pending)
	        if (checkOrderId) {
	            if (checkAmount) {
	                if (checkOrderStatus) {
	                    if ("00".equals(req.getParameter("vnp_ResponseCode"))) {
	                      List<String> listString = Pattern.compile("-").splitAsStream(id).collect(Collectors.toList());
	                      listString.forEach(s -> {
	                    	  Order order = orDao.findById(Long.parseLong(s)).get();
	                    	  order.setStatus("Đã thanh toán");
	                    	  orDao.save(order);
	                    	  NumberFormat currentLocale = NumberFormat.getInstance();
	                    	  String tongtien = currentLocale.format(Double.parseDouble(order.getTotal()+""));
	                    	  try {
								   mailService.send(order.getAccount().getEmail(), "Tổng tiền bạn đã thanh toán: " + tongtien);
							  } catch (Exception e) {
								
							}
	                    	 List<OrderDetail> listorDetail = order.getOrderDetails();
	                    	 for(int i = 0; i < listorDetail.size(); i++) {
	                    		 String details = listorDetail.get(i).getProductdetail().getId().toString();
	                    		 ProductDetail product = proDetailDao.findById(Integer.parseInt(details)).get();
	                    		 product.setQuantity(product.getQuantity() - listorDetail.get(i).getQuantity());
	                    		 proDetailDao.save(product);
	                    	 }
	                      });
	                      
	                      return "redirect:/order/detail/" + id;
	           
	                    } else {
	                        //Xu ly thanh toan khong thanh cong
	                        //  out.print("GD Khong thanh cong");
	                    	List<String> listString = Pattern.compile("-").splitAsStream(id).collect(Collectors.toList());
		                      listString.forEach(s -> {
		                    	  Order order = orDao.findById(Long.parseLong(s)).get();
		                    	  order.setStatus("Chưa thanh toán");
		                    	  orDao.save(order);
		                      });
		                    m.addAttribute("mess","Giao dịch thất bại mã đơn hàng của bạn là: " + id);
		              		return "cart/checkout";
	                    }
//	                    out.print("{\"RspCode\":\"00\",\"Message\":\"Confirm Success\"}");
	                } else {
	                    //Don hang nay da duoc cap nhat roi, Merchant khong cap nhat nua (Duplicate callback)
//	                    out.print("{\"RspCode\":\"02\",\"Message\":\"Order already confirmed\"}");
	                }
	            } else {
//	                out.print("{\"RspCode\":\"04\",\"Message\":\"Invalid Amount\"}");
	            }
	        } else {
//	            out.print("{\"RspCode\":\"01\",\"Message\":\"Order not Found\"}");
	        }

	    } else {
//	        out.print("{\"RspCode\":\"97\",\"Message\":\"Invalid Checksum\"}");
	    }
	    
	    m.addAttribute("mess","Giao dịch thất bại mã đơn hàng của bạn là: " + id);
  		return "cart/checkout";
	}
	
}
