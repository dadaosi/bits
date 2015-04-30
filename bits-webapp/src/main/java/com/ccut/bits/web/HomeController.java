/*
* HomeController.java
* Created on  202015/2/6 16:49
* 版本       修改时间          作者      修改内容
* V1.0.1    202015/2/6       panzhuo    初始版本
*
*/

package com.ccut.bits.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 类的描述信息
 *
 * @author panzhuowen
 * @version 1.0.1
 */
@Controller
@RequestMapping("/")
public class HomeController {

    @RequestMapping(method = {RequestMethod.GET})
    public String index() {
        return "index";
    }

    @RequestMapping(value = "admin/index", method = {RequestMethod.GET})
    public String adminIndex() {
        return "security/index";
    }

}
