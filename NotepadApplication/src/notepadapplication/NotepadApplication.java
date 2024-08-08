/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package notepadapplication;
import java.util.Scanner;
/**
 *
 * @author Admin
 */
public class NotepadApplication {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);    
        int op   ;
        Notepad notepad  ;
        do
        {
           System.out.println("1.Create Notepad \n 2.Close Noteped ");
           System.out.println("Select One Option :");
           op = sc.nextInt();
           switch(op)
           {
               case 1: {
                            notepad = Notepad.getNotepad();
                            System.out.println("Notepad Create Id" + notepad);
                            break;
                       }
               case 2:{
                            System.exit(0);
                            break;
                      }
               default :
                      System.out.println("Something Worng !!");
                      break;
           }
        }while(op != 0);
    }
}
