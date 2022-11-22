package cont;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.MemberDaoImple;
import dto.MemberDto;

@Controller
@RequestMapping(value="member/findPwd")
public class FindPwdController {
	private MemberDaoImple memberDao;

	public FindPwdController setMemberDao(MemberDaoImple memberDao) {
		this.memberDao = memberDao;
		return this;
	}

	@RequestMapping(method = RequestMethod.GET)
	public String form(HttpSession session, Model model) {
		MemberDto memberdto = (MemberDto) session.getAttribute("FindPwd");	
		try {		
			model.addAttribute("member", memberdto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "member/WDFindPwd";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String submit(MemberDto memberdto, HttpSession session) {
		MemberDto memberdto1 = (MemberDto) session.getAttribute("FindPwd");
		try {
			memberdto.setMno(memberdto1.getMno());
			memberDao.updatePwd(memberdto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		session.invalidate();
		return "member/WDLogin";
	}
}

