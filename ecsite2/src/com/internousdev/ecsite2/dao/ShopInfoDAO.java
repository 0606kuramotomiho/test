package com.internousdev.ecsite2.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.internousdev.ecsite2.dto.ShopInfoDTO;
import com.internousdev.ecsite2.util.DBConnector;

public class ShopInfoDAO {

	public List<ShopInfoDTO> getShopInfoList() {
		DBConnector dbConnector = new DBConnector();
		Connection connection = dbConnector.getConnection();
		List<ShopInfoDTO> shopInfoDtoList = new ArrayList<ShopInfoDTO>();
		String sql = "select * from shop_info";

		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				ShopInfoDTO shopInfoDto = new ShopInfoDTO();
				shopInfoDto.setId(resultSet.getInt("id"));
				shopInfoDto.setShopId(resultSet.getInt("shop_id"));
				shopInfoDto.setShopName(resultSet.getString("shop_name"));
				shopInfoDto.setShopName(resultSet.getString("place"));
				shopInfoDto.setShopDescription(resultSet.getString("shop_description"));
				shopInfoDto.setCategoryId(resultSet.getInt("category_id"));

				shopInfoDto.setImageFilePath(resultSet.getString("image_file_path"));
				shopInfoDto.setImageFileName(resultSet.getString("image_file_name"));
				shopInfoDto.setReleaseDate(resultSet.getDate("release_date"));
				shopInfoDto.setReleaseCompany(resultSet.getString("release_company"));
				shopInfoDto.setStatus(resultSet.getInt("status"));
				shopInfoDto.setUpdateDate(resultSet.getDate("regist_date"));
				shopInfoDto.setUpdateDate(resultSet.getDate("update_date"));
				shopInfoDtoList.add(shopInfoDto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return shopInfoDtoList;
	}

	public ShopInfoDTO getShopInfo(int shopId) {
		DBConnector dbConnector = new DBConnector();
		Connection connection = dbConnector.getConnection();
		ShopInfoDTO shopInfoDTO = new ShopInfoDTO();
		String sql = "select * from shop_info where shop_id=?";
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, shopId);
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				shopInfoDTO.setId(resultSet.getInt("id"));
				shopInfoDTO.setShopId(resultSet.getInt("shop_id"));
				shopInfoDTO.setShopName(resultSet.getString("shop_name"));
				shopInfoDTO.setShopName(resultSet.getString("place"));
				shopInfoDTO.setShopDescription(resultSet.getString("shop_description"));
				shopInfoDTO.setCategoryId(resultSet.getInt("category_id"));

				shopInfoDTO.setImageFilePath(resultSet.getString("image_file_path"));
				shopInfoDTO.setImageFileName(resultSet.getString("image_file_name"));
				shopInfoDTO.setReleaseDate(resultSet.getDate("release_date"));
				shopInfoDTO.setReleaseCompany(resultSet.getString("release_company"));
				shopInfoDTO.setStatus(resultSet.getInt("status"));
				shopInfoDTO.setUpdateDate(resultSet.getDate("regist_date"));
				shopInfoDTO.setUpdateDate(resultSet.getDate("update_date"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return shopInfoDTO;
	}

	public List<ShopInfoDTO> getShopInfoListByCategoryId(int categoryId, int shopId, int limitOffset,
			int limitRowCount) {
		DBConnector dbConnector = new DBConnector();
		Connection connection = dbConnector.getConnection();
		List<ShopInfoDTO> shopInfoDtoList = new ArrayList<ShopInfoDTO>();
		String sql = "select * from shop_info where category_id=? and shop"
				+ ""
				+ "_id not in(?) order by rand() limit ?,?";
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, categoryId);
			preparedStatement.setInt(2, shopId);
			preparedStatement.setInt(3, limitOffset);
			preparedStatement.setInt(4, limitRowCount);
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				ShopInfoDTO shopInfoDTO = new ShopInfoDTO();
				shopInfoDTO.setId(resultSet.getInt("id"));
				shopInfoDTO.setShopId(resultSet.getInt("shop_id"));
				shopInfoDTO.setShopName(resultSet.getString("shop_name"));
				shopInfoDTO.setPlace(resultSet.getString("place"));
				shopInfoDTO.setShopDescription(resultSet.getString("shop_description"));
				shopInfoDTO.setCategoryId(resultSet.getInt("category_id"));

				shopInfoDTO.setImageFilePath(resultSet.getString("image_file_path"));
				shopInfoDTO.setImageFileName(resultSet.getString("image_file_name"));
				shopInfoDTO.setReleaseDate(resultSet.getDate("release_date"));
				shopInfoDTO.setReleaseCompany(resultSet.getString("release_company"));
				shopInfoDTO.setStatus(resultSet.getInt("status"));
				shopInfoDTO.setUpdateDate(resultSet.getDate("regist_date"));
				shopInfoDTO.setUpdateDate(resultSet.getDate("update_date"));
				shopInfoDtoList.add(shopInfoDTO);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return shopInfoDtoList;
	}

	public List<ShopInfoDTO> getShopInfoListAll(String[] keywordsList) {
		DBConnector dbConnector = new DBConnector();
		Connection connection = dbConnector.getConnection();
		List<ShopInfoDTO> shopInfoDtoList = new ArrayList<ShopInfoDTO>();
		String sql = "select * from shop_info where";
		boolean initializeFlag = true;
		for (String keyword : keywordsList) {
			if (initializeFlag) {
				sql += " (shop_name like '%" + keyword + "%' or place like '%" + keyword + "%')";
				initializeFlag = false;
			} else {
				sql += " and (shopt_name like '%" + keyword + "%' place like '%" + keyword + "%')";
			}
		}
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				ShopInfoDTO shopInfoDTO = new ShopInfoDTO();
				shopInfoDTO.setId(resultSet.getInt("id"));
				shopInfoDTO.setShopId(resultSet.getInt("shop_id"));
				shopInfoDTO.setShopName(resultSet.getString("shop_name"));
				shopInfoDTO.setPlace(resultSet.getString("place"));
				shopInfoDTO.setShopDescription(resultSet.getString("shop_description"));
				shopInfoDTO.setCategoryId(resultSet.getInt("category_id"));

				shopInfoDTO.setImageFilePath(resultSet.getString("image_file_path"));
				shopInfoDTO.setImageFileName(resultSet.getString("image_file_name"));
				shopInfoDTO.setReleaseDate(resultSet.getDate("release_date"));
				shopInfoDTO.setReleaseCompany(resultSet.getString("release_company"));
				shopInfoDTO.setStatus(resultSet.getInt("status"));
				shopInfoDTO.setUpdateDate(resultSet.getDate("regist_date"));
				shopInfoDTO.setUpdateDate(resultSet.getDate("update_date"));
				shopInfoDtoList.add(shopInfoDTO);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return shopInfoDtoList;
	}

	public List<ShopInfoDTO> getShopInfoListByKeywords(String[] keywordsList, String categoryId) {
		DBConnector dbConnector = new DBConnector();
		Connection connection = dbConnector.getConnection();
		List<ShopInfoDTO> shopInfoDtoList = new ArrayList<ShopInfoDTO>();
		String sql = "select * from shop_info where";
		boolean initializeFlag = true;
		for (String keyword : keywordsList) {
			if (initializeFlag) {
				sql += " category_id=" + categoryId + " and (shop_name like '%" + keyword + "%' or place like '%" + keyword + "%')";
				initializeFlag = false;
			} else {
				sql += " and (shop_name like '%" + keyword + "%' or place like '%" + keyword + "%')";
			}
		}
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				ShopInfoDTO shopInfoDTO = new ShopInfoDTO();
				shopInfoDTO.setId(resultSet.getInt("id"));
				shopInfoDTO.setShopId(resultSet.getInt("shop_id"));
				shopInfoDTO.setShopName(resultSet.getString("shop_name"));
				shopInfoDTO.setPlace(resultSet.getString("place"));
				shopInfoDTO.setShopDescription(resultSet.getString("shop_description"));
				shopInfoDTO.setCategoryId(resultSet.getInt("category_id"));

				shopInfoDTO.setImageFilePath(resultSet.getString("image_file_path"));
				shopInfoDTO.setImageFileName(resultSet.getString("image_file_name"));
				shopInfoDTO.setReleaseDate(resultSet.getDate("release_date"));
				shopInfoDTO.setReleaseCompany(resultSet.getString("release_company"));
				shopInfoDTO.setStatus(resultSet.getInt("status"));
				shopInfoDTO.setUpdateDate(resultSet.getDate("regist_date"));
				shopInfoDTO.setUpdateDate(resultSet.getDate("update_date"));
				shopInfoDtoList.add(shopInfoDTO);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return shopInfoDtoList;
	}
}
