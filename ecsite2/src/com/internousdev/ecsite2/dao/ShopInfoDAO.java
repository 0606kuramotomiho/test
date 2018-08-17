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
		List<ShopInfoDTO> ShopInfoDtoList = new ArrayList<ShopInfoDTO>();
		String sql = "select * from shop_info";

		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				ShopInfoDTO ShopInfoDto = new ShopInfoDTO();
				ShopInfoDto.setId(resultSet.getInt("id"));
				ShopInfoDto.setshopId(resultSet.getInt("shop_id"));
				ShopInfoDto.setshopName(resultSet.getString("shop_name"));
				ShopInfoDto.setshopName(resultSet.getString("prace"));
				ShopInfoDto.setshopDescription(resultSet.getString("shop_description"));
				ShopInfoDto.setCategoryId(resultSet.getInt("category_id"));

				ShopInfoDto.setImageFilePath(resultSet.getString("image_file_path"));
				ShopInfoDto.setImageFileName(resultSet.getString("image_file_name"));
				ShopInfoDto.setReleaseDate(resultSet.getDate("release_date"));
				ShopInfoDto.setReleaseCompany(resultSet.getString("release_company"));
				ShopInfoDto.setStatus(resultSet.getInt("status"));
				ShopInfoDto.setUpdateDate(resultSet.getDate("regist_date"));
				ShopInfoDto.setUpdateDate(resultSet.getDate("update_date"));
				ShopInfoDtoList.add(ShopInfoDto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ShopInfoDtoList;
	}

	public ShopInfoDTO getShopInfo(int shopId) {
		DBConnector dbConnector = new DBConnector();
		Connection connection = dbConnector.getConnection();
		ShopInfoDTO ShopInfoDTO = new ShopInfoDTO();
		String sql = "select * from Shop_info where Shop_id=?";
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, shopId);
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				ShopInfoDTO.setId(resultSet.getInt("id"));
				ShopInfoDTO.setshopId(resultSet.getInt("shop_id"));
				ShopInfoDTO.setshopName(resultSet.getString("shop_name"));
				ShopInfoDTO.setshopName(resultSet.getString("prace"));
				ShopInfoDTO.setshopDescription(resultSet.getString("shop_description"));
				ShopInfoDTO.setCategoryId(resultSet.getInt("category_id"));

				ShopInfoDTO.setImageFilePath(resultSet.getString("image_file_path"));
				ShopInfoDTO.setImageFileName(resultSet.getString("image_file_name"));
				ShopInfoDTO.setReleaseDate(resultSet.getDate("release_date"));
				ShopInfoDTO.setReleaseCompany(resultSet.getString("release_company"));
				ShopInfoDTO.setStatus(resultSet.getInt("status"));
				ShopInfoDTO.setUpdateDate(resultSet.getDate("regist_date"));
				ShopInfoDTO.setUpdateDate(resultSet.getDate("update_date"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ShopInfoDTO;
	}

	public List<ShopInfoDTO> getShopInfoListByCategoryId(int categoryId, int shopId, int limitOffset,
			int limitRowCount) {
		DBConnector dbConnector = new DBConnector();
		Connection connection = dbConnector.getConnection();
		List<ShopInfoDTO> ShopInfoDtoList = new ArrayList<ShopInfoDTO>();
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
				ShopInfoDTO ShopInfoDTO = new ShopInfoDTO();
				ShopInfoDTO.setId(resultSet.getInt("id"));
				ShopInfoDTO.setshopId(resultSet.getInt("shop_id"));
				ShopInfoDTO.setshopName(resultSet.getString("shop_name"));
				ShopInfoDTO.setPrace(resultSet.getString("prace"));
				ShopInfoDTO.setshopDescription(resultSet.getString("shop_description"));
				ShopInfoDTO.setCategoryId(resultSet.getInt("category_id"));

				ShopInfoDTO.setImageFilePath(resultSet.getString("image_file_path"));
				ShopInfoDTO.setImageFileName(resultSet.getString("image_file_name"));
				ShopInfoDTO.setReleaseDate(resultSet.getDate("release_date"));
				ShopInfoDTO.setReleaseCompany(resultSet.getString("release_company"));
				ShopInfoDTO.setStatus(resultSet.getInt("status"));
				ShopInfoDTO.setUpdateDate(resultSet.getDate("regist_date"));
				ShopInfoDTO.setUpdateDate(resultSet.getDate("update_date"));
				ShopInfoDtoList.add(ShopInfoDTO);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ShopInfoDtoList;
	}

	public List<ShopInfoDTO> getShopInfoListAll(String[] keywordsList) {
		DBConnector dbConnector = new DBConnector();
		Connection connection = dbConnector.getConnection();
		List<ShopInfoDTO> ShopInfoDtoList = new ArrayList<ShopInfoDTO>();
		String sql = "select * from shop_info where";
		boolean initializeFlag = true;
		for (String keyword : keywordsList) {
			if (initializeFlag) {
				sql += " (shop_name like '%" + keyword + "%' or shop_name_kana like '%" + keyword + "%')";
				initializeFlag = false;
			} else {
				sql += " and (shopt_name like '%" + keyword + "%' or shop_name_kana like '%" + keyword + "%')";
			}
		}
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				ShopInfoDTO ShopInfoDTO = new ShopInfoDTO();
				ShopInfoDTO.setId(resultSet.getInt("id"));
				ShopInfoDTO.setshopId(resultSet.getInt("Shop_id"));
				ShopInfoDTO.setshopName(resultSet.getString("Shop_name"));
				ShopInfoDTO.setPrace(resultSet.getString("prace"));
				ShopInfoDTO.setshopDescription(resultSet.getString("Shop_description"));
				ShopInfoDTO.setCategoryId(resultSet.getInt("category_id"));

				ShopInfoDTO.setImageFilePath(resultSet.getString("image_file_path"));
				ShopInfoDTO.setImageFileName(resultSet.getString("image_file_name"));
				ShopInfoDTO.setReleaseDate(resultSet.getDate("release_date"));
				ShopInfoDTO.setReleaseCompany(resultSet.getString("release_company"));
				ShopInfoDTO.setStatus(resultSet.getInt("status"));
				ShopInfoDTO.setUpdateDate(resultSet.getDate("regist_date"));
				ShopInfoDTO.setUpdateDate(resultSet.getDate("update_date"));
				ShopInfoDtoList.add(ShopInfoDTO);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ShopInfoDtoList;
	}

	public List<ShopInfoDTO> getShopInfoListByKeywords(String[] keywordsList, String categoryId) {
		DBConnector dbConnector = new DBConnector();
		Connection connection = dbConnector.getConnection();
		List<ShopInfoDTO> ShopInfoDtoList = new ArrayList<ShopInfoDTO>();
		String sql = "select * from Shop_info where";
		boolean initializeFlag = true;
		for (String keyword : keywordsList) {
			if (initializeFlag) {
				sql += " category_id=" + categoryId + " and (Shop_name like '%" + keyword + "%' or Prace like '%" + keyword + "%')";
				initializeFlag = false;
			} else {
				sql += " and (Shop_name like '%" + keyword + "%' or Prace like '%" + keyword + "%')";
			}
		}
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				ShopInfoDTO ShopInfoDTO = new ShopInfoDTO();
				ShopInfoDTO.setId(resultSet.getInt("id"));
				ShopInfoDTO.setshopId(resultSet.getInt("Shop_id"));
				ShopInfoDTO.setshopName(resultSet.getString("Shop_name"));
				ShopInfoDTO.setPrace(resultSet.getString("Prace"));
				ShopInfoDTO.setshopDescription(resultSet.getString("Shop_description"));
				ShopInfoDTO.setCategoryId(resultSet.getInt("category_id"));
				ShopInfoDTO.setPrice(resultSet.getInt("price"));
				ShopInfoDTO.setImageFilePath(resultSet.getString("image_file_path"));
				ShopInfoDTO.setImageFileName(resultSet.getString("image_file_name"));
				ShopInfoDTO.setReleaseDate(resultSet.getDate("release_date"));
				ShopInfoDTO.setReleaseCompany(resultSet.getString("release_company"));
				ShopInfoDTO.setStatus(resultSet.getInt("status"));
				ShopInfoDTO.setUpdateDate(resultSet.getDate("regist_date"));
				ShopInfoDTO.setUpdateDate(resultSet.getDate("update_date"));
				ShopInfoDtoList.add(ShopInfoDTO);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ShopInfoDtoList;
	}
}
