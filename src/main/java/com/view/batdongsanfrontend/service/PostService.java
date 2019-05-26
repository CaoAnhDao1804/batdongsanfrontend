package com.view.batdongsanfrontend.service;

import com.view.batdongsanfrontend.dto.PostBasicInformation;
import com.view.batdongsanfrontend.dto.PostDTO;
import com.view.batdongsanfrontend.exception.ServiceBadRequestException;
import com.view.batdongsanfrontend.model.Picture;
import com.view.batdongsanfrontend.model.Post;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.http.*;
import org.springframework.http.converter.ByteArrayHttpMessageConverter;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.HttpStatusCodeException;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.multipart.MultipartFile;

import java.util.Arrays;
import java.util.List;

@Service
public class PostService extends BaseService {
    private final RestTemplate restTemplate;
    private String POST_URI = ROOT_URL + "post/";

    public PostService(@Qualifier("appRestClient") RestTemplate restTemplate) {
        this.restTemplate = restTemplate;
    }

    public List<Post> getAllObject() {
        System.out.println(POST_URI);
        ResponseEntity<Post[]> response = restTemplate.getForEntity(POST_URI, Post[].class);
        return Arrays.asList(response.getBody());
    }

    public boolean changeStatus(Long id) {
        String uri = POST_URI + id;
        System.out.println(uri + " change status");
        ResponseEntity<Post> result = restTemplate.exchange(uri, HttpMethod.PUT, null, Post.class);
        if (result != null) return true;
        return false;
    }

    public Post save(PostDTO postDTO, MultipartFile file, MultipartFile[] files) {
        try {
            MultiValueMap<String, Object> formData = new LinkedMultiValueMap<String, Object>();
            restTemplate.getMessageConverters().add(new ByteArrayHttpMessageConverter());
            formData.add("postDTO", postDTO);
            saveFileToMap(file, formData, "fileCover");
            if (files != null && files.length > 0) {
                for (MultipartFile obj : files) {
                    if (obj != null && obj.getSize() > 0) {
                        saveFileToMap(obj, formData, "files");
                    }
                }
            }
            HttpHeaders headers = new HttpHeaders();
            headers.setContentType(MediaType.MULTIPART_FORM_DATA);
            headers.add("Content-Type", "application/x-www-form-urlencoded");
            HttpEntity<MultiValueMap<String, Object>> requestEntity = new HttpEntity<>(formData, headers);
            ResponseEntity<Post> response = restTemplate.exchange(POST_URI,
                    HttpMethod.POST, requestEntity, Post.class);
            return response.getBody();
        }
        catch (HttpStatusCodeException e) {
            if (e.getStatusCode() == HttpStatus.BAD_REQUEST) {
                throw new ServiceBadRequestException(e.getMessage());
            }
        }
        catch (Exception e) {
            System.out.println(e.getMessage());
            e.printStackTrace();
            return null;
        }

        return null;
    }

    private void saveFileToMap(MultipartFile file, MultiValueMap<String, Object> formData, String nameAdd) {
        if (file != null && file.getSize() > 0) {
            try {
                ByteArrayResource fileAsResource = new ByteArrayResource(file.getBytes()) {
                    @Override
                    public String getFilename() {
                        return file.getOriginalFilename();
                    }
                };
                formData.add(nameAdd, fileAsResource);
            } catch (Exception e) {
                System.out.println(e.getMessage());
            }
        }
    }

    public Post findById(Long id) {
        String uri = POST_URI + id;
        System.out.println(uri);
        ResponseEntity<Post> responseEntity = restTemplate.getForEntity(uri, Post.class);
        return responseEntity.getBody();

    }

