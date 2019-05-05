package com.view.batdongsanfrontend.model;
import lombok.Data;

import java.util.Date;

@Data
public class Comment {

    Long id;

    Long userId;

    Long postId;

    String content;

    Date commentDate;
}
