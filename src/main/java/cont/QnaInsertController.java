package cont;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.QnaDaoImple;
import dto.MemberDto;
import dto.QnaDto;

@Controller
@RequestMapping("helpmenu/qnaInsert")
public class QnaInsertController {
	private QnaDaoImple qnaDao;

	public QnaInsertController setQnaDao(QnaDaoImple qnaDao) {
		this.qnaDao = qnaDao;
		return this;
	}

	@RequestMapping(method = RequestMethod.GET)
	public String form(HttpSession session, Model model) {
		MemberDto memberdto = (MemberDto) session.getAttribute("authInfo");
		try {
			model.addAttribute("member", memberdto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "helpmenu/WDQna";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String submit(QnaDto qnadto) {
		try {
			qnaDao.insert(qnadto);
			return "redirect:/helpmenu/qnalist";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;

	}

}