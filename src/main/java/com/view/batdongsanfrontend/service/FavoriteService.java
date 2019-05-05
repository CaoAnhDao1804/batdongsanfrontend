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
public class FavoriteService extends BaseService{

    private final RestTemplate restTemplate;
    private String FAVORITE_URI = ROOT_URL + "favorite/";

    public FavoriteService(@Qualifier("appRestClient") RestTemplate restTemplate) {
        this.restTemplate = restTemplate;
    }


    public Favourite getFavoriteByUserIdPostId(Long idUser, Long idPost) {
        try {
            ResponseEntity<Favourite> response = restTemplate.getForEntity(FAVORITE_URI + "user/" + idUser + "/post/" + idPost, Favourite.class);
            if (response.getStatusCode() == HttpStatus.OK)
                return response.getBody();
        } catch (Exception e) {
            return null;
        }
        return null;
    }

    public Favourite addFavorite(Long postId, Long idUser) {
        try {
            JSONObject request = new JSONObject();
            request.put("userId", idUser);
            request.put("postId", postId);
            ResponseEntity<Favourite> response = restTemplate.postForEntity(FAVORITE_URI + "change", request, Favourite.class);
            if (response.getStatusCode() == HttpStatus.OK)
                return response.getBody();
            return null;
        } catch (Exception e) {
            return null;
        }
    }
}
