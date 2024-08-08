public class RmcFactory implements Abstractfactory {
	public WaterTax getWaterTax(){
		return new RmcWaterTax();
	}
	public PropertyTax getPropertyTax(){
		return new RmcPropertyTax();
	}
}