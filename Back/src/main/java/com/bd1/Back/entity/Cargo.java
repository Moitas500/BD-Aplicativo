package com.bd1.Back.entity;

import javax.persistence.*;

@Entity
@Table(name = "Cargo")
public class Cargo {

    @Id
    @GeneratedValue
    @Column(name = "IDCARGO")
    private String IDCARGO;

    @Column(name = "TIPOCARGO", nullable = false, length = 30)
    private String TIPOCARGO;

    public Cargo(String id, String tipoCargo){
        this.IDCARGO = id;
        this.TIPOCARGO = tipoCargo;
    }

    public Cargo(){}

    public void setIDCARGO(String id){
        this.IDCARGO = id;
    }

    public String getIDCARGO(){
        return this.IDCARGO;
    }

    public void setTIPOCARGO(String TIPOCARGO){
        this.TIPOCARGO = TIPOCARGO;
    }

    public String getTIPOCARGO(){
        return this.TIPOCARGO;
    }
}
