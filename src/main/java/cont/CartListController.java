package cont;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.CartDaoImple;
import dao.MemberDaoImple;
import dao.ProductDaoImple;
import dto.MemberDto;

@Controller
@RequestMapping(value="cart/cartlist")
public class CartListController {
	private MemberDaoImple memberDao;
	private ProductDaoImple productDao;
	private CartDaoImple cartDao;
	public CartListController setCartDao(CartDaoImple cartDao) {
		this.cartDao = cartDao;
		return this;
	}
	
	@RequestMapping(method = RequestMethod.GET)
	public String form(Model model, HttpSession session) throws Exception {
		MemberDto loginUser = (MemberDto)session.getAttribute("authInfo");	 
		if (loginUser == null) {
			return "member/WDLogin";
		} else {
			
			model.addAttribute("listCartProduct", cartDao.listCartProduct(loginUser.getEmail()));
			model.addAttribute("CartCount", cartDao.cartCount(loginUser.getEmail()));
			return "cart/WDCartList";
		}
	}
}
