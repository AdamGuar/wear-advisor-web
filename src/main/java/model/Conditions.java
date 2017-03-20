package model;

public class Conditions {
	
	private double temperature;
	private ConditionsType type;
	private double windSpeed;
	private double windChill;
	public double getTemperature() {
		return temperature;
	}
	public void setTemperature(double temperature) {
		this.temperature = temperature;
	}
	public ConditionsType getType() {
		return type;
	}
	public void setType(ConditionsType type) {
		this.type = type;
	}
	public double getWindSpeed() {
		return windSpeed;
	}
	public void setWindSpeed(double windSpeed) {
		this.windSpeed = windSpeed;
	}
	public double getWindChill() {
		return windChill;
	}
	public void setWindChill(double windChill) {
		this.windChill = windChill;
	}
	
	
	
	@Override
	public String toString() {
		return "Conditions [temperature=" + temperature + ", type=" + type + ", windSpeed=" + windSpeed + ", windChill="
				+ windChill + "]";
	}
	
	
	

}
