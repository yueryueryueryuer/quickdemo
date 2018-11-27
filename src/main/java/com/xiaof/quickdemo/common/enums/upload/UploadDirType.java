package com.xiaof.quickdemo.common.enums.upload;

import com.xiaof.quickdemo.common.enums.BaseEnum;

/**
 * @ClassName: UploadDirType
 * @Description: 上传文件类型
 * @author: TaoXiaoFeng
 * @date: 2018/11/20 08:48
 */
public enum UploadDirType implements BaseEnum<UploadDirType,Integer> {
    /** 测试 */
    TEST(0, "test"),
    /** markdown */
    MD(1, "md");

    private Integer value;

    private String text;


    UploadDirType(Integer value, String text) {
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
