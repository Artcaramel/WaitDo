package cont;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelpMenuChangeController {

	@RequestMapping(value="helpmenu/helpChange")
	public String help() throws Exception {
		return "helpmenu/WDHelpChange";
	}
}