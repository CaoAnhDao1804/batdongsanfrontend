package com.view.batdongsanfrontend.util;

import org.springframework.http.HttpHeaders;

public class HttpHeaderCustom {
    public static HttpHeaders createNewHttpHeaders() {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Accept", "application/json");
        headers.add("Content-Type", "application/json");
        return headers;
    }
}
