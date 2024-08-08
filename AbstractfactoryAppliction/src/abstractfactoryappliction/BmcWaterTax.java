/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package abstractfactoryappliction;

/**
 *
 * @author Admin
 */
public class BmcWaterTax extends WaterTax {

    /**
     *
     * @param Water_value
     * @return
     */
    @Override
    public double getTax(double Water_value){			
			return 0.07*Water_value;
	}
}
