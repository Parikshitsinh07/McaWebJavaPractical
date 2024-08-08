/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package abstractfactoryappliction;

/**
 *
 * @author Admin
 */
public class RmcPropertyTax extends PropertyTax {

    /**
     *
     * @param property_value
     * @return
     */
    @Override
    public double getTax(double property_value){
			return 0.1*property_value;
	}
}
