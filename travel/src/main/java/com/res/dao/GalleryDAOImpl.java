package com.res.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.res.vo.GalleryVO;
import com.res.vo.PageVO;

@Repository
public class GalleryDAOImpl implements IF_galleryDAO{
	
	private static String mapperQuery="com.res.dao.IF_galleryDAO";
	
	@Inject
	private SqlSession sqlSession;

	@Override
	public void galleryinsert(GalleryVO gallervo) {
	
		sqlSession.insert(mapperQuery+".insertOne",gallervo);
	}

	@Override
	public void galleryfile(String filename) {
		sqlSession.insert(mapperQuery+".saveFile",filename);
		
	}

	@Override
	public List<GalleryVO>  selectAll(PageVO pagevo) {
		return sqlSession.selectList(mapperQuery+".selectAll",pagevo);
		
	}

	@Override
	public int selectCnt() {
		
		return sqlSession.selectOne(mapperQuery+".selectCnt");
	}

}
