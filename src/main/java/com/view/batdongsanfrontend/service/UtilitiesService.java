package com.view.batdongsanfrontend.service;

import com.view.batdongsanfrontend.exception.ServiceBadRequestException;
import com.view.batdongsanfrontend.model.Utilities;
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
public class UtilitiesService extends BaseService {
    private String UTILITIES_URI = ROOT_URL + "utilities/";

    private final RestTemplate restTemplate;

    public UtilitiesService(@Qualifier("appRestClient") RestTemplate restTemplate) {
        this.restTemplate = restTemplate;
    }

    public List<Utilities> getAllObject() {
        System.out.println(UTILITIES_URI);
        ResponseEntity<Utilities[]> response = restTemplate.getForEntity(UTILITIES_URI, Utilities[].class);
        return Arrays.asList(response.getBody());
    }

    public Utilities getById(Long id) {
        String uri = UTILITIES_URI + id;
        System.out.println(uri);
        ResponseEntity<Utilities> responseEntity = restTemplate.getForEntity(uri, Utilities.class);
        return responseEntity.getBody();
    }

    public boolean update(Utilities objUtilities) {
        try {
            HttpEntity<Utilities> requestBody = new HttpEntity<>(objUtilities, HttpHeaderCustom.createNewHttpHeaders());
            ResponseEntity<Utilities> responseEntity = restTemplate.exchange(UTILITIES_URI, HttpMethod.PUT, requestBody, Utilities.class);
            if (responseEntity != null) return true;
        } catch (HttpStatusCodeException e) {
            if (e.getStatusCode() == HttpStatus.BAD_REQUEST) {
                throw new ServiceBadRequestException(e.getMessage());
            }
        }
        return false;

    }

    public boolean changeStatus(Long id) {
        String uri = UTILITIES_URI + id;
        System.out.println(uri + "change status");
        ResponseEntity<Utilities> result = restTemplate.exchange(uri, HttpMethod.PUT, null, Utilities.class);
        if (result != null) return true;
        return false;
    }

    public Utilities create(Utilities objUtilities) {
        try {
            HttpEntity<Utilities> requestBody = new HttpEntity<>(objUtilities, HttpHeaderCustom.createNewHttpHeaders());
            System.out.println(UTILITIES_URI + "Create new");
            ResponseEntity<Utilities> result = restTemplate.exchange(UTILITIES_URI, HttpMethod.POST, requestBody, Utilities.class);
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
