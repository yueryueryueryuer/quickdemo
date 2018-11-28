package com.xiaof.quickdemo.common.aspect;


import com.xiaof.quickdemo.common.annotation.CoreLog;
import com.xiaof.quickdemo.common.enums.log.LogType;
import com.xiaof.quickdemo.core.domain.Log;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Method;

/**
 * @ClassName: CoreLogAspect
 * @Description:
 * @author: TaoXiaoFeng
 * @date: 2018/11/20 11:50
 */
@Aspect
@Component
public class CoreLogAspect {
    private final static Logger logger = LoggerFactory.getLogger(CoreLogAspect.class);


    @Pointcut("@annotation(com.xiaof.quickdemo.common.annotation.CoreLog)")
    public void pointCut() {
    }

    @Around("pointCut()")
    public Object around(ProceedingJoinPoint point) throws Throwable {
        long beginTime = System.currentTimeMillis();
        Object result = point.proceed();
        long endTime = System.currentTimeMillis();
        saveLog(point, endTime - beginTime);
        return result;
    }

    private void saveLog(ProceedingJoinPoint point, long time) {
        //获取当前请求对象
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();

        //获取当前用户
//        User user = (User) SecurityUtils.getSubject().getPrincipal();

        //获取切入点
        MethodSignature signature = (MethodSignature) point.getSignature();
        Method method = signature.getMethod();

        //获取操作内容
        CoreLog annotation = method.getAnnotation(CoreLog.class);
        String operation = annotation.value();

        //获取日志对象
        Log log = new Log();

        String className = point.getTarget().getClass().getName();
        String methodName = method.getName();
        log.setMethod(className + "." + methodName + "()");
        Object[] args = point.getArgs();
        String[] parameterNames = signature.getParameterNames();
        for (int i = 0; i < args.length; i++) {
            StringBuilder sb = new StringBuilder();
            sb.append(parameterNames[i])
                    .append(": ")
                    .append(args[i])
                    .append("; ");
            log.setParams(sb.toString());
        }
        log.setIp(request.getRemoteAddr());
        log.setType(LogType.ACTION.getValue());
//        log.setUsername(user.getUsername());
        log.setTime(time);
        log.setOperation(operation);
        log.setUri(request.getRequestURI());
        log.insert();


    }
}
