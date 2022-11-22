package cont;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminReadOnlyController {
	
	
	@RequestMapping(value = "admin/adminRead")
	public String adminhelp() throws Exception {
		return "admin/WDAdminRead";
	}
}
