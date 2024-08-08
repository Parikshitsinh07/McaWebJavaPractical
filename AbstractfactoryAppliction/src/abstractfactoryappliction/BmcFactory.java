/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package abstractfactoryappliction;

/**
 *
 * @author Admin
 */
public class BmcFactory implements Abstractfactory {
    @Override
    public WaterTax getWaterTax(){
		return new BmcWaterTax();
	}
    @Override
	public PropertyTax getPropertyTax(){
		return new BmcPropertyTax();
	}
}
