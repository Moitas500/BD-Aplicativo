package com.bd1.Back.entity;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "Personal")
public class Personal {
    @Id
    @Column(name = "IDPERSONAL", nullable = false, length = 5)
    private String IDPERSONAL;

    @OneToOne
    @JoinColumn(name = "IDPERSONA", nullable = false)
    private Persona IDPERSONA;

    @OneToOne
    @JoinColumn(name = "IDCARGO",  nullable = false)
    private Cargo IDCARGO;

    @OneToOne
    @JoinColumn(name = "IDSEDE", nullable = false)
    private Sede IDSEDE;

    @OneToOne
    @JoinColumn(name = "JEFEIDPERSONAL", nullable = true)
    private Personal JEFEIDPERSONAL;

    public String getIDPERSONAL() {
        return IDPERSONAL;
    }

    public void setIDPERSONAL(String IDPERSONAL) {
        this.IDPERSONAL = IDPERSONAL;
    }

    public Persona getIDPERSONA() {
        return IDPERSONA;
    }

    public void setIDPERSONA(Persona IDPERSONA) {
        this.IDPERSONA = IDPERSONA;
    }

    public Cargo getIDCARGO() {
        return IDCARGO;
    }

    public void setIDCARGO(Cargo IDCARGO) {
        this.IDCARGO = IDCARGO;
    }

    public Sede getIDSEDE() {
        return IDSEDE;
    }

    public void setIDSEDE(Sede IDSEDE) {
        this.IDSEDE = IDSEDE;
    }

    public Personal getJEFEIDPERSONAL() {
        return JEFEIDPERSONAL;
    }

    public void setJEFEIDPERSONAL(Personal JEFEIDPERSONAL) {
        this.JEFEIDPERSONAL = JEFEIDPERSONAL;
    }

    @Override
    public String toString() {
        return "Personal{" +
                "IDPERSONAL='" + IDPERSONAL + '\'' +
                ", IDPERSONA=" + IDPERSONA +
                ", IDCARGO=" + IDCARGO +
                ", IDSEDE=" + IDSEDE +
                ", JEFEIDPERSONAL=" + JEFEIDPERSONAL +
                '}';
    }
}
