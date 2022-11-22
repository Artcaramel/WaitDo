package cont;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import dao.AddressDaoImple;
import dto.AddressDto;
//import dto.MemberDto;

@Controller
@RequestMapping("member/addressDelete")
public class AddressDeleteController {
	private AddressDaoImple addressDao;

	public AddressDeleteController setAddressDao(AddressDaoImple addressDao) {
		this.addressDao = addressDao;
		return this;
	}
	@RequestMapping(method = RequestMethod.GET)
	public String addressDelete(AddressDto addressdto,HttpSession session, @RequestParam("mno")int mno) {
//		System.out.println("!!!"+mno);
//		MemberDto memberdto = (MemberDto) session.getAttribute("authInfo");
		try {
			addressDao.addressDelete(mno);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/member/address";
	}
}
