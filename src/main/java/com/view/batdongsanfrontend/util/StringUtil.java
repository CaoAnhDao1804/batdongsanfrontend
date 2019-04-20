package com.view.batdongsanfrontend.util;

import com.view.batdongsanfrontend.model.Surrounding;
import com.view.batdongsanfrontend.model.Utilities;
import org.springframework.stereotype.Service;

import java.util.List;


@Service

public class StringUtil {
    public static String displaySurrounding(List<Surrounding> surroundings, List<Surrounding> surroundingOfPosts) {
        String data = "";
        for(Surrounding surrounding : surroundings) {
            if(surroundingOfPosts != null && surroundingOfPosts.size() > 0) {
                int check = 0;
                for(Surrounding children : surroundingOfPosts) {
                    if(surrounding.getId() == children.getId()) {
                        data += "<option selected value='" + surrounding.getId() + "'>" + surrounding.getName() + "</option>";
                        check = 1;
                        break;
                    }
                }
                if(check == 0) {
                    data += "<option value='" + surrounding.getId() + "'>" + surrounding.getName() + "</option>";
                }
            } else {
                data += "<option value='" + surrounding.getId() + "'>" + surrounding.getName() + "</option>";
            }
        }
        return data;
    }

    public static String displayUtilities(List<Utilities> utilities, List<Utilities> utilitiesOfPost) {
        String data = "";
        for(Utilities utilities1 : utilities) {
            if(utilitiesOfPost != null && utilitiesOfPost.size() > 0) {
                int check = 0;
                for(Utilities children : utilitiesOfPost) {
                    if(utilities1.getId() == children.getId()) {
                        data += "<option selected value='" + utilities1.getId() + "'>" + utilities1.getName() + "</option>";
                        check = 1;
                        break;
                    }
                }
                if(check == 0) {
                    data += "<option value='" + utilities1.getId() + "'>" + utilities1.getName() + "</option>";
                }
            } else {
                data += "<option value='" + utilities1.getId() + "'>" + utilities1.getName() + "</option>";
            }
        }
        return data;
    }

    public static void main(String[] args) {
        Integer a = 1;
        Integer b = 1;
        System.out.println(a == b);
    }
}
