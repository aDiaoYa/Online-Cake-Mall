package com.aDiao.service;

import com.aDiao.entity.Page;
import com.aDiao.entity.User;
import com.aDiao.mapper.UserMapper;
import com.aDiao.utils.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.List;

public class UserService {
    SqlSessionFactory factory = SqlSessionFactoryUtils.getSqlSessionFactory();

    /**
     * 添加用户
     * */
    public boolean register (User user) {
        //2. 获取SqlSession
        SqlSession sqlSession = factory.openSession();
        //3. 获取UserMapper
        UserMapper mapper = sqlSession.getMapper(UserMapper.class);
        //4. 判断用户名是否存在
        User username = mapper.selectByUsername(user.getUsername());
        User uemail = mapper.selectByUemail(user.getUemail());

        if(username == null && uemail==null ){
            // 用户名或者email不存在，进行注册，完成添加
            mapper.add(user);
            System.out.println(user);
            sqlSession.commit();
        }
        sqlSession.close();

        return username == null && uemail == null;
    }

    /**
     * 用户登录
     * */
    public User login (String ue,String password) {
        //2. 获取SqlSession
        SqlSession sqlSession = factory.openSession();
        //3. 获取UserMapper
        UserMapper mapper = sqlSession.getMapper(UserMapper.class);
        //4. 判断用户名是否存在
        User user = mapper.selectByUsernamePassword(ue,password);

        if(user != null ){
            // 用户名或者email不存在，进行注册，完成添加
            return user;
        }
        user = mapper.selectByUemailPassword(ue,password);
        if(user != null ){
            // 用户名或者email不存在，进行注册，完成添加
            return user;
        }
        sqlSession.close();

        return null;
    }

    /**
     * 修改用户收货信息
     * */
    public void updateUserReceipt(User user) {
        //2. 获取SqlSession
        SqlSession sqlSession = factory.openSession();
        //3. 获取UserMapper
        UserMapper mapper = sqlSession.getMapper(UserMapper.class);

        mapper.updateUserReceipt(user);

        sqlSession.commit();

        sqlSession.close();
    }

    /**
     * 修改用户密码信息
     * */
    public void updateUserPassword(int uid,String upassword) {
        //2. 获取SqlSession
        SqlSession sqlSession = factory.openSession();
        //3. 获取UserMapper
        UserMapper mapper = sqlSession.getMapper(UserMapper.class);

        mapper.updateUserPassword(uid,upassword);

        sqlSession.commit();

        sqlSession.close();
    }


    /**
     * 管理员查询用户
     * */
    public Page getUserPage(int pageNumber) {
        Page page = new Page();
        page.setPageNumber(pageNumber);
        int totalCount = 0;

        SqlSession sqlSession = factory.openSession();
        UserMapper mapper = sqlSession.getMapper(UserMapper.class);

        totalCount = mapper.getUserPageCount();

        page.setPageSizeAndTotalCount(10,totalCount);

        pageNumber = (pageNumber-1)*10;

        List list = mapper.selectUserList(pageNumber);

        page.setList(list);

        sqlSession.commit();

        sqlSession.close();
        return page;
    }

    /**
     * 根据名字查询用户
     * @return
     */
    public User userSelect(String username){
        //调用BrandMapper.selectAll()
        //2. 获取SqlSession
        SqlSession sqlSession = factory.openSession();
        //3. 获取BrandMapper
        UserMapper mapper = sqlSession.getMapper(UserMapper.class);
        //4. 调用方法
        User user = mapper.userSelect(username);
        sqlSession.close();
        return user;
    }

    /**
     * 管理员修改用户信息
     * */
    public void updateUser(User user) {
        //2. 获取SqlSession
        SqlSession sqlSession = factory.openSession();
        //3. 获取UserMapper
        UserMapper mapper = sqlSession.getMapper(UserMapper.class);

        mapper.updateUser(user);

        sqlSession.commit();

        sqlSession.close();
    }

    /**
     * 管理员删除用户信息
     * */
    public void deleteUser(String username) {
        //2. 获取SqlSession
        SqlSession sqlSession = factory.openSession();
        //3. 获取UserMapper
        UserMapper mapper = sqlSession.getMapper(UserMapper.class);

        mapper.deleteUser(username);

        sqlSession.commit();

        sqlSession.close();
    }

    /**
     * 管理员删除用户信息
     * */
    public void userAdd(User user) {
        //2. 获取SqlSession
        SqlSession sqlSession = factory.openSession();
        //3. 获取UserMapper
        UserMapper mapper = sqlSession.getMapper(UserMapper.class);

        mapper.userAdd(user);

        sqlSession.commit();

        sqlSession.close();
    }

}
