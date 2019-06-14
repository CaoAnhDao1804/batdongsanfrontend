package com.view.batdongsanfrontend.service;

import com.view.batdongsanfrontend.model.Ward;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.Arrays;
import java.util.List;

@Service
public class WardService extends BaseService{

    private final RestTemplate restTemplate;
    private String WARD_URI = ROOT_URL + "wards";

    public WardService(@Qualifier("appRestClient") RestTemplate restTemplate) {
        this.restTemplate = restTemplate;
    }


    public List<Ward> getAllWardByName(String nameDictricts) {
        try {
            ResponseEntity<Ward[]> response = restTemplate.getForEntity(ROOT_URL + "wards/districts/by_name?name=" + nameDictricts, Ward[].class);
            if (response.getStatusCode() == HttpStatus.OK)
                return Arrays.asList(response.getBody());
            return null;
        } catch (Exception e) {
            return null;
        }
    }


    public List<Ward> getAllWardByDistrictId(Integer id) {
        try {
            ResponseEntity<Ward[]> response = restTemplate.getForEntity(ROOT_URL + "wards/districts/" + id, Ward[].class);
            if (response.getStatusCode() == HttpStatus.OK)
                return Arrays.asList(response.getBody());
            return null;
        } catch (Exception e) {
            return null;
        }
    }
}
