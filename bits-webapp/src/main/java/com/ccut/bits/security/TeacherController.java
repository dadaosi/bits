package com.ccut.bits.security;

import com.ccut.bits.model.Classd;

import com.ccut.bits.page.PageResponse;
import com.ccut.bits.security.service.ClassService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by admin on 2015/4/28.
 */
@Controller
@RequestMapping("/admin/teacher/")
public class TeacherController {


    @RequestMapping(value = "newReportPage",method = {RequestMethod.GET})
    public String getNewReportPage() {
        return "security/teacher/newReportPage";
    }

    @RequestMapping(value = "uploadReportPage",method = {RequestMethod.GET})
    public String getUploadReportPag() {
        return "security/teacher/uploadReportPage";
    }

    @RequestMapping(value = "analysisReportPage",method = {RequestMethod.GET})
    public String getAnalysisReportPage() {
        return "security/teacher/analysisReportPage";
    }



}
