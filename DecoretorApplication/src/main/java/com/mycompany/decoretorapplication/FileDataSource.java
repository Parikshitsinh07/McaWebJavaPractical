/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.decoretorapplication;
import java.io.*;
/**
 *
 * @author Admin
 */
public class FileDataSource implements DataSource {
    private String fileName;
    
    public FileDataSource(String fileName) {
        this.fileName = fileName;
    }
    
    @Override
    public void writeData(String data) {
        try {
            FileWriter writer = new FileWriter(fileName);
            writer.write(data);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    
    @Override
    public String readData() {
        StringBuilder stringBuilder = new StringBuilder();
        try {
            BufferedReader reader = new BufferedReader(new FileReader(fileName));
            String line;
            while ((line = reader.readLine()) != null) {
                stringBuilder.append(line).append("\n");
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return stringBuilder.toString();
    }
}
