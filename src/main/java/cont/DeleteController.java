package cont;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import dao.MemberDaoImple;
import dto.MemberDto;

@Controller
@RequestMapping("member/delete")
public class DeleteController {
	private MemberDaoImple memberDao;

	public DeleteController setMemberDao(MemberDaoImple memberDao) {
		this.memberDao = memberDao;
		return this;
	}
	@RequestMapping(method = RequestMethod.GET)
	public String form() {
		return "member/WDDelete";
	}
	
	
	@RequestMapping(method = RequestMethod.POST)
	public String delete(MemberDto memberdto,HttpSession session) {
		MemberDto memberdto1 = (MemberDto) session.getAttribute("authInfo");
		try {
			memberdto.setMno(memberdto1.getMno());
			memberDao.delete(memberdto);
		}catch (Exception e) {
			e.printStackTrace();
		}
		session.invalidate();
		return "redirect:/index";
	}
}