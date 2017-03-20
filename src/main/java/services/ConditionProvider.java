package services;

import model.Conditions;

public interface ConditionProvider {
	
	public Conditions getConditionsForCity(String city);

}
