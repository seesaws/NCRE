package com.team5408.entity;


import java.sql.Date;

import java.sql.Time;
import java.util.List;


public class cc {
    private Integer ccc;
    private Date date;
    private Time starttime;
    private List<User> users;

    public List<User> getUsers() {
        return users;
    }

    public void setUsers(List<User> users) {
        this.users = users;
    }

    public int getCcc() {
        return ccc;
    }

    public void setCcc(Integer ccc) {
        this.ccc = ccc;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Time getStarttime() {
        return starttime;
    }

    public void setStarttime(Time starttime) {
        this.starttime = starttime;
    }
}
