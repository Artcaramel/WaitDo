package cont;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import dao.QnaDaoImple;
import dto.MemberDto;

@Controller
public class QnaReplyController {
	private QnaDaoImple qnaDao;

	public QnaReplyController setQnaDao(QnaDaoImple qnaDao) {
		this.qnaDao = qnaDao;
		return this;
	}

	@RequestMapping(value = "helpmenu/qnaReply")
	public String qnalist(@RequestParam(value = "qseq") int qseq, Model model) throws Exception {
		try {
			model.addAttribute("qnalist", qnaDao.qnaReplyList(qseq));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "helpmenu/WDQnaReply";
	}

}
