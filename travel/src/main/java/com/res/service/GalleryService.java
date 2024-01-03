package com.res.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.res.dao.IF_galleryDAO;
import com.res.vo.GalleryVO;
import com.res.vo.PageVO;

@Service
public class GalleryService implements IF_galleryService {
	
	@Inject
	private IF_galleryDAO gallerydao;
	
	@Override
	public void galleryinsert(GalleryVO gallervo) {
		gallerydao.galleryinsert(gallervo);
		String[] filenames = gallervo.getFiles();
		if(filenames.length>0) { 
			for(int i=0 ; i< filenames.length;i++) {
				if(filenames[i]!=null) {
					gallerydao.galleryfile(filenames[i]);
				}
			}
		}
	}

	@Override
	public void galleryfile(String filename) {
		gallerydao.galleryfile(filename);
	}

	@Override
	public List<GalleryVO>  selectAll(PageVO pagevo) {
		
		return gallerydao.selectAll(pagevo);
		
	}

	@Override
	public int selectCnt() {
		
		return gallerydao.selectCnt();
	}

}
