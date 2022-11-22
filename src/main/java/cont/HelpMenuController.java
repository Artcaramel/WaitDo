package cont;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelpMenuController {

	@RequestMapping(value="helpmenu/help")
	public String helpmenu() throws Exception {
		return "helpmenu/WDHelp";
	}
}