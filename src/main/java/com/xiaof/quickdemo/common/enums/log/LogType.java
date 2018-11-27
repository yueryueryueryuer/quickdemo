package com.xiaof.quickdemo.common.enums.log;

import com.xiaof.quickdemo.common.enums.BaseEnum;

/**
 * @ClassName: LogType
 * @Description: 日志类型
 * @author: TaoXiaoFeng
 * @date: 2018/11/19 16:37
 */
public enum LogType implements BaseEnum<LogType, Integer> {

    /**
     * 未删除
     */
    ACTION(0, "未删除"),
    /**
     * 已删除
     */
    LOGIN(1, "已删除");

    private Integer value;

    private String text;

    LogType(Integer value, String text) {
        this.value = value;
        this.text = text;
    }

    @Override
    public Integer getValue() {
        return value;
    }

    @Override
    public String getText() {
        return text;
    }
}
