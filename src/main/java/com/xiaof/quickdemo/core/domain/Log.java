package com.xiaof.quickdemo.core.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

/**
 * @ClassName: Log
 * @Description:
 * @author: TaoXiaoFeng
 * @date: 2018/11/21 09:33
 */
@Getter
@Setter
@ToString
public class Log {

    /**
     * 日志ID
     */
    private Long id;

    /**
     * 日志类型（0 操作，1 登录）
     */
    private Integer type;

    /**
     * 操作用户
     */
    private String username;

    /**
     * 耗时
     */
    private Long time;

    /**
     * 请求地址
     */
    private String uri;

    /**
     * 操作者IP
     */
    private String ip;

    /**
     * 创建时间
     */
    private Date createTime;

    /**
     * 操作内容
     */
    private String operation;

    /**
     * 操作方法
     */
    private String method;

    /**
     * 方法参数
     */
    private String params;
}
