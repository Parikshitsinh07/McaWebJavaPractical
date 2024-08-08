/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package notepadapplication;

import java.awt.Color;
/**
 *
 * @author Admin
 */
public class Funcation_Color {
    private static Funcation_Color color = null;
	Notepad gui;
	private Funcation_Color(Notepad gui)
	{
		this.gui = gui;
	}
	public static Funcation_Color getColorFunaction(Notepad notepad)
	{
		if (color == null)
		{
			synchronized (Funcation_Color.class)
			{     
				if(color == null)
				{
					color = new Funcation_Color(notepad);
					return color;
				}
			}
		}
			return null;
	}
	public void changeColor(String color){
		switch(color){
			case "White":gui.window.getContentPane().setBackground(Color.white);
						gui.textArea.setBackground(Color.white);
						gui.textArea.setForeground(Color.black);
						break;
			case "Black":gui.window.getContentPane().setBackground(Color.black);
						gui.textArea.setBackground(Color.black);
						gui.textArea.setForeground(Color.white);
						break;
			case "Blue":gui.window.getContentPane().setBackground(new Color(28,186,186));
						gui.textArea.setBackground(new Color(28,186,186));
						gui.textArea.setForeground(Color.white);
						break;
			
		}
	
	}
}
