package com.view.batdongsanfrontend.service;

import com.view.batdongsanfrontend.model.ProductType;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
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

    public ProductType getById(Long id) {
        String uri = PRODUCT_TYPE_URI + id;
        System.out.println(uri);
        ResponseEntity<ProductType> responseEntity = restTemplate.getForEntity(uri, ProductType.class);
        return responseEntity.getBody();
    }

    public boolean update(ProductType objProductType) {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Accept", "application/json");
        headers.add("Content-Type", "application/json");
        HttpEntity<ProductType> requestBody = new HttpEntity<>(objProductType, headers);
        ResponseEntity<ProductType> responseEntity = restTemplate.exchange(PRODUCT_TYPE_URI, HttpMethod.PUT, requestBody, ProductType.class);
        if (responseEntity != null) return true;
        return false;

    }

    public boolean changeStatus(Long id) {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Accept", "application/json");
        headers.add("Content-Type", "application/json");
        String uri = PRODUCT_TYPE_URI +id;
        System.out.println(uri + "change status");
        ResponseEntity<ProductType> result = restTemplate.exchange(uri, HttpMethod.PUT, null, ProductType.class);
        if (result != null) return true;
        return false;
    }
}
