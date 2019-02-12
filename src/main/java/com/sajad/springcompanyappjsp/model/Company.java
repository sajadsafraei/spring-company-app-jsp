package com.sajad.springcompanyappjsp.model;


import javax.persistence.*;

@Entity
public class Company {


    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(nullable = false, updatable = false)
    private Long id;

    @Column(nullable = false, updatable = true)
    private String companyName;

    @Column(nullable = true, updatable = true)
    private String adminName;

    @Column(nullable = true, updatable = true)
    private String address;

    @Column(updatable = true)
    private String nameSahebHesab;

    @Column(nullable = true, updatable = true)
    private String accountNumber;

    @Column(nullable = true, updatable = true)
    private String tel;

    @Column(nullable = true, updatable = true)
    private String codeEghtesadi;

    @Column(nullable = true, updatable = true)
    private String shenaseMeli;


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getAdminName() {
        return adminName;
    }

    public void setAdminName(String adminName) {
        this.adminName = adminName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getAccountNumber() {
        return accountNumber;
    }

    public void setAccountNumber(String accountNumber) {
        this.accountNumber = accountNumber;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getCodeEghtesadi() {
        return codeEghtesadi;
    }

    public void setCodeEghtesadi(String codeEghtesadi) {
        this.codeEghtesadi = codeEghtesadi;
    }

    public String getShenaseMeli() {
        return shenaseMeli;
    }

    public void setShenaseMeli(String shenaseMeli) {
        this.shenaseMeli = shenaseMeli;
    }

    public String getNameSahebHesab() {
        return nameSahebHesab;
    }

    public void setNameSahebHesab(String nameSahebHesab) {
        this.nameSahebHesab = nameSahebHesab;
    }

    @Override
    public String toString() {
        return "Company{" +
                "id=" + id +
                ", companyName='" + companyName + '\'' +
                ", adminName='" + adminName + '\'' +
                ", address='" + address + '\'' +
                ", accountNumber='" + accountNumber + '\'' +
                ", tel=" + tel +
                ", codeEghtesadi=" + codeEghtesadi +
                ", shenaseMeli=" + shenaseMeli +
                '}';
    }
}
