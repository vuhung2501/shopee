package vn.com.vti.springexam;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;

@EnableAutoConfiguration
@ComponentScan
@MapperScan("vn.com.vti.springexam.mapper")
public class AppPostgres {
	public static void main(String[] args) {
		SpringApplication.run(AppPostgres.class, args);
	}
}
