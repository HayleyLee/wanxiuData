package com.wanxiuData.service.Impl;

import com.wanxiuData.algorithm.TimeFormat;
import com.wanxiuData.dao.PbxMapper;
import com.wanxiuData.service.PBXService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.DecimalFormat;
import java.util.Calendar;

@Service
public class PBXServiceImpl implements PBXService {
    @Autowired
    private PbxMapper pbxMapper;
    @Override
    public Integer findAll() {
        Integer rsl = pbxMapper.findAll();
        if(rsl>0){
            return rsl;
        }
        return 0;
    }

    @Override
    public Integer findOutCall() {
        Integer rsl = pbxMapper.findOutCall();
        if(rsl>0){
            return rsl;
        }
        return 0;
    }

    @Override
    public Integer findInCall() {
        Integer rsl = pbxMapper.findInCall();
        if(rsl>0){
            return rsl;
        }
        return 0;
    }

    @Override
    public Integer findToDay() {
        TimeFormat timeFormat = new TimeFormat();
        String time = timeFormat.getToDayStrTime();//返回格式：20xx-xx-xx
        Integer outToDay = pbxMapper.findOutCallToDay(time + "%");
        Integer inToDay = pbxMapper.findInCallToDay(time + "%");
        return outToDay+inToDay;
    }

    @Override
    public Integer[] findByWorkID() {
        Integer[] workID = {1001,1002,1003,1004,2001,2003,3002,3005};
        Integer[] data = new Integer[workID.length];
        for(int i=0;i<workID.length;i++){
            data[i] = pbxMapper.findByWorkID(workID[i]);
        }
        return data;
    }

    @Override
    public String Percentage() {
        TimeFormat timeFormat = new TimeFormat();
        String time = timeFormat.getToDayStrTime();//返回格式：20xx-xx-xx
        String yesterDay = timeFormat.getYesterdayStrTime();
        Double toDayData = ((double)pbxMapper.findInCallToDay(time + "%"))+((double)pbxMapper.findOutCallToDay(time + "%"));
        Double yesterDayData = ((double)pbxMapper.findInCallToDay(yesterDay + "%"))+((double)pbxMapper.findOutCallToDay(yesterDay + "%"));
        DecimalFormat df=new DecimalFormat("0.00");//设置保留位数
        if(toDayData>0 && yesterDayData>0){
            return df.format(toDayData/yesterDayData*100);
        }
        if(toDayData==0){
            return "0";
        }
        if(yesterDayData==0){
            return df.format(toDayData*100);
        }
        return null;
    }

    @Override
    public Integer findOutCallToDay() {
        TimeFormat timeFormat = new TimeFormat();
        String time = timeFormat.getToDayStrTime(); //返回格式：20xx-xx-xx
        return pbxMapper.findOutCallToDay(time+"%");
    }

    @Override
    public Integer findInCallToDay() {
        TimeFormat timeFormat = new TimeFormat();
        String time = timeFormat.getToDayStrTime(); //返回格式：20xx-xx-xx
        return pbxMapper.findInCallToDay(time+"%");
    }

    @Override
    public Integer[] findCallByWorkIDToDay() {
        Integer[] workID = {1001,1002,1003,1004,2001,2003,3002,3005};
        Integer[] data = new Integer[workID.length];
        TimeFormat timeFormat = new TimeFormat();
        String StrTime = timeFormat.getToDayStrTime();
        for(int i=0;i<workID.length;i++){
            data[i] = pbxMapper.findCallByWorkIDToDay(workID[i],StrTime+"%");
        }
        return data;
    }

    @Override
    public Integer[] findByToDayHour() {
        TimeFormat timeFormat = new TimeFormat();
        String toDayStrTime = timeFormat.getToDayStrTime();
        Integer[] timeList = new Integer[6];
        Integer hour = 8;
        for(int i=0;i<timeList.length;i++){
            if(hour<10){
                timeList[i] = pbxMapper.findToDay(toDayStrTime + " 0" + hour + "%");
            }else {
                timeList[i] = pbxMapper.findToDay(toDayStrTime+" "+hour+"%");
            }
            hour+=2;
        }
        return timeList;
    }

    @Override
    public Object[] findAllByTime() {
        int startYear = 2016;
        int startMonth = 10;
        TimeFormat timeFormat = new TimeFormat();
        String toDayStrTime = timeFormat.getToDayStrTime();
        String[] nowTime = toDayStrTime.split("-");
        Integer[] rsl;
        String[] rslTime;
        //根据当前时间确定时间维度长度
        if(Integer.parseInt(nowTime[1])>6){
            rsl = new Integer[(Integer.parseInt(nowTime[0])-startYear)*2];
            rslTime = new String[(Integer.parseInt(nowTime[0])-startYear)*2];
        }
        else {
            rsl = new Integer[(Integer.parseInt(nowTime[0])-startYear)*2-1];
            rslTime = new String[(Integer.parseInt(nowTime[0])-startYear)*2-1];
        }
        //创建文字时间维度
        int strTimeCount=1;
        for(int i=0;i<rslTime.length;i++){
            if(i%2==0){
                rslTime[i] = startYear+strTimeCount+"上半年";
            }else{
                rslTime[i] = startYear+strTimeCount+"下半年";
                strTimeCount++;
            }
        }
        //创建数据时间维度
        rsl[0] = pbxMapper.findAllByTime(startYear+"-"+startMonth+"-01 00:00:00",startYear+"-12-31 23:59:59");
        int strDataCount=1;
        for(int i=0;i<rsl.length;i++){
            if(i%2==0){
                rsl[i] = pbxMapper.findAllByTime(startYear+strDataCount+"-01-01 00:00:00",startYear+strDataCount+"-06-30 23:59:59");
            }else{
                rsl[i] = pbxMapper.findAllByTime(startYear+strDataCount+"-07-01 00:00:00",startYear+strDataCount+"-12-31 23:59:59");
                strDataCount++;
            }
        }
        return new Object[]{rslTime,rsl};
    }

    @Override
    public Object[] countWeekCall() {
        Integer[] workID = {1001,1002,1003,1004,2001,2003,3002,3005};
        TimeFormat time = new TimeFormat();
        String[] timeArr = time.takeUWantTheDay(10);
        Integer[][] Data = new Integer[workID.length][timeArr.length];
        for(int i=0;i<workID.length;i++){
            for(int j=0;j<timeArr.length;j++){
                Data[i][j]=pbxMapper.findCallByWorkIDToDay(workID[i], timeArr[j]+"%");
            }
        }
        return new Object[]{timeArr,Data};
    }
}