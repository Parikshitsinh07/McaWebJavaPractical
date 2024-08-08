/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package notepadapplication;

import java.awt.*;//import java.awt.FileDialog;
import java.io.*;//import java.io.IOException;
/**
 *
 * @author Admin
 */
public class Function_File {
    private static Function_File file = null;
		Notepad gui;
		private String fileName;
		private String fileAddress;
		private Function_File(Notepad notepad){
			this.gui = notepad;
		}
		public static Function_File getFileFunction(Notepad notepad){
			if (file == null){
				synchronized (Function_File.class) {     
				if(file == null){
					file = new Function_File(notepad);
					return file;
					}
				}
			}
			return null;
		}
		public void newFile(){
		gui.textArea.setText("");
		gui.window.setTitle("new");
		fileName=null;
		fileAddress=null;
		}
		public void OpenFile(){
		FileDialog fd = new FileDialog(gui.window,"Open",FileDialog.LOAD);
		fd.setVisible(true);
		if(fd.getFile()!=null){
			fileName = fd.getFile();
			fileAddress = fd.getDirectory();
			gui.window.setTitle(fileName);
		}
		System.out.println("File Address And name is:"+fileAddress+fileName); 
		try{
			BufferedReader br = new BufferedReader(new FileReader(fileAddress+fileName));
			gui.textArea.setText("");
			String Line=null;
			while((Line = br.readLine())!=null){
				gui.textArea.append(Line+"\n");
				
			}
			br.close();
		}
		catch(Exception e){
			System.out.println("File NOT Opened !");
		}
	}
	public void saveFile(){
		if(fileName==null){
			saveAsFile();
		}
		else{
			try{
				FileWriter fw = new FileWriter(fileAddress+fileName);
				fw.write(gui.textArea.getText());
				gui.window.setTitle(fileName);
				fw.close();
			}
			catch(Exception e){
				System.out.println("File Can not Save!");
			}
		}
	}
	public void saveAsFile(){
		FileDialog fd = new FileDialog(gui.window,"Save",FileDialog.SAVE);
		fd.setVisible(true);
		
		if(fd.getFile()!=null){
			fileName = fd.getFile();
			fileAddress = fd.getDirectory();
			gui.window.setTitle(fileName);
		}
		try{
			FileWriter fw = new FileWriter(fileAddress+fileName);
			fw.write(gui.textArea.getText());
			fw.close();
		}
		catch(Exception e){
			System.out.println("Something Worng !");
		}
		
	}
	public void ExitFile(){
		System.exit(0);
	}
}
