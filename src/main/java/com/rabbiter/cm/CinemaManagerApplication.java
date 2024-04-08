package com.rabbiter.cm;

import com.rabbiter.cm.common.utils.PathUtils;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@MapperScan("com.rabbiter.cm.mapper")
public class CinemaManagerApplication {

    public static void main(String[] args) {
        System.out.println("Project Path: " + PathUtils.getClassLoadRootPath());
        SpringApplication.run(CinemaManagerApplication.class, args);
    }

}
/*
0,无优惠,1,1,1
1,学生优惠,0.9,1,1
2,长者优惠,0.8,1,1
3,午夜场优惠,0.8,1,1

 */
