/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package abstractfactoryappliction;

/**
 *
 * @author Admin
 */
public class BmcPropertyTax extends PropertyTax {
       @Override
       public double getTax(double property_value){
			return 0.15*property_value;
	}
}
