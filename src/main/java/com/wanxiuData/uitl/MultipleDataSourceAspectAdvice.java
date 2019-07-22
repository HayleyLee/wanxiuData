package com.wanxiuData.uitl;

import com.wanxiuData.dao.*;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class MultipleDataSourceAspectAdvice {
    @Around("execution(* com.wanxiuData.dao.*.*(..))")
    public Object doAround(ProceedingJoinPoint jp) throws Throwable {
        if (jp.getTarget() instanceof BigDataMapper || jp.getTarget() instanceof ServiceMapper || jp.getTarget() instanceof UserMapper || jp.getTarget() instanceof CommoditytypeMapper || jp.getTarget() instanceof MerchantsMapper) {
            MultipleDataSource.setDataSourceKey("ihome_dataSource");
        }else if(jp.getTarget() instanceof PbxMapper) {
            MultipleDataSource.setDataSourceKey("pbx_dataSource");
        }else if(jp.getTarget() instanceof LocationMapper) {
            MultipleDataSource.setDataSourceKey("location_dataSource");
        }
        return jp.proceed();
    }
}
