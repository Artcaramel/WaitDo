package cont;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.MemberDaoImple;

@Controller
public class FindEmailController {
	
	@RequestMapping(value="member/findEmail")
	public String findEmail() throws Exception {
		return "member/WDFindEmail";
	}
}