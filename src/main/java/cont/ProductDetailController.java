package cont;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import dao.ProductDaoImple;

@Controller
@RequestMapping("product/detail")
public class ProductDetailController {
	private ProductDaoImple productDao;
	public ProductDetailController setProductDao(ProductDaoImple productDao) {
		this.productDao = productDao;
		return this;
	}
	@RequestMapping(method = RequestMethod.GET)
	public String form(Model model, HttpServletRequest request) throws Exception {
    String pseq= request.getParameter("pseq");
   // System.out.println(pseq);
	model.addAttribute("productDetailList",productDao.productDetailList(pseq));
		return "product/WDProductDetail";
	}
}
