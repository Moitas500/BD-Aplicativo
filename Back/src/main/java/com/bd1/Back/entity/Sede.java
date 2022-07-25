package com.bd1.Back.entity;

import javax.persistence.*;

@Entity
@Table(name = "Sede")
public class Sede {

    @Id
    @GeneratedValue
    @Column(name = "IDSEDE", nullable = false, length = 8)
    private String IDSEDE;

    @Column(name = "NOMBRE", nullable = false, length = 30)
    private String NOMBRE;

    public Sede(String id, String nombre){
        this.IDSEDE = id;
        this.NOMBRE = nombre;
    }

    public Sede(){}


   public void setNOMBRE(String NOMBRE){
       this.NOMBRE = NOMBRE;
   }

   public String getNOMBRE(){
       return this.NOMBRE;
   }

   public void setIDSEDE(String IDSEDE){
       this.IDSEDE = IDSEDE;
   }

   public String getIDSEDE(){
       return this.IDSEDE;
   }
}
