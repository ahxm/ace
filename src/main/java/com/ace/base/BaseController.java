package com.ace.base;


import com.ace.util.Logger;
import com.ace.util.PageData;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by anzhen on 2016/5/4.
 */
public class BaseController {

    protected final Logger logger = Logger.getLogger(this.getClass());

    public HttpServletRequest getRequest(){
        HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
        return request;
    }

    public PageData getPageData(){return new PageData(this.getRequest());}

    /**
     * 得到ModelAndView
     */
    public ModelAndView getModelAndView(){
        return new ModelAndView();
    }

}
