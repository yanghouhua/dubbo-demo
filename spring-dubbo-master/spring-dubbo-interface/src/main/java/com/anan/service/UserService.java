package com.anan.service;


import com.anan.po.User;

import java.util.List;

/**
 * 用户service接口
 */
public interface UserService {

    /**
     * 查询用户列表
     */
    List<User> findAllUsers();

    /**
     * 根据用户Id查询用户
     */
    User findUserByUserId(Long userId);

    /**
     * 更新用户
     */
    void updateUser(User user);

    /**
     * 查看用户详情信息
     */
    User findUserDetailByUserId(Long userId);
}
