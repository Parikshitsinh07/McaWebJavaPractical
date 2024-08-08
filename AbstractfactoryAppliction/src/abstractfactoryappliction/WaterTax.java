/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package abstractfactoryappliction;

/**
 *
 * @author Admin
 */
public abstract class WaterTax implements Tax {

    /**
     *
     * @param amount
     * @return
     */
    @Override
    abstract public double getTax(double amount);
}
