package com.view.batdongsanfrontend.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class PostType {
    Long id;
    String name;
    Long status;

    public PostType(Long id){
        this.id = id;
    }
}
