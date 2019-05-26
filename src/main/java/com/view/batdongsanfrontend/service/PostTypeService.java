package com.view.batdongsanfrontend.service;

import com.view.batdongsanfrontend.exception.ServiceBadRequestException;
import com.view.batdongsanfrontend.model.PostType;
import com.view.batdongsanfrontend.model.ProductType;
import com.view.batdongsanfrontend.util.HttpHeaderCustom;
import javafx.geometry.Pos;
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
public class PostTypeService extends BaseService {
    private String POST_TYPE_URI = ROOT_URL + "post-type/";

    private final RestTemplate restTemplate;

    public PostTypeService(@Qualifier("appRestClient") RestTemplate restTemplate) {
        this.restTemplate = restTemplate;
    }

    public List<PostType> getAllObject() {
        System.out.println(POST_TYPE_URI);
        ResponseEntity<PostType[]> response = restTemplate.getForEntity(POST_TYPE_URI, PostType[].class);
        return Arrays.asList(response.getBody());
    }

    public PostType getById(Long id) {
        String uri = POST_TYPE_URI + id;
        System.out.println(uri);
        ResponseEntity<PostType> responseEntity = restTemplate.getForEntity(uri, PostType.class);
        return responseEntity.getBody();
    }

    public boolean update(PostType objPostType) {
        try {
            HttpEntity<PostType> requestBody = new HttpEntity<>(objPostType, HttpHeaderCustom.createNewHttpHeaders());
            ResponseEntity<PostType> responseEntity = restTemplate.exchange(POST_TYPE_URI, HttpMethod.PUT, requestBody, PostType.class);
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
        String uri = POST_TYPE_URI + id;
        System.out.println(uri + "change status");
        ResponseEntity<PostType> result = restTemplate.exchange(uri, HttpMethod.PUT, null, PostType.class);
        if (result != null) return true;
        return false;
    }

    public PostType create(PostType objPostType) {
        try {
            HttpEntity<PostType> requestBody = new HttpEntity<>(objPostType, HttpHeaderCustom.createNewHttpHeaders());
            System.out.println(POST_TYPE_URI + "Create new");
            ResponseEntity<PostType> result = restTemplate.exchange(POST_TYPE_URI, HttpMethod.POST, requestBody, PostType.class);
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
