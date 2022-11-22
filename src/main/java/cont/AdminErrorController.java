package cont;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminErrorController {

	@RequestMapping(value = "admin/error")
	public String search() throws Exception {
		return "admin/error";
	}
}
