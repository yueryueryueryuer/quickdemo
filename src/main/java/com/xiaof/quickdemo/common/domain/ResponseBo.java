package com.xiaof.quickdemo.common.domain;

import java.util.HashMap;

/**
 * @ClassName: ResponseBo
 * @Description: 返回对象
 * @author: TaoXiaoFeng
 * @date: 2018/11/19 15:08
 */
public class ResponseBo extends HashMap<String,Object> {

    private static final Integer SUCCESS = 0;

    private static final Integer WARN = 1;

    private static final Integer FAIL = 500;

    public ResponseBo(){
        put("code", SUCCESS);
        put("msg", "操作成功");
    }

    public static ResponseBo error(Object msg) {
        ResponseBo responseBo = new ResponseBo();
        responseBo.put("code", FAIL);
        responseBo.put("msg", msg);
        return responseBo;
    }

    public static ResponseBo warn(Object msg) {
        ResponseBo responseBo = new ResponseBo();
        responseBo.put("code", WARN);
        responseBo.put("msg", msg);
        return responseBo;
    }

    public static ResponseBo ok(Object msg) {
        ResponseBo responseBo = new ResponseBo();
        responseBo.put("code", SUCCESS);
        responseBo.put("msg", msg);
        return responseBo;
    }
    public static ResponseBo ok() {
        return new ResponseBo();
    }

    public static ResponseBo error() {
        return ResponseBo.error("");
    }

    @Override
    public ResponseBo put(String key, Object value) {
        super.put(key, value);
        return this;
    }
}
