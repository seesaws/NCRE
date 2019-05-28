package com.team5408.dao;

import com.team5408.entity.cc;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface ChangcMapper {
    @Select("SELECT * FROM cc where t_cc=#{u_cc}")
    @Results({
            @Result(property = "date" ,column = "t_date"),
            @Result(property = "ccc" ,column = "t_cc"),
            @Result(property = "starttime" ,column = "t_starttime"),
    })
    public cc getChangci(Integer u_cc);
}
