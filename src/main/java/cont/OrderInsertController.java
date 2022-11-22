package cont;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import dao.CartDaoImple;
import dao.MemberDaoImple;
import dao.OrderDaoImple;
import dto.CartDto;
import dto.MemberDto;
import dto.OrderDto;
@Controller
@RequestMapping("cart/orderinsert")
public class OrderInsertController {
	private MemberDaoImple memberDao;
	@Autowired
	private CartDaoImple cartDao;
	private OrderDaoImple orderDao;	
	private OrderDaoImple orderDetailDao;
	
	public OrderInsertController setOrderDao(OrderDaoImple orderDao) {
		this.orderDao = orderDao;
		return this;
	}
/*	@RequestMapping(method = RequestMethod.GET)
	public String form(MemberDto loginCommand,HttpSession session, Model model) throws Exception {
		MemberDto loginUser = (MemberDto) session.getAttribute("authInfo");	
		if (loginUser == null) {			
			return "member/WDLogin";  
		} else {
			return "order/WDOrderList";
		}
	}
*/	
	@RequestMapping(method = RequestMethod.GET)
// public String submit(List<CartDto> cart, MemberDto loginCommand, Model model, 
//		 HttpServletRequest request, HttpSession session,@RequestParam("pseq") int pseq, 
//		 @RequestParam("oseq") int maxOseq, @RequestParam("quantity") int quantity) throws Exception {	
	 public String submit(MemberDto loginCommand, Model model, HttpSession session) throws Exception {	  
		MemberDto loginUser = (MemberDto) session.getAttribute("authInfo");	 
		if (loginUser == null) {			
			return "member/WDLogin";
		} else {
			System.out.println(cartDao); // 들어옴
			List<CartDto> cartList = cartDao.listCartProduct(loginUser.getEmail());
			int MaxOseq = orderDao.insert(cartList, loginUser.getEmail());	
			List<OrderDto> orderlist = orderDao.maxOseq(MaxOseq);
			model.addAttribute("orderlist", orderlist);
			//return "cart/WDOrderList"; 
			return "cart/WDOrder_Summary"; 

			}		
		}  
}
