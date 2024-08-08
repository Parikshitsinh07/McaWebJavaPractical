/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.decoretorapplication;

/**
 *
 * @author Admin
 */
public abstract class DataSourceDecorator implements DataSource {
    private DataSource file;

    public DataSourceDecorator(DataSource source) {
        this.file = source;
    }

    /**
     *
     * @param data
     */
    @Override
    abstract public void writeData(String data);
//        file.writeData(data);

    /**
     *
     * @return
     */
    @Override
    abstract public String readData();
//        return file.readData();
    
}
