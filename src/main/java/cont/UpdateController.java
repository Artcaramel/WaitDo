package cont;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.MemberDaoImple;

@Controller
public class UpdateController {
	private MemberDaoImple memberDao;
	public UpdateController setMemberDao(MemberDaoImple memberDao) {
		this.memberDao = memberDao;
		return this;
	}
	@RequestMapping(value="member/update")
	public String update() throws Exception {
		return "member/WDUpdate";
	}
}