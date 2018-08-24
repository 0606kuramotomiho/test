package com.internousdev.ecsite2.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite2.dao.MCategoryDAO;
import com.internousdev.ecsite2.dao.ShopInfoDAO;
import com.internousdev.ecsite2.dto.MCategoryDTO;
import com.internousdev.ecsite2.dto.PaginationDTO;
import com.internousdev.ecsite2.dto.ShopInfoDTO;
import com.internousdev.ecsite2.util.Pagination;
import com.opensymphony.xwork2.ActionSupport;

public class ShopListAction extends ActionSupport implements SessionAware{
	private String ShopName;
	private String Place;
	private String imageFilePath;
	private String imageFileName;
	private String categoryId;
	private String keywords;
	private List<MCategoryDTO> mCategoryDtoList = new ArrayList<MCategoryDTO>();
	private List<ShopInfoDTO> ShopInfoDtoList = new ArrayList<ShopInfoDTO>();

	private Map<String, Object> session;
	public String execute() {
		String result = ERROR;

		ShopInfoDAO ShopInfoDao = new ShopInfoDAO();
		ShopInfoDtoList = ShopInfoDao.getShopInfoList();
		Pagination pagination = new Pagination();
		PaginationDTO paginationDTO = pagination.initialize(ShopInfoDtoList, 9);
		session.put("totalPageSize", paginationDTO.getTotalPageSize());
		session.put("currentPageNumber", paginationDTO.getCurrentPageNo());
		session.put("totalRecordSize", paginationDTO.getTotalPageSize());
		session.put("startRecordNo", paginationDTO.getStartRecordNo());
		session.put("endRecordNo", paginationDTO.getEndRecordNo());
		session.put("pageNumberList", paginationDTO.getPageNumberList());
		session.put("ShopInfoDtoList", paginationDTO.getCurrentShopInfoPage());
		session.put("hasNextPage", paginationDTO.isHasNextPage());
		session.put("hasPreviousPage", paginationDTO.isHasPreviousPage());
		session.put("nextPageNo", paginationDTO.getNextPageNo());
		session.put("previousPageNo", paginationDTO.getPreviousPageNo());

		if(!session.containsKey("mCategoryList")) {
			MCategoryDAO mCategoryDao = new MCategoryDAO();
			mCategoryDtoList = mCategoryDao.getMCategoryList();
			session.put("mCategoryDtoList", mCategoryDtoList);
		}

		result = SUCCESS;
		return result;
	}

	public List<MCategoryDTO> getmCategoryDtoList() {
		return mCategoryDtoList;
	}

	public void setmCategoryDtoList(List<MCategoryDTO> mCategoryDtoList) {
		this.mCategoryDtoList = mCategoryDtoList;
	}

	public String getShopName() {
		return ShopName;
	}
	public void setShopName(String ShopName) {
		this.ShopName = ShopName;
	}
	public String getPlace() {
		return Place;
	}
	public void setPlace(String Place) {
		this.Place = Place;
	}
	public String getImageFilePath() {
		return imageFilePath;
	}
	public void setImageFilePath(String imageFilePath) {
		this.imageFilePath = imageFilePath;
	}
	public String getImageFileName() {
		return imageFileName;
	}
	public void setImageFileName(String imageFileName) {
		this.imageFileName = imageFileName;
	}

	public String getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}
	public String getKeywords() {
		return keywords;
	}
	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}
	public List<ShopInfoDTO> getShopInfoDtoList() {
		return ShopInfoDtoList;
	}
	public void setShopInfoDtoList(List<ShopInfoDTO> ShopInfoDtoList) {
		this.ShopInfoDtoList = ShopInfoDtoList;
	}
	public Map<String, Object> getSession() {
		return session;
	}
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
}