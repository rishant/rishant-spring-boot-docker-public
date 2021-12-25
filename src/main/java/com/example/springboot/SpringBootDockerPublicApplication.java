package com.example.springboot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;

@SpringBootApplication
public class SpringBootDockerPublicApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringBootDockerPublicApplication.class, args);
	}

	@GetMapping
	public String getMessage() {
		return "Welcome to Java Professional";
	}
}
