package com.wanxiuData.dao;

import com.wanxiuData.entity.OldPeople;
import com.wanxiuData.entity.OldPeopleLocationInfo;
import com.wanxiuData.entity.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public interface UserMapper {
    List<String> findOldPeopleIDcardNumber();
    Integer countOldByNoWuzhou();
    Integer countOldByWuzhou(@Param(value = "location") String location);
    Integer countDisability(@Param(value = "type") Integer type);
    List<OldPeople> countAllDisability();
    ArrayList<Integer> countGovernmentService();
    ArrayList<Integer> Disease(@Param(value = "userbody1")String userbody1,@Param(value = "userbody2")String userbody2,@Param(value = "userbody3")String userbody3);
    ArrayList<Integer> Disability(@Param(value = "Disability1")String disability1,@Param(value = "Disability2")String disability2,@Param(value = "Disability3")String disability3,@Param(value = "Disability4")String disability4);
    OldPeopleLocationInfo findOldPeopleByEquipmentId(@Param(value = "equipmentId") String equipmentId);
    User login(@Param(value = "loginName") String loginName, @Param(value = "loginPassword") String loginPassword);
}
