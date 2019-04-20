package com.view.batdongsanfrontend.model;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Picture {
    private Integer id;
    private String url;
    private Integer type;

    public Picture(Picture obj) {
        this.id = obj.id;
        this.url = obj.url;
        this.type = obj.type;
    }
}
