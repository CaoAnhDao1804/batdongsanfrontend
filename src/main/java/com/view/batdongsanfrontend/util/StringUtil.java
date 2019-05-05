package com.view.batdongsanfrontend.util;

import com.view.batdongsanfrontend.model.Surrounding;
import com.view.batdongsanfrontend.model.Utilities;
import org.springframework.stereotype.Service;

import java.sql.Time;
import java.sql.Timestamp;
import java.util.Date;
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

    public static String getDistanceOfDate(Date date) {
        System.out.println("Đã vào String util!");
        Timestamp createDate = new Timestamp(date.getTime());
        Timestamp now = new Timestamp(System.currentTimeMillis());
        int distanceTime = (int) (now.getTime() - createDate.getTime()) / 1000;
        if(distanceTime / 60 > 1) {
            if(distanceTime / 3600 > 1) {
                if(distanceTime / 86400 > 1) {
                    return (distanceTime / 86400) + " ngày trước";
                } else {
                    return (distanceTime / 3600) + " giờ trước";
                }
            } else {
                return (distanceTime / 60) + " phút trước";
            }
        } else {
            if(distanceTime == 0) {
                return "vừa mới được gửi";
            }
            return distanceTime + " giây trước";
        }
    }


    public static void main(String[] args) {
        Integer a = 1;
        Integer b = 1;
        System.out.println(a == b);
    }
}
