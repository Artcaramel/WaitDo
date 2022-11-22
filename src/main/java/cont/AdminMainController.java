package cont;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminMainController {
	
	@RequestMapping(value="admin/adminMain")
	public String search() throws Exception {
		return "admin/WDAdminMain";
		}
	}

