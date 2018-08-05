/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Jewel;

import java.beans.PropertyChangeListener;
import java.beans.PropertyChangeSupport;
import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 *
 * @author B2
 */
@Entity
@Table(name = "data", catalog = "database1", schema = "")
@NamedQueries({
    @NamedQuery(name = "Data.findAll", query = "SELECT d FROM Data d")
    , @NamedQuery(name = "Data.findByAid", query = "SELECT d FROM Data d WHERE d.aid = :aid")
    , @NamedQuery(name = "Data.findByPid", query = "SELECT d FROM Data d WHERE d.pid = :pid")
    , @NamedQuery(name = "Data.findByPnam", query = "SELECT d FROM Data d WHERE d.pnam = :pnam")
    , @NamedQuery(name = "Data.findByDid", query = "SELECT d FROM Data d WHERE d.did = :did")
    , @NamedQuery(name = "Data.findByFees", query = "SELECT d FROM Data d WHERE d.fees = :fees")
    , @NamedQuery(name = "Data.findByDate", query = "SELECT d FROM Data d WHERE d.date = :date")})
public class Data implements Serializable {

    @Transient
    private PropertyChangeSupport changeSupport = new PropertyChangeSupport(this);

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "aid")
    private Integer aid;
    @Basic(optional = false)
    @Column(name = "pid")
    private String pid;
    @Basic(optional = false)
    @Column(name = "pnam")
    private String pnam;
    @Basic(optional = false)
    @Column(name = "did")
    private String did;
    @Basic(optional = false)
    @Column(name = "fees")
    private String fees;
    @Basic(optional = false)
    @Column(name = "date")
    private String date;

    public Data() {
    }

    public Data(Integer aid) {
        this.aid = aid;
    }

    public Data(Integer aid, String pid, String pnam, String did, String fees, String date) {
        this.aid = aid;
        this.pid = pid;
        this.pnam = pnam;
        this.did = did;
        this.fees = fees;
        this.date = date;
    }

    public Integer getAid() {
        return aid;
    }

    public void setAid(Integer aid) {
        Integer oldAid = this.aid;
        this.aid = aid;
        changeSupport.firePropertyChange("aid", oldAid, aid);
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        String oldPid = this.pid;
        this.pid = pid;
        changeSupport.firePropertyChange("pid", oldPid, pid);
    }

    public String getPnam() {
        return pnam;
    }

    public void setPnam(String pnam) {
        String oldPnam = this.pnam;
        this.pnam = pnam;
        changeSupport.firePropertyChange("pnam", oldPnam, pnam);
    }

    public String getDid() {
        return did;
    }

    public void setDid(String did) {
        String oldDid = this.did;
        this.did = did;
        changeSupport.firePropertyChange("did", oldDid, did);
    }

    public String getFees() {
        return fees;
    }

    public void setFees(String fees) {
        String oldFees = this.fees;
        this.fees = fees;
        changeSupport.firePropertyChange("fees", oldFees, fees);
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        String oldDate = this.date;
        this.date = date;
        changeSupport.firePropertyChange("date", oldDate, date);
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (aid != null ? aid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Data)) {
            return false;
        }
        Data other = (Data) object;
        if ((this.aid == null && other.aid != null) || (this.aid != null && !this.aid.equals(other.aid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Jewel.Data[ aid=" + aid + " ]";
    }

    public void addPropertyChangeListener(PropertyChangeListener listener) {
        changeSupport.addPropertyChangeListener(listener);
    }

    public void removePropertyChangeListener(PropertyChangeListener listener) {
        changeSupport.removePropertyChangeListener(listener);
    }
    
}
