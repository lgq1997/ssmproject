package com.lgq.service;

import com.lgq.pojo.Books;
import junit.framework.TestCase;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.awt.print.Book;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;

/**
 * @author lgq
 * @create 2021-01-07-14:39
 */
public class BookServiceTest extends TestCase {

    public void testAddBook() {
        //加载spring配置文件
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        //获取配置文件中创建的对象
        BookService bookServiceImpl = (BookService)context.getBean("BookServiceImpl");
        List<Books> list = bookServiceImpl.queryAllBook();
        for (Books books:list){
            System.out.println(books);
        }
    }

    public void testDeleteBookById() {
    }

    public void testUpdateBook() {
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        BookService bookServiceImpl = context.getBean("BookServiceImpl",BookService.class);
        bookServiceImpl.updateBook(new Books(13,"def","hh",new BigDecimal(50),50,"def"));
    }

    public void testQueryBookById() {
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        BookService bookServiceImpl = context.getBean("BookServiceImpl",BookService.class);
        Books books = bookServiceImpl.queryBookById(2);
        System.out.println(books);
    }

    public void testQueryAllBook() {
        int[] nums = new int[]{4,1,2,1,2};
        HashMap<Integer,Integer> map = new HashMap();
        for(int num:nums){
            if(map.containsKey(num)){
                map.remove(num);
            }else{
                map.put(num,1);
            }
        }
        for(int e: map.keySet()){
            System.out.println(e);
        }

    }
}