package com.bd1.Back.entity;

import javax.persistence.*;

@Entity
@Table(name = "SEDE")
public class Sede {
    @Id
    @GeneratedValue
    @Column(name = "idSede")
    private String id;
    @Column(name = "nombre")
    private String nombre;

    public Sede(String id, String nombre){
        this.id = id;
        this.nombre = nombre;
    }

    public Sede(){}


   public void setNombre(String nombre){
       this.nombre = nombre;
   }

   public String getNombre(){
       return this.nombre;
   }

   public void setId(String id){
       this.id = id;
   }

   public String getId(){
       return this.id;
   }
}
