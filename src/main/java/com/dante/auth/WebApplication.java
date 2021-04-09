package com.dante.auth;

import com.dante.auth.web.UserController;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.io.File;

@SpringBootApplication
public class WebApplication {
    public static void main(String[] args) throws Exception {
        new File(UserController.uploadDirectory).mkdir();
        SpringApplication.run(WebApplication.class, args);
    }
}
