package com.ace.dao;

import org.apache.ibatis.session.ExecutorType;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
import javax.annotation.Resource;
import java.util.List;

/**
 * Created by anzhen on 2016/5/4.
 */
@Repository("daoSupport")
public class DaoSupport implements DAO{

    @Resource(name="sqlSessionTemplate")
    private SqlSessionTemplate sqlSessionTemplate;

    @Override
    public Object save(String str, Object obj) throws Exception {
        return sqlSessionTemplate.insert(str,obj);
    }

    public Object batchSave(String str,List objs){
        return sqlSessionTemplate.insert(str,objs);
    }

    @Override
    public Object update(String str, Object obj) throws Exception {
        return sqlSessionTemplate.update(str,obj);
    }

    public void batchUpdate(String str,List objs) {
        SqlSessionFactory sqlSessionFactory = sqlSessionTemplate.getSqlSessionFactory();
        SqlSession sqlSession = sqlSessionFactory.openSession(ExecutorType.BATCH,false);
        try{
            if(objs !=null){
                for(int i=0;i<objs.size();i++){
                    sqlSession.update(str,objs.get(i));
                }
                sqlSession.flushStatements();
                sqlSession.commit();
                sqlSession.clearCache();
            }
        }finally {
            sqlSession.close();
        }
    }

    @Override
    public Object delete(String str, Object obj) throws Exception {
       return sqlSessionTemplate.delete(str,obj);
    }

    public Object batchDelete(String str,List objs){
        return sqlSessionTemplate.delete(str,objs);
    }

    @Override
    public Object findForObject(String str, Object obj) throws Exception {
        return sqlSessionTemplate.selectOne(str,obj);
    }

    @Override
    public Object findForList(String str, Object obj) throws Exception {
        return sqlSessionTemplate.selectList(str,obj);
    }

    @Override
    public Object findForMap(String sql, Object obj, String key, String value) throws Exception {
       return sqlSessionTemplate.selectMap(sql,obj,key);
    }
}
