/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package abstractfactoryappliction;

/**
 *
 * @author Admin
 */
public class RmcFactory implements Abstractfactory {
    @Override
    public WaterTax getWaterTax(){
		return new RmcWaterTax();
	}
    @Override
	public PropertyTax getPropertyTax(){
		return new RmcPropertyTax();
	}
}
