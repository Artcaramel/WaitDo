package cont;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import dao.QnaDaoImple;
import dto.MemberDto;
import dto.QnaDto;


@Controller
@RequestMapping(value = "admin/adminQnaReply")
public class AdminQnaReplyController {
	private QnaDaoImple qnaDao;

	public AdminQnaReplyController setQnaDao(QnaDaoImple qnaDao) {
		this.qnaDao = qnaDao;
		return this;
	}

	@RequestMapping(method = RequestMethod.GET)
	public String form(HttpSession session, Model model, @RequestParam("qseq")int qseq) {
		MemberDto memberdto = (MemberDto) session.getAttribute("authInfo");
		try {
			model.addAttribute("member", memberdto);
			model.addAttribute("qseq", qseq);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "admin/WDAdminQnaReply";
	}
	@RequestMapping(method = RequestMethod.POST)
	public String submit(HttpSession session, QnaDto qnadto,@RequestParam("qseq")int qseq) {
//		System.out.println("!!!"+ qseq);
		try {
			qnaDao.qnaReply(qnadto);
			return "redirect:/admin/adminQnaList";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;

	}

}

