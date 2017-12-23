/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package id.ac.polban.jtk.project3.travlendar2A.Helpers;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.xml.bind.DatatypeConverter;

/**
 * 
 * Kelas Hash SHA - 2 tipe SHA - 256
 * 64 karakter (256 bytes)
 * 
 * @author mufidjamaluddin
 */
public class HashSHA256 
{
    /**
     * Instan dari class ini, Singleton
     */
    private static final HashSHA256 SHA256_INSTANCE = new HashSHA256();
    
    /**
     * Mendapatkan Instan
     * @return 
     */
    public static HashSHA256 getInstance()
    {
        return SHA256_INSTANCE;
    }
    
    /**
     * Object untuk hash
     */
    private MessageDigest crypt;
    
    /**
     * Konstruktor
     */
    public HashSHA256()
    {
        try 
        {
            /**
             * Mendapatkan object untuk hash
             */
            this.crypt = MessageDigest.getInstance("SHA-256");
        } 
        catch (NoSuchAlgorithmException ex) 
        {
            this.crypt = null;
            Logger.getLogger(HashSHA256.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    /**
     * Hash Password SHA 256
     * @param data
     * @return 
     */
    public String hash(String data)
    {
        String result;
        try 
        {
            /**
             * Bersihkan 
             */
            this.crypt.reset();
            
            /**
             * Hash array byte dari String UTF-8 menjadi array byte hasil hash
             */
            byte[] hashresult = this.crypt.digest(data.getBytes("UTF-8"));
            
            /**
             * Konversi array byte menjadi string
             */
            result = DatatypeConverter.printHexBinary(hashresult);
        } 
        catch (UnsupportedEncodingException ex) 
        {
            result = null;
        }
        return result;
    }
    
    /**
     * Contoh Penggunaan
     * @param args
     */
    public static void main(String[] args)
    {
        /**
         * Dapatkan Instans
         */
        HashSHA256 objHash = HashSHA256.getInstance();
        
        String password = "Rajin 123";
        
        String hashpwd = objHash.hash(password);
        
        System.out.println("Password : " + password);
        
        System.out.println("Hasil Hash : " + hashpwd);
        
        System.out.println("Cek Panjang Hash (64 bukan) : " + hashpwd.length());
    }
}
