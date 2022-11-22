package cont;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.MemberDaoImple;
import dto.MemberDto;

@Controller
@RequestMapping(value="member/findPwdForm")
public class FindPwdFormController {
	private MemberDaoImple memberDao;
	public FindPwdFormController setMemberDao(MemberDaoImple memberDao) {
		this.memberDao = memberDao;
		return this;
	}
	@RequestMapping(method = RequestMethod.GET)
	public String form() throws Exception {
		return "member/WDFindPwdForm";
	}
	@RequestMapping(method = RequestMethod.POST)
	public String submit(MemberDto findCommand, HttpSession session) {
		try {
			MemberDto memberdto = memberDao.selectFindPwd(
					findCommand.getEmail(), 
					findCommand.getName(),
					findCommand.getBirth());
			session.setAttribute("FindPwd", memberdto);
			return "redirect:/member/findPwd";
		} catch (Exception e) {
			e.printStackTrace();
			return "member/WDLogin";
		}
	}
}

