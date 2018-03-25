package com.heitian.ssm.model;

public class scholar {
    private String sid;

    private String sname;

    private String coordinate;

    private String photo;

    private String experience;

    private Integer tnumberMin;

    private Integer tbetweenness;

    private String institution;

    public String getsid() {
        return sid;
    }

    public void setsid(String sid) {
        this.sid = sid == null ? null : sid.trim();
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname == null ? null : sname.trim();
    }

    public String getCoordinate() {
        return coordinate;
    }

    public void setCoordinate(String coordinate) {
        this.coordinate = coordinate == null ? null : coordinate.trim();
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo == null ? null : photo.trim();
    }

    public String getExperience() {
        return experience;
    }

    public void setExperience(String experience) {
        this.experience = experience == null ? null : experience.trim();
    }

    public Integer getTnumberMin() {
        return tnumberMin;
    }

    public void setTnumberMin(Integer tnumberMin) {
        this.tnumberMin = tnumberMin;
    }

    public Integer getTbetweenness() {
        return tbetweenness;
    }

    public void setTbetweenness(Integer tbetweenness) {
        this.tbetweenness = tbetweenness;
    }

    public String getInstitution() {
        return institution;
    }

    public void setInstitution(String institution) {
        this.institution = institution == null ? null : institution.trim();
    }
}