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
 * Created by admin on 2015/4/29.
 */
@Controller
@RequestMapping("/admin/info/")
public class InfoController {
    @Autowired
    private ClassService classService;

    @RequestMapping(value = "lessonInfoPage",method = {RequestMethod.GET})
    public String getLessonInfoPage() {
        return "security/info/lessonInfoPage";
    }

    @RequestMapping(value = "stuInfoPage",method = {RequestMethod.GET})
    public String getStuInfoPage() {
        return "security/info/stuInfoPage";
    }

    @RequestMapping(value = "findAllClass", method = {RequestMethod.POST})
    @ResponseBody
    public PageResponse<Classd> findAllClass(Classd classd) {
        return new PageResponse<>(classd.getPage(),classService.getClassListPage(classd));
    }
}
