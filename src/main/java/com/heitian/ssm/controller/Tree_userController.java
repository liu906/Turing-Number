package com.heitian.ssm.controller;

import com.heitian.ssm.dao.Tree_userMapper;
import com.heitian.ssm.model.Tree_user;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;

/**
 * Created by GWY on 2017/3/16.
 */
@Controller
public class Tree_userController {
    private Logger log = Logger.getLogger(Tree_userController.class);
    @Resource
    private Tree_userMapper tree_userMapper;
    @RequestMapping("signup.do")
    public String addUsers(@RequestParam(value = "inputEmail",required=false)String inputEmail,@RequestParam(value = "inputPassword",required=false) String inputPassword, @RequestParam(value = "inputPasswordAgain",required=false)String inputPasswordAgain, @RequestParam(value = "inputInstitution",required=false)String inputInstitution) {
        log.info("添加用户信息");
        log.info(inputEmail);
        if (inputEmail!=null) {
            log.info("用户名不为空");
            if (!inputPassword.equals(inputPasswordAgain))
                return "signup";
            Tree_user tree_user=new Tree_user();
            tree_user.setEmail(inputEmail);
            tree_user.setPassword(inputPassword);
            tree_user.setAddress(inputInstitution);
            tree_userMapper.insertSelective(tree_user);
            log.info("添加用户信息成功");
            return "personal";
       } else
        {
            log.info("添加用户信息失败");
            return "signup";
        }

    }
    @RequestMapping("login.do")
    public String loginController(@RequestParam(value = "username",required=false)String username,@RequestParam(value = "password",required = false)String password)
    {
        log.info("用户登录");
        if(password!=null){
            Tree_user tree_user=new Tree_user();
            tree_user= tree_userMapper.selectByPrimaryKey(username);
            log.info(tree_user.getPassword());
            if(tree_user.getPassword().equals(password))
            {
                log.info("登陆成功");
                return "personal";
            }
            else
            {
                log.info("密码错误");
                return "login";
            }
        }
        else {
            log.info("页面二次访问");
            return "login";
        }
    }
}
