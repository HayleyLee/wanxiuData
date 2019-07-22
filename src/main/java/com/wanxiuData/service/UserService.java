package com.wanxiuData.service;

import com.wanxiuData.entity.OldLocation;
import com.wanxiuData.entity.OldPeopleLocationInfo;
import com.wanxiuData.entity.User;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public interface UserService {
    HashMap<String,Integer> findOldPeopleIDcardNumber();
    Integer countOldByLocation(Integer location);
    Integer countDisability();
    ArrayList<Integer> CountAllOldByLocation();
    ArrayList<Integer> CountAllDisability();
    ArrayList<Integer> CountDisabilityByCountry();
    ArrayList<Integer> CountGovernmentService();
    Integer[] Disease();
    ArrayList<ArrayList<Integer>> Disability();
    ArrayList<OldPeopleLocationInfo> findOldPeopleByEquipmentId(List<OldLocation> list);
    User login(String name, String password);
}
