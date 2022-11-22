package cont;

//import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.CartDaoImple;
import dao.MemberDaoImple;
import dao.OrderDaoImple;
import dao.PaymentDaoImple;
import dto.CartDto;
import dto.MemberDto;
import dto.OrderDto;

@Controller
@RequestMapping("/order_summary")
public class OrderSummaryController {
	private MemberDaoImple memberDao;
	private OrderDaoImple orderDao;
	private CartDaoImple cartDao;
	private PaymentDaoImple paymentDao;
	public OrderSummaryController setOrderDao(OrderDaoImple orderDao) {
		this.orderDao = orderDao;
		return this;
	}
	@RequestMapping(method = RequestMethod.GET)
	public String form(MemberDto loginCommand, Model model, HttpSession session, String id) throws Exception {
		MemberDto loginUser = (MemberDto) session.getAttribute("authInfo");
		//List<CartDto> cartList = cartDao.listCartProduct(loginUser.getEmail());
		//int MaxOseq = orderDao.insert(cartList, loginUser.getEmail());	
		//List<OrderDto> orderlist = orderDao.maxOseq(MaxOseq);
		//model.addAttribute("orderlist", orderlist);
			return "cart/WDOrder_Summary";
		}		
	
	
}
