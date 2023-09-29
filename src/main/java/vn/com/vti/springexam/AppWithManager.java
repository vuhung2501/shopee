package vn.com.vti.springexam;

import javax.sql.DataSource;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.jdbc.datasource.embedded.EmbeddedDatabase;
import org.springframework.jdbc.datasource.embedded.EmbeddedDatabaseBuilder;
import org.springframework.jdbc.datasource.embedded.EmbeddedDatabaseType;

@EnableAutoConfiguration
@ComponentScan
@MapperScan("vn.com.vti.springexam.mapper")
public class AppWithManager {
	public static void main(String[] args) {
		SpringApplicationBuilder builder = new SpringApplicationBuilder(AppWithManager.class);

		builder.headless(false);

		ConfigurableApplicationContext context = builder.run(args);

	}

	@Bean
	public DataSource dataSource() {
		EmbeddedDatabaseBuilder builder = new EmbeddedDatabaseBuilder();
		EmbeddedDatabase db = builder
			.setType(EmbeddedDatabaseType.HSQL) //.H2 or .DERBY
			.addScript("db/sql/db.sql")
			.build();

		org.hsqldb.util.DatabaseManager.main(new String[] {
				  "--url",  "jdbc:hsqldb:mem:testdb", "--noexit"
				});

		return db;
	}

}
