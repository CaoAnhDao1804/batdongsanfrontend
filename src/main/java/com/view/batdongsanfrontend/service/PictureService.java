package com.view.batdongsanfrontend.service;

import com.view.batdongsanfrontend.model.Post;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Service
public class PictureService extends BaseService{
    private final RestTemplate restTemplate;
    private String PICTURE_URI = ROOT_URL + "post/picture/";

    public PictureService(@Qualifier("appRestClient") RestTemplate restTemplate) {
        this.restTemplate = restTemplate;
    }


    public boolean deletePictureById(Long id) {
        String uri = PICTURE_URI + id;
        System.out.println(uri + " delete picture");
        ResponseEntity<Object> result = restTemplate.exchange(uri, HttpMethod.DELETE, null, Object.class);
        if (result != null) return true;
        return false;
    }
}
