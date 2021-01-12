package com.lgq.controller;

import com.lgq.pojo.Books;
import com.lgq.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.Model;

import java.text.AttributedString;
import java.util.ArrayList;
import java.util.List;

/**
 * @author lgq
 * @create 2021-01-07-14:00
 */

@Controller
@RequestMapping("/book")
public class BookController {
    //controller 调 service层
    @Autowired
    @Qualifier("BookServiceImpl")
    private BookService bookService;

    //查询全部书籍，并且返回到一个书籍展示页面
    @RequestMapping("/allBook")
    public String list(Model model){
        List<Books> list = bookService.queryAllBook();
        model.addAttribute("list",list);
        return "allBook"; //跳转到allBook.jsp页面
    }

    //跳转到增加书籍页面
    @RequestMapping("/toAddBook")
    public String toAddPaper(){
        return "addBook";
    }

    //添加书籍的请求
    @RequestMapping("/addBook")
    public String addBook(Books books){
        System.out.println("addBook:"+books);
        bookService.addBook(books);
//        return "/allBook";//直接跳转到allBook.jsp，F5刷新时会重复添加，且不走allBook的servlet在jsp页面显示不出内容
//        return url：会走视图解析器，且地址栏不改变；return redirect url：直接定向到url对应的value，且地址栏会变为填写的url
        return "redirect:/book/allBook";//添加应该用重定向，看作两次请求，否则页面舒心会执行最后一次的操作，就会重复添加
    }

    //跳转到修改页面
    @RequestMapping("/toUpdateBook")
    public String toUpdatePaper(int id,Model model){
        //查询到要修改的数据传递给前端
        Books books = bookService.queryBookById(id);
        System.out.println(books);
        model.addAttribute("Qbooks",books);
        return "updateBook";
    }

    //修改书籍
    /*
    出现问题：提交了修改sql请求，但修改失败
        1.事务问题，没有提交事务
        2.看一下sql语句能否执行成功,输出books，发现bookID一直是0，所以导致失败
          解决：前端传递隐藏域
   */
    @RequestMapping("/updateBook")
    public String updateBook(Books books){
        System.out.println("updateBook:"+books);
        bookService.updateBook(books);
        return "redirect:/book/allBook";
    }

    //删除书籍
    //复习restFul风格
    @RequestMapping("/deleteBook/{bookID}")
    public String deleteBook(@PathVariable("bookID") int id){
        bookService.deleteBookById(id);
        return "redirect:/book/allBook";
    }

    //查询书籍
    @RequestMapping("queryBook")
    public String queryBook(String queryBookName,Model model){
        Books books = bookService.queryBookByName(queryBookName);

        List<Books> list = new ArrayList<>();
        if(books == null){
            model.addAttribute("err","不存在");
            list = bookService.queryAllBook();
        }else{
            list.add(books);
        }
        model.addAttribute("list",list);
        return "/allBook";
    }


}


