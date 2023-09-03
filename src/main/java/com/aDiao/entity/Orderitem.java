package com.aDiao.entity;

//订单列表实体类
public class Orderitem {

    private int iid;
    private float iprice;
    private String goodsName;
    private int iamount;
    private int goods_id;
    private int order_id;// order_id


    public void setName(String name) {
        this.goodsName=name;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    private Goods goods;
    private Orders orders;

    public Goods getGoods() {
        return goods;
    }

    public void setGoods(Goods goods) {
        this.goods = goods;
    }

    public Orders getOrders() {
        return orders;
    }

    public void setOrders(Orders orders) {
        this.orders = orders;
    }

    public int getIid() {
        return iid;
    }

    public void setIid(int iid) {
        this.iid = iid;
    }

    public float getIprice() {
        return iprice;
    }

    public void setIprice(float iprice) {
        this.iprice = iprice;
    }

    public int getIamount() {
        return iamount;
    }

    public void setIamount(int iamount) {
        this.iamount = iamount;
    }

    public int getGoods_id() {
        return goods_id;
    }

    public void setGoods_id(int goods_id) {
        this.goods_id = goods_id;
    }

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public Orderitem(float iprice, int iamount, Goods goods, Orders orders) {
        this.iprice = iprice;
        this.iamount = iamount;
        this.goods = goods;
        this.orders = orders;
    }

    public Orderitem() {
        super();
    }

    @Override
    public String toString() {
        return "Orderitem{" +
                "iid=" + iid +
                ", iprice=" + iprice +
                ", goodsName='" + goodsName + '\'' +
                ", iamount=" + iamount +
                ", goods_id=" + goods_id +
                ", order_id=" + order_id +
                ", goods=" + goods +
                ", orders=" + orders +
                '}';
    }
}
