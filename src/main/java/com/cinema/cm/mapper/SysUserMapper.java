package com.cinema.cm.mapper;

import com.cinema.cm.domain.vo.SysUserVo;
import com.cinema.cm.domain.LoginUser;
import com.cinema.cm.domain.SysUser;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface SysUserMapper {
    List<SysUser> findAllUsers(SysUser sysUser);

    SysUser findUserById(Long id);

    /**
     * jwt校验
     * @param userName
     * @return
     */
    SysUser findUserByName(String userName);

    int addUser(SysUser sysUser);

    int updateUser(SysUser sysUser);

    int deleteUser(Long id);

    LoginUser findLoginUser(SysUserVo sysUserVo);

    /**
     * 查出指定名字用户的所有id
     *
     * @param userName
     * @return
     */
    List<Long> checkUserNameUnique(String userName);
}
