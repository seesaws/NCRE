package com.team5408.service;

import com.team5408.dao.UserDao;
import com.team5408.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {
    @Autowired
    private UserDao userDao;


    /**
     * 查找所有用户
     */
    public List<User> selectAllUser() {
        return userDao.findAllUser();
    }
    //模糊查询
    public List<User> findByName(String name){
        return  userDao.selectMohu(name);
    }
    //学号查询
    public User findByNo(String no){
        return userDao.findByNo(no);
    }
    //准考证号查询
    public User findByZkzh(String zkzh){
        return userDao.findByZkzh(zkzh);
    }

    //查询专业班级数量
    public List<User> findByZhuanye(){
        return userDao.findByZhuanye();
    }
    //查询专业类别数量
    public List<User> findByZy(){ return userDao.findByZy(); }
    //查询学院数量
    public List<User> findByXueyuan(){ return userDao.findByXueyuan(); }

    //按班级查找用户
    public List<User> findByBanji(String bj){
        return userDao.findByBanji(bj);
    }
    //按专业查找用户
    public List<User> findUserByZhuanye(String zy){ return userDao.findUserByZhuanye(zy); }
    //按学院查找用户
    public List<User> findUserByXuyaun(String xy){ return userDao.findUserByXueyuan(xy); }

}

