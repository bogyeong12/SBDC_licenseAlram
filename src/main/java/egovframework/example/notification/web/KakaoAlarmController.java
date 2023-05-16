package egovframework.example.notification.web;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.example.notification.service.LicenseVO;
import egovframework.example.notification.service.LicenseService;

@Controller
public class KakaoAlarmController {


	@Resource(name = "licenseService")
    private LicenseService LicenseService;

	@RequestMapping(value="/license/list.do")
    public String list(LicenseVO licenseVO, ModelMap model) throws Exception{

		LicenseService.selectNotificationList(licenseVO,model);

        return "license/list";
    }


	@RequestMapping(value="/license/regPage.do")
    public String licenseReg(LicenseVO licenseVO, ModelMap model) throws Exception{
		//LicenseService.licenseRegPage(licenseVO,model);
        return "license/regPage";
    }

}
