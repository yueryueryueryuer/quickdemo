package com.xiaof.quickdemo.common.enums.user;

import com.xiaof.quickdemo.common.enums.BaseEnum;

/**
 * @ClassName: UserStatus
 * @Description:
 * @author: TaoXiaoFeng
 * @date: 2018/11/20 10:45
 */
public enum UserStatus implements BaseEnum<UserStatus,Integer> {
    /** 锁定 */
    LOCKING(0, "锁定"),
    /** 有效 */
    EFFECTIVE(1, "有效");;

    private Integer value;

    private String text;

    UserStatus(Integer value, String text) {
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
