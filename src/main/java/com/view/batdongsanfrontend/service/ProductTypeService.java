package com.view.batdongsanfrontend.service;

import com.view.batdongsanfrontend.model.ProductType;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.Arrays;
import java.util.List;

@Service

public class ProductTypeService extends BaseService {

    private String PRODUCT_TYPE_URI= ROOT_URL+ "product-type/";

    private final RestTemplate restTemplate;

    public ProductTypeService(@Qualifier("appRestClient") RestTemplate restTemplate) {
        this.restTemplate = restTemplate;
    }

    public List<ProductType> getAllObject() {
        System.out.println(PRODUCT_TYPE_URI);
        ResponseEntity<ProductType[]> response = restTemplate.getForEntity(PRODUCT_TYPE_URI, ProductType[].class);
        return Arrays.asList(response.getBody());
    }
}
