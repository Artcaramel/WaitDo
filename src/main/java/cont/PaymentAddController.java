package cont;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.OrderDaoImple;
import dao.PaymentDaoImple;
import dto.MemberDto;
import dto.PaymentDto;

@Controller
public class PaymentAddController {
	private OrderDaoImple orderDao;
	private PaymentDaoImple paymentDao;
	public PaymentAddController setPaymentDao(PaymentDaoImple paymentDao) {
		this.paymentDao = paymentDao;
		return this;
	}
		
		@RequestMapping(value = "/paymentAdd") // 카드결제 폼 
		public String form(MemberDto loginCommand, HttpSession session, Model model) {
			MemberDto loginUser = (MemberDto) session.getAttribute("authInfo");	 ;	
		
			return "cart/WDpayment_form_creditcard";
		}
		
		@RequestMapping(value = "/paymentComplete") // 카드결제 완료 시 이동하는 폼
		public String Complete(PaymentDto paymentdto, HttpSession session, Model model) throws Exception {
			MemberDto loginUser = (MemberDto) session.getAttribute("authInfo");	 
			paymentdto.setId(loginUser.getEmail());
			System.out.println(paymentdto.getCard_1());
		//	paymentDao.insertPayment(loginUser.getEmail());
			paymentDao.insertPayment(paymentdto); 
			System.out.println(paymentdto);
			return "redirect:/index";
		}
	}
