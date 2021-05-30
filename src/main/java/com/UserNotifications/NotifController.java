package com.UserNotifications;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class NotifController {

    @RequestMapping("/notif")
    public ModelAndView firstPage() {
        ModelAndView modelAndView = new ModelAndView("pushnotif");
        modelAndView.addObject("userName","Vipul");
        return modelAndView;
    }

    @RequestMapping("/success")
    public ModelAndView Success() {
        return new ModelAndView("success");
    }
}
