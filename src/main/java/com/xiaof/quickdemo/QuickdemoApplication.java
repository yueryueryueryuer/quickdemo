package com.xiaof.quickdemo;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.xiaof.quickdemo.*.dao")
public class QuickdemoApplication {

    public static void main(String[] args) {
        SpringApplication.run(QuickdemoApplication.class, args);
    }
}
