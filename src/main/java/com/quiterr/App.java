package com.quiterr;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * Created by huangchen on 2017/2/27.
 */
@SpringBootApplication
@MapperScan(value = "com.quiterr.dao")
public class App {

    public static void main(String args[]){

        SpringApplication.run(App.class);

    }
}


