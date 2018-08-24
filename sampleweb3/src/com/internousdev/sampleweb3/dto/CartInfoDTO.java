package com.internousdev.sampleweb3.dto;

import java.util.Date;

public class CartInfoDTO {
	private int id;
	private String userId;
	private String tempUserId;
	private int productId;
	private int productCount;
	private int price;
	private Date registDate;
	private Date updateDate;

	private String productName;
	private String productNameKana;
	private String productDescription;
	private int categoryId;
	private String imageFilePath;
	private String imageFileName;
	private Date releaseDate;
	private String releaseCompany;
	private String status;
	private int subtotal;

	public int getId(){
		return id;
	}
	public void setId(int id){
		this.id = id;
	}
	public String getUserId(){
		return userId;
	}
	public void setUserId(String userId){
		this.userId = userId;
	}
	public String getTempUserId(){
		return tempUserId;
	}
	public void setTempUserId(String tempUserId){
		this.tempUserId = tempUserId;
	}
	public int getProductId(){
		return productId;
	}
	public void setProductId(int productId){
		this.productId = productId;
	}
	public int getProductCount(){
		return productId;
	}
	public void setProductCount(int productCount){
		this.productCount = productCount;
	}
	public int getPrice(){
		return price;
	}
	public void setPrice(int price){
		this.price = price;
	}
	public Date getRegistDate(){
		return registDate;
	}
	public void setRegistDate(Date registDate){
		this.registDate = registDate;
	}
	public Date getUpdateDate(){
		return updateDate;
	}
	public void setUpdateDate(Date updateDate){
		this.updateDate = updateDate;
	}
	public String getProductName(){
		return productName;
	}
	public void setProductName(String productName){
		this.productName = productName;
	}
	public String getProductNameKana(){
		return productName;
	}
	public void setProductNameKana(String productNameKana){
		this.productNameKana = productNameKana;
	}
	public String
}