package com.ace.service;

import com.ace.dao.DaoSupport;
import com.ace.entity.Role;
import com.ace.util.PageData;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by anzhen on 2016/5/6.
 */
@Service("roleService")
public class RoleService {

    @Resource(name = "daoSupport")
    private DaoSupport dao;

    public List<Role> listAll2LevelRoles() throws Exception {
        return (List<Role>) dao.findForList("RoleMapper.listAll2LevelRoles", null);
    }

    public List<Role> listAllMember2LevelRoles() throws Exception {
        return (List<Role>) dao.findForList("RoleMapper.listAllMember2LevelRoles", null);
    }

    public List<Role> listAllRoles() throws Exception {
        return (List<Role>) dao.findForList("RoleMapper.listAllRoles", null);
    }

    public PageData findGLById(PageData pd) throws  Exception{
        return (PageData) dao.findForObject("RoleMapper.findGLById", pd);
    }

    public PageData findYHById(PageData pd) throws Exception{
        return (PageData)dao.findForObject("RoleMapper.findYHById",pd);
    }

    public PageData listAllUserById(PageData pd) throws Exception{
        return (PageData)dao.findForObject("RoleMapper.findAllUserById",pd);
    }

    public List<Role> listAllRolesByParentId(PageData pd) throws Exception{
        return (List<Role>)dao.findForList("RoleMapper.listAllRolesByParentId",pd);
    }


    public List<PageData> listAllKeFu(PageData pd) throws Exception{
        return (List<PageData>)dao.findForList("RoleMapper.listAllKeFu",pd);
    }

    public List<PageData> listAllUserQx(PageData pd) throws Exception{
        return (List<PageData>)dao.findForList("RoleMapper.listAllUserQx",pd);
    }

    public void deleteKeFuById(String roleId) throws Exception{
        dao.delete("RoleMapper.deleteKeFuById",roleId);
    }

    public void deleteUserQxById(String roleId) throws Exception{
        dao.delete("RoleMapper.deleteUserQxById",roleId);
    }

    public void deleteRoleById(String roleId) throws Exception{
        dao.delete("RoleMapper.deleteRoleById",roleId);
    }

    public Role getRoleById(String roleId) throws Exception{
        return (Role)dao.findForObject("RoleMapper.getRoleById",roleId);
    }

    public void updateRoleRights(Role role) throws Exception{
        dao.update("RoleMapper.updateRoleRights",role);
    }

    public void updateQx(String msg,PageData pd) throws Exception {
        dao.update("RoleMapper."+msg,pd);
    }

    public void updateKeFuQx(String msg,PageData pd) throws Exception {
        dao.update("RoleMapper."+msg,pd);
    }

    public void gysqxc(String msg,PageData pd) throws Exception {
        dao.update("RoleMapper."+msg, pd);
    }

    public void setAllRights(PageData pd) throws Exception {
        dao.update("RoleMapper.setAllRights", pd);

    }

    /**
     * 添加
     */
    public void add(PageData pd) throws Exception {
        dao.findForList("RoleMapper.insert", pd);
    }

    /**
     * 保存客服权限
     */
    public void saveKeFu(PageData pd) throws Exception {
        dao.findForList("RoleMapper.saveKeFu", pd);
    }

    /**
     * 保存G权限
     */
    public void saveUserQx(PageData pd) throws Exception {
        dao.findForList("RoleMapper.saveUserQx", pd);
    }

    /**
     * 通过id查找
     */
    public PageData findById(PageData pd) throws Exception {
        return (PageData)dao.findForObject("RoleMapper.findById", pd);
    }

    /**
     * 编辑角色
     */
    public PageData edit(PageData pd) throws Exception {
        return (PageData)dao.findForObject("RoleMapper.edit", pd);
    }

}
