package com.aDiao.entity;

//推荐列表实体类
public class Recommend {

    private int rid;
    private int rtype;
    private Goods goods;

    public int getRid() {
        return rid;
    }

    public void setRid(int rid) {
        this.rid = rid;
    }

    public int getRtype() {
        return rtype;
    }

    public void setRtype(int rtype) {
        this.rtype = rtype;
    }

    public Goods getGoods() {
        return goods;
    }

    public void setGoods(Goods goods) {
        this.goods = goods;
    }

    public Recommend(int rid, int rtype, Goods goods) {
        this.rid = rid;
        this.rtype = rtype;
        this.goods = goods;
    }

    public Recommend() {
        super();
    }

    @Override
    public String toString() {
        return "Recommend{" +
                "rid=" + rid +
                ", rtype=" + rtype +
                ", goods=" + goods +
                '}';
    }
}
