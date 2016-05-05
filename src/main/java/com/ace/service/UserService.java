package com.ace.service;

import com.ace.dao.DaoSupport;
import com.ace.entity.Page;
import com.ace.util.PageData;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by anzhen on 2016/5/4.
 */
@Service("userService")
public class UserService {

    @Resource(name = "daoSupport")
    private DaoSupport dao;


    public PageData findById(PageData pd) throws Exception {
        return (PageData) dao.findForObject("UserXMapper.findById", pd);
    }

    public PageData findByName(PageData pd) throws Exception {
        return (PageData) dao.findForObject("UserXMapper.findByName", pd);
    }

    public PageData findByEmail(PageData pd) throws Exception {
        return (PageData) dao.findForObject("UserXMapper.findByName", pd);
    }

    public PageData findByNumber(PageData pd) throws Exception {
        return (PageData) dao.findForObject("UserXMapper.findByNumber", pd);
    }

    public void saveUser(PageData pd) throws Exception {
        dao.save("UserXMapper.saveUser", pd);
    }

    public void updateUser(PageData pd) throws Exception {
        dao.update("UserXMapper.updateUser", pd);
    }

    public void setSkin(PageData pd) throws Exception {
        dao.update("UserXMapper.setSkin", pd);
    }

    public void deleteUser(PageData pd) throws Exception {
        dao.delete("UserXMapper.deleteUser", pd);
    }

    public List<PageData> listUser(Page page) throws Exception {
        return (List<PageData>) dao.findForList("UserXMapper.listUser", page);
    }

}
