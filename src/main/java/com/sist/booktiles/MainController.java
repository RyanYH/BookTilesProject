package com.sist.booktiles;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.book.manager.BookManager;
import com.sist.book.manager.BookVO;

import java.util.*;

@Controller
public class MainController {
	@Autowired
	private BookManager bm;
	@RequestMapping("main.do")
	public String main_page(Model model)
	{
		   List<BookVO> list=bm.bookAllData();
		   List<BookVO> alist = bm.AladinBookData();
		   String title = "[";
		   int i=0;
		   String json ="[";
		   for(BookVO vo:list)
		   {
			   if(i<6)
			   {
				   title+="'"+vo.getTitle()+"',";
				   json+="{name:'"+vo.getTitle()+
						"',data:["+vo.getOprice()+","+vo.getSprice()+"],"
						+"stack:'"+vo.getPublisher()+"'},";
			   }
			   i++;
		   }
		   title=title.substring(0,title.lastIndexOf(","));
		   title+="]";
		   json=json.substring(0,json.lastIndexOf(","));
		   json+="]";
		   model.addAttribute("alist",alist);
		   model.addAttribute("json",json);
		   model.addAttribute("title",title);
		   model.addAttribute("list", list);
		   
		   System.out.println(title);
		   System.out.println(json);
		return "main";
	}
}
