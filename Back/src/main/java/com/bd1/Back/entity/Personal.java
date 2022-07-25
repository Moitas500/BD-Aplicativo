package com.bd1.Back.entity;

import javax.persistence.*;

@Entity
@Table(name = "Personal")
public class Personal {
    @Id
    @Column(name = "IdPersonal", nullable = false, length = 5)
    private String id;

    @OneToMany
    @JoinColumn(name = "idPersona", nullable = false)
    private Persona idPersona;

    @OneToMany
    @JoinColumn(name = "idCargo", nullable = false)
    private Cargo idCargo;

    @OneToMany
    @JoinColumn(name = "idSede", nullable = false)
    private Sede idSede;

    @OneToMany
    @JoinColumn(name = "JefeIdPersonal", nullable = true)
    private Personal idJefe;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Persona getIdPersona() {
        return idPersona;
    }

    public void setIdPersona(Persona idPersona) {
        this.idPersona = idPersona;
    }

    public Cargo getIdCargo() {
        return idCargo;
    }

    public void setIdCargo(Cargo idCargo) {
        this.idCargo = idCargo;
    }

    public Sede getIdSede() {
        return idSede;
    }

    public void setIdSede(Sede idSede) {
        this.idSede = idSede;
    }

    public Personal getIdJefe() {
        return idJefe;
    }

    public void setIdJefe(Personal idJefe) {
        this.idJefe = idJefe;
    }
}
