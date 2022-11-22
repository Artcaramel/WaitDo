package cont;

import javax.servlet.http.HttpServletRequest;
import javax.websocket.server.PathParam;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import dao.ProductDaoImple;

@Controller
@RequestMapping("product/*")
public class CategoryController {
	private ProductDaoImple productDao;
	public CategoryController setProductDao(ProductDaoImple productDao) {
		this.productDao = productDao;
		return this;
	}
	@GetMapping(value="kind")
	public String kind(Model model, @RequestParam(value="kind") String kind) throws Exception {  
		model.addAttribute("listKindProduct",productDao.listKindProduct(kind));
		return "product/WDProductKind";
	}
	@GetMapping("kind/subcategory")
	public String subcategory(Model model, @RequestParam(value="kind") String kind, 
			@RequestParam(value="subcategory") String subcategory) throws Exception {
		model.addAttribute("subcategory",productDao.subcategory(kind, subcategory));
		model.addAttribute("subcategoryProduct",productDao.subcategory(subcategory));
		System.out.println(subcategory);
		return "product/WDProductSubcategory";    
	}
	
	/*@GetMapping("subcategory")
	public String subcategory(Model model, @RequestParam(value="subcategory") String subcategory) 
			throws Exception {
		System.out.println(subcategory);
		model.addAttribute("subcategory",productDao.subcategory(subcategory));
		return "product/WDSubcategory";    
	}
	*/
}
