package com.xiaof.quickdemo.common.annotation;

import java.lang.annotation.*;

/**
 * @ClassName: CoreLog
 * @Description: 日志拦截
 * @author: TaoXiaoFeng
 * @date: 2018/11/20 11:45
 */
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface CoreLog {

    String value();
}
