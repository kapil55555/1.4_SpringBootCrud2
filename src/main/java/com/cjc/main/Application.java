package com.cjc.main;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
@EntityScan //activate pozo class @Entity annotation
@EnableJpaRepositories  //no need to write in latest versions
@SpringBootApplication
public class Application {

	public static void main(String[] args) {
		System.out.println("this is springboot crud");
		SpringApplication.run(Application.class, args);
	}

}
