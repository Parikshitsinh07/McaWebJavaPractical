/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package notepadapplication;

/**
 *
 * @author Admin
 */
public class Funcation_Edit {
    private static Funcation_Edit edit = null;
	Notepad gui;
	public Funcation_Edit(Notepad gui){
		this.gui = gui;
	}
	public static Funcation_Edit getEditFunction(Notepad notepad)
	{
		if (edit == null)
		{
			synchronized (Funcation_Edit.class)
			{     
				if(edit == null)
				{
					edit = new Funcation_Edit(notepad);
					return edit;
				}
			}
		}
			return null;
	}
	public void undo()
	{
		gui.um.undo();
	}
	public void redo()
	{
		gui.um.redo();
	}
}
