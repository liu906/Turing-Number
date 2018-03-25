package com.heitian.ssm.controller;

import com.heitian.ssm.dao.User1Mapper;
import com.heitian.ssm.model.User;
import com.heitian.ssm.model.User1;
import com.heitian.ssm.service.UserService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by GWY on 2017/3/12.
 */
@Controller

public class User1Controller {
    private Logger log = Logger.getLogger(User1Controller.class);
    @Resource
    private User1Mapper user1Mapper;


    @RequestMapping("user1/insert.do")
    public String addUser(String username,String password, Model model){
        log.info("添加用户信息");
        User1 user1=new User1();
        user1.setName(username);
        user1.setPassword(password);
        user1Mapper.insert(user1);
        return "insert";
    }
}
