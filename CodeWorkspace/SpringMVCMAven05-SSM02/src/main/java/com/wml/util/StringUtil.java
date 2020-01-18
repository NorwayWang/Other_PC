package com.wml;

public class StringUtil {
    /**非空判断*/
    public static boolean isEmpty(String str){
        boolean result =(str == null || str.length()<1)?true:false;
        return result;
    }
}
