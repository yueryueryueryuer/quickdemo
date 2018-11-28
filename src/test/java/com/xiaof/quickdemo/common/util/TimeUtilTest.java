package com.xiaof.quickdemo.common.util;

import org.junit.Test;

import java.time.LocalDateTime;

/**
 * @ClassName: TimeUtilTest
 * @Description:
 * @author: TaoXiaoFeng
 * @date: 2018-11-27 10:47
 */
public class TimeUtilTest {

    @Test
    public void parseTime() {
        LocalDateTime localDateTime = TimeUtil.parseTime("2018-11-22 08:33:25");
        System.out.println(localDateTime);
    }

    @Test
    public void parseTime1() {
    }

    @Test
    public void parseTime2() {
    }

    @Test
    public void parseTime3() {
    }

    @Test
    public void getCurrentDatetime() {
    }

    @Test
    public void getCurrentDatetime1() {
    }
}