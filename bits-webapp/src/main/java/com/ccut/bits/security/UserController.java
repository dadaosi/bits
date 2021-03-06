package com.ccut.bits.security;

import com.ccut.bits.autocomplete.service.AutoCompleteService;
import com.ccut.bits.model.User;
import com.ccut.bits.page.PageResponse;
import com.ccut.bits.security.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by panzhuowen on 2014/10/17.
 */

@Controller
@RequestMapping("/admin/user/")
public class UserController {
    @Autowired
    private UserService userService;

    @Autowired
    private AutoCompleteService autoCompleteService;

    @RequestMapping(value = "getUserListPageDo",method = {RequestMethod.GET})
    public String getAllUserDo() {
        return "security/user/userListPage";
    }

    @RequestMapping(value = "getsometest",method = {RequestMethod.GET})
    public String getTest() {
        return "security/user/test";
    }

    @RequestMapping(value = "asdf",method = {RequestMethod.GET})
    public String getTeest() {
        return "security/user/test";
    }

    @RequestMapping(value = "addUserDo", method = {RequestMethod.GET})
    public String addUserDo(HttpServletRequest request) {
        autoCompleteService.initAutoComplete();
        return "security/user/addUserDo";
    }

    @RequestMapping(value = "findAllUser", method = {RequestMethod.POST})
    @ResponseBody
    public PageResponse<User> findAllUser(User user) {
        return new PageResponse<>(user.getPage(),userService.getUserListPage(user));
    }

    @RequestMapping(value = "addUser",method = {RequestMethod.POST})
    @ResponseBody
    public void addUser(User user) {
        userService.addUserDo(user);
    }

    @RequestMapping(value = "delUserDo",method = {RequestMethod.DELETE})
    @ResponseBody
    public void delUser(@RequestParam("id") int id) {
        userService.delUser(id);
    }

    @RequestMapping(value = "editUserDo", method = {RequestMethod.GET})
    public String editUserDo(HttpServletRequest request,@RequestParam("id") int id) {
        User user = userService.findUserById(id);
        request.setAttribute("user",user);
        return "security/user/editUserDo";
    }

    @RequestMapping(value = "editUser", method = {RequestMethod.POST})
    @ResponseBody
    public void editUser(User user) {
        userService.editUserRole(user);
        userService.editUser(user);
    }

    @RequestMapping(value = "validateUserName", method = {RequestMethod.POST})
    @ResponseBody
    public boolean checkRepeatLoginName(User user) {
        int hasRepeatLoginName = userService.hasCheckRepeatLoginName(user.getLoginName());
        if (user.getUserId() == 0) { //新增
            if (hasRepeatLoginName >= 1) {
                return false;
            }
        } else {  // 编辑
            int checkUser = userService.checkRepeatUser(user);
            if (hasRepeatLoginName == 1 && checkUser == 0) {
                return false;
            }
        }
        return true;
    }
}
