package com.wanxiuData.algorithm;

public class algorithmByTime {
    public Integer[] test(Integer SystemYear, Integer SystemMonth){
        if(SystemMonth<=0){
            if(SystemMonth<=-12){
                SystemMonth=24+SystemMonth;
                SystemYear-=2;
            }else {
                SystemMonth=12+SystemMonth;
                SystemYear--;
            }
        }
        return new Integer[]{SystemYear,SystemMonth};
    }
}
