package com.team5408.entity;

public class User {
    private Integer id;
    private String no;
    private String zkzh;
    private String name;
    private String bclass;
    private Integer cc;
    private String jfh;
    private String yx;
    private String zy;
    private String nj;
    private String sex;
    private String sclass;
    private Integer xq;
    private String kc;
    private String llks;
    private cc ccc;
    private xiaoqu xiaoqu;

    public com.team5408.entity.cc getCcc() {
        return ccc;
    }

    public void setCcc(com.team5408.entity.cc ccc) {
        this.ccc = ccc;
    }

    public com.team5408.entity.xiaoqu getXiaoqu() {
        return xiaoqu;
    }

    public void setXiaoqu(com.team5408.entity.xiaoqu xiaoqu) {
        this.xiaoqu = xiaoqu;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNo() {
        return no;
    }

    public void setNo(String no) {
        this.no = no;
    }

    public String getZkzh() {
        return zkzh;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", no='" + no + '\'' +
                ", zkzh='" + zkzh + '\'' +
                ", name='" + name + '\'' +
                ", bclass='" + bclass + '\'' +
                ", cc='" + cc + '\'' +
                ", jfh='" + jfh + '\'' +
                ", yx='" + yx + '\'' +
                ", zy='" + zy + '\'' +
                ", nj='" + nj + '\'' +
                ", sex='" + sex + '\'' +
                ", Sclass='" + sclass + '\'' +
                ", xq='" + xq + '\'' +
                ", kc='" + kc + '\'' +
                ", llks='" + llks + '\'' +
                '}';
    }

    public void setZkzh(String zkzh) {
        this.zkzh = zkzh;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBclass() {
        return bclass;
    }

    public void setBclass(String bclass) {
        this.bclass = bclass;
    }

    public Integer getCc() {
        return cc;
    }

    public void setCc(Integer cc) {
        this.cc = cc;
    }

    public String getJfh() {
        return jfh;
    }

    public void setJfh(String jfh) {
        this.jfh = jfh;
    }

    public String getYx() {
        return yx;
    }

    public void setYx(String yx) {
        this.yx = yx;
    }

    public String getZy() {
        return zy;
    }

    public void setZy(String zy) {
        this.zy = zy;
    }

    public String getNj() {
        return nj;
    }

    public void setNj(String nj) {
        this.nj = nj;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getSclass() {
        return sclass;
    }

    public void setSclass(String sclass) {
        this.sclass = sclass;
    }

    public Integer getXq() {
        return xq;
    }

    public void setXq(Integer xq) {
        this.xq = xq;
    }

    public String getKc() {
        return kc;
    }

    public void setKc(String kc) {
        this.kc = kc;
    }

    public String getLlks() {
        return llks;
    }

    public void setLlks(String llks) {
        this.llks = llks;
    }
}
