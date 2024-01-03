package com.res.travel;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.res.service.IF_galleryService;
import com.res.util.Fileutil;
import com.res.vo.GalleryVO;
import com.res.vo.PageVO;

@Controller
public class GalleryController {
	
	@Inject
	IF_galleryService galleryservice;
	
	@Inject
	Fileutil fileutil;
	@RequestMapping(value = "gallery", method = RequestMethod.GET)
	public String gallery( Model model,PageVO pagevo) {
		if(pagevo.getPage()==null) {
			pagevo.setPage(1);
		}
		pagevo.setTotalCount(galleryservice.selectCnt());
		System.out.println(galleryservice.selectCnt());
		List<GalleryVO> glist=galleryservice.selectAll(pagevo);
		model.addAttribute("glist",glist);
		model.addAttribute("page",pagevo);
		return "gallery";
	}
	@RequestMapping(value = "gwrite", method = RequestMethod.GET)
	public String write( Model model) {
		
		
		return "g_write";
	}
	@RequestMapping(value = "galleryview", method = RequestMethod.POST) 
	public String galleryview( Model model ,GalleryVO gallervo,MultipartFile[] file) throws Exception {
		
		String[] datafile=fileutil.fileUpload(file);

		gallervo.setFiles(datafile);
	
		galleryservice.galleryinsert(gallervo);
		return "gallery";
	}
}
