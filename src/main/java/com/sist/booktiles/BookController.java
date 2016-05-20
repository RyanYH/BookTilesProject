package com.sist.booktiles;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.book.manager.*;

import java.util.*;

import javax.annotation.Resource;

@Controller
public class BookController {
	@Resource(name="bookManager")
	private BookManager bm;
}
