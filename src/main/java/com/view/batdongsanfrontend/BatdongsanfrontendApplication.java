package com.view.batdongsanfrontend;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.http.client.BufferingClientHttpRequestFactory;
import org.springframework.http.client.SimpleClientHttpRequestFactory;
import org.springframework.web.client.RestTemplate;

import java.util.Collections;

@SpringBootApplication
public class BatdongsanfrontendApplication {

    public static void main(String[] args) {
        SpringApplication.run(BatdongsanfrontendApplication.class, args);
    }

    @Bean(name = "appRestClient")
    public RestTemplate getRestClient() {
        RestTemplate restClient = new RestTemplate(
                new BufferingClientHttpRequestFactory(new SimpleClientHttpRequestFactory()));
        restClient.setInterceptors(Collections.singletonList((request, body, execution) -> {
            return execution.execute(request, body);
        }));
        return restClient;
    }
}
