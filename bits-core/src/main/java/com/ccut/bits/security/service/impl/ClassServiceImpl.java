package com.ccut.bits.security.service.impl;

import com.ccut.bits.model.Classd;
import com.ccut.bits.security.dao.ClassDao;
import com.ccut.bits.security.service.ClassService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by admin on 2015/4/29.
 */
@Transactional
@Service("ClassService")
public class ClassServiceImpl implements ClassService {
    @Autowired
    private ClassDao classDao;


    @Override
    public List<Classd> getClassListPage(Classd classd) {
        return classDao.getClassListPage(classd);
    }
}
