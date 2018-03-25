package com.heitian.ssm.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import com.heitian.ssm.model.Tree_user;
import com.heitian.ssm.model.Tree_userExample;

public interface Tree_userMapper {
    int countByExample(Tree_userExample example);

    int deleteByExample(Tree_userExample example);

    int deleteByPrimaryKey(String email);

    int insert(Tree_user record);

    int insertSelective(Tree_user record);

    List<Tree_user> selectByExample(Tree_userExample example);

    Tree_user selectByPrimaryKey(String email);

    int updateByExampleSelective(@Param("record") Tree_user record, @Param("example") Tree_userExample example);

    int updateByExample(@Param("record") Tree_user record, @Param("example") Tree_userExample example);

    int updateByPrimaryKeySelective(Tree_user record);

    int updateByPrimaryKey(Tree_user record);
}