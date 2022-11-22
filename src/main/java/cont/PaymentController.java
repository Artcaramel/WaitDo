package cont;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.OrderDaoImple;
import dto.MemberDto;

@Controller
@RequestMapping("/payment")
public class PaymentController {
	private OrderDaoImple orderDao;
	
	public PaymentController setOrderDao(OrderDaoImple orderDao) {
		this.orderDao = orderDao;
		return this;
	}
	
	@RequestMapping(method = RequestMethod.GET)
	public String form(MemberDto loginCommand, HttpSession session, Model model) {
		MemberDto loginUser = (MemberDto) session.getAttribute("authInfo");	 ;	
	
		return "cart/WDpayment";
	}
}
