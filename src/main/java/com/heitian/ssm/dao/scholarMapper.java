package com.heitian.ssm.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import com.heitian.ssm.model.scholar;
import com.heitian.ssm.model.scholarExample;

public interface scholarMapper {
    int countByExample(scholarExample example);

    int deleteByExample(scholarExample example);

    int insert(scholar record);

    int insertSelective(scholar record);

    List<scholar> selectByExampleWithBLOBs(scholarExample example);

    List<scholar> selectByExample(scholarExample example);

    int updateByExampleSelective(@Param("record") scholar record, @Param("example") scholarExample example);

    int updateByExampleWithBLOBs(@Param("record") scholar record, @Param("example") scholarExample example);

    int updateByExample(@Param("record") scholar record, @Param("example") scholarExample example);
}