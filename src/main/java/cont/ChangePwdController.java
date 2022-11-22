package cont;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.MemberDaoImple;
import dto.MemberDto;

@Controller
@RequestMapping("member/changePwd")
public class ChangePwdController {
	private MemberDaoImple memberDao;

	public ChangePwdController setMemberDao(MemberDaoImple memberDao) {
		this.memberDao = memberDao;
		return this;
	}

	@RequestMapping(method = RequestMethod.GET)
	public String form(HttpSession session, Model model) {
//		MemberDto memberdto = (MemberDto) session.getAttribute("authInfo");	
//		try {		
//			model.addAttribute("member", memberdto);
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
		return "member/WDChangePwd";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String submit(MemberDto memberdto, HttpSession session,HttpServletRequest request, HttpServletResponse response,Model model) {
		MemberDto memberdto1 = (MemberDto) session.getAttribute("authInfo");
		String pw = request.getParameter("oldPassword");
		try {
			if(!memberdto1.getPwd().equals(pw)) {
				
				model.addAttribute("error", "현재 비밀번호와 다릅니다");
				return "member/WDChangePwd";
			}else {
			memberdto.setMno(memberdto1.getMno());
			memberDao.updatePwd(memberdto);
			session.invalidate();
			return "member/WDLogin";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}