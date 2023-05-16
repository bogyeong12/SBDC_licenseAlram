package egovframework.example.notification.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.example.notification.service.LicenseVO;
import egovframework.rte.psl.dataaccess.EgovAbstractMapper;

@Repository("LicenseDAO")
public class LicenseDAO extends EgovAbstractMapper {

	public List<?> selectLicenseList(LicenseVO licenseVO) throws Exception{
		return list("selectLicenseList", licenseVO);
	}

}
