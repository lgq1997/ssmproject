<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: XUE
  Date: 2021/1/7
  Time: 14:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>书籍展示页面</title>

<%--    BootStrap美化界面--%>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">


</head>
<body>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12">
            <div class="page-header">
                <h1>
                    <small>书籍列表————————————显示所有书籍</small>
                </h1>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4 column">
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/toAddBook">新增书籍</a>
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/allBook">显示全部书籍</a>
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/index.jsp">返回首页</a>
            </div>
            <div class="col-md-4 column"></div>
            <div class="col-md-4 column">
<%--                查询书籍--%>
                <form action="${pageContext.request.contextPath}/book/queryBook" method="post" style="float: right">
                    <span style="color: red;font-weight: bold">${err}</span>
                    <input type="text" name="queryBookName" class="from-control" placeholder="请输入要查询的书籍名称">
                    <input type="submit" value="查询" class="btn btn-primary">
                </form>
            </div>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                    <tr>
                        <th>书籍编号</th>
                        <th>书籍名称</th>
                        <th>书籍作者</th>
                        <th>书籍价格</th>
                        <th>书籍数量</th>
                        <th>书籍描述</th>
                        <th>操作</th>

                    </tr>
                </thead>
<%--                书籍从数据库中查出来，从list中遍历出来--%>
                <tbody>
                    <c:forEach var="book" items="${list}">  <%--列表名叫list，每一项的名称叫book--%>
                        <tr>
                            <td>${book.bookID}</td>
                            <td>${book.bookName}</td>
                            <td>${book.author}</td>
                            <td>${book.price}</td>
                            <td>${book.bookCounts}</td>
                            <td>${book.detail}</td>
                            <td>
                                <!--需要先把要修改的数据给前端展示，所以需要先获取要修改书籍的id-->
                                <a href="${pageContext.request.contextPath}/book/toUpdateBook?id=${book.bookID}">修改</a>
                                &nbsp; | &nbsp;
                                <a href="${pageContext.request.contextPath}/book/deleteBook/${book.bookID}">删除</a>
                            </td>
                        </tr>
                    </c:forEach>
                 </tbody>
            </table>
        </div>

    </div>


</div>



</body>
</html>
