package cont;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import dao.CartDaoImple;
import dao.MemberDaoImple;


@Controller
@RequestMapping("cart/cartdelete")
public class CartDeleteController {
	private MemberDaoImple memberDao;
	private CartDaoImple cartDao;
	public CartDeleteController setCartDao(CartDaoImple cartDao) {
		this.cartDao = cartDao;
		return this;
		}
	@RequestMapping(method = RequestMethod.GET)
	public String delete(@RequestParam("cseq")int cseq)
			throws Exception {
		System.out.println("안녕");
		try {
			cartDao.delete(cseq);
			System.out.println(cseq);
		}catch (Exception e) {
			e.printStackTrace();	
		}
		return "redirect:cartlist";
	}
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
		
}
