package cont;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelpMenuPaymentController {

	@RequestMapping(value="helpmenu/helpPayment")
	public String help() throws Exception {
		return "helpmenu/WDHelpPayment";
	}
}