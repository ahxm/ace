package com.ace.util;

import javax.servlet.http.HttpServletRequest;
import java.util.*;

/**
 * Created by anzhen on 2016/5/4.
 */
public class PageData extends HashMap implements Map {

    Map map = null;

    HttpServletRequest request;

    public PageData(HttpServletRequest request){
        this.request  =  request;
        Map properties = request.getParameterMap();
        Map returnMap = new HashMap();
        Iterator iterator = properties.entrySet().iterator();
        Map.Entry entry;
        String name = "";
        String value = "";
        while (iterator.hasNext()){
            entry = (Map.Entry)iterator.next();
            name = (String)entry.getKey();
            Object valueObject = entry.getValue();
            if(null == valueObject){
                value="";
            }else if(valueObject instanceof String[]){
                String[] values = (String[])valueObject;
                for(int i=0;i<values.length;i++){
                    value = values[i]+",";
                }
                value = value.substring(0,value.length()-1);
            }else {
                value  = valueObject.toString();
            }
            returnMap.put(name,value);
        }
        map = returnMap;
    }

    public PageData(){
        map = new HashMap();
    }

    /**
     * Returns the value to which the specified key is mapped,
     * or {@code null} if this map contains no mapping for the key.
     * <p/>
     * <p>More formally, if this map contains a mapping from a key
     * {@code k} to a value {@code v} such that {@code (key==null ? k==null :
     * key.equals(k))}, then this method returns {@code v}; otherwise
     * it returns {@code null}.  (There can be at most one such mapping.)
     * <p/>
     * <p>A return value of {@code null} does not <i>necessarily</i>
     * indicate that the map contains no mapping for the key; it's also
     * possible that the map explicitly maps the key to {@code null}.
     * The {@link #containsKey containsKey} operation may be used to
     * distinguish these two cases.
     *
     * @param key
     * @see #put(Object, Object)
     */
    @Override
    public Object get(Object key) {
        return  map.get(key);
    }

    public String getString(Object key) {
        return (String)get(key);
    }

    public Object put(Object key, Object value) {
        return map.put(key, value);
    }

    public Object remove(Object key) {
        return map.remove(key);
    }

    public void clear() {
        map.clear();
    }

    public boolean containsKey(Object key) {
        // TODO Auto-generated method stub
        return map.containsKey(key);
    }

    public boolean containsValue(Object value) {
        // TODO Auto-generated method stub
        return map.containsValue(value);
    }

    public Set entrySet() {
        // TODO Auto-generated method stub
        return map.entrySet();
    }

    public boolean isEmpty() {
        // TODO Auto-generated method stub
        return map.isEmpty();
    }

    public Set keySet() {
        // TODO Auto-generated method stub
        return map.keySet();
    }

    @SuppressWarnings("unchecked")
    public void putAll(Map t) {
        // TODO Auto-generated method stub
        map.putAll(t);
    }

    public int size() {
        // TODO Auto-generated method stub
        return map.size();
    }

    public Collection values() {
        // TODO Auto-generated method stub
        return map.values();
    }

}
