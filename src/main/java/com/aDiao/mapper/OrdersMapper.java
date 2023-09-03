package com.aDiao.mapper;

import com.aDiao.entity.Orderitem;
import com.aDiao.entity.Orders;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.sql.Connection;
import java.util.Date;
import java.util.List;

public interface OrdersMapper {

    /**
     * 添加订单信息
     * */
    @Insert("insert into orders(ototal, oamount, ostatus, opaytype, oname, ophone, oaddress, odatetime, user_id) VALUES (#{ototal},#{oamount},#{ostatus},#{opaytype},#{oname},#{ophone},#{oaddress},#{odatetime}, #{user_id})")//DATE_FORMAT(now(),'%Y-%m-%d %H:%i:%s')
    void insertOrders(Connection con, @Param("ototal") float ototal,@Param("oamount") int oamount,@Param("ostatus") int ostatus,@Param("opaytype") int opaytype,@Param("oname") String oname,@Param("ophone") String ophone,@Param("oaddress") String oaddress,@Param("user_id") int user_id,@Param("odatetime") String odatetime);

    /**
     * 查询最新添加的id
     * */
    @Select("select last_insert_id()")
    int getLastInsertId(Connection con);

    /**
     * 添加订单项
     * */
    @Insert("insert into orderitem(iprice, iamount, goods_id, orders_id) VALUES (#{iprice},#{iamount},#{goods_id},#{orders_id})")
    void insertOrderitem(Connection con, @Param("iprice") float iprice,@Param("iamount") int iamount,@Param("goods_id") int goods_id,@Param("orders_id") int orders_id);

    /**
     * 查询订单
     *
     * @return
     */
    @Select("select * from orders where user_id=#{user_id} order by odatetime desc")
    List<Orders> selectallorders(@Param("user_id") int user_id);

    /**
     * 查询订单详情信息
     */
    List<Orderitem> selectallorderitem(@Param("oid") int oid);
}
