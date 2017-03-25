package wear.advisor.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import model.Conditions;
import services.ConditionProvider;
import services.rest.RestConditionProvider;

@Controller
public class CityController {

	private static final Logger logger = LoggerFactory.getLogger(WelcomeController.class);
	
	@RequestMapping(value = "/conditions", method = RequestMethod.GET)
	public String welcome(@RequestParam("city") String city,
			Model model) {
		
		ConditionProvider cP = new RestConditionProvider();
		
		Conditions conditions = cP.getConditionsForCity(city);
		
		logger.debug("welcome() is executed, value {}");
		
		model.addAttribute("cond",conditions);
		model.addAttribute("city", city);
		
		return "cityPage";

	}
	
}
