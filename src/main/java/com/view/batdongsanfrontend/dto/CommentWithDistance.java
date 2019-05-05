package com.view.batdongsanfrontend.dto;

import lombok.Data;

import java.util.Date;

@Data
public class CommentWithDistance {
    Long id;
    Long idUser;
    String username;
    String address;
    String content;
    Long postId;
    String distanceTime;
}
