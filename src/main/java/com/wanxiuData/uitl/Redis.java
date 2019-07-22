package com.wanxiuData.uitl;

import com.wanxiuData.algorithm.*;
import com.wanxiuData.dao.GovernmentMapper;
import com.wanxiuData.dao.LocationMapper;
import com.wanxiuData.dao.ServiceMapper;
import com.wanxiuData.entity.Area;
import com.wanxiuData.entity.GovernmentOrder;
import com.wanxiuData.entity.OldLocation;
import com.wanxiuData.entity.OldPeopleLocationInfo;
import com.wanxiuData.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import redis.clients.jedis.Jedis;

import java.sql.*;
import java.util.*;
import java.util.Date;

public class Redis {
    @Autowired
    private ServiceMapper serviceMapper;
    @Autowired
    private LocationMapper locationMapper;
    @Autowired
    private UserService oldPeopleService;
    @Autowired
    private GovernmentMapper governmentMapper;

    public void TimerByCountService(){
        Calendar calendar = Calendar.getInstance();
        calendar.get(Calendar.HOUR_OF_DAY);
        calendar.get(Calendar.MINUTE);
        calendar.get(Calendar.SECOND);
        Date time = calendar.getTime();         // 获取当前时分秒
        Timer timer = new Timer();
        timer.schedule(new TimerTask() {
            public void run() {
                System.out.println("开始执行redis缓存任务（地区服务量统计）...");
                countServiceByLocationRedisCache();
                System.out.println("执行redis缓存任务（地区服务量统计）完成");
                //System.out.println("执行redis缓存任务（地区服务量统计）完成...");
            }
        }, time, 1000 * 60 * 60);// 这里设定函数定时执行
    }
    public void TimerByOldLocation(){
        Calendar calendar = Calendar.getInstance();
        calendar.get(Calendar.HOUR_OF_DAY);
        calendar.get(Calendar.MINUTE);
        calendar.get(Calendar.SECOND);
        Date time = calendar.getTime();         // 获取当前时分秒
        Timer timer = new Timer();
        timer.schedule(new TimerTask() {
            public void run() {
                System.out.println("开始执行redis缓存任务（老人定位）...");
                findAllOldLocationRedisCache();
                System.out.println("执行redis缓存任务（老人定位）完成");
                //System.out.println("执行redis缓存任务（老人定位）完成...");
            }
        }, time, 1000 * 60 * 30);// 这里设定函数定时执行
    }
    public void TimerByFlushAllCache(){
        Calendar calendar = Calendar.getInstance();
        calendar.get(Calendar.HOUR_OF_DAY);
        calendar.get(Calendar.MINUTE);
        calendar.get(Calendar.SECOND);
        Date time = calendar.getTime();         // 获取当前时分秒
        Timer timer = new Timer();
        timer.schedule(new TimerTask() {
            public void run() {
                System.out.println("开始执行清空redis缓存任务...");
                fulshRedis();
                System.out.println("执行清空redis缓存任务完成...");
            }
        }, time, 1000 * 60 * 28);// 这里设定函数定时执行

    }
    public void CountAllOrderByGovernment(){
        Calendar calendar = Calendar.getInstance();
        calendar.get(Calendar.HOUR_OF_DAY);
        calendar.get(Calendar.MINUTE);
        calendar.get(Calendar.SECOND);
        Date time = calendar.getTime();         // 获取当前时分秒
        Timer timer = new Timer();
        timer.schedule(new TimerTask() {
            public void run() {
                System.out.println("开始执行redis缓存任务（统计政府购买服务订单数）...");
                countAllOrderByGovernment();
                System.out.println("执行redis缓存任务（统计政府购买服务订单数）完成");
                //System.out.println("执行redis缓存任务（统计政府购买服务订单数）完成...");
            }
        }, time, 1000 * 60 * 60 * 6);// 这里设定函数定时执行
    }
    public void Thread(){
        System.out.print("开始执行多线程任务...");
        new Thread01().start();
        new Thread02().start();
        new Thread03().start();
        new Thread04().start();
        new Thread05().start();
        new Thread06().start();
        new Thread07().start();
        new Thread08().start();
        new Thread09().start();
        new Thread10().start();
        new Thread11().start();
        new Thread12().start();
        new Thread13().start();
        new Thread14().start();
        new Thread15().start();
        new Thread16().start();
        new Thread17().start();
        new Thread18().start();
        new Thread19().start();
        new Thread20().start();
        new Thread21().start();
        new Thread22().start();
        new Thread23().start();
        new Thread24().start();
    }
    private void fulshRedis(){
        Jedis jedis = new Jedis("localhost");
        jedis.flushAll();
    }
    private void countServiceByLocationRedisCache(){
        //去数据库
        Jedis jedis = new Jedis("localhost");
        Integer wanxiu = serviceMapper.countServiceByLocation("77401");
        Integer changzhou = serviceMapper.countServiceByLocation("77402");
        Integer longxu = serviceMapper.countServiceByLocation("77403");
        //写入redis缓存
        jedis.set("locationWanxiu",wanxiu.toString());
        jedis.set("locationChangzhou",changzhou.toString());
        jedis.set("locationLongxu",longxu.toString());
        //回收资源
        jedis.close();
    }
    private void findAllOldLocationRedisCache(){
        //去数据库
        Jedis jedis = new Jedis("localhost");
        ArrayList<OldLocation> list = locationMapper.findAllOldLocation();
        ArrayList<OldPeopleLocationInfo> oldlist = oldPeopleService.findOldPeopleByEquipmentId(list);
        //写入redis缓存
        for(OldLocation o:list){
            jedis.lpush("LocationList".getBytes(),SerializeUtil.serialize(o));
        }
        for(OldPeopleLocationInfo o:oldlist){
            jedis.lpush("OldInfoList".getBytes(),SerializeUtil.serialize(o));
        }
        //回收资源
        jedis.close();
    }
    private void countAllOrderByGovernment(){
        //去数据库
        Jedis jedis = new Jedis("localhost");
        Integer orderCount = governmentMapper.AllOrderCount();
        //写入redis缓存
        jedis.set("AllOrderCountByGovernment",orderCount.toString());
        //回收资源
        jedis.close();
    }
    public void writeRedis(String key,ArrayList<GovernmentOrder> list) {
        Jedis jedis = new Jedis("localhost");
        for(GovernmentOrder g:list){
            jedis.lpush(key.getBytes(),SerializeUtil.serialize(g));
        }
    }
    public ArrayList<GovernmentOrder> readSQL(String strTime) {
        //查数据库
        final String DB_URL = "jdbc:mysql://124.227.230.85:3306/sq_ihomeweb?useUnicode=true&characterEncoding=UTF-8";
        // 数据库的用户名与密码，需要根据自己的设置
        final String USER = "root";
        final String PASS = "fdxcwr660312";
        ArrayList<GovernmentOrder> list = new ArrayList<GovernmentOrder>();
        String[] areaCodeArr = new Area().getAreaCodeArr();
        String rec = "'%康复%'";
        String life = "'%生活%'";
        Connection conn;
        Statement stmt1;
        Statement stmt2;
        Statement stmt3;
        for(String s:areaCodeArr){
            String location = "'"+s+"'";
            String time = "'"+strTime+"'";
            try {
                Class.forName("com.mysql.jdbc.Driver");
                System.out.println("连接数据库...");
                conn = DriverManager.getConnection(DB_URL, USER, PASS);
                stmt1 = conn.createStatement();
                stmt2 = conn.createStatement();
                stmt3 = conn.createStatement();
                String sql1 = "select count(*) from userordergenerate u,oldpeopleinfo o where o.cusname=u.consigneeName and o.hometownAreaCode like "+location+" and orderTime like "+time+" and orderStatus=4 and merchantName not like '%康复%' and merchantName not like '%生活%'";
                String sql2 = "select count(*) from userordergenerate u,oldpeopleinfo o where o.cusname=u.consigneeName and orderStatus=4 and o.hometownAreaCode like "+location+" and u.orderTime like "+time+" and u.merchantName like "+rec;
                String sql3 = "select count(*) from userordergenerate u,oldpeopleinfo o where o.cusname=u.consigneeName and orderStatus=4 and o.hometownAreaCode like "+location+" and u.orderTime like "+time+" and u.merchantName like "+life;
                int otherData=0;
                int lifeData=0;
                int recData=0;
                ResultSet rs = stmt1.executeQuery(sql1);
                while (rs.next()){
                    otherData = rs.getInt(1);
                }
                ResultSet rs2 = stmt2.executeQuery(sql2);
                while (rs2.next()){
                    recData = rs2.getInt(1);
                }
                ResultSet rs3 = stmt3.executeQuery(sql3);
                while (rs3.next()){
                    lifeData = rs3.getInt(1);
                }
                list.add(new GovernmentOrder(recData,lifeData,otherData));
                conn.close();
                stmt1.close();
                stmt2.close();
                stmt3.close();
            }catch (Exception e){
                System.out.println(e);
            }
        }
        return list;
    }
}