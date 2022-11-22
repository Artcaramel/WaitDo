package cont;



import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import dao.AddressDaoImple;
import dto.AddressDto;
import dto.MemberDto;



@Controller
//@RequestMapping(value = "member/address")
public class AddressController {
	private AddressDaoImple addressDao;

	public AddressController setAddressDao(AddressDaoImple addressDao) {
		this.addressDao = addressDao;
		return this;
	}
//	
//	@RequestMapping(value = "member/address")
//	public String form(@RequestParam(value="mno")int mno, Model model) {
//		try {
//			model.addAttribute("addressList", memberDao.selectOne(mno));
//
//		}catch (Exception e) {
//			e.printStackTrace();
//		}
//		return "member/WDAddress";
//	}
	
	@RequestMapping(value = "member/address")
	public String form(HttpSession session, Model model) {
		MemberDto memberdto = (MemberDto) session.getAttribute("authInfo");
		try {
			//memberdto.setMno(memberdto.getMno());
//			MemberDto member  =  memberDao.selectOne(memberdto.getMno());
//			System.out.println("!!!"+ member.getName());
//			System.out.println("!!"+addressDao.selectAddress(memberdto.getEmail()));
			model.addAttribute("addressList", addressDao.selectAddress(memberdto.getEmail()));
			model.addAttribute("member", memberdto);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return "member/WDAddress";
	}
	
	
//	@RequestMapping(value = "member/address")
//	public String form(Model model , int mno) throws Exception {
//		model.addAttribute("addressList", memberDao.selectOne(mno));
//		List<MemberDto> member=memberDao.selectList();
//		for(MemberDto member1:member) {
//			System.out.println(member1.getName());                    // 리스트를 이용하여 에러 확인하는법(이름값이 들어오는지)
//		}
//		/* model.addAttribute("dsad", memberDao.selectList()); */
//		return "member/WDAddress";
//	}
}
