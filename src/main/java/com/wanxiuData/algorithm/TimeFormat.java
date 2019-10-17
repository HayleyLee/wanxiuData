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
    public String[] takeUWantTheDay(int number){
        Calendar c = Calendar.getInstance();
        int year = c.get(Calendar.YEAR);
        int month = c.get(Calendar.MONTH)+1;
        int day = c.get(Calendar.DATE);
        String[] strTime = new String[number];
        for(int i=0;i<strTime.length;i++){
            if(day-i<1){
                if(--month<10){
                    if(--month==1 || --month==3 || --month==5 || --month==7 || --month==8 || --month==10 || --month==12){
                        strTime[i]=year+"-0"+(--month)+"-"+(31-i+day);
                    }
                    else {
                        strTime[i]=year+"-0"+(--month)+"-"+(30-i+day);
                    }
                }
                else {
                    if(--month==1 || --month==3 || --month==5 || --month==7 || --month==8 || --month==10 || --month==12){
                        strTime[i]=year+"-"+(--month)+"-"+(31-i+day);
                    }
                    else {
                        strTime[i]=year+"-"+(--month)+"-"+(30-i+day);
                    }
                }
            }
            else {
                if(month<10){
                    if(day-i>9) strTime[i] = year+"-0"+month+"-"+(day-i);
                    else strTime[i] = year+"-0"+month+"-0"+(day-i);
                }
                else {
                    if(day-i>9) strTime[i] = year+"-"+month+"-"+(day-i);
                    else strTime[i] = year+"-"+month+"-0"+(day-i);
                }
            }
        }
        return strTime;
    }
}
