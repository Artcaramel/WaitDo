package cont;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import dao.QnaDaoImple;

@Controller
@RequestMapping("admin/qnaAdminDelete")
public class AdminQnaDeleteController {
	private QnaDaoImple qnaDao;

	public AdminQnaDeleteController setQnaDao(QnaDaoImple qnaDao) {
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
		return "redirect:/admin/adminQnaList";
	}
}
