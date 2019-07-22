package com.wanxiuData.algorithm;

import com.wanxiuData.entity.GovernmentOrder;
import com.wanxiuData.uitl.Redis;

import java.util.ArrayList;

public class Thread01 extends Thread{
    public void run(){
        Redis redis = new Redis();
        TimeFormat timeFormat = new TimeFormat();
        String strTime;
        Integer SysYear = timeFormat.getToDayYear();
        Integer SysMonth = timeFormat.getToDayMonth()-23;
        Integer[] test = new algorithmByTime().test(SysYear, SysMonth);
        Integer SystemYear = test[0];
        Integer SystemMonth = test[1];
        if(SystemMonth>9){
            strTime=SystemYear+"-"+SystemMonth+"%";
        }else {
            strTime=SystemYear+"-0"+SystemMonth+"%";
        }
        //查数据库
        ArrayList<GovernmentOrder> list = redis.readSQL(strTime);
        //写入redis缓存
        redis.writeRedis(strTime,list);
        System.out.println("线程01执行完毕");
    }
}
