package com.bd1.Back.entity;

import javax.persistence.*;

@Entity
@Table(name = "Sede")
public class Sede {

    @Id
    @GeneratedValue
    @Column(name = "idSede", nullable = false, length = 8)
    private String id;

    @Column(name = "nombre", nullable = false, length = 30)
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
