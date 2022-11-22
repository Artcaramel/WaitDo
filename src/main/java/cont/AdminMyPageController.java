package cont;

import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dto.MemberDto;

@Controller
@RequestMapping("admin/adminMypage")
public class AdminMyPageController {

	@RequestMapping(method = RequestMethod.GET)
	public String form(HttpSession session, Model model) {
		MemberDto memberdto = (MemberDto) session.getAttribute("authInfo");	
		try {		
			model.addAttribute("member", memberdto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "admin/WDAdminMypage";
	}
}	

	