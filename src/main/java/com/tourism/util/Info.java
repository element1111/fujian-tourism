package com.tourism.util;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;


public class Info {

    //public static String popheight = "alliframe.height=document.body.clientHeight+";
    public static String popheight = "alliframe.style.height=document.body.scrollHeight+";


    public static String daysBetween(String date1, String date2) {
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date now = null;
        Date date = null;
        try {
            now = df.parse(date1);
            date = df.parse(date2);
        } catch (ParseException e) {
            e.printStackTrace();
        }

        long l = now.getTime() - date.getTime();
        long day = l / (24 * 60 * 60 * 1000);
        long hour = (l / (60 * 60 * 1000) - day * 24);
        long min = ((l / (60 * 1000)) - day * 24 * 60 - hour * 60);
        long s = (l / 1000 - day * 24 * 60 * 60 - hour * 60 * 60 - min * 60);
        String str = hour + "小时" + min + "分" + s + "秒";
        return str;
    }


    public static HashMap getUser(HttpServletRequest request) {
        HashMap map = (HashMap) (request.getSession().getAttribute("admin") == null ? request.getSession().getAttribute("user") : request.getSession().getAttribute("admin"));
        return map;
    }


    public static int getBetweenDayNumber(String dateA, String dateB) {
        long dayNumber = 0;
        //1小时=60分钟=3600秒=3600000
        long mins = 60L * 1000L;
        //long day= 24L * 60L * 60L * 1000L;计算天数之差
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm");
        try {
            Date d1 = df.parse(dateA);
            Date d2 = df.parse(dateB);
            dayNumber = (d2.getTime() - d1.getTime()) / mins;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (int) dayNumber;
    }

    public static void main(String[] g) {
        System.out.print(Info.getBetweenDayNumber("2012-11-11 11:19", "2012-11-11 11:11"));
    }


    public synchronized static String getID() {
        Random random = new Random();
        StringBuffer ret = new StringBuffer(20);
        String rand = String.valueOf(Math.abs(random.nextInt()));
        ret.append(getDateStr());
        ret.append(rand.substring(0, 6));

        return ret.toString();
    }


    public synchronized static String subStr(String source, int length) {
        if (source.length() > length) {
            source = source.substring(0, length) + "...";
        }

        return source;
    }


    public static String getDateStr() {
        String dateString = "";
        try {//yyyyMMddHHmmss
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            Date currentTime_1 = new Date();
            dateString = formatter.format(currentTime_1);
        } catch (Exception e) {
        }
        return dateString;
    }



}



