package com.ace.entity;

/**
 * Created by anzhen on 2016/5/6.
 */
public class Role {

    private String roleId;

    private String roleName;

    private String rights;

    private String parentId;

    private String addRight;

    private String delRight;

    private String editRight;

    private String queryRight;

    private String rightId;

    public String getRoleId() {
        return roleId;
    }

    public void setRoleId(String roleId) {
        this.roleId = roleId;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public String getRights() {
        return rights;
    }

    public void setRights(String rights) {
        this.rights = rights;
    }

    public String getParentId() {
        return parentId;
    }

    public void setParentId(String parentId) {
        this.parentId = parentId;
    }

    public String getAddRight() {
        return addRight;
    }

    public void setAddRight(String addRight) {
        this.addRight = addRight;
    }

    public String getDelRight() {
        return delRight;
    }

    public void setDelRight(String delRight) {
        this.delRight = delRight;
    }

    public String getEditRight() {
        return editRight;
    }

    public void setEditRight(String editRight) {
        this.editRight = editRight;
    }

    public String getQueryRight() {
        return queryRight;
    }

    public void setQueryRight(String queryRight) {
        this.queryRight = queryRight;
    }

    public String getRightId() {
        return rightId;
    }

    public void setRightId(String rightId) {
        this.rightId = rightId;
    }
}
