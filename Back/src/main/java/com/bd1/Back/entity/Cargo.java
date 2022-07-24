package com.bd1.Back.entity;

import javax.persistence.*;

@Entity
@Table(name = "Cargo")
public class Cargo {

    @Id
    @GeneratedValue
    @Column(name = "idCargo")
    private String id;

    @Column(name = "tipoCargo")
    private String tipoCargo;

    public Cargo(String id, String tipoCargo){
        this.id = id;
        this.tipoCargo = tipoCargo;
    }

    public Cargo(){}

    public void setIdCargo(String id){
        this.id = id;
    }

    public String getIdCargo(){
        return this.id;
    }

    public void setTipoCargo(String tipoCargo){
        this.tipoCargo = tipoCargo;
    }

    public String getTipoCargo(){
        return this.tipoCargo;
    }
}