package com.wml.entity;

public class UserInfo {
    private int id;
    private String userName;//用户名
    private String password;//用户密码
    private String realName;//用户真实姓名
    private String  business;//用户职业
    private String email;//注册时的邮箱
    private String headPicture;//用户头像
    private String addDate;//用户信息创建时间
    private String updateDate;//用户信息更新时间
    private String state;//'1：正常\n2：冻结\n3：删除',
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getUserName() {
        return userName;
    }
    public void setUserName(String userName) {
        this.userName = userName;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getRealName() {
        return realName;
    }
    public void setRealName(String realName) {
        this.realName = realName;
    }
    public String getBusiness() {
        return business;
    }
    public void setBusiness(String business) {
        this.business = business;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getHeadPicture() {
        return headPicture;
    }
    public void setHeadPicture(String headPicture) {
        this.headPicture = headPicture;
    }
    public String getAddDate() {
        return addDate;
    }
    public void setAddDate(String addDate) {
        this.addDate = addDate;
    }
    public String getUpdateDate() {
        return updateDate;
    }
    public void setUpdateDate(String updateDate) {
        this.updateDate = updateDate;
    }
    public String getState() {
        return state;
    }
    public void setState(String state) {
        this.state = state;
    }
    @Override
    public String toString() {
        return "UserInfo [id=" + id + ", userName=" + userName + ", password=" + password + ", realName=" + realName
                + ", business=" + business + ", email=" + email + ", headPicture=" + headPicture + ", addDate="
                + addDate + ", updateDate=" + updateDate + ", state=" + state + "]";
    }
}
