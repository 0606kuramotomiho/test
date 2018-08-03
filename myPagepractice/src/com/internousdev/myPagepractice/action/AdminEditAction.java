package com.internousdev.glanq.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;



public class AdminEditAction extends ActionSupport implements SessionAware {
	private String productName;
	private String productNameKana;
	private String imageFilePath;
	private String imageFileName;
	private int price;

	private String categoryId;
	private String keywords;
	private List<MCategoryDTO> mCategoryDtoList = new ArrayList<MCategoryDTO>();
	private List<Product InfoDTO> productInfoList = new ArrayList<ProductInfoDTO>();
	private Map<String, Object>session;

	public String execute(){
		String result = ERROR;

		ProductInfoDAO productInfoDao = new ProductInfoDAO();
		productInfoDtoList = productInfoDao.getProductInfoList();
		Pagination pageination = new Pagination();
		PaginationDTO paginationDTO = pagination.initialize(productInfoDtoList, 9);

		session.put("totalPageSize", paginationDTO.getTotalPageSize());
		session.put("currentPageNumber", paginationDTO.getTotalPageSize());
		session.put("totalRecordSize", paginationDTO.getTotalRecordSize());
		session.put("startRecordSize", paginationDTO.getStartRecordNo());
		session.put("startRecordNo", paginationDTO.getEndRecordNo());
		session.put("pageNumberList", paginationDTO.getPageNumberList());
		session.put("productInfoDtoList", paginationDTO.getCurrentInfoPage());
		session.put("hasNextPage", paginationDTO.hasNextPage());
		session.put("hasPreviousPage", paginationDTO.hasPreviousPage());
		session.put("nextPageNo", paginationDTO.getNextPageNo());
		session.put("previousPageNo", paginationDTO.getPreviousPageNo());

		if(!session.containsKey("mCategoryList")){
			MCategoryDAO mCategoryDao = new MCategoryDAO();
			mCategoryDtoList = mCategoryDao.getMCategoryList();
			session.put("mCategoryDtoList", mCategoryDtoList();
		}
		result = SUCCESS;

		return result;

	}

	public List<MCategoryDTO> getCategoryDtoList(){
		return mCategoryDtoList;
	}
	public void setmCategoryDtoList(List<MCategoryDTO> mCategoryDtoList){
		this.mCategoryDtoList = mCategoryDtoList;
	}
	public String getProductName(){
		return productName;
	}
	public String getProductName(String productName){
		this.productName = productName;

	}
	public String getProductNameKana(){
		return productNameKana;
	}
	public void setProductNameKana(String productNameKana){
		this.productNameKana = productNameKana;
	}


}
