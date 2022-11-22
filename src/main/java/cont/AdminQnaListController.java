package cont;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.QnaDaoImple;

@Controller
public class AdminQnaListController {
	private QnaDaoImple qnaDao;

	public AdminQnaListController setQnaDao(QnaDaoImple qnaDao) {
		this.qnaDao = qnaDao;
		return this;
	}
	
	@RequestMapping(value="admin/adminQnaList")
	public String qnalist(Model model) throws Exception {
		model.addAttribute("qnalist",qnaDao.adminQnaList());
		return "admin/WDAdminQnaList";
	}
}


