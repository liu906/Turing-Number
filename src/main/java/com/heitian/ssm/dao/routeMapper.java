package com.heitian.ssm.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import com.heitian.ssm.model.route;
import com.heitian.ssm.model.routeExample;

public interface routeMapper {
    int countByExample(routeExample example);

    int deleteByExample(routeExample example);

    int insert(route record);

    int insertSelective(route record);

    List<route> selectByExampleWithBLOBs(routeExample example);

    List<route> selectByExample(routeExample example);

    int updateByExampleSelective(@Param("record") route record, @Param("example") routeExample example);

    int updateByExampleWithBLOBs(@Param("record") route record, @Param("example") routeExample example);

    int updateByExample(@Param("record") route record, @Param("example") routeExample example);
}