/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Koneksi.Koneksi;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author M.Dani Setiawan
 */
public class CoffeeModel {
   String id_transaction,id_coffee,qty,total_price,date_of_purchase,address;
   String id_akun,nama,email,password_akun;
   String id_admin,username,passoword_admin;
   String id,coffee_name,stock,price;
   String id_subcribe,email_subcriber,phone_number;
   Koneksi db = null;
  
    public CoffeeModel() {
        db = new Koneksi();
    }

    public void setId_admin(String id_admin) {
        this.id_admin = id_admin;
    }

    public String getId_admin() {
        return id_admin;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUsername() {
        return username;
    }

    public void setPassoword_admin(String passoword_admin) {
        this.passoword_admin = passoword_admin;
    }

    public String getPassoword_admin() {
        return passoword_admin;
    }

    public void setId_akun(String id_akun) {
        this.id_akun = id_akun;
    }

    public String getId_akun() {
        return id_akun;
    }

     public String getNama() {
        return nama;
    }
 
    public void setNama(String nama) {
        this.nama = nama;
    }
    
    public String getEmail() {
        return email;
    }
 
    public void setEmail(String email) {
        this.email = email;
    }
     public void setId(String id) {
        this.id = id;
    }

    public String getId() {
        return id;
    }

   
    public void setCoffee_name(String coffee_name) {
        this.coffee_name = coffee_name;
    }

    public String getCoffee_name() {
        return coffee_name;
    }

    public void setStock(String stock) {
        this.stock = stock;
    }

    public String getStock() {
        return stock;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getPrice() {
        return price;
    }

    public void setId_transaction(String id_transaction) {
        this.id_transaction = id_transaction;
    }

    public void setId_coffee(String id_coffee) {
        this.id_coffee = id_coffee;
    }

    public void setQty(String qty) {
        this.qty = qty;
    }

    public void setTotal_price(String total_price) {
        this.total_price = total_price;
    }

    public void setDate_of_purchase(String date_of_purchase) {
        this.date_of_purchase = date_of_purchase;
    }

    public void setPassword_akun(String password_akun) {
        this.password_akun = password_akun;
    }

    public String getId_transaction() {
        return id_transaction;
    }

    public String getId_coffee() {
        return id_coffee;
    }

    public String getQty() {
        return qty;
    }

    public String getTotal_price() {
        return total_price;
    }

    public String getDate_of_purchase() {
        return date_of_purchase;
    }

    public String getPassword_akun() {
        return password_akun;
    }

    public Koneksi getDb() {
        return db;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setDb(Koneksi db) {
        this.db = db;
    }

    public String getAddress() {
        return address;
    }

    public void setId_subcribe(String id_subcribe) {
        this.id_subcribe = id_subcribe;
    }

    public void setEmail_subcriber(String email_subcriber) {
        this.email_subcriber = email_subcriber;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }

    public String getId_subcribe() {
        return id_subcribe;
    }

    public String getEmail_subcriber() {
        return email_subcriber;
    }

    public String getPhone_number() {
        return phone_number;
    }
   
    
    
    
    public void simpan_coffee(){
        String sql="INSERT INTO db_coffee_detail values('"+coffee_name+"','"+stock+"','"+price+"')";
        db.simpanData(sql);
    }
    
    public void update_coffee(){
        String sql="UPDATE db_coffee_detail SET coffee_name='"+coffee_name+"',stock='"+stock+"',price='"+price+"' WHERE id='"+id+"'";
        db.simpanData(sql);
        System.out.println(sql);
    }
    public void hapus_coffee(){
        String sql="DELETE FROM db_coffee_detail WHERE id='"+id+"'";
        db.simpanData(sql);
        System.out.println("");
    }
  
    public void simpan_akun(){
        String sql="INSERT INTO db_coffee_akun values('"+nama+"','"+email+"','"+password_akun+"')";
        db.simpanData(sql);
    }
    
    public void update_akun(){
        String sql="UPDATE db_coffee_akun SET nama='"+nama+"',email='"+email+"',password_akun='"+password_akun+"' WHERE id_akun='"+id_akun+"'";
        db.simpanData(sql);
        System.out.println(sql);
    }
    public void hapus_akun(){
        String sql="DELETE FROM db_coffee_akun WHERE id_akun='"+id_akun+"'";
        db.simpanData(sql);
        System.out.println("");
    }
    
    
    public void simpan_transaction(){
        String sql="INSERT INTO db_coffee_transaction values('"+id_akun+"','"+id_coffee+"','"+nama+"','"+coffee_name+"','"+price+"','"+qty+"','"+total_price+"','"+address+"','"+date_of_purchase+"')";
        db.simpanData(sql);
    }
    
    public void update_transaction(){
        String sql="UPDATE db_coffee_transaction SET id_akun='"+id_akun+"',id_coffee='"+id_coffee+"',nama='"+nama+"',coffee_name='"+coffee_name+"',price='"+price+"',qty='"+qty+"',total_price='"+total_price+"',address='"+address+"',date_of_purchase='"+date_of_purchase+"' WHERE id_transaction='"+id_transaction+"'";
        db.simpanData(sql);
        System.out.println(sql);
    }
    public void hapus_transaction(){
        String sql="DELETE FROM db_coffee_transaction WHERE id_transaction='"+id_transaction+"'";
        db.simpanData(sql);
        System.out.println("");
    }
    
    
    public void simpan_subcriber(){
        String sql="INSERT INTO db_coffee_subcriber values('"+email_subcriber+"','"+phone_number+"')";
        db.simpanData(sql);
    }
    
    
    public List CoffeeSubcriber() {
        List<CoffeeModel> data = new ArrayList<CoffeeModel>();
        ResultSet rs = null;

        try {
            String sql = "select * from db_coffee_subcriber";
            rs = db.ambilData(sql);
            while (rs.next()) {
                CoffeeModel um = new CoffeeModel();
                um.setId_subcribe(rs.getString("id_subcriber"));
                um.setEmail_subcriber(rs.getString("email_subcriber"));
                um.setPhone_number(rs.getString("phone_number"));
                data.add(um);

            }
            db.diskonek(rs);
        } catch (Exception ex) {
            System.out.println("Terjadi Kesalahan Saat menampilkan data Field" + ex);
        }
        return data;
    }
    

    public List CoffeeDetail() {
        List<CoffeeModel> data = new ArrayList<CoffeeModel>();
        ResultSet rs = null;

        try {
            String sql = "select * from db_coffee_detail";
            rs = db.ambilData(sql);
            while (rs.next()) {
                CoffeeModel um = new CoffeeModel();
                um.setId(rs.getString("id"));
                um.setCoffee_name(rs.getString("Coffee_Name"));
                um.setStock(rs.getString("Stock"));
                um.setPrice(rs.getString("Price"));
                data.add(um);

            }
            db.diskonek(rs);
        } catch (Exception ex) {
            System.out.println("Terjadi Kesalahan Saat menampilkan data Field" + ex);
        }
        return data;
    }
    
   
    public List cariIdCoffee() {
        List<CoffeeModel> data = new ArrayList<CoffeeModel>();
        ResultSet rs = null;
        try {
            String sql = "SELECT * FROM db_coffee_detail WHERE id='"+id+"'";
            rs = db.ambilData(sql);
            while (rs.next()) {
                CoffeeModel mz = new CoffeeModel();
                mz.setId(rs.getString("id"));
                mz.setCoffee_name(rs.getString("coffee_name"));
                mz.setStock(rs.getString("stock"));
                mz.setPrice(rs.getString("price"));
                data.add(mz);

            }
            db.diskonek(rs);
        } catch (Exception ex) {
            System.out.println("Terjadi Kesalah Saat menampilkan Cari IdCoffee" + ex);
        }
        return data;
    }
    
    
    public List CoffeeAkun() {
        List<CoffeeModel> data = new ArrayList<CoffeeModel>();
        ResultSet rs = null;

        try {
            String sql = "select * from db_coffee_akun";
            rs = db.ambilData(sql);
            while (rs.next()) {
                CoffeeModel um = new CoffeeModel();
               um.setId_akun(rs.getString("id_akun"));
               um.setNama(rs.getString("nama"));
               um.setEmail(rs.getString("email"));
               um.setPassword_akun(rs.getString("password_akun"));
               
                data.add(um);

            }
            db.diskonek(rs);
        } catch (Exception ex) {
            System.out.println("Terjadi Kesalahan Saat menampilkan data Field" + ex);
        }
        return data;
    }
    
    public List cariIdAkun() {
        List<CoffeeModel> data = new ArrayList<CoffeeModel>();
        ResultSet rs = null;
        try {
            String sql = "SELECT * FROM db_coffee_akun WHERE id_akun='"+id_akun+"'";
            rs = db.ambilData(sql);
            while (rs.next()) {
                CoffeeModel m = new CoffeeModel();
                m.setId_akun(rs.getString("id_akun"));
                m.setNama(rs.getString("nama"));
                m.setEmail(rs.getString("email"));
                m.setPassword_akun(rs.getString("password_akun"));
                data.add(m);

            }
            db.diskonek(rs);
        } catch (Exception ex) {
            System.out.println("Terjadi Kesalah Saat menampilkan Cari IdAkun" + ex);
        }
        return data;
    }
    
    
    
    public List CoffeeTransaction() {
        List<CoffeeModel> data = new ArrayList<CoffeeModel>();
        ResultSet rs = null;

        try {
            String sql = "select * from db_coffee_transaction";
            rs = db.ambilData(sql);
            while (rs.next()) {
               CoffeeModel um = new CoffeeModel();
               um.setId_transaction(rs.getString("id_transaction"));
               um.setId_akun(rs.getString("id_akun"));
               um.setId_coffee(rs.getString("id_coffee"));
               um.setNama(rs.getString("nama"));
               um.setCoffee_name(rs.getString("coffee_name"));
               um.setPrice(rs.getString("price"));
               um.setQty(rs.getString("qty"));
               um.setTotal_price(rs.getString("total_price"));
               um.setAddress(rs.getString("address"));
               um.setDate_of_purchase(rs.getString("date_of_purchase"));
       
                data.add(um);

            }
            db.diskonek(rs);
        } catch (Exception ex) {
            System.out.println("Terjadi Kesalahan Saat menampilkan data Field" + ex);
        }
        return data;
    }
    
    public List cariIdTransaction() {
        List<CoffeeModel> data = new ArrayList<CoffeeModel>();
        ResultSet rs = null;
        try {
            String sql = "SELECT * FROM db_coffee_transaction WHERE id_transaction='"+id_transaction+"'";
            rs = db.ambilData(sql);
            while (rs.next()) {
                CoffeeModel m = new CoffeeModel();
               m.setId_transaction(rs.getString("id_transaction"));
               m.setId_akun(rs.getString("id_akun"));
               m.setId_coffee(rs.getString("id_coffee"));
               m.setNama(rs.getString("nama"));
               m.setCoffee_name(rs.getString("coffee_name"));
               m.setPrice(rs.getString("price"));
               m.setQty(rs.getString("qty"));
               m.setTotal_price(rs.getString("total_price"));
               m.setAddress(rs.getString("address"));
               m.setDate_of_purchase(rs.getString("date_of_purchase"));
                data.add(m);

            }
            db.diskonek(rs);
        } catch (Exception ex) {
            System.out.println("Terjadi Kesalah Saat menampilkan Cari IdTransaksi" + ex);
        }
        return data;
    }
    
    
    
    
    
    public List LoginUser(String email, String password_akun) {
        List data = new ArrayList();
        ResultSet rs = null;
        try {
            String sql = "select * from db_coffee_akun where email='" + email + "' and password_akun='" + password_akun + "'";
            rs = db.ambilData(sql);
            
            while (rs.next()) {
                CoffeeModel am = new CoffeeModel();
                am.setId_akun(rs.getString("id_akun"));
                am.setNama(rs.getString("nama"));      
                am.setEmail(rs.getString("email"));                
                am.setPassword_akun(rs.getString("password_akun"));
                data.add(am);
            }
            db.diskonek(rs);
        } catch (Exception a) {
            System.out.println("Terjadi kesalahaan cari login user, pada :\n" + a);
        }
        return data;
    }
    
    public List LoginAdmin(String username, String password_admin) {
        List data = new ArrayList();
        ResultSet rs = null;
        try {
            String sql = "select * from db_coffee_admin where username='" + username + "' and password_admin='" + password_admin + "'";
            rs = db.ambilData(sql);
            
            while (rs.next()) {
                CoffeeModel am = new CoffeeModel();
                am.setId_admin(rs.getString("id_admin"));
                am.setUsername(rs.getString("username"));                   
                am.setPassoword_admin(rs.getString("password_admin"));
                data.add(am);
            }
            db.diskonek(rs);
        } catch (Exception a) {
            System.out.println("Terjadi kesalahaan cari login admin, pada :\n" + a);
        }
        return data;
    }
    

    
    
    
}




