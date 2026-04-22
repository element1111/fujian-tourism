package com.tourism;

import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.tomcat.jdbc.pool.DataSource;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.PlatformTransactionManager;

/**
 * SpringBoot项目启动类
 */
@ServletComponentScan(basePackages = {"com.tourism.filter"})
@org.springframework.boot.autoconfigure.SpringBootApplication
@ComponentScan(basePackages = {"com.tourism"})//指定spring管理的bean所在的包
@MapperScan("com.tourism.dao")//指定mybatis的mapper接口所在的包
public class SpringBootApplication extends SpringBootServletInitializer {

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(SpringBootApplication.class);
    }

    public static void main(String[] args) {
        SpringApplication.run(SpringBootApplication.class, args);
        try {
//            系统启动后默认打开的界面
            Runtime.getRuntime().exec("cmd   /c   start   http://127.0.0.1:8088/Tourism/index.html");//可以指定自己的路径
        } catch (Exception ex) {
            ex.printStackTrace();
        }

    }

    //创建数据源
    @Bean
    @ConfigurationProperties(prefix = "spring.datasource")//指定数据源的前缀 ,在application.properties文件中指定
    public DataSource dataSource() {
        return new DataSource();
    }

    //创建SqlSessionFactory
    @Bean
    public SqlSessionFactory sqlSessionFactory() throws Exception {
        SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
        sqlSessionFactoryBean.setDataSource(dataSource());
        PathMatchingResourcePatternResolver resolver = new PathMatchingResourcePatternResolver();
        sqlSessionFactoryBean.setMapperLocations(resolver.getResources("classpath:/mybatis/*.xml"));
        return sqlSessionFactoryBean.getObject();
    }


    //创建事物管理器
    @Bean
    public PlatformTransactionManager transactionManager() {

        return new DataSourceTransactionManager(dataSource());
    }


//    @Bean
//    public ServletRegistrationBean servletRegistrationBean(DispatcherServlet dispatcherServlet) {
//        ServletRegistrationBean<DispatcherServlet> servletServletRegistrationBean = new ServletRegistrationBean<>(dispatcherServlet);
//        servletServletRegistrationBean.addUrlMappings("*");
//        return servletServletRegistrationBean;
//    }


}
