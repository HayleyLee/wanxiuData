package com.wanxiuData.service.Impl;

import com.wanxiuData.algorithm.MD5;
import com.wanxiuData.algorithm.TimeFormat;
import com.wanxiuData.dao.UserMapper;
import com.wanxiuData.entity.OldLocation;
import com.wanxiuData.entity.OldPeople;
import com.wanxiuData.entity.OldPeopleLocationInfo;
import com.wanxiuData.entity.User;
import com.wanxiuData.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;
    @Override
    public HashMap<String, Integer> findOldPeopleIDcardNumber() {
        List<String> IDcardList = userMapper.findOldPeopleIDcardNumber();
        HashMap<String, Integer> hashMap = new HashMap<String, Integer>();
        Calendar c = Calendar.getInstance();
        int year = c.get(Calendar.YEAR);
        for(String str:IDcardList){
            //截取身份证上的生日信息
            //try防止空指针
            try{
                Integer birthYear = Integer.parseInt(str.substring(6, 10));
                int age = year-birthYear;
                if(age>=60&&age<=65){
                    if(hashMap.containsKey("60-65")){
                        Integer value = hashMap.get("60-65");
                        value++;
                        hashMap.put("60-65",value);
                    }
                    else{
                        hashMap.put("60-65",1);
                    }
                }
                if(age>65&&age<=70){
                    if(hashMap.containsKey("66-70")){
                        Integer value = hashMap.get("66-70");
                        value++;
                        hashMap.put("66-70",value);
                    }else {
                        hashMap.put("66-70",1);
                    }
                }
                if(age>70&&age<=75){
                    if(hashMap.containsKey("71-75")){
                        Integer value = hashMap.get("71-75");
                        value++;
                        hashMap.put("71-75",value);
                    }else {
                        hashMap.put("71-75",1);
                    }
                }
                if(age>75&&age<=80){
                    if(hashMap.containsKey("76-80")){
                        Integer value = hashMap.get("76-80");
                        value++;
                        hashMap.put("76-80",value);
                    }else {
                        hashMap.put("76-80",1);
                    }
                }
                if(age>80&&age<=85){
                    if(hashMap.containsKey("81-85")){
                        Integer value = hashMap.get("81-85");
                        value++;
                        hashMap.put("81-85",value);
                    }else {
                        hashMap.put("81-85",1);
                    }
                }
                if(age>85&&age<=90){
                    if(hashMap.containsKey("86-90")){
                        Integer value = hashMap.get("86-90");
                        value++;
                        hashMap.put("86-90",value);
                    }else {
                        hashMap.put("86-90",1);
                    }
                }
                if(age>90&&age<=95){
                    if(hashMap.containsKey("91-95")){
                        Integer value = hashMap.get("91-95");
                        value++;
                        hashMap.put("91-95",value);
                    }else {
                        hashMap.put("91-95",1);
                    }
                }
                if(age>95&&age<=100){
                    if(hashMap.containsKey("96-100")){
                        Integer value = hashMap.get("96-100");
                        value++;
                        hashMap.put("96-100",value);
                    }else {
                        hashMap.put("96-100",1);
                    }
                }
                if(age>100){
                    if(hashMap.containsKey("100+")){
                        Integer value = hashMap.get("100+");
                        value++;
                        hashMap.put("100+",value);
                    }else {
                        hashMap.put("100+",1);
                    }
                }
            }catch (Exception e){
            }
        }
        return hashMap;
    }

    @Override
    public Integer countOldByLocation(Integer location) {
        if(location==1){
            String Location = "077401%";
            return userMapper.countOldByWuzhou(Location);
        }else if(location==2){
            String Location = "077402%";
            return userMapper.countOldByWuzhou(Location);
        }else if(location==3){
            String Location = "077403%";
            return userMapper.countOldByWuzhou(Location);
        }else if(location==0){
            return userMapper.countOldByNoWuzhou();
        }else {
            return 0;
        }
    }

    @Override
    public Integer countDisability() {
        return userMapper.countDisability(35)+ userMapper.countDisability(37)+ userMapper.countDisability(47);
    }

    @Override
    public ArrayList<Integer> CountAllOldByLocation() {
        Integer wanxiu = userMapper.countOldByWuzhou("077401%");
        Integer changzhou = userMapper.countOldByWuzhou("077402%");
        Integer longxu = userMapper.countOldByWuzhou("077403%");
        Integer zhoubian = userMapper.countOldByNoWuzhou();
        ArrayList<Integer> finalData = new ArrayList<Integer>();
        finalData.add(wanxiu);
        finalData.add(changzhou);
        finalData.add(longxu);
        finalData.add(zhoubian);
        return finalData;
    }

    @Override
    public ArrayList<Integer> CountAllDisability() {
        int count0_9=0;
        int count10_19=0;
        int count20_29=0;
        int count30_39=0;
        int count40_49=0;
        int count50_59=0;
        int count60=0;
        TimeFormat timeFormat = new TimeFormat();
        Integer year = timeFormat.getToDayYear();
        List<OldPeople> oldPeople = userMapper.countAllDisability();
        ArrayList<Integer> ageList = new ArrayList<Integer>();
        for(OldPeople old : oldPeople){
            try{
                if(old.getBirthDate()==null){
                    continue;
                }
            }catch (Exception e) {

            }
            String[] birthDate = old.getBirthDate().split("-");
            //0-9岁
            if(year-Integer.parseInt(birthDate[0])<10){
                count0_9++;
            }
            //10-19岁
            if(year-Integer.parseInt(birthDate[0])<19 && year-Integer.parseInt(birthDate[0])>=10){
                count10_19++;
            }
            //20-29岁
            if(year-Integer.parseInt(birthDate[0])<29 && year-Integer.parseInt(birthDate[0])>=20){
                count20_29++;
            }
            //30-39岁
            if(year-Integer.parseInt(birthDate[0])<39 && year-Integer.parseInt(birthDate[0])>=30){
                count30_39++;
            }
            //40-49岁
            if(year-Integer.parseInt(birthDate[0])<49 && year-Integer.parseInt(birthDate[0])>=40){
                count40_49++;
            }
            //50-59岁
            if(year-Integer.parseInt(birthDate[0])<59 && year-Integer.parseInt(birthDate[0])>=50){
                count50_59++;
            }
            //60+岁
            if(year-Integer.parseInt(birthDate[0])>=60){
                count60++;
            }
        }
        ageList.add(count0_9);
        ageList.add(count10_19);
        ageList.add(count20_29);
        ageList.add(count30_39);
        ageList.add(count40_49);
        ageList.add(count50_59);
        ageList.add(count60);
        return ageList;
    }

    @Override
    public ArrayList<Integer> CountDisabilityByCountry() {
        List<OldPeople> disabilityList = userMapper.countAllDisability();
        int wanxiu=0;
        int changzhou=0;
        int longxu=0;
        int zhoubian=0;
        ArrayList<Integer> list = new ArrayList<Integer>();
        for(int i=0;i<disabilityList.size();i++){
            if(disabilityList.get(i).getCid().contains("077401")){
                wanxiu++;
            }
            else if(disabilityList.get(i).getCid().contains("077402")){
                changzhou++;
            }
            else if(disabilityList.get(i).getCid().contains("077403")){
                longxu++;
            }
            else{
                zhoubian++;
            }
        }
        list.add(wanxiu);
        list.add(changzhou);
        list.add(longxu);
        list.add(zhoubian);
        return list;
    }

    @Override
    public ArrayList<Integer> CountGovernmentService() {
        return userMapper.countGovernmentService();
    }

    @Override
    public Integer[] Disease() {
        String[] diseaseList=new String[]{"高血压","心脏","前列腺","糖尿","肠胃","精神病","皮肤","类风湿","中风","帕金逊","老人痴呆","膀胱","气管","眼疾","腰椎","肾","听视力","肿瘤"};
        Integer[] countList = new Integer[diseaseList.length];
        for(int i=0;i<diseaseList.length;i++){
            if(diseaseList[i].equals("中风")){
                ArrayList<Integer> temp = userMapper.Disease("%脑卒中%", "%脑卒%", "%"+diseaseList[i]+"%");
                countList[i]=temp.get(0)+temp.get(1)+temp.get(2);
            }
            else if(diseaseList[i].equals("眼疾")){
                ArrayList<Integer> temp = userMapper.Disease("%结膜%", "%白内障%", "%青光%");
                countList[i]=temp.get(0)+temp.get(1)+temp.get(2);
            }
            else if(diseaseList[i].equals("听视力")){
                ArrayList<Integer> temp = userMapper.Disease("%听%", "%视%", "%失明%");
                countList[i]=temp.get(0)+temp.get(1)+temp.get(2);
            }
            else {
                countList[i]=userMapper.Disease("%"+diseaseList[i]+"%", null, null).get(0);
            }
        }
        return countList;
    }

    @Override
    public ArrayList<ArrayList<Integer>> Disability() {
        ArrayList<Integer> body = userMapper.Disability("%肢体一级%", "%肢体二级%", "%肢体三级%", "%肢体四级%");
        ArrayList<Integer> vision = userMapper.Disability("%视力一级%", "%视力二级%", "%视力三级%", "%视力四级%");
        ArrayList<Integer> intellect = userMapper.Disability("%智力一级%", "%智力二级%", "%智力三级%", "%智力四级%");
        ArrayList<Integer> spirit = userMapper.Disability("%精神一级%", "%精神二级%", "%精神三级%", "%精神四级%");
        ArrayList<Integer> speech = userMapper.Disability("%言语一级%", "%言语二级%", "%言语三级%", "%言语四级%");
        ArrayList<Integer> hearing = userMapper.Disability("%听力一级%", "%听力二级%", "%听力三级%", "%听力四级%");
        ArrayList<ArrayList<Integer>> list = new ArrayList<ArrayList<Integer>>();
        list.add(body);
        list.add(vision);
        list.add(intellect);
        list.add(spirit);
        list.add(speech);
        list.add(hearing);
        return list;
    }

    @Override
    public ArrayList<OldPeopleLocationInfo> findOldPeopleByEquipmentId(List<OldLocation> list) {
        ArrayList<OldPeopleLocationInfo> oldList = new ArrayList<OldPeopleLocationInfo>();
        for(int i=0;i<list.size();i++){
            OldPeopleLocationInfo old = userMapper.findOldPeopleByEquipmentId(list.get(i).getImei());
            if(null==old){
                continue;
            }
            oldList.add(old);
        }
        return oldList;
    }

    @Override
    public User login(String name, String password) {
        if(name!=null&&password!=null){
            MD5 md5 = new MD5();
            String MD5password = md5.getMD5(password);
            return userMapper.login(name, MD5password);
        }
        return null;
    }
}
