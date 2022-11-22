package cont;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.QnaDaoImple;
import dto.MemberDto;
import dto.QnaDto;

@Controller
public class QnaListMenuController {
	private QnaDaoImple qnaDao;

	public QnaListMenuController setQnaDao(QnaDaoImple qnaDao) {
		this.qnaDao = qnaDao;
		return this;
	}
	@RequestMapping(value="helpmenu/qnalist")
	public String list(HttpSession session, Model model) throws Exception {
		MemberDto memberdto = (MemberDto) session.getAttribute("authInfo");
		model.addAttribute("qna", qnaDao.selectList(memberdto.getEmail()));		
		return "helpmenu/WDQnalist";
	}
}