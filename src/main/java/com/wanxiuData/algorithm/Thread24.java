package com.wanxiuData.algorithm;

import com.wanxiuData.entity.GovernmentOrder;
import com.wanxiuData.uitl.Redis;

import java.util.ArrayList;

public class Thread24 extends Thread{
    public void run(){
        Redis redis = new Redis();
        TimeFormat timeFormat = new TimeFormat();
        String strTime;
        Integer SystemYear = timeFormat.getToDayYear();
        Integer SystemMonth = timeFormat.getToDayMonth();
        if(SystemMonth>9){
            strTime=SystemYear+"-"+SystemMonth+"%";
        }else {
            strTime=SystemYear+"-0"+SystemMonth+"%";
        }
        //查数据库
        ArrayList<GovernmentOrder> list = new Redis().readSQL(strTime);
        //写入redis缓存
        redis.writeRedis(strTime,list);
        System.out.println("线程24执行完毕");
    }
}
