package com.aDiao.service;

import com.aDiao.entity.Orderitem;
import com.aDiao.entity.Orders;
import com.aDiao.mapper.OrdersMapper;
import com.aDiao.utils.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

public class OrdersService {

    SqlSessionFactory factory = SqlSessionFactoryUtils.getSqlSessionFactory();

    public void InsertOrders(Orders orders,String odatetime) {
        //2. 获取SqlSession
        SqlSession sqlSession = factory.openSession();

        Connection con = null;
        try {
            con = sqlSession.getConnection();
            con.setAutoCommit(false);

            //3. 获取GoodsMapper
            OrdersMapper mapper = sqlSession.getMapper(OrdersMapper.class);
            float ototal = orders.getOtotal();
            int oamount = orders.getOamount();
            int ostatus = orders.getOstatus();
            int opaytype = orders.getOpaytype();
            String oname = orders.getOname();
            String ophone = orders.getOphone();
            String oaddress = orders.getOaddress();
            int user_id = orders.getUser_id();

            mapper.insertOrders(con, ototal, oamount, ostatus, opaytype, oname, ophone, oaddress, user_id,odatetime);

            int id = mapper.getLastInsertId(con);
            orders.setOid(id);

            for (Orderitem orderitem : orders.getItemMap().values()) {
                float iprice = orderitem.getIprice();
                int iamount = orderitem.getIamount();
                int goods_id = orderitem.getGoods().getGid();
                System.out.println(orderitem.getGoods().toString());
                int orders_id = orders.getOid();
                mapper.insertOrderitem(con,iprice, iamount, goods_id, orders_id);
            }

            con.commit();

        } catch (SQLException e) {
            e.printStackTrace();

            if (con!=null) {
                try {
                    con.rollback();
                } catch (SQLException ex) {
                    throw new RuntimeException(ex);
                }
            }
        }
    }


    /**
     * 查询该用户所有订单
     *
     * @return
     */
    public List<Orders> selectallorders(int user_id) {

        SqlSession sqlSession = factory.openSession();

        OrdersMapper mapper = sqlSession.getMapper(OrdersMapper.class);

        List<Orders> ordersList = mapper.selectallorders(user_id);
        System.out.println("啊叼："+ordersList);

        for (Orders o : ordersList) {
            List<Orderitem> ordersdetail = mapper.selectallorderitem(o.getOid());

            o.setOrderitemList(ordersdetail);
            System.out.println(ordersdetail);
        }

        sqlSession.commit();

        sqlSession.close();
        return ordersList;
    }

}