    public Post update(PostDTO postDTO) {
        try {
            MultiValueMap<String, Object> formData = new LinkedMultiValueMap<String, Object>();
            restTemplate.getMessageConverters().add(new ByteArrayHttpMessageConverter());
            formData.add("postDTO", postDTO);
            HttpHeaders headers = new HttpHeaders();
            headers.setContentType(MediaType.MULTIPART_FORM_DATA);
            headers.add("Content-Type", "application/x-www-form-urlencoded");
            HttpEntity<MultiValueMap<String, Object>> requestEntity = new HttpEntity<>(formData, headers);
            ResponseEntity<Post> response = restTemplate.exchange(POST_URI,
                    HttpMethod.PUT, requestEntity, Post.class);
            return response.getBody();
        } catch (HttpStatusCodeException e) {
            if (e.getStatusCode() == HttpStatus.BAD_REQUEST){
                throw new ServiceBadRequestException(e.getMessage());
            }
        }
        catch (Exception e) {
            System.out.println(e.getMessage());
            e.printStackTrace();
            return null;
        }

        return null;
    }

    public List<Picture> findPicturesByIdPost(Long id) {
        String uri = POST_URI + "pictures/" + id;
        System.out.println(uri);
        ResponseEntity<Picture[]> responseEntity = restTemplate.getForEntity(uri, Picture[].class);
        return Arrays.asList(responseEntity.getBody());
    }

    public List<Picture> savePicture(Long idPost, MultipartFile[] files) {
        String uri = POST_URI + "pictures/" + idPost;
        try {
            MultiValueMap<String, Object> formData = new LinkedMultiValueMap<String, Object>();
            restTemplate.getMessageConverters().add(new ByteArrayHttpMessageConverter());
            if (files != null && files.length > 0) {
                for (MultipartFile obj : files) {
                    if (obj != null && obj.getSize() > 0) {
                        saveFileToMap(obj, formData, "files");
                    }
                }
            }
            HttpHeaders headers = new HttpHeaders();
            headers.setContentType(MediaType.MULTIPART_FORM_DATA);
            headers.add("Content-Type", "application/x-www-form-urlencoded");
            HttpEntity<MultiValueMap<String, Object>> requestEntity = new HttpEntity<>(formData, headers);
            ResponseEntity<Picture[]> response = restTemplate.exchange(uri,
                    HttpMethod.POST, requestEntity, Picture[].class);
            return Arrays.asList(response.getBody());
        } catch (Exception e) {
            System.out.println(e.getMessage());
            e.printStackTrace();
            return null;
        }
    }

    public PostBasicInformation convertFromPost(Post post) {
        PostBasicInformation postBasicInformation = new PostBasicInformation();
        postBasicInformation.setId(post.getId());
        postBasicInformation.setName(post.getName());
        postBasicInformation.setBathrooms(post.getBathrooms());
        postBasicInformation.setBedrooms(post.getBedrooms());
        postBasicInformation.setPrice(1000000L);
        postBasicInformation.setAcreage(post.getAcreage());
        postBasicInformation.setAddress(post.getAddress());
        if (post.getPictureEntities() != null) {
            List<Picture>  pictureList = post.getPictureEntities();
            for (Picture picture: pictureList){
                postBasicInformation.setUrlPictureCover(picture.getUrl());
                break;
            }
        } else {
            postBasicInformation.setUrlPictureCover("${pageContext.request.contextPath}/templates/user/assets/images/city_1.jpg");
        }

        return postBasicInformation;
    }

    public List<Post> getTopFavoritedPosts(int topNumber){
        try {
            System.out.println(POST_URI + "most-favorite/" + topNumber);
            ResponseEntity<Post[]> response = restTemplate.getForEntity(POST_URI + "most-favorite/" + topNumber, Post[].class);
            return Arrays.asList(response.getBody());
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public List<Post> getTopCaredPosts(int topNumber) {
        try {
            System.out.println(POST_URI +"most-care/" + topNumber);
            ResponseEntity<Post[]> response = restTemplate.getForEntity(POST_URI +"most-care/" + topNumber, Post[].class);
            return Arrays.asList(response.getBody());
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public List<Post> getTopNewestPosts(int topNumber) {
        try {
            System.out.println(POST_URI);
            ResponseEntity<Post[]> response = restTemplate.getForEntity(POST_URI + "newest/" +topNumber, Post[].class);
            return Arrays.asList(response.getBody());
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public List<Post> getAllPostOfMod(Long modId) {
        System.out.println(POST_URI);
        ResponseEntity<Post[]> response = restTemplate.getForEntity(POST_URI + "mod/" + modId, Post[].class);
        return Arrays.asList(response.getBody());
    }
}
