package com.wanxiuData.service.Impl;

import com.wanxiuData.algorithm.SortAlgorithm;
import com.wanxiuData.algorithm.TimeFormat;
import com.wanxiuData.algorithm.algorithmByTime;
import com.wanxiuData.dao.GovernmentMapper;
import com.wanxiuData.entity.Area;
import com.wanxiuData.entity.GovernmentOrder;
import com.wanxiuData.entity.GovernmentUser;
import com.wanxiuData.entity.ServerType;
import com.wanxiuData.service.GovernmentService;
import com.wanxiuData.uitl.SerializeUtil;
import com.wanxiuData.uitl.SomeEverthingTasks;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import redis.clients.jedis.Jedis;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class GovernmentServiceImpl implements GovernmentService {
    @Autowired
    private GovernmentMapper governmentMapper;

    private String wanxiuAreaCode="450403%";
    private String changzhouAreaCode="450425%";
    private String longxuAreaCode="450424%";
    private Integer normal=31;//正常服务
    private Integer wanxiuSubstitutes=28;//万秀后补
    private Integer changzhouSubstitutes0=24;//长洲后补
    private Integer changzhouSubstitutes1=25;//长洲后补
    private Integer longxuSubstitutes=52;//龙圩后补
    private Integer wanxiuDead=49;//万秀死亡
    private Integer changzhouDead=50;//长洲死亡
    private Integer longxuDead=51;//龙圩死亡

    @Override
    public Integer AllPeopleCount() {
        return governmentMapper.AllPeopleCount();
    }

    @Override
    public Integer AllOrderCount() {
        Jedis jedis = new Jedis("localhost");
        return Integer.parseInt(jedis.get("AllOrderCountByGovernment"));
    }

    @Override
    public Integer CountAllPhoneUser() {
        return governmentMapper.CountAllPhoneUser();
    }

    @Override
    public Integer CountAllRingUser() {
        return governmentMapper.CountAllRingUser();
    }

    @Override
    public Integer CountSumHomeUser() {
        return governmentMapper.CountSumHomeUser();
    }

    @Override
    public Integer CountSumHomeOrder() {
        return governmentMapper.CountSumHomeOrder();
    }

    @Override
    public ArrayList<Integer> CountSumHomeUserByLocation() {
        Integer wanxiu=37;
        Integer changzhou=35;
        Integer longxu=47;
        ArrayList<Integer> list = new ArrayList<Integer>();
        Integer wanxiuData = governmentMapper.CountSumHomeUserByLocation(wanxiu);
        Integer changzhouData = governmentMapper.CountSumHomeUserByLocation(changzhou);
        Integer longxuData = governmentMapper.CountSumHomeUserByLocation(longxu);
        list.add(wanxiuData);
        list.add(changzhouData);
        list.add(longxuData);
        return list;
    }

    @Override
    public List<ServerType> CountSumHomeOrderByMerchants() {
        Integer integer0 = governmentMapper.CountSumHomeOrderByMerchants("%生活%");
        Integer integer1 = governmentMapper.CountSumHomeOrderByMerchants("%康复%");
        Integer integer2 = governmentMapper.CountSumHomeOrderByMerchants("%餐%");
        Integer integer3 = governmentMapper.CountSumHomeOrderByMerchants("%线上%");
        Integer integer4 = governmentMapper.CountSumHomeOrderByMerchants("%针%");
        Integer integer5 = governmentMapper.CountSumHomeOrderByMerchants("%心理%");
        Integer integer6 = governmentMapper.CountSumHomeOrderByMerchants("%手机%");
        Integer integer7 = governmentMapper.CountSumHomeOrderByNoMerchants();
        HashMap<String, Integer> map = new HashMap<String, Integer>();
        map.put("生活照料",integer0);
        map.put("康复护理",integer1);
        map.put("快餐外卖",integer2);
        map.put("线上服务",integer3);
        map.put("电针理疗",integer4);
        map.put("心理慰籍",integer5);
        map.put("手机定位",integer6);
        map.put("其他",integer7);
        SortAlgorithm sortAlgorithm = new SortAlgorithm();
        List<Map.Entry<String, Integer>> templist = sortAlgorithm.HashMapSort(map);
        ArrayList<ServerType> finalList = new ArrayList<ServerType>();
        for (Map.Entry<String, Integer> aTemplist : templist) {
            finalList.add(new ServerType(aTemplist.getKey(), aTemplist.getValue()));
        }
        return finalList;
    }

    @Override
    public List<GovernmentUser> CountGovernmentUser() {
        ArrayList<GovernmentUser> list = new ArrayList<GovernmentUser>();
        //正常
        Integer wanxiu = governmentMapper.CountNormalGovernmentUser(normal, wanxiuAreaCode);
        Integer changzhou = governmentMapper.CountNormalGovernmentChangzhouUser(changzhouAreaCode);
        Integer longxu = governmentMapper.CountNormalGovernmentUser(normal, longxuAreaCode);
        //后补
        Integer wanxiuSubstitutesData = governmentMapper.CountNoNormalGovernmentUser(wanxiuSubstitutes);
        Integer changzhouSubstitutesData = governmentMapper.CountNoNormalGovernmentUser(changzhouSubstitutes0)+governmentMapper.CountNoNormalGovernmentUser(changzhouSubstitutes1);
        Integer longxuSubstitutesData = governmentMapper.CountNoNormalGovernmentUser(longxuSubstitutes);
        //死亡
        Integer wanxiuDeadData = governmentMapper.CountNoNormalGovernmentUser(wanxiuDead);
        Integer changzhouDeadData = governmentMapper.CountNoNormalGovernmentUser(changzhouDead);
        Integer longxuDeadData = governmentMapper.CountNoNormalGovernmentUser(longxuDead);

        list.add(new GovernmentUser(wanxiu,wanxiuSubstitutesData,wanxiuDeadData));
        list.add(new GovernmentUser(changzhou,changzhouSubstitutesData,changzhouDeadData));
        list.add(new GovernmentUser(longxu,longxuSubstitutesData,longxuDeadData));
        return list;
    }

    @Override
    public List<GovernmentOrder> CountGovernmentOrderByLocationAndMerchantName() {
        ArrayList<GovernmentOrder> list = new ArrayList<GovernmentOrder>();
        //万秀
        Integer wanxiuLife = governmentMapper.CountGovernmentOrderByLocationAndMerchantName(wanxiuAreaCode, "%生活%");
        Integer wanxiuRecovery = governmentMapper.CountGovernmentOrderByLocationAndMerchantName(wanxiuAreaCode, "%康复%");
        Integer wanxiuOther = governmentMapper.CountGovernmentOrderByLocation(wanxiuAreaCode);
        //长洲
        Integer changzhouLife = governmentMapper.CountGovernmentOrderByLocationAndMerchantName(changzhouAreaCode, "%生活%");
        Integer changzhouRecovery = governmentMapper.CountGovernmentOrderByLocationAndMerchantName(changzhouAreaCode, "%康复%");
        Integer changzhouOther = governmentMapper.CountGovernmentOrderByLocation(changzhouAreaCode);
        //龙圩
        Integer longxuLife = governmentMapper.CountGovernmentOrderByLocationAndMerchantName(longxuAreaCode, "%生活%");
        Integer longxuRecovery = governmentMapper.CountGovernmentOrderByLocationAndMerchantName(longxuAreaCode, "%康复%");
        Integer longxuOther = governmentMapper.CountGovernmentOrderByLocation(longxuAreaCode);
        list.add(new GovernmentOrder(wanxiuRecovery,wanxiuLife,wanxiuOther));
        list.add(new GovernmentOrder(changzhouRecovery,changzhouLife,changzhouOther));
        list.add(new GovernmentOrder(longxuRecovery,longxuLife,longxuOther));
        return list;
    }

    @Override
    public List<Object[]> OrderAnalysis() {
        ArrayList<Object[]> finalList = new ArrayList<Object[]>();
        for(int i=0;i<24;i++){
            TimeFormat timeFormat = new TimeFormat();
            String strTime;
            Integer SysYear = timeFormat.getToDayYear();
            Integer SysMonth = timeFormat.getToDayMonth()-i;
            Integer[] test = new algorithmByTime().test(SysYear, SysMonth);
            Integer SystemYear = test[0];
            Integer SystemMonth = test[1];
            if(SystemMonth>9){
                strTime=SystemYear+"-"+SystemMonth+"%";
            }else {
                strTime=SystemYear+"-0"+SystemMonth+"%";
            }
            SomeEverthingTasks tasks = new SomeEverthingTasks();
            ArrayList<GovernmentOrder> list = tasks.UnserializeByOrderAnalysis(strTime);
            GovernmentOrder[] arr = new GovernmentOrder[list.size()];
            for(int j=0;j<list.size();j++){
                arr[j]=list.get(j);
            }
            finalList.add(arr);
        }
        String[] cityArr = new Area().getAreaArr();
        finalList.add(cityArr);
        Double[] timeLine = new Double[24];
        for(int i=0;i<24;i++){
            TimeFormat timeFormat = new TimeFormat();
            String strTime;
            Integer SysYear = timeFormat.getToDayYear();
            Integer SysMonth = timeFormat.getToDayMonth()-i;
            Integer[] test = new algorithmByTime().test(SysYear, SysMonth);
            Integer SystemYear = test[0];
            Integer SystemMonth = test[1];
            if(SystemMonth>9){
                strTime=SystemYear+"."+SystemMonth;
            }else {
                strTime=SystemYear+".0"+SystemMonth;
            }
            timeLine[i]=Double.parseDouble(strTime);
        }
        finalList.add(timeLine);
        return finalList;
    }
}
