package com.team5408.serviceTest;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.team5408.baseTest.SpringTestCase;
import com.team5408.entity.User;
import com.team5408.service.UserService;

public class UserServiceTest extends SpringTestCase{
    Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private UserService userService;
    @Test
    public void selectUserByIdTest(){
        User user = (User) userService.selectAllUser();
        logger.info("查找结果" + user);
    }

}
