package com.team5408.dao;

import com.team5408.entity.User;
import com.team5408.entity.Sclass;
import org.apache.ibatis.annotations.*;
import org.apache.ibatis.type.MappedJdbcTypes;
import org.springframework.stereotype.Component;

import java.sql.SQLOutput;
import java.util.List;


@Mapper
@Component
public interface UserDao {
    /**
     * 查询所有用户信息
     */
//    @Select("SELECT * FROM user")
//    List<User> findAllUser();

    //模糊查询
    @Select({"select * from user where name like concat('%',#{name},'%')"})
    @Results({
            @Result(property = "ccc", column = "u_cc",
                    many = @Many(select = "com.team5408.dao.ChangcMapper.getChangci")),
            @Result(property = "xiaoqu", column = "u_xq",
                    many = @Many(select = "com.team5408.dao.XiaoquMapper.getXiaoqu")),
    })
    List<User> selectMohu(@Param("name") String name);

    @Select("SELECT * FROM user")
    @Results({
            @Result(property = "ccc", column = "u_cc",
                    many = @Many(select = "com.team5408.dao.ChangcMapper.getChangci")),
            @Result(property = "xiaoqu", column = "u_xq",
                    many = @Many(select = "com.team5408.dao.XiaoquMapper.getXiaoqu")),

            //column代表将该属性作为参数传入,property代表将查询出来的数据交给该属性
    })
    List<User> findAllUser();
    @Select({"select * from user where no=#{xh}"})
    @Results({
            @Result(property = "ccc", column = "u_cc",
                    many = @Many(select = "com.team5408.dao.ChangcMapper.getChangci")),
            @Result(property = "xiaoqu", column = "u_xq",
                    many = @Many(select = "com.team5408.dao.XiaoquMapper.getXiaoqu")),
    })
    User findByNo(@Param("xh") String xh);

    @Select({"select * from user where zkzh=#{zkzh}"})
    @Results({
            @Result(property = "ccc", column = "u_cc",
                    many = @Many(select = "com.team5408.dao.ChangcMapper.getChangci")),
            @Result(property = "xiaoqu", column = "u_xq",
                    many = @Many(select = "com.team5408.dao.XiaoquMapper.getXiaoqu")),
    })
    User findByZkzh(@Param("zkzh") String zkzh);

    @Select({"SELECT DISTINCT sclass FROM user"})
    List<User> findByZhuanye();
    @Select({"SELECT DISTINCT zy FROM user"})
    List<User> findByZy();
    @Select({"SELECT DISTINCT yx FROM user"})
    List<User> findByXueyuan();

    //查询班级用户
    @Select({"select * from user where sclass=#{bj}"})
    @Results({
            @Result(property = "ccc", column = "u_cc",
                    many = @Many(select = "com.team5408.dao.ChangcMapper.getChangci")),
            @Result(property = "xiaoqu", column = "u_xq",
                    many = @Many(select = "com.team5408.dao.XiaoquMapper.getXiaoqu")),
    })
    List<User> findByBanji(@Param("bj") String bj);

    //查询专业用户
    @Select({"select * from user where zy=#{zy}"})
    @Results({
            @Result(property = "ccc", column = "u_cc",
                    many = @Many(select = "com.team5408.dao.ChangcMapper.getChangci")),
            @Result(property = "xiaoqu", column = "u_xq",
                    many = @Many(select = "com.team5408.dao.XiaoquMapper.getXiaoqu")),
    })
    List<User> findUserByZhuanye(@Param("zy") String zy);

    //查询学院用户
    @Select({"select * from user where yx=#{xy}"})
    @Results({
            @Result(property = "ccc", column = "u_cc",
                    many = @Many(select = "com.team5408.dao.ChangcMapper.getChangci")),
            @Result(property = "xiaoqu", column = "u_xq",
                    many = @Many(select = "com.team5408.dao.XiaoquMapper.getXiaoqu")),
    })
    List<User> findUserByXueyuan(@Param("xy") String xy);

}

