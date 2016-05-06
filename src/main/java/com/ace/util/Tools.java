package com.ace.util;

import org.apache.log4j.*;
import org.apache.log4j.spi.LoggerFactory;

import javax.servlet.http.HttpSession;
import java.io.*;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created by anzhen on 2016/5/5.
 */
public class Tools {

    protected Logger logger = Logger.getLogger(this.getClass());

    public static int getRandomNum() {
        Random r = new Random();
        return r.nextInt(900000) + 100000;
    }

    public static boolean notEmpty(String s) {
        return s != null && !"".equals(s) && !"null".equals(s);
    }

    public static boolean isEmpty(String s){
        return s == null || "".equals(s) || "null".equals(s);
    }

    public static String[] str2StrArray(String s,String splitRegex){
        if(isEmpty(s)){
            return null;
        }

        return s.split(splitRegex);
    }

    public static String date2Str(Date date,String format){
        if(date!=null){
            SimpleDateFormat sdf = new SimpleDateFormat(format);
            return sdf.format(date);
        }else {
            return "";
        }
    }


    public static String getTimes(String strDate,String format){
        SimpleDateFormat sdf = null;
        if(format == null){
            sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        }else {
            sdf = new SimpleDateFormat(format);
        }

        Date now = new Date();
        Date date = null;
        try{
            date = sdf.parse(strDate);
        }catch (Exception e){

        }

        long times = now.getTime() - date.getTime();
        long day  =  times/(24*60*60*1000);
        long hour = (times/(60*60*1000)-day*24);
        long min  = ((times/(60*1000))-day*24*60-hour*60);
        long sec  = (times/1000-day*24*60*60-hour*60*60-min*60);
        StringBuffer sb = new StringBuffer();
        //sb.append("发表于：");
        if(day>0){
            sb.append(day +"天");
        }
        if(hour>0 ){
            sb.append(hour+"小时");
        }
        if(min>0){
            sb.append(min+"分钟");
        }
        if(sec>0){
            sb.append(sec+"秒");
        }
        return sb.append("前").toString();
    }

    public static void writeFile(String fileP,String content){
        String filePath = String.valueOf(Thread.currentThread().getContextClassLoader().getResource(""))+"../../";	//项目路径
        filePath = (filePath.trim() + fileP.trim()).substring(6).trim();
        if(filePath.indexOf(":") != 1){
            filePath = File.separator + filePath;
        }
        try {
            OutputStreamWriter write = new OutputStreamWriter(new FileOutputStream(filePath),"utf-8");
            BufferedWriter writer=new BufferedWriter(write);
            writer.write(content);
            writer.close();


        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static String readTxtFile(String file) {

        try {

            String filePath = String.valueOf(Thread.currentThread().getContextClassLoader().getResource("")) + "../../";
            filePath = filePath.replaceAll("file:/", "");
            filePath = filePath.replaceAll("%20", " ");
            filePath = filePath.trim() + file.trim();
            if (filePath.indexOf(":") != 1) {
                filePath = File.separator + filePath;
            }
            String encoding = "utf-8";
            File f = new File(filePath);
            if (f.isFile() && f.exists()) {
                InputStreamReader read = new InputStreamReader(new FileInputStream(f), encoding);
                BufferedReader bufferedReader = new BufferedReader(read);
                String lineTxt = null;
                while ((lineTxt = bufferedReader.readLine()) != null) {
                    return lineTxt;
                }
                read.close();
            } else {
                System.out.println();
                System.out.println("找不到指定的文件,查看此路径是否正确:" + filePath);
            }
        } catch (Exception e) {
            System.out.println("读取文件内容出错");
        }
        return "";
    }

    public static boolean checkEmail(String email){
        boolean flag = false;
        try{
            String check = "^([a-z0-9A-Z]+[-|_|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$";
            Pattern regex = Pattern.compile(check);
            Matcher matcher = regex.matcher(email);
            flag = matcher.matches();
        }catch(Exception e){
            flag = false;
        }
        return flag;
    }


    public static boolean checkMobileNumber(String mobileNumber){
        boolean flag = false;
        try{
            Pattern regex = Pattern.compile("^(((13[0-9])|(15([0-3]|[5-9]))|(18[0,5-9]))\\d{8})|(0\\d{2}-\\d{8})|(0\\d{3}-\\d{7})$");
            Matcher matcher = regex.matcher(mobileNumber);
            flag = matcher.matches();
        }catch(Exception e){
            flag = false;
        }
        return flag;
    }

    public static boolean checkKey(String paraname, String FKEY){
        paraname = (null == paraname)? "":paraname;
        return MD5.md5(paraname+DateUtil.getDays()+",anzhen,").equals(FKEY);
    }


    public static void main(String[] args) {
        //  String num = readTxtFile("admin/config/PAGE.txt");
        //System.out.println(getTimes("2016-01-01 10:10:10","yyyy-MM-dd HH:mm:ss"));

        System.out.println(checkKey("username","b024736f0374c3281ff159d6a4ae4d34"));
    }

}
