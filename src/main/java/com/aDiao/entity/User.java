package com.aDiao.entity;

//用户实体类
public class User {

    private Integer uid;
    private String username;
    private String uemail;
    private String upassword;
    private String uname;
    private String uphone;
    private String uaddress;
    private Boolean isadmin=false;
    private Boolean isvalidate=false;

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUemail() {
        return uemail;
    }

    public void setUemail(String uemail) {
        this.uemail = uemail;
    }

    public String getUpassword() {
        return upassword;
    }

    public void setUpassword(String upassword) {
        this.upassword = upassword;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getUphone() {
        return uphone;
    }

    public void setUphone(String uphone) {
        this.uphone = uphone;
    }

    public String getUaddress() {
        return uaddress;
    }

    public void setUaddress(String uaddress) {
        this.uaddress = uaddress;
    }

    public Boolean getIsadmin() {
        return isadmin;
    }

    public void setIsadmin(Boolean isadmin) {
        this.isadmin = isadmin;
    }

    public Boolean getIsvalidate() {
        return isvalidate;
    }

    public void setIsvalidate(Boolean isvalidate) {
        this.isvalidate = isvalidate;
    }

    @Override
    public String toString() {
        return "User{" +
                "uid=" + uid +
                ", username='" + username + '\'' +
                ", uemail='" + uemail + '\'' +
                ", upassword='" + upassword + '\'' +
                ", uname='" + uname + '\'' +
                ", uphone='" + uphone + '\'' +
                ", uaddress='" + uaddress + '\'' +
                ", isadmin=" + isadmin +
                ", isvalidate=" + isvalidate +
                '}';
    }

    public User(Integer uid, String username, String uemail, String upassword, String uname, String uphone, String uaddress, Boolean isadmin, Boolean isvalidate) {
        this.uid = uid;
        this.username = username;
        this.uemail = uemail;
        this.upassword = upassword;
        this.uname = uname;
        this.uphone = uphone;
        this.uaddress = uaddress;
        this.isadmin = isadmin;
        this.isvalidate = isvalidate;
    }

    public User( String username, String email, String password, String name, String phone, String address) {
        this.username = username;
        this.uemail = uemail;
        this.upassword = upassword;
        this.uname = uname;
        this.uphone = uphone;
        this.uaddress = uaddress;
        this.isadmin = false;
        this.isvalidate = false;
    }

    public User() {
        super();
    }
}
