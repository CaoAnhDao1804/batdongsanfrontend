package com.view.batdongsanfrontend.service;

import com.view.batdongsanfrontend.model.Districts;
import com.view.batdongsanfrontend.model.PostType;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.Arrays;
import java.util.List;

@Service
public class DistrictService extends BaseService {
    private final RestTemplate restTemplate;
    private String DISTRICT_URI = ROOT_URL + "districts/danang";

    public DistrictService(@Qualifier("appRestClient") RestTemplate restTemplate) {
        this.restTemplate = restTemplate;
    }


    public List<Districts> getAllDistricts() {
        System.out.println(DISTRICT_URI + "Get all district");
        ResponseEntity<Districts[]> response = restTemplate.getForEntity(DISTRICT_URI, Districts[].class);
        return Arrays.asList(response.getBody());
    }
}
