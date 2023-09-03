package com.aDiao.entity;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.math.BigDecimal;
import java.util.*;

//订单实体类
public class Orders {
    private int oid;
    private float ototal;//总价
    private int oamount;// 商品总数
    private int ostatus;//1未付款/2已付款/3已发货/4已完成
    private int opaytype;//1微信/2支付宝/3货到付款
    private String oname;
    private String ophone;
    private String oaddress;
    private String odatetime;

    private User user;
    private int user_id;

    private Map<Integer,Orderitem> itemMap = new HashMap<Integer, Orderitem>();
    private List<Orderitem> orderitemList = new ArrayList<Orderitem>();

    public List<Orderitem> getOrderitemList() {
        return orderitemList;
    }

    public void setOrderitemList(List<Orderitem> orderitemList) {
        this.orderitemList = orderitemList;
    }

    //    用于添加商品
public void addGoods(Goods goods) {
        if (itemMap.containsKey((goods.getGid()))) {
            Orderitem orderitem = itemMap.get(goods.getGid());
            orderitem.setIamount(orderitem.getIamount()+1);

        } else {
            Orderitem orderitem = new Orderitem(goods.getGprice(),1,goods,this);
            itemMap.put(goods.getGid(), orderitem);
        }
    oamount++;
    ototal += goods.getGprice();
    ototal = Float.parseFloat(String.format("%.2f", ototal));

}

//    减少商品
public void lessGoods(int goodsid) {
    if (itemMap.containsKey(goodsid)) {
        Orderitem orderitem = itemMap.get(goodsid);
        orderitem.setIamount(orderitem.getIamount()-1);
        oamount--;
        BigDecimal bd2 = new BigDecimal(orderitem.getIprice());
        float iprice = bd2.setScale(1,BigDecimal.ROUND_HALF_UP).floatValue();
        ototal -= iprice;
        BigDecimal bd3 = new BigDecimal(ototal);
        ototal = bd3.setScale(1,BigDecimal.ROUND_HALF_UP).floatValue();
        if (orderitem.getIamount()<=0) {
            itemMap.remove(goodsid);
        }
    }

}

    //    删除商品
    public void deleteGoods(int goodsid) {
        if (itemMap.containsKey(goodsid)) {
            Orderitem orderitem = itemMap.get(goodsid);
//            四舍五入保留一位
            BigDecimal bd1 = new BigDecimal(orderitem.getIamount());
            float iamount = bd1.setScale(1,BigDecimal.ROUND_HALF_UP).floatValue();
            oamount -= iamount;
            BigDecimal bd2 = new BigDecimal(orderitem.getIprice());
            float iprice = bd2.setScale(1,BigDecimal.ROUND_HALF_UP).floatValue();
            ototal -= iprice * iamount;
            BigDecimal bd3 = new BigDecimal(ototal);
            ototal = bd3.setScale(1,BigDecimal.ROUND_HALF_UP).floatValue();
            itemMap.remove(goodsid);
        }

    }
    public Map<Integer, Orderitem> getItemMap() {
        return itemMap;
    }

    public void setItemMap(Map<Integer, Orderitem> itemMap) {
        this.itemMap = itemMap;
    }

    public User getUser() {
        return user;
    }


    public void setUser(User user) {
        this.user = user;
    }


    public int getOid() {
        return oid;
    }

    public void setOid(int oid) {
        this.oid = oid;
    }

    public float getOtotal() {
        return ototal;
    }

    public void setOtotal(float ototal) {
        this.ototal = ototal;
    }

    public int getOamount() {
        return oamount;
    }

    public void setOamount(int oamount) {
        this.oamount = oamount;
    }

    public int getOstatus() {
        return ostatus;
    }

    public void setOstatus(int ostatus) {
        this.ostatus = ostatus;
    }

    public int getOpaytype() {
        return opaytype;
    }

    public void setOpaytype(int opaytype) {
        this.opaytype = opaytype;
    }

    public String getOname() {
        return oname;
    }

    public void setOname(String oname) {
        this.oname = oname;
    }

    public String getOphone() {
        return ophone;
    }

    public void setOphone(String ophone) {
        this.ophone = ophone;
    }

    public String getOaddress() {
        return oaddress;
    }

    public void setOaddress(String oaddress) {
        this.oaddress = oaddress;
    }

    public String getOdatetime() {
        return odatetime;
    }

    public void setOdatetime(String odatetime) {
        this.odatetime = odatetime;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public Orders(int oid, float ototal, int oamount, int ostatus, int opaytype, String oname, String ophone, String oaddress, String odatetime, User user, int user_id, Map<Integer, Orderitem> itemMap) {
        this.oid = oid;
        this.ototal = ototal;
        this.oamount = oamount;
        this.ostatus = ostatus;
        this.opaytype = opaytype;
        this.oname = oname;
        this.ophone = ophone;
        this.oaddress = oaddress;
        this.odatetime = odatetime;
        this.user = user;
        this.user_id = user_id;
        this.itemMap = itemMap;
    }

    public Orders() {
        super();
    }

    @Override
    public String toString() {
        return "Orders{" +
                "oid=" + oid +
                ", ototal=" + ototal +
                ", oamount=" + oamount +
                ", ostatus=" + ostatus +
                ", opaytype=" + opaytype +
                ", oname='" + oname + '\'' +
                ", ophone='" + ophone + '\'' +
                ", oaddress='" + oaddress + '\'' +
                ", odatetime=" + odatetime +
                ", user=" + user +
                ", user_id=" + user_id +
                '}';
    }
}
