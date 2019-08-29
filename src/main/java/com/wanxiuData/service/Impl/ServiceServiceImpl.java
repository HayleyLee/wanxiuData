package com.wanxiuData.service.Impl;

import com.wanxiuData.algorithm.CreateFileUtil;
import com.wanxiuData.algorithm.SortAlgorithm;
import com.wanxiuData.dao.ServiceMapper;
import com.wanxiuData.dao.UserMapper;
import com.wanxiuData.entity.IDentity;
import com.wanxiuData.entity.NursingLocation;
import com.wanxiuData.entity.Order;
import com.wanxiuData.entity.OrderImg;
import com.wanxiuData.service.ServiceService;
import net.sf.json.JSONArray;
import org.aspectj.weaver.ast.Or;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import redis.clients.jedis.Jedis;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Map;

@Service
public class ServiceServiceImpl implements ServiceService {
    @Autowired
    private ServiceMapper serviceMapper;

    @Override
    public JSONArray ServiceTypeCount() {
        Integer life=59;
        Integer healthy=60;
        Integer out_food=23;
        Integer CommunityMedical=17;
        Integer CommunityService=58;
        Integer MedicalServiceTeam=55;

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
        time=year+StrMonth+StrDate;
        Integer intTime = Integer.parseInt(time);
        Integer LifeCount = serviceMapper.ServiceTypeCount(life,intTime);
        Integer HealthyCount = serviceMapper.ServiceTypeCount(healthy,intTime);
        Integer OutFoodCount = serviceMapper.ServiceTypeCount(out_food,intTime);
        Integer CommunityMedicalCount = serviceMapper.ServiceTypeCount(CommunityMedical,intTime);
        Integer CommunityServiceCount = serviceMapper.ServiceTypeCount(CommunityService,intTime);
        Integer MedicalServiceTeamCount = serviceMapper.ServiceTypeCount(MedicalServiceTeam,intTime);
        String temp = "[{value:"+LifeCount+", name:'生活照料'},{value:"+HealthyCount+", name:'康复护理'},{value:"+OutFoodCount+", name:'快餐配送'},{value:"+CommunityMedicalCount+", name:'社区医疗'},{value:"+CommunityServiceCount+", name:'社区服务'},{value:"+MedicalServiceTeamCount+", name:'医疗服务队'}]";
        JSONArray jsonArray = JSONArray.fromObject(temp);
        if(jsonArray.size()>0){
            for(int i=0;i<jsonArray.size();i++){
                jsonArray.getJSONObject(i);
            }
        }
        return jsonArray;
    }

    @Override
    public Integer findToDayOrder() {
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
        return serviceMapper.findToDayOrder(time + "%");
    }

    @Override
    public List<Map.Entry<Integer, Integer>> CountTOPService() {
        List<IDentity> list = serviceMapper.CountTOPService();
        //声明排序算法
        SortAlgorithm algorithm = new SortAlgorithm();
        //调用算法进行排序
        List<Map.Entry<Integer, Integer>> tempList = algorithm.SortAlogrithm(list);
        //截取TOP5 list
        ArrayList<Map.Entry<Integer, Integer>> IDlList = new ArrayList<Map.Entry<Integer, Integer>>();
        for(int i=0;i<5;i++){
            IDlList.add(tempList.get(i));
        }
        return IDlList;
    }

    @Override
    public List<Integer> countServiceByLocation() {
        Jedis jedis = new Jedis("localhost");
        ArrayList<Integer> list = new ArrayList<Integer>();
        String locationWanxiu = jedis.get("locationWanxiu");
        String locationChangzhou = jedis.get("locationChangzhou");
        String locationLongxu = jedis.get("locationLongxu");
        int wanxiu = Integer.parseInt(locationWanxiu);
        int changzhou = Integer.parseInt(locationChangzhou);
        int longxu = Integer.parseInt(locationLongxu);
        list.add(wanxiu);
        list.add(changzhou);
        list.add(longxu);
        return list;
    }

    @Override
    public JSONArray CountServiceType() {
        Integer life=59;
        Integer healthy=60;
        Integer out_food=23;
        Integer CommunityMedical=17;
        Integer CommunityService=58;
        Integer MedicalServiceTeam=55;
        Integer Countlife = serviceMapper.CountServiceType(life);
        Integer Counthealthy = serviceMapper.CountServiceType(healthy);
        Integer Countout_food = serviceMapper.CountServiceType(out_food);
        Integer CountCommunityMedical = serviceMapper.CountServiceType(CommunityMedical);
        Integer CountCommunityService = serviceMapper.CountServiceType(CommunityService);
        Integer CountMedicalServiceTeam = serviceMapper.CountServiceType(MedicalServiceTeam);
        String temp = "[{value:"+Countlife+", name:'生活照料'},{value:"+Counthealthy+", name:'康复护理'},{value:"+Countout_food+", name:'快餐配送'},{value:"+CountCommunityMedical+", name:'社区医疗'},{value:"+CountCommunityService+", name:'社区服务'},{value:"+CountMedicalServiceTeam+", name:'医疗服务队'}]";
        return JSONArray.fromObject(temp);
    }

    @Override
    public ArrayList<Integer> findAllNursingLocation()  {
        ArrayList<NursingLocation> allNursingLocation = serviceMapper.findAllNursingLocation(); //最新护工定位信息
        NursingLocation[] nursingLocationsArray = new NursingLocation[allNursingLocation.size()];
        NursingLocation[] nursingLocations = allNursingLocation.toArray(nursingLocationsArray);
        JSONArray jsonArray = JSONArray.fromObject(nursingLocations);
        String Str = jsonArray.toString();
        ArrayList<Integer> orderList = new ArrayList<Integer>();
        for(int i=0;i<allNursingLocation.size();i++){
            orderList.add(serviceMapper.checkUserOrder(allNursingLocation.get(i).getUserId()));
        }
        if(CreateFileUtil.createJsonFile(Str, "/usr/local/apache-tomcat-7.0.77/webapps/wzData/static", "nursingLocations")){
            return orderList;
        }else {
            return null;
        }
    }

    @Override
    public List<Order> findOrderByUserId(Integer userId) {
        if(userId>0){
            return serviceMapper.findOrderByNursingUserID(userId);
        }else {
            return null;
        }
    }

    @Override
    public String findNursingHead(Integer userId) {
        if (userId>0){
            return serviceMapper.findNursingHead(userId);
        }else {
            return null;
        }
    }

    @Override
    public List<OrderImg> findImgByOrder(Integer userId) {
        if (userId>0){
            Order order = new Order();
            List<Order> orderList = serviceMapper.findAllOrderByNursingUserID(userId);
            for(int i=0;i<orderList.size();i++){
                if(orderList.get(i).getOrderStatus()==4){
                    order = orderList.get(i);
                    break;
                }
            }
            return serviceMapper.findImgByOrder(order.getOrderId());
        }else {
            return null;
        }
    }
}