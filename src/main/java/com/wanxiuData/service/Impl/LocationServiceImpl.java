package com.wanxiuData.service.Impl;

import com.wanxiuData.entity.OldLocation;
import com.wanxiuData.entity.OldPeopleLocationInfo;
import com.wanxiuData.service.LocationService;
import com.wanxiuData.uitl.SerializeUtil;
import org.springframework.stereotype.Service;
import redis.clients.jedis.Jedis;

import java.util.ArrayList;
import java.util.List;

@Service
public class LocationServiceImpl implements LocationService {
    @Override
    public Object[] findAllOldLocation() {
        //老人定位数据
        Jedis jedis = new Jedis("localhost");
        List<byte[]> locationData = jedis.lrange("LocationList".getBytes(), 0, -1);
        ArrayList<String[]> oldLocation = new ArrayList<String[]>();
        ArrayList<OldLocation> tempLocationList = new ArrayList<OldLocation>();
        ArrayList<String> OldInfoList = new ArrayList<String>();
        for(byte[] b:locationData){
            Object obj = SerializeUtil.unserialize(b);
            if(obj!=null){
                String[] arr = new String[2];
                OldLocation old = (OldLocation) obj;
                tempLocationList.add(old);
                arr[0]=old.getLongitude();
                arr[1]=old.getLatitude();
                oldLocation.add(arr);
            }
        }
        //老人信息
        List<byte[]> oldInfoData = jedis.lrange("OldInfoList".getBytes(), 0, -1);
        ArrayList<OldPeopleLocationInfo> oldList = new ArrayList<OldPeopleLocationInfo>();
        for(byte[] b:oldInfoData){
            Object obj = SerializeUtil.unserialize(b);
            if(obj!=null){
                OldPeopleLocationInfo old = (OldPeopleLocationInfo) obj;
                oldList.add(old);
            }
        }
        try{
            int x=0;
            for(OldPeopleLocationInfo old:oldList){
                OldInfoList.add("姓名："+old.getCusname()+"<br/>性别："+old.getSex()+"<br/>联系电话："+old.getPhone()+"<br/>家庭住址："+old.getResidenceAddress()+"<br/>当前位置："+tempLocationList.get(x).getAddress()+"<br/>设备号："+tempLocationList.get(x).getImei()+"<br/>最后一次定位时间："+tempLocationList.get(x).getCreatetime());
                x++;
            }
        }catch (Exception e){
        }
        Object[] finalData = new Object[2];
        finalData[0] = OldInfoList;
        finalData[1] = oldLocation;
        return finalData;
    }
}
