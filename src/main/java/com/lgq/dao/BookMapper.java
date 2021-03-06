package com.lgq.dao;

import com.lgq.pojo.Books;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author lgq
 * @create 2021-01-06-15:29
 */
public interface BookMapper {

    //增加一本书
    int addBook(Books books);

    //删除一本书
    int deleteBookById(@Param("id") int id);

    //修改一本书
    int updateBook(Books books);

    //根据id查询书
    Books queryBookById(@Param("id") int id);

    //查询全部的书
    List<Books> queryAllBook();

    //按书名搜索书籍
    Books queryBookByName(@Param("bookName") String bookName);

}
