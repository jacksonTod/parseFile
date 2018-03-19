package com.hu.test.controller;

import com.hu.test.util.DocConverter;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping(value = "/")
public class OpenOffice {

    private final String OFFICE_PATH="D:/ideWork/parseFile/src/main/webapp/resource/openOffice";

    @RequestMapping(value = "/show")
    public ModelAndView show(HttpServletRequest request,String type) {
        DocConverter d =null;
        if(null!=type){
            switch(type){
                case "1":
                    d = new DocConverter(OFFICE_PATH+"/aa.doc");
                    break;
                case "2":
                    d = new DocConverter(OFFICE_PATH+"/bb.ppt");
                    break;
                case "3":
                    d = new DocConverter(OFFICE_PATH+"/cc.xls");
                    break;
            }
            d.conver();
            String swfpath="/resource/openOffice"+d.getswfPath().substring(d.getswfPath().lastIndexOf("/"));
            request.getSession().setAttribute("swfpath", swfpath);
        }

        return new ModelAndView("openOffice/show");
    }

    @RequestMapping(value = "/choose")
    public ModelAndView choose(HttpServletRequest request,String type) {

        return new ModelAndView("openOffice/choose");
    }

    @RequestMapping(value = "/tv")
    public ModelAndView tv(HttpServletRequest request,String type) {

        return new ModelAndView("openOffice/tv");
    }
}
