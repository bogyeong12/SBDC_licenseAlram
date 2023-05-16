package egovframework.example.notification.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;

import egovframework.example.notification.service.LicenseVO;
import egovframework.example.notification.service.LicenseService;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;


@Service("licenseService")
public class LicenseServiceImpl implements LicenseService {


	@Resource(name ="CommonDAO")
	private CommonDAO dao;

	@Override
	public void selectNotificationList(LicenseVO licenseVO,ModelMap model) throws Exception{

		/** paging */
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(licenseVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(licenseVO.getPageUnit());
		paginationInfo.setPageSize(licenseVO.getPageSize());

		licenseVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		licenseVO.setLastIndex(paginationInfo.getLastRecordIndex());
		licenseVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());

		List<?> resultList = dao.selectList("selectLicenseList", licenseVO);
		int totCnt = dao.selectOne("selectLicenseListTotCnt", licenseVO);
		paginationInfo.setTotalRecordCount(totCnt);

		model.addAttribute("resultList", resultList);
		model.addAttribute("resultCnt",totCnt);

    	model.addAttribute("paginationInfo", paginationInfo);


	}


}
