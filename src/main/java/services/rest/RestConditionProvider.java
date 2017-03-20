package services.rest;

import org.springframework.web.client.RestTemplate;

import model.Conditions;
import model.json.JSONReader;
import services.ConditionProvider;

public class RestConditionProvider implements ConditionProvider{

	public static final String SERVICE_URL = "https://polar-eyrie-56916.herokuapp.com/wear/conditions/";
	
	@Override
	public Conditions getConditionsForCity(String city) {
		RestTemplate restTemplate = new RestTemplate();
		
		String request = SERVICE_URL + city;
		String result = restTemplate.getForObject(request, String.class);
		
		return JSONReader.readConditions(result);
	}
	
	
	


}
