package com.internousdev.ecsite3.action;
import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite3.dao.AdminDAO;
import com.opensymphony.xwork2.ActionSupport;


public class AdminCompleteAction extends ActionSupport implements SessionAware{

	private String addItem;
	private String addItemPrice;
	private String addItemCount;
	public Map<String,Object>session;
	private AdminDAO adminDAO = new AdminDAO();

	public String execute() throws SQLException{
		//createUser
		adminDAO.admin(session.get("addItem").toString(),
				session.get("addItemPrice").toString(),
				session.get("addItemCount").toString());

		String result = SUCCESS;
		return result;
	}
	public String getAddItem(){
		return addItem;
	}
	public void setAddItem(String addItem){
		this.addItem = addItem;
	}
	public String getAddItemPrice(){
		return addItemPrice;
	}
	public void setAddItemPrice(String addItemPrice){
		this.addItemPrice = addItemPrice;
	}
	public String getAddItemCount(){
		return addItemCount;
	}
	public void setAddItemCount(String addItemCount){
		this.addItemCount = addItemCount;
	}
	@Override
	public void setSession(Map<String,Object>session){
		this.session = session;
	}

}
