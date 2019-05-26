package com.view.batdongsanfrontend.service;

import com.view.batdongsanfrontend.exception.ServiceBadRequestException;
import com.view.batdongsanfrontend.model.Surrounding;
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
public class SuroundingService extends BaseService {
    private final RestTemplate restTemplate;
    private String SUROUNDING_TYPE_URI = ROOT_URL + "surrounding/";

    public SuroundingService(@Qualifier("appRestClient") RestTemplate restTemplate) {
        this.restTemplate = restTemplate;
    }

    public List<Surrounding> getAllObject() {
        System.out.println(SUROUNDING_TYPE_URI + " Get all object");
        ResponseEntity<Surrounding[]> responseEntity = restTemplate.getForEntity(SUROUNDING_TYPE_URI, Surrounding[].class);
        return Arrays.asList(responseEntity.getBody());
    }

    public boolean update(Surrounding surounding) {
        try {
            System.out.println(SUROUNDING_TYPE_URI + " update");
            HttpEntity<Surrounding> requestBody = new HttpEntity<>(surounding, HttpHeaderCustom.createNewHttpHeaders());
            ResponseEntity<Surrounding> result = restTemplate.exchange(SUROUNDING_TYPE_URI, HttpMethod.PUT, requestBody, Surrounding.class);
            if (result.getBody() != null) {
                return true;
            }
        } catch (HttpStatusCodeException e) {
            if (e.getStatusCode() == HttpStatus.BAD_REQUEST) {
                throw new ServiceBadRequestException(e.getMessage());
            }
        }

        return false;
    }

    public boolean changeStatus(Long id) {
        String uri = SUROUNDING_TYPE_URI + id;
        System.out.println(uri + "change Status");
        ResponseEntity<Surrounding> result = restTemplate.exchange(uri, HttpMethod.PUT, null, Surrounding.class);
        if (result != null) {
            return true;
        }
        return false;
    }

    public Surrounding create(Surrounding surounding) {
        try {
            HttpEntity<Surrounding> requestBody = new HttpEntity<>(surounding, HttpHeaderCustom.createNewHttpHeaders());
            System.out.println(SUROUNDING_TYPE_URI + "Create new");
            ResponseEntity<Surrounding> result = restTemplate.exchange(SUROUNDING_TYPE_URI, HttpMethod.POST, requestBody, Surrounding.class);
            if (result != null) {
                return result.getBody();
            }
        } catch (HttpStatusCodeException e) {
            if (e.getStatusCode() == HttpStatus.BAD_REQUEST) {
                throw new ServiceBadRequestException(e.getMessage());
            }
        }

        return null;
    }


}
