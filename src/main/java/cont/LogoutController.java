package cont;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LogoutController {

	@RequestMapping(value = "member/logout")
	public String form(HttpSession session) throws Exception {
		session.invalidate(); 
		return "redirect:/index";
	}

}