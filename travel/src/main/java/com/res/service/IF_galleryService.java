package com.res.service;

import java.util.List;

import com.res.vo.GalleryVO;
import com.res.vo.PageVO;

public interface IF_galleryService {
	public void galleryinsert(GalleryVO gallervo);
	public void galleryfile(String filename);
	public List<GalleryVO> selectAll(PageVO pagevo);
	public int selectCnt();
}
