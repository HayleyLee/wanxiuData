package com.wanxiuData.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface PbxMapper {
    Integer findAll();
    Integer findInCall();
    Integer findOutCall();
    Integer findToDay(@Param(value = "time") String time);
    Integer findByWorkID(@Param(value = "workID") Integer workID);
    Integer findOutCallToDay(@Param(value = "time") String time);
    Integer findInCallToDay(@Param(value = "time") String time);
    Integer findCallByWorkIDToDay(@Param(value = "workID") Integer workID,@Param(value="time") String time);
    Integer findAllByTime(@Param(value = "startTime")String startTime,@Param(value = "endTime")String endTime);
}
