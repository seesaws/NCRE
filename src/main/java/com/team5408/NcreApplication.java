package com.team5408;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@MapperScan("com.team5408.dao")
public class NcreApplication {

    public static void main(String[] args) {
        SpringApplication.run(NcreApplication.class, args);
    }
}

