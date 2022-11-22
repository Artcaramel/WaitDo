package cont;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import dao.CartDaoImple;
import dao.MemberDaoImple;
import dto.CartDto;
import dto.MemberDto;

@Controller
@RequestMapping("cart/cartdelete")
public class DeleteCartcontroller {
	 private MemberDaoImple memberDao;
	private CartDaoImple cartDao;
	public DeleteCartcontroller setCartDao(CartDaoImple cartDao) {
		this.cartDao = cartDao;
		return this;
	}
	//@RequestMapping(method = RequestMethod.GET)
	//public String form() {
	//	return "cart/WDCartList";
	//}
	
	/*@RequestMapping(method = RequestMethod.POST)
	public String delete(int cseq, MemberDto memberdto, HttpSession session) {
		memberdto = (MemberDto) session.getAttribute("authInfo");
		try {
			cartDao.delete(cseq);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:cartlist";
	}
	*/
	@RequestMapping(method = RequestMethod.GET)
	public String submit(MemberDto loginCommand, @RequestParam("cseq") int cseq, HttpSession session) 
			throws Exception {
		MemberDto member = (MemberDto) session.getAttribute("authInfo");
		cartDao.delete(cseq);
		return "redirect:cartlist";
	}
}
