package spring.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = { "spring" })
public class WebMvcConfig implements WebMvcConfigurer {

	// =======================================
	// ------------= Bean Config =-----------
	// =======================================

	@Bean
	public InternalResourceViewResolver resolver() {
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setViewClass(JstlView.class);
		resolver.setPrefix("/WEB-INF/views/");
		resolver.setSuffix(".jsp");
		return resolver;
	}

	// =======================================
	// ---------= Override Methods =---------
	// =======================================

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/WEB-INF/**").addResourceLocations("classpath://");
		registry.addResourceHandler("/assets/**").addResourceLocations("/WEB-INF/assets/");
		registry.addResourceHandler("/css/**").addResourceLocations("/WEB-INF/css/");
		registry.addResourceHandler("/js/**").addResourceLocations("/WEB-INF/js/");
	}

	@Override
	public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
		configurer.enable();
	}
	
	
	  @Bean(name = "multipartResolver")
	    public MultipartResolver getMultipartResolver() {
	        CommonsMultipartResolver resover = new CommonsMultipartResolver();
	        // 1MB
	        resover.setMaxUploadSize(10000000);

	        return resover;
	    }

}
