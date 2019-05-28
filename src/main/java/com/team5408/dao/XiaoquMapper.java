package com.team5408.dao;

import com.team5408.entity.xiaoqu;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface XiaoquMapper {
    @Select("SELECT * FROM xiaoqu where t_code=#{u_xq}")
    @Results({
            @Result(property = "xxq" ,column = "t_xq")
    })
    public xiaoqu getXiaoqu(Integer u_xq);
}
