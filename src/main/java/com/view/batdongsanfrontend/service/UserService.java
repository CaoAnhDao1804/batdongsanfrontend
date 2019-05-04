package com.view.batdongsanfrontend.service;

import com.view.batdongsanfrontend.model.ProductType;
import com.view.batdongsanfrontend.model.User;
import com.view.batdongsanfrontend.util.HttpHeaderCustom;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.HttpClientErrorException;
import org.springframework.web.client.RestTemplate;

import java.util.Arrays;
import java.util.List;

@Service
public class UserService extends BaseService {

    private String USER_URI = ROOT_URL + "user/";

    private final RestTemplate restTemplate;

    public UserService(@Qualifier("appRestClient") RestTemplate restTemplate) {
        this.restTemplate = restTemplate;
    }

    public List<User> getAllObject() {
        System.out.println(USER_URI);
        ResponseEntity<User[]> response = restTemplate.getForEntity(USER_URI, User[].class);
        return Arrays.asList(response.getBody());
    }

    public User getById(Long id) {
        String uri = USER_URI + id;
        System.out.println(uri);
        ResponseEntity<User> responseEntity = restTemplate.getForEntity(uri, User.class);
        return responseEntity.getBody();
    }

//    public boolean update(ProductType objProductType) {
//        HttpEntity<ProductType> requestBody = new HttpEntity<>(objProductType, HttpHeaderCustom.createNewHttpHeaders());
//        ResponseEntity<ProductType> responseEntity = restTemplate.exchange(PRODUCT_TYPE_URI, HttpMethod.PUT, requestBody, ProductType.class);
//        if (responseEntity != null) return true;
//        return false;
//
//    }

    public boolean changeStatus(Long id) {
        String uri = USER_URI + id;
        System.out.println(uri + "change status");
        ResponseEntity<User> result = restTemplate.exchange(uri, HttpMethod.PUT, null, User.class);
        if (result != null) return true;
        return false;
    }

//    public ProductType create(ProductType objProductType) {
//        HttpEntity<ProductType> requestBody = new HttpEntity<>(objProductType, HttpHeaderCustom.createNewHttpHeaders());
//        System.out.println(PRODUCT_TYPE_URI + "Create new");
//        ResponseEntity<ProductType> result = restTemplate.exchange(PRODUCT_TYPE_URI, HttpMethod.POST, requestBody, ProductType.class);
//        if (result != null) {
//            return result.getBody();
//        } else return null;
//    }

    public Object getUserLogin(User user) {
        try {
            ResponseEntity<User> response = restTemplate.postForEntity(USER_URI + "login/check", user, User.class);
            return Object.class.cast(response.getBody());
        } catch (HttpClientErrorException httpClientErrorException) {
            if(httpClientErrorException.getStatusCode() == HttpStatus.BAD_REQUEST) {
                String body = httpClientErrorException.getResponseBodyAsString();
                return Object.class.cast(body);
            }
            return null;
        }
        catch (Exception e) {
            return null;
        }
    }

    public Object addUser(User user) {
        try {
            ResponseEntity<User> response = restTemplate.postForEntity(USER_URI + "signup", user, User.class);
            if(response != null) {
                return Object.class.cast(response.getBody());
            }
            return null;
        } catch (HttpClientErrorException httpClientErrorException) {
            if(httpClientErrorException.getStatusCode() == HttpStatus.BAD_REQUEST) {
                String body = httpClientErrorException.getResponseBodyAsString();
                return Object.class.cast(body);
            }
            return null;
        } catch (Exception e) {
            return null;
        }
    }

}
