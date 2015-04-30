package com.ccut.bits.security.dao;

import com.ccut.bits.annotation.mybatisScan;
import com.ccut.bits.model.*;

import java.lang.Class;
import java.util.List;

/**
 * Created by admin on 2015/4/29.
 */
@mybatisScan
public interface ClassDao {

     List<Classd> getClassListPage(Classd classd);


}
