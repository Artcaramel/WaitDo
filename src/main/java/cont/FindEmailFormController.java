package cont;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.MemberDaoImple;
import dto.MemberDto;

@Controller
@RequestMapping(value="member/findEmailForm")
public class FindEmailFormController {
	private MemberDaoImple memberDao;
	public FindEmailFormController setMemberDao(MemberDaoImple memberDao) {
		this.memberDao = memberDao;
		return this;
	}
	@RequestMapping(method = RequestMethod.GET)
	public String form() throws Exception {
		return "member/WDFindEmailForm";
	}
	@RequestMapping(method = RequestMethod.POST)
	public String submit(MemberDto findCommand, HttpSession session) {
		try {
			MemberDto memberdto = memberDao.selectFindEmail(
					findCommand.getName(), 
					findCommand.getBirth());
			session.setAttribute("FindEmail", memberdto);
			return "redirect:/member/findEmail";
		} catch (Exception e) {
			e.printStackTrace();
			return "member/WDLogin";
		}
	}
}