package cont;

import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.MemberDaoImple;

@Controller

public class IndexController {
	private MemberDaoImple memberDao;
	public IndexController setMemberDao(MemberDaoImple memberDao) {
		this.memberDao = memberDao;
		return this;
	}
	@RequestMapping(value="/index")
	public String index() throws Exception {
		return "main/Index";
	}
}