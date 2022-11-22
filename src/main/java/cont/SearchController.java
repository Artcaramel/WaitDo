package cont;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.ProductDaoImple;

@Controller
@RequestMapping("main/search")
public class SearchController {
	private ProductDaoImple productDao;

	public SearchController setProductDao(ProductDaoImple productDao) {
		this.productDao = productDao;
		return this;
	}

	@RequestMapping(method = RequestMethod.GET)
	public String form() {
		return "main/WDSearch";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String submit(Model model) throws Exception {
		model.addAttribute("searchList", productDao.searchName());
		return "redirect:/main/search";
	}

}

//@RequestMapping(method = RequestMethod.GET)
//public String form(HttpSession session, Model model, @RequestParam("qseq")int qseq) {
//	MemberDto memberdto = (MemberDto) session.getAttribute("authInfo");
//	try {
//		model.addAttribute("member", memberdto);
//		model.addAttribute("qseq", qseq);
//	} catch (Exception e) {
//		e.printStackTrace();
//	}
//	return "admin/WDAdminQnaReply";
//}
//@RequestMapping(method = RequestMethod.POST)
//public String submit(HttpSession session, QnaDto qnadto,@RequestParam("qseq")int qseq) {
////	System.out.println("!!!"+ qseq);
//	try {
//		qnaDao.qnaReply(qnadto);
//		return "redirect:/admin/adminQnaList";
//	} catch (Exception e) {
//		e.printStackTrace();
//	}
//	return null;
//
//}
//
//}