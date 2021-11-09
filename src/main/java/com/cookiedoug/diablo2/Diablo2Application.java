package com.cookiedoug.diablo2;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import springfox.documentation.oas.annotations.EnableOpenApi;

@SpringBootApplication
@EnableOpenApi
@MapperScan("com.cookiedoug.diablo2.mapper")
public class Diablo2Application {

    public static void main(String[] args) {
        SpringApplication.run(Diablo2Application.class, args);
    }

}
