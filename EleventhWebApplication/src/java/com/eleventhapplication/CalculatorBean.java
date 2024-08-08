package com.eleventhapplication;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author 91942
 */
// CalculatorBean.java
public class CalculatorBean {

    private double number1;
    private double number2;
    private String operation;

    public CalculatorBean(){
    }
    
    public double getNumber1() {
        return number1;
    }

    public void setNumber1(double number1) {
        this.number1 = number1;
    }

    public double getNumber2() {
        return number2;
    }

    public void setNumber2(double number2) {
        this.number2 = number2;
    }

    public String getOperation() {
        return operation;
    }

    public void setOperation(String operation) {
        this.operation = operation;
    }

    public double calculateResult() {
        double result = 0;

        if (operation.equals("addition")) {
            result = number1 + number2;
        }
        if (operation.equals("substraction")) {
            result = number1 - number2;
        }
        if (operation.equals("multiplication")) {
            result = number1 * number2;
        }
        if (operation.equals("division")) {
            if (number2 != 0) {
                result = number1 / number2;
            }
        }
        return result;
    }
}
