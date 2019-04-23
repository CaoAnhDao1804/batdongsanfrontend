package com.view.batdongsanfrontend.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class PostBasicInformation {
    Long id;
    String name;
    String urlPictureCover;
    Long bedrooms;
    Long bathrooms;
    Long price;
    Long acreage;
    String address;
}
