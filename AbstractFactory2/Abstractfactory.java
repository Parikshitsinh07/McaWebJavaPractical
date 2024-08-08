public interface Abstractfactory{
	public static Abstractfactory getFactory(int city){
		
		switch(city){
			
			case 1: Abstractfactory AMC = new AmcFactory(); 
					return AMC;
			case 2: Abstractfactory BMC = new BmcFactory();
					return BMC;
			case 3: Abstractfactory RMC = new RmcFactory();
					return RMC;
			case 0: 
			default : break;
		}
		return null;
	}
	public WaterTax getWaterTax();
	public PropertyTax getPropertyTax();
}