public class AmcFactory implements Abstractfactory{
	
	public WaterTax getWaterTax(){
		return new AmcWaterTax();
	}
	public PropertyTax getPropertyTax(){
		return new AmcPropertyTax();
	}
}