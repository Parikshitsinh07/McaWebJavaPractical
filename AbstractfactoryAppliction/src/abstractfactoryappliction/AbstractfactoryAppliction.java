/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package abstractfactoryappliction;
import java.util.Scanner;
/**
 *
 * @author Admin
 */
public class AbstractfactoryAppliction {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
	   int cityopt = 0;
	   int opt = 0;
	   double amount= 0;
	   double taxAmount = 0;
	   double totalAmount = 0;
	   Abstractfactory city = null;
	   Tax tax = null;
	   do{
			try
			{
				System.out.println("========================");
				System.out.println("    Tax Calculator ");
				System.out.println("========================");
				System.out.println("1.Amc \n2.Bmc \n3.Rmc\n0.Exit\n");
				System.out.print("Select Your City:");
				cityopt=sc.nextInt();	
				if(cityopt > 0)
				{
					city = Abstractfactory.getFactory(cityopt);
					System.out.println("1.Properti Tax \n2.Water Tax\n0.Exit\n");
					System.out.print("Select One Option:");
					opt=sc.nextInt();
					System.out.print("\t Enter Your Amount:");
					amount = sc.nextDouble();
					tax = TaxFactory.getTaxFactory(opt,city);
					taxAmount = tax.getTax(amount);
					System.out.println("\t\t Your Amount is :" + amount);
					System.out.println("\t\t Your Tax is :\t" + taxAmount);
					//System.out.println("\t\t1-------------------------" );
					//totalAmount = amount - taxAmount ;
					//System.out.println("\t Your Total Amount is :"+totalAmount);
				}
			}
			catch(Exception e)
			{
				System.out.println("Sorrey Something Wrong!!");
			}
	   }while(opt != 0 && cityopt != 0);
    }
    
}
