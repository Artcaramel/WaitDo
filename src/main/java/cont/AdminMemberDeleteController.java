package cont;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import dao.MemberDaoImple;
import dto.AddressDto;

@Controller
public class AdminMemberDeleteController {
	private MemberDaoImple memberDao;
	public AdminMemberDeleteController setMemberDao(MemberDaoImple memberDao) {
		this.memberDao = memberDao;
		return this;
	}
	@RequestMapping(value="admin/adminMemberDelete")
	public String addressDelete(@RequestParam("mno")int mno) {
		try {
			memberDao.adminDelete(mno);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/admin/adminMemberlist";
	}
}
