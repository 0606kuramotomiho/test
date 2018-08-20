package com.internousdev.ecsite2.util;

import java.util.ArrayList;
import java.util.List;

import com.internousdev.ecsite2.dto.PaginationDTO;
import com.internousdev.ecsite2.dto.ShopInfoDTO;

public class Pagination {

	public PaginationDTO initialize(List<ShopInfoDTO> list, int pageSize) {

		PaginationDTO paginationDTO = new PaginationDTO();
		// 全ページ数
		paginationDTO.setTotalPageSize((int)(Math.ceil(list.size() / pageSize)));
		// 現在のページ番号
		paginationDTO.setCurrentPageNo(1);
		// 全レコード数
		paginationDTO.setTotalRecordSize(list.size() - 1);
		// 現在のページ番号に対する開始レコード番号（オフセット）
		paginationDTO.setStartRecordNo(pageSize * (paginationDTO.getCurrentPageNo() -1));
		// 現在のページ番号に対する終了レコード番号
		paginationDTO.setEndRecordNo(paginationDTO.getStartRecordNo() + (pageSize - 1));

		List<Integer> pageNumberList = new ArrayList<Integer>();
		for(int pageNumber = 1;pageNumber <= paginationDTO.getTotalPageSize(); pageNumber++) {
			pageNumberList.add(pageNumber);
		}

		List<ShopInfoDTO> ShopInfoPages = new ArrayList<ShopInfoDTO>();
		for(int pageNumberOffset=paginationDTO.getStartRecordNo(); pageNumberOffset <= paginationDTO.getEndRecordNo(); pageNumberOffset++) {
			ShopInfoPages.add(list.get(pageNumberOffset));
		}
		paginationDTO.setCurrentShopInfoPage(ShopInfoPages);

		if((paginationDTO.getStartRecordNo() - 1) <= 0) {
			paginationDTO.setHasPreviousPage(false);
		}else {
			paginationDTO.setHasPreviousPage(true);
			paginationDTO.setPreviousPageNo(paginationDTO.getCurrentPageNo() - 1);
		}

		if(paginationDTO.getEndRecordNo() + pageSize > paginationDTO.getTotalRecordSize()) {
			paginationDTO.setHasNextPage(false);
		}else {
			paginationDTO.setHasNextPage(true);
			paginationDTO.setNextPageNo(paginationDTO.getCurrentPageNo() + 1);
		}
		return paginationDTO;
	}


	public PaginationDTO getPage(List<ShopInfoDTO> list, int pageSize, String pageNo) {

		PaginationDTO paginationDTO = new PaginationDTO();
		// 全ページ数
		paginationDTO.setTotalPageSize((int)(Math.ceil(list.size() / pageSize)));
		// 現在のページ番号
		paginationDTO.setCurrentPageNo(Integer.parseInt(pageNo));
		// 全レコード数
		paginationDTO.setTotalRecordSize(list.size() - 1);
		// 現在のページ番号に対する開始レコード番号（オフセット）
		paginationDTO.setStartRecordNo(pageSize * (paginationDTO.getCurrentPageNo() -1));
		// 現在のページ番号に対する開始レコード番号
//		paginationDTO.setStartRecordNo((pageSize * paginationDTO.getCurrentPageNo()) + 1);
		// 現在のページ番号に対する終了レコード番号
		paginationDTO.setEndRecordNo(paginationDTO.getStartRecordNo() + (pageSize - 1));

		List<Integer> pageNumberList = new ArrayList<Integer>();
		for(int pageNumber = 1;pageNumber <= paginationDTO.getTotalPageSize(); pageNumber++) {
			pageNumberList.add(pageNumber);
		}

		List<ShopInfoDTO> ShopInfoPages = new ArrayList<ShopInfoDTO>();
		for(int pageNumberOffset=paginationDTO.getStartRecordNo(); pageNumberOffset <= paginationDTO.getEndRecordNo(); pageNumberOffset++) {
			ShopInfoPages.add(list.get(pageNumberOffset));
		}
		paginationDTO.setCurrentShopInfoPage(ShopInfoPages);

		if((paginationDTO.getStartRecordNo() - 1) <= 0) {
			paginationDTO.setHasPreviousPage(false);
		}else {
			paginationDTO.setHasPreviousPage(true);
			paginationDTO.setPreviousPageNo(paginationDTO.getCurrentPageNo() - 1);
		}

		if(paginationDTO.getEndRecordNo() + pageSize > paginationDTO.getTotalRecordSize()) {
			paginationDTO.setHasNextPage(false);
		}else {
			paginationDTO.setHasNextPage(true);
			paginationDTO.setNextPageNo(paginationDTO.getCurrentPageNo() + 1);
		}

		return paginationDTO;

	}

}
