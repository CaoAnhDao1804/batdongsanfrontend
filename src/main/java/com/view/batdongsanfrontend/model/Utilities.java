package com.view.batdongsanfrontend.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Utilities {
    Long id;
    String name;
    Long status;

    public Utilities(Long id){
        this.id = id;
    }
}
