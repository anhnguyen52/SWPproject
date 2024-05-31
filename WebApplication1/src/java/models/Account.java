/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

import java.util.Date;

/**
 *
 * @author ADMIN
 */
public class Account {

    private String user_id;
    private String username;
    private String password;
    private String full_name;
    private Date dob;
    private String gender;
    private String phone_number;
    private String avatar;
    private String specialization;
    private int role_id;
    private byte is_active;
    private String certiicate;

    public Account() {
    }

    public Account(String user_id, String username, String password, String full_name, Date dob, String gender, String phone_number, String avatar, String specialization, int role_id, byte is_active, String certiicate) {
        this.user_id = user_id;
        this.username = username;
        this.password = password;
        this.full_name = full_name;
        this.dob = dob;
        this.gender = gender;
        this.phone_number = phone_number;
        this.avatar = avatar;
        this.specialization = specialization;
        this.role_id = role_id;
        this.is_active = is_active;
        this.certiicate = certiicate;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFull_name() {
        return full_name;
    }

    public void setFull_name(String full_name) {
        this.full_name = full_name;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getSpecialization() {
        return specialization;
    }

    public void setSpecialization(String specialization) {
        this.specialization = specialization;
    }

    public int getRole_id() {
        return role_id;
    }

    public void setRole_id(int role_id) {
        this.role_id = role_id;
    }

    public byte getIs_active() {
        return is_active;
    }

    public void setIs_active(byte is_active) {
        this.is_active = is_active;
    }

    public String getCertiicate() {
        return certiicate;
    }

    public void setCertiicate(String certiicate) {
        this.certiicate = certiicate;
    }
    
}