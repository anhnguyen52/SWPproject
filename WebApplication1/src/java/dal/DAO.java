/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Date;
import models.Account;

/**
 *
 * @author ADMIN
 */
public class DAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public Account login(String username, String password) {
        String query = "select * from Users where username = ? and password = ?";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            rs = ps.executeQuery();
            if (rs.next()) {
                return new Account(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDate(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getByte(10),
                        rs.getString(11),
                        rs.getString(12));
            }

        } catch (Exception e) {
        }
        return null;
    }

    public Account getAccount(String username, String password) {
        String query = "select * from Users where username = ? and password = ?";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            rs = ps.executeQuery();
            if (rs.next()) {
                return new Account(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDate(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getByte(10),
                        rs.getString(11),
                        rs.getString(12));
            }

        } catch (Exception e) {
        }
        return null;
    }

    public Account searchAccountByUsername(String username) {
        String query = "select * from Users where username = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDate(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getByte(10),
                        rs.getString(11),
                        rs.getString(12));
            }
        } catch (Exception e) {

        }
        return null;
    }

    public void updateAccount(String userName, String full_name, Date dob, String gender, String phone_number, String avatar, String specialization, String password) {
        String query = "UPDATE Users SET full_name = ?, dob = ?, gender = ?, phone_number = ?, avatar = ?, specialization = ?, password = ? WHERE username = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, full_name);
            ps.setDate(2, new java.sql.Date(dob.getTime()));
            ps.setString(3, gender);
            ps.setString(4, phone_number);
            ps.setString(5, avatar);
            ps.setString(6, specialization);
            ps.setString(7, password);
            ps.setString(8, userName);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public String getRoleName(int role_id) {
        String query = "SELECT role_name FROM Roles WHERE role_id = ?";
        String roleName = null;
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, role_id);
            rs = ps.executeQuery();
            while (rs.next()) {
                roleName = rs.getString("role_name");
            }
        } catch (Exception e) {

        }
        return roleName;
    }

    public static void main(String[] args) {
    }

}
