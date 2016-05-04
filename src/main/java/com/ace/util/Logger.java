package com.ace.util;

/**
 * Created by anzhen on 2016/5/4.
 */
public class Logger {

    private org.apache.log4j.Logger logger;

    public Logger(org.apache.log4j.Logger logger) {
        this.logger = logger;
    }

    public static Logger getLogger(Class classObject){
        return new Logger(org.apache.log4j.Logger.getLogger(classObject));
    }

    public static Logger getLogger(String loggerName){
        return new Logger(org.apache.log4j.Logger.getLogger(loggerName));
    }

    public void debug(Object object){logger.debug(object);}

    public void debug(Object object,Throwable e){logger.debug(object,e);}

    public void info(Object object) {
        logger.info(object);
    }

    public void info(Object object, Throwable e) {
        logger.info(object, e);
    }

    public void warn(Object object) {
        logger.warn(object);
    }

    public void warn(Object object, Throwable e) {
        logger.warn(object, e);
    }

    public void error(Object object) {
        logger.error(object);
    }

    public void error(Object object, Throwable e) {
        logger.error(object, e);
    }

    public void fatal(Object object) {
        logger.fatal(object);
    }

    public String getName() {
        return logger.getName();
    }

    public org.apache.log4j.Logger getLog4jLogger() {
        return logger;
    }

    public boolean equals(Logger newLogger) {
        return logger.equals(newLogger.getLog4jLogger());
    }

}
