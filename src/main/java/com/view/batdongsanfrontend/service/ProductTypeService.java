package com.view.batdongsanfrontend.service;

import com.view.batdongsanfrontend.exception.ServiceBadRequestException;
import com.view.batdongsanfrontend.model.ProductType;
import com.view.batdongsanfrontend.util.HttpHeaderCustom;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.HttpStatusCodeException;
import org.springframework.web.client.RestTemplate;

import java.util.Arrays;
import java.util.List;

@Service

public class ProductTypeService extends BaseService {

    private final RestTemplate restTemplate;
    private String PRODUCT_TYPE_URI = ROOT_URL + "product-type/";

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
        try {
            HttpEntity<ProductType> requestBody = new HttpEntity<>(objProductType, HttpHeaderCustom.createNewHttpHeaders());
            ResponseEntity<ProductType> responseEntity = restTemplate.exchange(PRODUCT_TYPE_URI, HttpMethod.PUT, requestBody, ProductType.class);
            if (responseEntity != null) return true;
            return false;
        } catch (HttpStatusCodeException e) {
            if (e.getStatusCode() == HttpStatus.BAD_REQUEST) {
                throw new ServiceBadRequestException(e.getMessage());
            }
        }
        return false;
    }

    public boolean changeStatus(Long id) {
        String uri = PRODUCT_TYPE_URI + id;
        System.out.println(uri + "change status");
        ResponseEntity<ProductType> result = restTemplate.exchange(uri, HttpMethod.PUT, null, ProductType.class);
        if (result != null) return true;
        return false;
    }

    public ProductType create(ProductType objProductType) {
        try {
            HttpEntity<ProductType> requestBody = new HttpEntity<>(objProductType, HttpHeaderCustom.createNewHttpHeaders());
            System.out.println(PRODUCT_TYPE_URI + "Create new");
            ResponseEntity<ProductType> result = restTemplate.exchange(PRODUCT_TYPE_URI, HttpMethod.POST, requestBody, ProductType.class);
            if (result != null) {
                return result.getBody();
            } else return null;
        } catch (HttpStatusCodeException e) {
            if (e.getStatusCode() == HttpStatus.BAD_REQUEST) {
                throw new ServiceBadRequestException(e.getMessage());
            }
        }
        return null;

    }


}
