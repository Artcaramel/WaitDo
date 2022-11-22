package cont;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import dao.QnaDaoImple;




@Controller
@RequestMapping("helpmenu/qnaDelete")
public class QnaDeleteController {
	private QnaDaoImple qnaDao;

	public QnaDeleteController setQnaDao(QnaDaoImple qnaDao) {
		this.qnaDao = qnaDao;
		return this;
	}
	@RequestMapping(method = RequestMethod.GET)
	public String qnaDelete(@RequestParam("qseq")int qseq) {
		try {
			qnaDao.qnaDelete(qseq);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/helpmenu/qnalist";
	}
}
