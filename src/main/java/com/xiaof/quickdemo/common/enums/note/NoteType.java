package com.xiaof.quickdemo.common.enums.note;

import com.xiaof.quickdemo.common.enums.BaseEnum;

/**
 * @ClassName: NoteType
 * @Description: 笔记类型
 * @author: TaoXiaoFeng
 * @date: 2018/11/20 08:45
 */
public enum NoteType implements BaseEnum<NoteType,Integer> {

    /** 文件夹 */
    FOLDER(0, "文件夹"),
    /** 文件 */
    FILE(1, "文件");

    private Integer value;

    private String text;

    NoteType(Integer value, String text) {
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
