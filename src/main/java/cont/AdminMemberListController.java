package cont;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.MemberDaoImple;
import dto.MemberDto;

@Controller
public class AdminMemberListController {
	private MemberDaoImple memberDao;

	public AdminMemberListController setMemberDao(MemberDaoImple memberDao) {
		this.memberDao = memberDao;
		return this;
	}
	
	@RequestMapping(value="admin/adminMemberlist")
	public String list(Model model) throws Exception {
		model.addAttribute("member",memberDao.selectList());
		return "admin/WDAdminMemberList";
	}
}

