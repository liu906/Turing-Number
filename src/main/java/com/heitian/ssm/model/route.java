package com.heitian.ssm.model;

public class route {
    private Integer sid;

    private Integer tid;

    private String Tnumberyear;

    private String route;

    public Integer getsid() {
        return sid;
    }

    public void setsid(Integer sid) {
        this.sid = sid;
    }

    public Integer getTid() {
        return tid;
    }

    public void setTid(Integer tid) {
        this.tid = tid;
    }

    public String getTnumberyear() {
        return Tnumberyear;
    }

    public void setTnumberyear(String Tnumberyear) {
        this.Tnumberyear = Tnumberyear == null ? null : Tnumberyear.trim();
    }

    public String getRoute() {
        return route;
    }

    public void setRoute(String route) {
        this.route = route == null ? null : route.trim();
    }
}