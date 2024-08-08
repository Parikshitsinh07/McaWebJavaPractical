/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package abstractfactoryappliction;

/**
 *
 * @author Admin
 */
public interface Abstractfactory {
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
