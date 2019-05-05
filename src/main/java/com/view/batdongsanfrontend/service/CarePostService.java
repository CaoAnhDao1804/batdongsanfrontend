package com.view.batdongsanfrontend.service;

import com.view.batdongsanfrontend.model.CarePost;
import com.view.batdongsanfrontend.model.Favourite;
import net.minidev.json.JSONObject;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Service
public class CarePostService extends BaseService {

    private final RestTemplate restTemplate;
    private String CARE_URI = ROOT_URL + "care/";

    public CarePostService(@Qualifier("appRestClient") RestTemplate restTemplate) {
        this.restTemplate = restTemplate;
    }

    public CarePost getCareByUserIdPostId(Long idUser, Long idPost) {
        try {
            ResponseEntity<CarePost> response = restTemplate.getForEntity(CARE_URI + "user/" + idUser + "/post/" + idPost, CarePost.class);
            if (response.getStatusCode() == HttpStatus.OK)
                return response.getBody();
        } catch (Exception e) {
            return null;
        }
        return null;
    }

    public CarePost addCarePost(Long postId, Long id) {

        try {
            JSONObject request = new JSONObject();
            request.put("userId", id);
            request.put("postId", postId);
            ResponseEntity<CarePost> response = restTemplate.postForEntity(CARE_URI + "change", request, CarePost.class);
            if (response.getStatusCode() == HttpStatus.OK)
                return response.getBody();
            return null;
        } catch (Exception e) {
            return null;
        }
    }
}
