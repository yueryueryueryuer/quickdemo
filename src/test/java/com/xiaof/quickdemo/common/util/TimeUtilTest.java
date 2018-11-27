package com.xiaof.quickdemo.common.util;

import org.junit.Test;

import java.time.LocalDateTime;

import static org.junit.Assert.*;

/**
 * @ClassName: TimeUtilTest
 * @Description:
 * @author: TaoXiaoFeng
 * @date: 2018-11-27 09:28
 */
public class TimeUtilTest {

    @Test
    public void parseTime() {
        LocalDateTime localDateTime = TimeUtil.parseTime("2018-11-22 08:33:25");
        System.out.println(localDateTime);
    }
}