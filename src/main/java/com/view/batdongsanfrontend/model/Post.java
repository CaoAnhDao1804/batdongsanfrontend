package com.view.batdongsanfrontend.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class Post {
    Long id;

    String name;

    String description;

    String address;

    Long acreage;

    Long roadInFrontOf;

    Long numberFloor;

    Long bedrooms;

    Long bathrooms;

    Long status;

    PostType postType;

    ProductType productType;

    Long favoritePersons;

    Long carePersons;

    List<Surrounding> suroundings;

    List<Utilities> utilities;

    List<Picture> pictureEntities;

    User user;
}
