package com.wanxiuData.service;

import com.wanxiuData.entity.Order;
import com.wanxiuData.entity.OrderImg;
import net.sf.json.JSONArray;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public interface ServiceService {
    JSONArray ServiceTypeCount();
    Integer findToDayOrder();
    List<Map.Entry<Integer, Integer>> CountTOPService();
    List<Integer> countServiceByLocation();
    JSONArray CountServiceType();
    ArrayList<Integer> findAllNursingLocation();
    List<Order> findOrderByUserId(Integer userId);
    String findNursingHead(Integer userId);
    List<OrderImg> findImgByOrder(Integer orderId);
}
