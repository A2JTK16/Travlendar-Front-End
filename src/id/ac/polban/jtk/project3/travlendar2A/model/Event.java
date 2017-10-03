package id.ac.polban.jtk.project3.travlendar2A.model;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.util.Date;


/**
 *
 * @author AGS
 */
public class Event {
    /**
     * REVIEW
     * 1.   Perlu Ditambahkan kode_lokasi dan id_traveller,
     *      Supaya Dapat Memiliki Relasi dengan Lokasi dan Traveller.
     *      kode_event Dapat Menjadi Object Counter atau
     *      Tidak Perlu di Set Karena Nantinya di Database Dapat
     *      Otomatis Auto_increment
     * 2.   Saran Saya untuk Date Parser dibuat Class Khusus
     * 3.   Perbaiki Lagi Getter dan Setter nya
     */
    
    private String nama_event;
    private Date arrivaltime;
    private Date departuretime;
    private int kodeLokasiAwal;
    private int kodeLokasiTujuan;
    
    public Event(){
        this.nama_event = null;
        this.arrivaltime = null;
        this.departuretime = null;
    }
   
    public String getEvent() {
        Location objLoc = new Location();
        return ("Nama Event : " + this.nama_event + "\nWaktu Berangkat : " + this.getDeparturetime() + "\nWaktu Tiba : " + this.getArrivaltime() + "\nLokasi : " + objLoc.getNamaLoc(this.getKodeLokasiTujuan()) + "\n") ;
    }

    /**
     * @param nama_event the nama_event to set
     */
    public void setNama_event(String nama_event) {
         this.nama_event = nama_event;
    }

    
    public void setArrivalTime(Date arrivaltime) {
        if(this.departuretime.before(arrivaltime)) {
            this.arrivaltime = arrivaltime;
        } else {
            System.out.println("Arrival time and departure time that you enter interchangeable, we will exchange it");
            this.arrivaltime = this.getDeparturetime();
            this.departuretime = arrivaltime;
        }
        
    }

    
    public void setDepartureTime(Date departuretime) {

        this.departuretime = departuretime;
    }

    /**
     * @return the arrivaltime
     */
    public Date getArrivaltime() {
        return arrivaltime;
    }

    /**
     * @return the departuretime
     */
    public Date getDeparturetime() {
        return departuretime;
    }

    /**
     * @return the kodeLokasiAwal
     */
    public int getKodeLokasiAwal() {
        return kodeLokasiAwal;
    }

    /**
     * @param kodeLokasiAwal the kodeLokasiAwal to set
     */
    public void setKodeLokasiAwal(int kodeLokasiAwal) {
        this.kodeLokasiAwal = kodeLokasiAwal;
    }

    /**
     * @return the kodeLokasiTujuan
     */
    public int getKodeLokasiTujuan() {
        return kodeLokasiTujuan;
    }

    /**
     * @param kodeLokasiTujuan the kodeLokasiTujuan to set
     */
    public void setKodeLokasiTujuan(int kodeLokasiTujuan) {
        this.kodeLokasiTujuan = kodeLokasiTujuan;
    }
}
    
   
/*    public boolean isDate(String arrivalTimeStr)
    {
        try{
            this.dateFormat.parse(arrivalTimeStr);
            return true;
        }
        catch(ParseException e)
        {
             System.out.println("Tanggal Tidak Valid !");
            return false;
        }
    }
    
    /**
     *
     * @param timeStr
     * @return
     */
/*    public boolean isTime(String timeStr)
    {
        try{
            this.timeFormat.parse(timeStr);
            return true;
        }
        catch(ParseException d){
             System.out.println("Waktu Tidak Valid !");
            return false;
        }
    }
    
}*/