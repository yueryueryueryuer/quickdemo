package com.xiaof.quickdemo.common.enums;

/**
 * @ClassName: BaseEnum
 * @Description:
 * @author: TaoXiaoFeng
 * @date: 2018/11/19 16:11
 */
public interface BaseEnum<E extends Enum<E>, V> {
    V getValue();

    String getText();
}
