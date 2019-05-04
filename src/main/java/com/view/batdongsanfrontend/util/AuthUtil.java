package com.view.batdongsanfrontend.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class AuthUtil {
    public static boolean checkUser(HttpServletRequest request) {
        HttpSession session = request.getSession();
        if(session.getAttribute("loggedUser") == null) {
            return false;
        }
        return true;
    }
}
