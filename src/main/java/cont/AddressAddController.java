package cont;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.AddressDaoImple;
import dao.MemberDaoImple;
import dto.AddressDto;
import dto.MemberDto;

@Controller
@RequestMapping(value="member/addressAdd")
public class AddressAddController {
	private AddressDaoImple addressDao;

	public AddressAddController setAddressDao(AddressDaoImple addressDao) {
		this.addressDao = addressDao;
		return this;
	}
	@RequestMapping(method = RequestMethod.GET)
	public String form(HttpSession session, Model model) {
		MemberDto memberdto = (MemberDto) session.getAttribute("authInfo");
		try {		
			model.addAttribute("member", memberdto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "member/WDAddressAdd";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String submit(AddressDto addressdto, HttpSession session) {
		try {
			addressDao.addressAdd(addressdto);
			return "redirect:/member/address";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
