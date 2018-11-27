package com.xiaof.quickdemo.common.enums;

/**
 * @ClassName: IsDeleted
 * @Description:
 * @author: TaoXiaoFeng
 * @date: 2018/11/19 16:20
 */
public enum IsDeleted implements BaseEnum<IsDeleted, Integer> {
    /**
     * 未删除
     */
    UNDELETED(0, "未删除"),
    /**
     * 已删除
     */
    DELETED(1, "已删除");

    private int value;

    private String text;

    IsDeleted(int value, String text) {
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
