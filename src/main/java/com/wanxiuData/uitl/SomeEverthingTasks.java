package com.wanxiuData.uitl;

import com.wanxiuData.entity.GovernmentOrder;
import redis.clients.jedis.Jedis;

import java.util.ArrayList;
import java.util.List;

public class SomeEverthingTasks {
    public ArrayList<GovernmentOrder> UnserializeByOrderAnalysis(String strTime){
        Jedis jedis = new Jedis("localhost");
        ArrayList<GovernmentOrder> list = new ArrayList<GovernmentOrder>();
        List<byte[]> bytes = jedis.lrange(strTime.getBytes(), 0, -1);
        for(byte[] b:bytes){
            Object obj = SerializeUtil.unserialize(b);
            if(obj!=null){
                GovernmentOrder g = (GovernmentOrder) obj;
                list.add(g);
            }
        }
        return list;
    }
}
