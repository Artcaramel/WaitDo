package cont;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelpMenuOrderController {

	@RequestMapping(value="helpmenu/helpOrder")
	public String help() throws Exception {
		return "helpmenu/WDHelpOrder";
	}
}