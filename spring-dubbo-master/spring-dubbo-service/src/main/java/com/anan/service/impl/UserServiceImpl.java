package com.anan.service.impl;


import com.anan.dao.UserDao;
import com.anan.po.User;
import com.anan.service.UserService;
import org.apache.dubbo.config.annotation.Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service(timeout = 8000)
public class UserServiceImpl implements UserService {

    // 定义用户dao
    @Autowired
   private UserDao userDao;

    /**
     * 查询用户列表
     */
    public List<User> findAllUsers() {
        System.out.println("【findAllUsers】");
        return userDao.findAllUsers();

    }

    /**
     * 根据用户Id查询用户
     *
     * @param userId
     */
    public User findUserByUserId(Long userId) {
        System.out.println("【findUserByUserId】方法执行中......id="+userId);
        return userDao.findUserByUserId(userId);

    }

    /**
     * 更新用户
     *
     * @param user
     */
    @Transactional(propagation = Propagation.REQUIRED,readOnly = false)
    public void updateUser(User user) {
        System.out.println("【updateUser】方法执行中......");
        userDao.updateUser(user);
    }

    /**
     * 查看用户详情信息
     *
     * @param userId
     */
    public User findUserDetailByUserId(Long userId) {
        System.out.println("【findUserDetailByUserId】方法执行中......id="+userId);
        return userDao.findUserDetailByUserId(userId);

    }
}
