public class BmcFactory implements Abstractfactory{
	
	public WaterTax getWaterTax(){
		return new BmcWaterTax();
	}
	public PropertyTax getPropertyTax(){
		return new BmcPropertyTax();
	}
}