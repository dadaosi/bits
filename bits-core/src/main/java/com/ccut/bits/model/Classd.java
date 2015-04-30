package com.ccut.bits.model;

import com.ccut.bits.page.PageBase;

/**
 * Created by admin on 2015/4/29.
 */
public class Classd extends PageBase {
    private int classid;
    private String classDescription;

    public void setClassid(int classid) {
        this.classid = classid;
    }

    public int getClassidetclassid() {
        return this.classid ;
    }

    public String getClassDescription(){return  this.classDescription;}

    public void SetClassDescription(String classDescription){this.classDescription = classDescription;}



}