
package com.ccut.bits.security;

import com.ccut.bits.model.Permission;
import com.ccut.bits.security.dao.PermissionDao;
import com.ccut.bits.security.service.PermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by admin on 2015/4/27.
 */

@Controller
@RequestMapping("/admin/test/")
public class TestController {

    @Autowired
    private PermissionService permissionService;
    @Autowired
    private PermissionDao permissionDao;

    @RequestMapping(value = "addPermission", method = {RequestMethod.POST})
    @ResponseBody
    public void addPermission(Permission permission) {
        permissionDao.addPermission(permission);
    }

}
