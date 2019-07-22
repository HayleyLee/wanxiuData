package com.wanxiuData.algorithm;

import java.util.Calendar;

public class TimeFormat {
    public String getToDayStrTime(){
        String time;
        Calendar c = Calendar.getInstance();
        int year = c.get(Calendar.YEAR);
        int month = c.get(Calendar.MONTH);
        month++;
        int date = c.get(Calendar.DATE);
        String StrMonth=String.valueOf(month);
        String StrDate=String.valueOf(date);
        if(month<10){
            StrMonth="0"+month;
        }
        if(date<10){
            StrDate="0"+date;
        }
        time=year+"-"+StrMonth+"-"+StrDate;
        return time;
    }
    public String getYesterdayStrTime(){
        String time;
        Calendar c = Calendar.getInstance();
        int year = c.get(Calendar.YEAR);
        int month = c.get(Calendar.MONTH);
        month++;
        int date = (c.get(Calendar.DATE))-1;
        String StrMonth=String.valueOf(month);
        String StrDate=String.valueOf(date);
        if(month<10){
            StrMonth="0"+month;
        }
        if(date<10){
            StrDate="0"+date;
        }
        time=year+"-"+StrMonth+"-"+StrDate;
        return time;
    }
    public Integer getToDayYear(){
        Calendar c = Calendar.getInstance();
        return c.get(Calendar.YEAR);
    }
    public Integer getToDayMonth(){
        Calendar c = Calendar.getInstance();
        return c.get(Calendar.MONTH)+1;
    }
    public Integer getToDay(){
        Calendar c = Calendar.getInstance();
        return c.get(Calendar.DATE);
    }
    public String getToDayStrHour(){
        String time;
        Calendar c = Calendar.getInstance();
        int year = c.get(Calendar.YEAR);
        int month = c.get(Calendar.MONTH);
        month++;
        int date = c.get(Calendar.DATE);
        int hour = c.get(Calendar.HOUR_OF_DAY);
        String StrMonth=String.valueOf(month);
        String StrDate=String.valueOf(date);
        if(month<10){
            StrMonth="0"+month;
        }
        if(date<10){
            StrDate="0"+date;
        }
        time=year+"-"+StrMonth+"-"+StrDate+" "+hour;
        return time;
    }
    public String getToDayStrMinute(){
        String time;
        Calendar c = Calendar.getInstance();
        int year = c.get(Calendar.YEAR);
        int month = c.get(Calendar.MONTH);
        month++;
        int date = c.get(Calendar.DATE);
        int hour = c.get(Calendar.HOUR_OF_DAY);
        int minute = c.get(Calendar.MINUTE);
        String StrMonth=String.valueOf(month);
        String StrDate=String.valueOf(date);
        if(month<10){
            StrMonth="0"+month;
        }
        if(date<10){
            StrDate="0"+date;
        }
        time=year+"-"+StrMonth+"-"+StrDate+" "+hour+":"+minute;
        return time;
    }
    public String getToDayFullStrTime(){
        String time;
        Calendar c = Calendar.getInstance();
        int year = c.get(Calendar.YEAR);
        int month = c.get(Calendar.MONTH);
        month++;
        int date = c.get(Calendar.DATE);
        int hour = c.get(Calendar.HOUR_OF_DAY);
        int minute = c.get(Calendar.MINUTE);
        int second = c.get(Calendar.SECOND);
        String StrMonth=String.valueOf(month);
        String StrDate=String.valueOf(date);
        if(month<10){
            StrMonth="0"+month;
        }
        if(date<10){
            StrDate="0"+date;
        }
        time=year+"-"+StrMonth+"-"+StrDate+" "+hour+":"+minute+":"+second;
        return time;
    }
}
