package com.lgq.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

/**
 * @author lgq
 * @create 2021-01-06-15:19
 */

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Books {
    private int bookID;
    private String bookName;
    private String author;
    private BigDecimal price;
    private int bookCounts;
    private String detail;

}
