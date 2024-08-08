/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package notepadapplication;

import java.awt.Font;
/**
 *
 * @author Admin
 */
public class Funcation_Format {
    private static Funcation_Format format = null;
	Notepad gui;
	Font arial,ComicSanMS,timesNewRoman;
	String selectedFont;
	private Funcation_Format(Notepad gui)
	{
		this.gui = gui;
	}
	public static Funcation_Format getFormatFuncation(Notepad notepad)
	{
		if (format == null)
		{
			synchronized (Funcation_Format.class)
			{     
				if(format == null)
				{
					format = new Funcation_Format(notepad);
					return format;
				}
			}
		}
			return null;
	}
	public void wordWrap(){
		if(gui.WordWrapOn == false){
			gui.WordWrapOn = true;
			gui.textArea.setLineWrap(true);
			gui.textArea.setWrapStyleWord(true);
			gui.iWrap.setText("Word Wrap :On");
		}
		else if(gui.WordWrapOn == true){
			gui.WordWrapOn=false;
			gui.textArea.setLineWrap(false);
			gui.textArea.setWrapStyleWord(false);
			gui.iWrap.setText("Word Wrap :Off");
		}
	}
	public void createFont(int fontSize){
		arial = new Font("Arial",Font.PLAIN,fontSize);
		ComicSanMS = new Font("Comic Sans MS",Font.PLAIN,fontSize);
		timesNewRoman = new Font("Times new Roman",Font.PLAIN,fontSize);
		
		setFont(selectedFont);
	}
	public void setFont(String Font){
		selectedFont = Font;
		switch(selectedFont){
			case "Arial":gui.textArea.setFont(arial);
						break;
			case "CSMS":gui.textArea.setFont(ComicSanMS);
						break;
			case "TNR":gui.textArea.setFont(timesNewRoman);
						break;
						
		}
	}
}
