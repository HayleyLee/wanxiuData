package com.wanxiuData.dao;

import com.wanxiuData.entity.IDentity;
import com.wanxiuData.entity.NursingLocation;
import com.wanxiuData.entity.Order;
import com.wanxiuData.entity.OrderImg;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public interface ServiceMapper {
    Integer ServiceTypeCount(@Param(value = "count") Integer count,@Param(value = "time") Integer time);
    Integer findToDayOrder(@Param(value = "time") String time);
    List<IDentity> CountTOPService();
    String findMerchantByMerchantId(@Param(value = "merID")Integer merID);
    Integer countServiceByLocation(@Param(value = "location")String location);
    Integer CountServiceType(@Param(value = "type")Integer type);
    ArrayList<NursingLocation> findAllNursingLocation();
    List<Order> findOrderByNursingUserID(@Param(value = "userId")Integer userId);
    List<Order> findAllOrderByNursingUserID(@Param(value = "userId")Integer userId);
    Integer checkUserOrder(@Param(value = "userId")Integer userId);
    String findNursingHead(@Param(value = "userId")Integer userId);
    List<OrderImg> findImgByOrder(@Param(value = "orderId")Integer orderId);
}