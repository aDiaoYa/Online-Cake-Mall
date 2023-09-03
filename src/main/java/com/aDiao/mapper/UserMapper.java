package com.aDiao.mapper;

import com.aDiao.entity.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface UserMapper {

    /**
     * 根据用户名查询用户对象
     * @param username
     * */
    User selectByUsername(@Param("username") String username);

    /**
     * 根据uemail查询用户对象
     * @param uemail
     * */
    User selectByUemail(@Param("uemail") String uemail);

    /**
     * 添加用户
     * */
    @Insert("insert into user(username, uemail, upassword, uname, uphone, uaddress, isadmin, isvalidate) value (#{username},#{uemail},#{upassword},#{uname},#{uphone},#{uaddress},null,1) ")
    void add(User user);

    /**
     * 根据用户名和密码查询用户对象
     * */
    @Select("select * from user where username=#{username} and upassword=#{upassword} and isvalidate=1")
    User selectByUsernamePassword(@Param("username") String username,@Param("upassword") String upassword);

    /**
     * 根据邮箱和密码查询用户对象
     * */
    @Select("select * from user where uemail=#{uemail} and upassword=#{upassword} and isvalidate=1")
    User selectByUemailPassword(@Param("uemail") String uemail,@Param("upassword") String upassword);

    /**
     * 修改用户收货信息
     * */
    @Update("update user set uname=#{uname}, uphone=#{uphone}, uaddress=#{uaddress} where uid=#{uid} and isvalidate=1")
    void updateUserReceipt(User user);

    /**
     * 修改用户密码信息
     * */
    @Update("update user set upassword=#{upassword} where uid=#{uid} and isvalidate=1")
    void updateUserPassword(@Param("uid") int uid,@Param("upassword") String upassword);

    /**
     * 管理员查询用户记录数
     * */
    @Select("select count(*) from user where isvalidate=1")
    int getUserPageCount();

    /**
     * 管理员查询用户集合
     * */
    @Select("select * from user where isvalidate=1 limit #{pageNumber},10")
    List<User> selectUserList(@Param("pageNumber") int pageNumber);


    /**
     * 管理员根据用户名查询用户
     * */
    @Select("select * from user where username=#{username} and isvalidate=1")
    User userSelect(@Param("username") String username);

    /**
     * 管理员修改用户密码信息
     * */
    @Update("update user set uphone=#{uphone},uaddress=#{uaddress} where uid=#{uid} and isvalidate=1")
    void updateUser(User user);

    /**
     * 管理员删除用户信息
     * */
    @Update("update user set isvalidate=0 where username=#{username}")
    void deleteUser(@Param("username") String username);

    /**
     * 添加用户
     * */
    @Insert("insert into user(username, uemail, upassword, uname, uphone, uaddress, isadmin, isvalidate) value (#{username},#{uemail},#{upassword},#{uname},#{uphone},#{uaddress},#{isadmin},1) ")
    void userAdd(User user);
}
