package com.view.batdongsanfrontend.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Surrounding {
    Long id;
    String name;
    Long status;

    public Surrounding(Long id){
        this.id = id;
    }


}
