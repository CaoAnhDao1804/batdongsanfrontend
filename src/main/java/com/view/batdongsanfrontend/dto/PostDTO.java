package com.view.batdongsanfrontend.dto;

import com.view.batdongsanfrontend.model.*;
import lombok.Data;

import java.util.List;

@Data

public class PostDTO {
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

    Long postTypeId;

    Long productTypeId;

    String[] suroundings;

    String[] utilities;

    Long userId;

    String nameOwner;
    String mailOwner;
    String phoneOwner;
}
