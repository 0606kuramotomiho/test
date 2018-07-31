package com.internousdev.ecsite3.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.ecsite3.util.DBConnector;
import com.internousdev.ecsite3.util.DateUtil;

public class AdminDAO {
	private DBConnector dbConnector = new DBConnector();

	private Connection connection = dbConnector.getConnection();

	private DateUtil dateUtil = new DateUtil();

	private String sql = "INSERT INTO item_info_transaction(item_name, item_price, item_stock, insert_date)VALUES(?,?,?,?)";

	public void admin(String addItem,String addItemPrice,String addItemCount)throws SQLException{


		try{
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, addItem);
			preparedStatement.setString(2, addItemPrice);
			preparedStatement.setString(3, addItemCount);
			preparedStatement.setString(4, dateUtil.getDate());

			preparedStatement.execute();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			connection.close();
		}
	}

}
