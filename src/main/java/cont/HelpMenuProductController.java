package cont;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelpMenuProductController {


	@RequestMapping(value="helpmenu/helpProduct")
	public String help() throws Exception {
		return "helpmenu/WDHelpProduct";
	}
}