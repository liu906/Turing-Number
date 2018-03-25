package com.heitian.ssm.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.heitian.ssm.model.route;
import com.heitian.ssm.model.routeExample;
import org.apache.log4j.Logger;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.heitian.ssm.dao.scholarMapper;
import com.heitian.ssm.dao.routeMapper;
import com.heitian.ssm.model.scholarExample;
import com.heitian.ssm.model.scholar;

import java.util.List;
import  java.util.Properties;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;


/**
 * Created by GWY on 2017/3/17.
 */
@Controller
public class searchController {
    private Logger log = Logger.getLogger(searchController.class);
    @Resource
    private scholarMapper scholarmapper;
    @Resource
    private routeMapper routemapper;
    private List<scholar> scholarList;
    private String Otsname;
    private String turing;
    @RequestMapping("index")
    public String searchController1(@RequestParam(value = "email",required = false)String email, @RequestParam(value = "name",required = false)String name, @RequestParam(value = "message",required = false)String message, @RequestParam(value = "search",required = false)String search, Model model)
    {

        if(search!=null)
        {
            log.info("获取search 成功");
            log.info(search);
            scholarExample scholarexample= new scholarExample();
            scholarExample.Criteria criteria=scholarexample.createCriteria();
            criteria.andSnameEqualTo(search);
            scholarList=scholarmapper.selectByExampleWithBLOBs(scholarexample);
            JSONArray scholarja= (JSONArray) JSON.toJSON(scholarList);
            for(int i=0;i<scholarja.size();i++){
                scholarja.getJSONObject(i).put("link","personal1.do?sid="+i);
            }
            log.info(scholarja.toString());

            model.addAttribute("schlarja",scholarja);
            return "redirect:/search.do";
        }
        else {
            log.info("获取search失败");
            if(message!=null){
                log.info(message);
            JavaMailSenderImpl senderImpl  =   new  JavaMailSenderImpl();
            // 设定mail server
            senderImpl.setHost("smtp.126.com");

            // 建立邮件消息
            SimpleMailMessage mailMessage  =   new  SimpleMailMessage();
            // 设置收件人，寄件人 用数组发送多个邮件
            // String[] array = new String[]    {"sun111@163.com","sun222@sohu.com"};
            // mailMessage.setTo(array);
            mailMessage.setTo( "310501625@qq.com" );
            mailMessage.setFrom( "guoweiyu@126.com" );
            mailMessage.setSubject( name+email );
            mailMessage.setText( message );

            senderImpl.setUsername( "guoweiyu@126.com" ) ;  //  根据自己的情况,设置username
            senderImpl.setPassword( "gwy100GWY" ) ;  //  根据自己的情况, 设置password

            Properties prop  =   new  Properties() ;
            prop.put( " mail.smtp.auth " ,  " true " ) ;  //  将这个参数设为true，让服务器进行认证,认证用户名和密码是否正确
            prop.put( " mail.smtp.timeout " ,  " 25000 " ) ;
            senderImpl.setJavaMailProperties(prop);
            // 发送邮件
            senderImpl.send(mailMessage);
            System.out.println( " 邮件发送成功.. " );}
            return "index";
        }


    }
    @RequestMapping("personal1.do")
    public String searchController2(@RequestParam(value = "search3",required = false)String search3,@RequestParam(value = "sid",required = false)String sid,Model model){
        log.info("拦截personal1成功");
        log.info("vist routeTest");

        //查询与各个图灵奖获得者的图灵数
        int sidint=0;
        if(sid!=null){
            try {
            sidint = Integer.parseInt(sid);
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }

        List<route> routeList;
        routeExample routeexample=new routeExample();
        routeExample.Criteria criteria=routeexample.createCriteria();
        criteria.andsidEqualTo(Integer.parseInt(scholarList.get(sidint).getsid()));
        criteria.andTidEqualTo(16990);
        routeList=routemapper.selectByExample(routeexample);
        if(!routeList.isEmpty()){
            //查找对应到每个图灵奖获得者的图灵数
            String newtyear=routeList.get(0).getTnumberyear();
            int  ny16990=0;
            ny16990=Character.getNumericValue(newtyear.charAt(newtyear.length()-2));
            model.addAttribute("ny16990",ny16990);
            log.info("sid16990+ "+ny16990);
        }

            //获取到sid对应的学者信息。
            scholar s=scholarList.get(sidint);
            model.addAttribute("scholar",s);
        }
        if(search3!=null)
        {
            log.info("获取search3成功");
            log.info(search3);
            scholarExample scholarexample= new scholarExample();
            scholarExample.Criteria criteria1=scholarexample.createCriteria();
            criteria1.andSnameEqualTo(search3);
            scholarList=scholarmapper.selectByExampleWithBLOBs(scholarexample);
            JSONArray scholarja= (JSONArray) JSON.toJSON(scholarList);
            for(int i=0;i<scholarja.size();i++){
                scholarja.getJSONObject(i).put("link","personal1.do?sid="+i);
            }
            log.info(scholarja.toString());
            model.addAttribute("schlarja",scholarja);
            return "redirect:/search.do";
        }
        else{
            log.info("search is null");
            return "personal1";
        }

    }
    @RequestMapping("tulingshu/views/route.do")
    public String routeTest(Model model){
        List<route> routeList;
        log.info("vist routeTest");

        route route1=new route();
        routeExample routeexample=new routeExample();
        routeExample.Criteria criteria=routeexample.createCriteria();
        criteria.andsidEqualTo(228056);
        routeList=routemapper.selectByExampleWithBLOBs(routeexample);
        for (route r:routeList
             ) {
            log.info(r.getTid());
            log.info(r.getRoute());
            log.info(r.getTnumberyear());
        }
        String str=routeList.get(0).getRoute();
        log.info(str);
        JSONArray jstr= JSON.parseArray(str);
        log.info("sucessful");
        return "route";
    }
    @RequestMapping("search.do")
    public void search2(@RequestParam(value = "search2",required = false)String search2, Model model)
    {
        if(search2!=null)
        {
            log.info("获取search2成功");
            log.info(search2);
            scholarExample scholarexample= new scholarExample();
            scholarExample.Criteria criteria=scholarexample.createCriteria();
            criteria.andSnameEqualTo(search2);
            scholarList=scholarmapper.selectByExample(scholarexample);
            log.info(scholarList.get(0).getsid());
            JSONArray scholarja= (JSONArray) JSON.toJSON(scholarList);
            for(int i=0;i<scholarja.size();i++){
                scholarja.getJSONObject(i).put("link","personal1.do?sid="+i);
            }
            log.info(scholarja.toString());

            model.addAttribute("schlarja",scholarja);

        }
        else{
            log.info("search is null");
            JSONArray scholarja= (JSONArray) JSON.toJSON(scholarList);
            for(int i=0;i<scholarja.size();i++){
                scholarja.getJSONObject(i).put("link","personal1.do?sid="+i);
            }
            log.info(scholarja.toString());
            model.addAttribute("schlarja",scholarja);
        }
    }
}
