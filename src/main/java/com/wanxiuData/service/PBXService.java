package com.wanxiuData.service;

public interface PBXService {
    Integer findAll();
    Integer findOutCall();
    Integer findInCall();
    Integer findToDay();
    Integer[] findByWorkID();
    String Percentage();
    Integer findOutCallToDay();
    Integer findInCallToDay();
    Integer[] findCallByWorkIDToDay();
    Integer[] findByToDayHour();
    Object[] findAllByTime();
    Object[] countWeekCall();
}
