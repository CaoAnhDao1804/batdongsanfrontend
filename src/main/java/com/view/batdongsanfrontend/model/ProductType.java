package com.view.batdongsanfrontend.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class ProductType {
    Long id;
    String name;
    Long status;

    public ProductType(Long id){
        this.id = id;
    }

}
