package com.view.batdongsanfrontend.dto;

import lombok.Data;

@Data
public class CommentDTO {
    Long postId;

    Long userId;

    String content;
}
