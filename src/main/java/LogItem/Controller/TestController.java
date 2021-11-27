package LogItem.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;

/**
 * Created with IntelliJ IDEA.
 * User: 小璐yoyo
 * Author: ***
 * Date: 2021/11/21 17:38
 * Description:
 */
@Controller
public class TestController {
    @RequestMapping(path = "TestSSM",method = {RequestMethod.POST},produces = "text/html;charset=UTF-8")
    @ResponseBody
    public String TestDemo(String SendMessage, HttpServletResponse response) {
        System.out.println("收到["+SendMessage+"]");
        String s = "Hello SSM";
        return SendMessage + "后台添加：" + s;
    }
}
