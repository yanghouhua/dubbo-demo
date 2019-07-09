package com.anan.controller;

import com.anan.po.User;
import com.anan.service.UserService;
import org.apache.dubbo.config.annotation.Reference;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * 用户controller
 */
@Controller
public class UserController {

    // 定义用户service
    @Reference
    private UserService userService;

    /**
     * 查询用户列表数据
     */
    @RequestMapping("/list.do")
    public String list(Model model){
        // 查询用户列表
        List<User> userList = userService.findAllUsers();
        model.addAttribute("userList",userList);

        return "user/list";

    }

    /**
     * 根据用户id查询用户
     */
    @RequestMapping("/get.do")
    public String get(Model model,Long id){
        // 根据用户Id查询用户
        User user = userService.findUserByUserId(id);
        model.addAttribute("user",user);

        return "user/edit";

    }

    /**
     * 保存修改用户信息
     */
    @RequestMapping("/edit.do")
    public String edit(User user){

        // 更新保存用户信息
        userService.updateUser(user);

        return "redirect:/list.do";
    }

    /**
     * 查看用户详情信息
     */
    @RequestMapping("/show.do")
    public String show(Model model,Long id){
        // 查看用户详情信息
        User user = userService.findUserDetailByUserId(id);
        model.addAttribute("user",user);

        return "user/show";

    }
}
