package com.view.batdongsanfrontend.model;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@NoArgsConstructor
public class User {
    private Long id;
    private String username;
    private String fullname;
    private String email;
    private String password;
    private String address;
    private String phone;
    private Integer enable;
    private Date dateCreate;
    private Long idRole;
    private Long status;

}

