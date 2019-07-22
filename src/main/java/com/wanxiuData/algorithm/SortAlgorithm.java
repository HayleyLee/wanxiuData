package com.wanxiuData.algorithm;

import com.wanxiuData.entity.IDentity;

import java.util.*;

/**@author QuinnLee 李清华
 * @time 2018.11.5
 * @version V1.0.0.0
 * @ReadMe 排序算法，统计数据库中订单量最多的TOP10商家
 */
public class SortAlgorithm {
    public List<Map.Entry<Integer,Integer>> SortAlogrithm(List<IDentity> SQLlist){
        for(IDentity iDentity:SQLlist){
            iDentity.setCount(1);
        }
        HashMap<Integer,Integer> tempMap = new HashMap<Integer, Integer>();
        for (IDentity iDentity : SQLlist) {
            int key = iDentity.getMerchantId();
            if(tempMap.containsKey(key)){
                Integer value = tempMap.get(key);
                value++;
                tempMap.put(key, value);
            }else{
                tempMap.put(key, 1);
            }
        }
        // 降序排序
        List<Map.Entry<Integer, Integer>> list = new ArrayList<Map.Entry<Integer, Integer>>(tempMap.entrySet());
        Collections.sort(list, new Comparator<Map.Entry<Integer, Integer>>() {
            public int compare(Map.Entry<Integer, Integer> o1, Map.Entry<Integer, Integer> o2) {
                return -o1.getValue().compareTo(o2.getValue());
            }
        });
        return list;
    }
    public List<Map.Entry<String, Integer>> HashMapSort(HashMap<String,Integer> map){
        List<Map.Entry<String, Integer>> list_Data = new ArrayList<Map.Entry<String, Integer>>(map.entrySet());
        Collections.sort(list_Data, new Comparator<Map.Entry<String, Integer>>() {
            @Override
            public int compare(Map.Entry<String, Integer> o1, Map.Entry<String, Integer> o2) {
                return o2.getValue().compareTo(o1.getValue());
            }
        });
        return list_Data;
    }
}