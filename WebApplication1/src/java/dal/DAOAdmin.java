/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import models.Role;

/**
 *
 * @author ADMIN
 */
public class DAOAdmin {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public void addAccount(String user_id, String username, int role_id) {
        String query = "INSERT INTO Users (user_id, username, role_id, is_active) VALUES (?, ?, ?, ?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user_id);
            ps.setString(2, username);
            ps.setInt(3, role_id);
            ps.setBoolean(4, true);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public List<Role> getAllRoles() {
        List<Role> roles = new ArrayList<>();
        String query = "SELECT role_id, role_name FROM Roles";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                roles.add(new Role(rs.getInt("role_id"), rs.getString("role_name")));
            }
        } catch (Exception e) {
        }
        return roles;
    }
    
    public boolean checkAccountExists(String user_id) {
    String query = "SELECT * FROM Users WHERE user_id = ?";
    try {
        conn = new DBContext().getConnection();
        ps = conn.prepareStatement(query);
        ps.setString(1, user_id);
        rs = ps.executeQuery();
        return rs.next(); 
    } catch (Exception e) {
        return false;
    }
}


}
