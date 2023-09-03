package com.aDiao.entity;

//商品实体类
public class Goods {

    private Integer gid;
    private String gname;
    private String gcover;
    private String gimage1;
    private String gimage2;
    private float gprice;
    private String gintro;
    private Integer gstock;
    private Type type;

    public void setTypeid(int typeid) {
        if (type==null) {
            type = new Type();
        }
        type.setTid(typeid);
    }
    public void setTypename(String typename) {
        if (type==null) {
            type = new Type();
        }
        type.setTname(typename);
    }

    public Integer getGid() {
        return gid;
    }

    public void setGid(Integer gid) {
        this.gid = gid;
    }

    public String getGname() {
        return gname;
    }

    public void setGname(String gname) {
        this.gname = gname;
    }

    public String getGcover() {
        return gcover;
    }

    public void setGcover(String gcover) {
        this.gcover = gcover;
    }

    public String getGimage1() {
        return gimage1;
    }

    public void setGimage1(String gimage1) {
        this.gimage1 = gimage1;
    }

    public String getGimage2() {
        return gimage2;
    }

    public void setGimage2(String gimage2) {
        this.gimage2 = gimage2;
    }

    public float getGprice() {
        return gprice;
    }

    public void setGprice(float gprice) {
        this.gprice = gprice;
    }

    public String getGintro() {
        return gintro;
    }

    public void setGintro(String gintro) {
        this.gintro = gintro;
    }

    public Integer getGstock() {
        return gstock;
    }

    public void setGstock(Integer gstock) {
        this.gstock = gstock;
    }


    public Type getType() {
        return type;
    }

    public void setType(Type type) {
        this.type = type;
    }

    public Goods(Integer gid, String gname, String gcover, String gimage1, String gimage2, float gprice, String gintro, Integer gstock, Type type) {
        this.gid = gid;
        this.gname = gname;
        this.gcover = gcover;
        this.gimage1 = gimage1;
        this.gimage2 = gimage2;
        this.gprice = gprice;
        this.gintro = gintro;
        this.gstock = gstock;
        this.type = type;
    }

    public Goods() {
        super();
    }

    @Override
    public String toString() {
        return "Goods{" +
                "gid=" + gid +
                ", gname='" + gname + '\'' +
                ", gcover='" + gcover + '\'' +
                ", gimage1='" + gimage1 + '\'' +
                ", gimage2='" + gimage2 + '\'' +
                ", gprice=" + gprice +
                ", gintro='" + gintro + '\'' +
                ", gstock=" + gstock +
                ", type=" + type +
                '}';
    }
}
