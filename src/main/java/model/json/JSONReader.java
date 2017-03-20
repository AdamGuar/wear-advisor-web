package model.json;

import org.json.JSONObject;

import model.Conditions;
import model.ConditionsType;

public class JSONReader {

	public static Conditions readConditions(String json){
		Conditions result = new Conditions();
		
		JSONObject obj = new JSONObject(json);
		result.setTemperature(obj.getDouble("temperature"));
		result.setType(ConditionsType.valueOf(obj.getString("type")));
		result.setWindSpeed(obj.getDouble("wind"));
		result.setWindChill(obj.getDouble("windChill"));
		
		return result;
	}
	
}
