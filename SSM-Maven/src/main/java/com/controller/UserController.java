package com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pojo.User;
import com.service.UserService;

@Controller
public class UserController {
    @RequestMapping("/toreg")
    public String toreg(){
        return "login";
    }
    @Autowired
    private UserService userService;
    @RequestMapping("/reg")
    public String reg(User user,Model model){
        Integer i=userService.reg(user);
        if(i>0){
            return "redirect:tologin";
        }else {
            model.addAttribute("msg2","注册失败");
            return "login";
        }
    }

    @RequestMapping("/tologin")
    public String tologin(){
        return "login";
    }
    @RequestMapping("/login")
    public String login(String name,String pwd,HttpSession session,Model model){
        User u=userService.login(name, pwd);
        if(u!=null){
            session.setAttribute("user", name);
            model.addAttribute("msg","恭喜登录成功");
            return "success";
        }else{
            model.addAttribute("msg","登录不成功");
            return "login";
        }
    }
    @RequestMapping("/loginout")
    public String loginout(HttpSession session){
        session.invalidate();
        return "redirect:tologin";
    }
}
