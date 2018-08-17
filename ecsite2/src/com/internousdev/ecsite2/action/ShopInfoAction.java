package com.internousdev.ecsite2.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite2.dao.MCategoryDAO;
import com.internousdev.ecsite2.dao.ShopInfoDAO;
import com.internousdev.ecsite2.dto.MCategoryDTO;
import com.internousdev.ecsite2.dto.PaginationDTO;
import com.internousdev.ecsite2.dto.ShopInfoDTO;
import com.opensymphony.xwork2.ActionSupport;

import javafx.scene.control.Pagination;

public class ShopInfoAction extends ActionSupport implements SessionAware {

	public Map<String, Object> session;
	private Pagination pagination = new Pagination();
	private List<MCategoryDTO> mCategoryDtoList = new ArrayList<MCategoryDTO>();

	private List<ShopInfoDTO> ShopInfoDTOList = new ArrayList<ShopInfoDTO>();
	private String categoryId;
	private String keywords;
	private String pageNo = "1";

	public String execute() throws SQLException{
		String result = ERROR;

		// すべての商品情報を取得。
		ShopInfoDAO ShopInfoDAO = new ShopInfoDAO();
		List<ShopInfoDTO> ShopInfoListAll = ShopInfoDAO.getShopInfoList();
		session.put("ShopInfoListAll", ShopInfoListAll);	// 予備

		// ページ情報を取得。上で得た商品情報ShopInfoListAllを利用。1ページあたりの表示数9に設定。
		int pageSize = 9;
		PaginationDTO paginationDTO = pagination.initialize(ShopInfoListAll, pageSize);
		session.put("totalPageSize", paginationDTO.getTotalPageSize());
		session.put("currentPageNo", paginationDTO.getCurrentPageNo());
		session.put("totalRecordSize", paginationDTO.getTotalRecordSize());
		session.put("startRecordNo", paginationDTO.getStartRecordNo());
		session.put("endRecordNo", paginationDTO.getEndRecordNo());
		session.put("pageNumberList", paginationDTO.getPageNumberList());
		session.put("ShopInfoDtoList", paginationDTO.getCurrentShopInfoPage());	// これが大事。
		session.put("hasNextPage", paginationDTO.isHasNextPage());
		session.put("hasPreviousPage", paginationDTO.isHasPreviousPage());
		session.put("nextPageNo", paginationDTO.getNextPageNo());
		session.put("previousPageNo", paginationDTO.getPreviousPageNo());

		// セッション mCategoryDtoList はヘッダーにて用いているので、無い場合は必要。（mCategoryList??）
		if(!session.containsKey("mCategoryDtoList")) {
			MCategoryDAO mCategoryDao = new MCategoryDAO();
			mCategoryDtoList = mCategoryDao.getMCategoryList();
			session.put("mCategoryDtoList", mCategoryDtoList);
		}

		// セッションlogined はヘッダーにて用いているので、無い場合は非ログイン状態として0を入れる。
		if(!session.containsKey("logined")) {
			session.put("logined", 0);
		}

		ShopInfoDTOList = paginationDTO.getCurrentShopInfoPage();	// 予備。セッションで処理させるなら不要

		result = SUCCESS;


		return result;
	}


	public Map<String, Object> getSession() {
		return session;
	}


	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public List<MCategoryDTO> getmCategoryDtoList() {
		return mCategoryDtoList;
	}

	public void setmCategoryDtoList(List<MCategoryDTO> mCategoryDtoList) {
		this.mCategoryDtoList = mCategoryDtoList;
	}

	public List<ShopInfoDTO> getShopInfoDTOList() {
		return ShopInfoDTOList;
	}

	public void setShopInfoDTOList(List<ShopInfoDTO> ShopInfoDTOList) {
		this.ShopInfoDTOList = ShopInfoDTOList;
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

	public String getPageNo() {
		return pageNo;
	}

	public void setPageNo(String pageNo) {
		this.pageNo = pageNo;
	}


}
