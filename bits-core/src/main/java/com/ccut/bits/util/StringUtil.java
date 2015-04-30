/*
* StringUtil.java
* Created on  202015/2/7 14:35
* 版本       修改时间         作者        修改内容
* V1.0.1     2015/2/7     panzhuowen    初始版本
*
*/

package com.ccut.bits.util;

import java.util.Arrays;
import java.util.List;

/**
 * 类的描述信息
 *
 * @author panzhuowen
 * @version 1.0.1
 */
public class StringUtil {
    public StringUtil() {
    }

    public static boolean notEmpty(String s) {
        return s != null && !"".equals(s) && !"null".equals(s);
    }

    public static boolean isEmpty(String s) {
        return s == null || "".equals(s) || "null".equals(s);
    }

    public static List<String> StringToList(String str) {
        String[] returnStr = str.split(",");
        return Arrays.asList(returnStr);
    }

    public static StringBuilder deleteLastChar(StringBuilder StrBuilder) {
        if(StrBuilder.length() > 1) {
            StrBuilder.deleteCharAt(StrBuilder.length() - 1);
        }

        return StrBuilder;
    }

    public static String getBusinessIdDate(String operateTime) {
        return operateTime.replace("-", "").substring(2, 8);
    }
}

