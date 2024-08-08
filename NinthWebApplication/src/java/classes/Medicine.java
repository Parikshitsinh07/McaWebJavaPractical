/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

/**
 *
 * @author 91942
 */
public class Medicine {

    int medicineId;
    String medicineName;
    String medicineDetails;
    String manufacturerName;
    String batchNo;
    String manufacturingMonthYear;
    String expiryMonthYear;

    public Medicine(int medicineId, String medicineName, String medicineDetails, String manufacturerName, String batchNo, String manufacturingMonthYear, String expiryMonthYear) {
        this.medicineId = medicineId;
        this.medicineName = medicineName;
        this.medicineDetails = medicineDetails;
        this.manufacturerName = manufacturerName;
        this.batchNo = batchNo;
        this.manufacturingMonthYear = manufacturingMonthYear;
        this.expiryMonthYear = expiryMonthYear;
    }

    public int getMedicineId() {
        return medicineId;
    }

    public void setMedicineId(int medicineId) {
        this.medicineId = medicineId;
    }

    public String getMedicineName() {
        return medicineName;
    }

    public void setMedicineName(String medicineName) {
        this.medicineName = medicineName;
    }

    public String getMedicineDetails() {
        return medicineDetails;
    }

    public void setMedicineDetails(String medicineDetails) {
        this.medicineDetails = medicineDetails;
    }

    public String getManufacturerName() {
        return manufacturerName;
    }

    public void setManufacturerName(String manufacturerName) {
        this.manufacturerName = manufacturerName;
    }

    public String getBatchNo() {
        return batchNo;
    }

    public void setBatchNo(String batchNo) {
        this.batchNo = batchNo;
    }

    public String getManufacturingMonthYear() {
        return manufacturingMonthYear;
    }

    public void setManufacturingMonthYear(String manufacturingMonthYear) {
        this.manufacturingMonthYear = manufacturingMonthYear;
    }

    public String getExpiryMonthYear() {
        return expiryMonthYear;
    }

    public void setExpiryMonthYear(String expiryMonthYear) {
        this.expiryMonthYear = expiryMonthYear;
    }

    
}
