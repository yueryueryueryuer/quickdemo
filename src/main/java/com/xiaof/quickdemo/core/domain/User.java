package com.xiaof.quickdemo.core.domain;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.validation.constraints.NotBlank;
import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * @ClassName: User
 * @Description: 用户表
 * @author: TaoXiaoFeng
 * @date: 2018-11-27 11:56
 */
@EqualsAndHashCode(callSuper = true)
@Data
@TableName("t_core_user")
public class User extends Model<User> {
    /**
     * 用户ID
     */
    private Long id;

    /**
     * 用户名
     */
    @NotBlank(message = "用户名不能为空！")
    private String username;

    /**
     * 密码
     */
    private String password;

    /**
     * 部门ID
     */
    @TableField("dept_id")
    private Long deptId;

    /**
     * 邮箱
     */
    private String email;

    /**
     * 联系电话
     */
    private String mobile;

    /**
     * 状态 0锁定 1有效
     */
    private Integer status;

    /**
     * 最近访问时间
     */
    @TableField("last_login_time")
    private Date lastLoginTime;

    /**
     * 性别 0男 1女
     */
    private Integer sex;

    /**
     * 描述
     */
    private String description;

    /**
     * 创建时间
     */
    @TableField("create_time")
    private Date createTime;

    /**
     * 修改时间
     */
    @TableField("update_time")
    private Date updateTime;

    /**
     * 删除状态（0 未删，1 已删）
     */
    @TableField("is_deleted")
    private Integer isDeleted;

    @TableField(exist = false)
    private List<Long> roleIds;

    @TableField(exist = false)
    private Long roleId;

    @Override
    protected Serializable pkVal() {
        return this.id;
    }
}
