package com.view.batdongsanfrontend.service;

import com.view.batdongsanfrontend.dto.CommentDTO;
import com.view.batdongsanfrontend.dto.CommentResponse;
import com.view.batdongsanfrontend.model.Comment;
import com.view.batdongsanfrontend.model.Post;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.*;
import org.springframework.http.converter.ByteArrayHttpMessageConverter;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

import java.util.Arrays;
import java.util.List;

@Service
public class CommentService extends BaseService {
    private final RestTemplate restTemplate;
    private String COMMENT_URI = ROOT_URL + "comment/";

    public CommentService(@Qualifier("appRestClient") RestTemplate restTemplate) {
        this.restTemplate = restTemplate;
    }

    public Comment addComment(String content, Long postId, Long userId) {
        try {
            CommentDTO comment = new CommentDTO();
            comment.setContent(content);
            comment.setUserId(userId);
            comment.setPostId(postId);

            MultiValueMap<String, Object> formData = new LinkedMultiValueMap<String, Object>();
            restTemplate.getMessageConverters().add(new ByteArrayHttpMessageConverter());
            formData.add("commentDTO", comment);

            HttpHeaders headers = new HttpHeaders();
            headers.setContentType(MediaType.MULTIPART_FORM_DATA);
            headers.add("Content-Type", "application/x-www-form-urlencoded");
            HttpEntity<MultiValueMap<String, Object>> requestEntity = new HttpEntity<>(formData, headers);
            ResponseEntity<Comment> response = restTemplate.exchange(COMMENT_URI,
                    HttpMethod.POST, requestEntity, Comment.class);
            return response.getBody();
        } catch (Exception e) {
            System.out.println(e.getMessage());
            e.printStackTrace();
            return null;
        }
    }

    public List<CommentResponse> getListCommentByPost(Long postId) {
        try {
            System.out.println(COMMENT_URI);
            ResponseEntity<CommentResponse[]> response = restTemplate.getForEntity(COMMENT_URI +"post/" +postId, CommentResponse[].class);
            return Arrays.asList(response.getBody());

        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

}
