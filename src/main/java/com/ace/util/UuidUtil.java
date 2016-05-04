package com.ace.util;

import java.util.UUID;

/**
 * Created by anzhen on 2016/5/4.
 */
public class UuidUtil {

    public static String get32UUID(){
        String uuid = UUID.randomUUID().toString().trim().replace("-","");
        return uuid;
    }

    public static void main(String[] args) {
        System.out.printf(get32UUID());
    }

}
