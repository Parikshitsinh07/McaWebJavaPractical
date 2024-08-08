/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package abstractfactoryappliction;

/**
 *
 * @author Admin
 */
public class RmcWaterTax extends WaterTax {
    @Override
    public double getTax(double Water_value){
			return 0.05 * Water_value; 
	}
}
