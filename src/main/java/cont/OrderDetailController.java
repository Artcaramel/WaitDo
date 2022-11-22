package cont;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import dao.MemberDaoImple;
import dao.OrderDaoImple;
import dto.MemberDto;
import dto.OrderDto;

@Controller
@RequestMapping("orderlist_detail")
public class OrderDetailController {
	private MemberDaoImple memberDao;
	private OrderDaoImple orderDao;
	public OrderDetailController setOrderDao(OrderDaoImple orderDao) {
		this.orderDao = orderDao;
		return this;
	}   
	@RequestMapping(method = RequestMethod.GET) // 마이페이지 주문조회
	public String form(HttpServletRequest request, MemberDto loginCommand, Model model, HttpSession session, @RequestParam("oseq") int oseq)throws Exception {				
		MemberDto loginUser = (MemberDto) session.getAttribute("authInfo");
		List<OrderDto> mypageOrderListDetail = orderDao.MypageOrderDetail(loginUser.getEmail(), oseq);
		System.out.println(oseq);
		//List<OrderDto> mypageOrderListDetail = orderDao.MypageOrderDetail(orderdto);
		  for(int i=0; i<mypageOrderListDetail.size(); i++) {
	    	  System.out.println(mypageOrderListDetail.get(i).getOseq());
	      }
		 model.addAttribute("mypageOrderListDetail", mypageOrderListDetail);
			//return "cart/WDMypage_Order_detail";	
		 return "order/WDMypage_Order_detail";	
		}		
}
