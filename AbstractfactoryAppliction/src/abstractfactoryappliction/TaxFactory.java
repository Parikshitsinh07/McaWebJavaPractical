/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package abstractfactoryappliction;

/**
 *
 * @author Admin
 */
public class TaxFactory {
 public static Tax getTaxFactory(int i,Abstractfactory city)
	 {
	   do
	   {
	      switch(i)
		{
		    case 1:{
				PropertyTax pt = city.getPropertyTax();
				return pt;
                            }
                    case 2:{
                                WaterTax wt = city.getWaterTax();
				return wt;
                            }
                    case 0: System.exit(0);
                    default: return null;
		}
	   }while(i!=0);
	 }   
}
