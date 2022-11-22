package cont;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.MemberDaoImple;
import dao.OrderDaoImple;
import dao.PaymentDaoImple;
@Controller
public class PaymentListController {
	private OrderDaoImple orderDao;
	private MemberDaoImple memberDao;
	private PaymentDaoImple paymentDao;
	
	public PaymentListController SetPaymentDao(PaymentDaoImple paymentDao) {
		this.paymentDao = paymentDao;
		return this;
	}
	@RequestMapping(value="paymentInfo")
	public String paymentInfoList(HttpSession session, String id, Model model) throws Exception{
		model.addAttribute("payment", paymentDao.selectPayment());
		return "order/WDMypage_Order";
	}
}
