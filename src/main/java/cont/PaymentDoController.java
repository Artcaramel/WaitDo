package cont;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import dao.PaymentDaoImple;
import dto.MemberDto;
@Controller
@RequestMapping(value="payment/*")
public class PaymentDoController {
	private PaymentDaoImple paymentDao;
	public PaymentDoController setPaymentDao(PaymentDaoImple paymentDao) {
		this.paymentDao = paymentDao;
		return this;
	}
	@RequestMapping(method = RequestMethod.GET)
	public String form() throws Exception {
		return "cart/WDpaymentForm";
	}
	@RequestMapping(method = RequestMethod.POST)
	public String creditcard(HttpSession session, Model model, @RequestParam("cardnumber")String card)
		throws Exception {

		return null;
	}
}