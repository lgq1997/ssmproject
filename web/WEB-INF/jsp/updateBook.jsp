<%--
  Created by IntelliJ IDEA.
  User: XUE
  Date: 2021/1/8
  Time: 9:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改书籍</title>
    <%--    BootStrap美化界面--%>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12">
                <div class="page-header">
                    <h1>
                        <small>修改书籍</small>
                    </h1>
                </div>
            </div>
        </div>

        <form action="${pageContext.request.contextPath}/book/updateBook" method="post">
            <%--bookID经隐藏域传递给前端--%>
            <%--注意表单的name属性值要和pojo的属性值名字一致--%>
            <input name="bookID" type="hidden" value="${Qbooks.bookID}">
            <div class="form-group">
                <label>书籍名称</label>
                <input type="text" name="bookName" class="form-control" value="${Qbooks.bookName}">
            </div>
            <div class="form-group">
                <label>书籍作者</label>
                <input type="text" name="author" class="form-control" value="${Qbooks.author}">
            </div>
            <div class="form-group">
                <label>书籍价格</label>
                <input type="text" name="price" class="form-control" value="${Qbooks.price}">
            </div>
            <div class="form-group">
                <label>书籍数量</label>
                <input type="text" name="bookCounts" class="form-control" value="${Qbooks.bookCounts}">
            </div>
            <div class="form-group">
                <label>书籍描述</label>
                <input type="text" name="detail" class="form-control" value="${Qbooks.detail}">
            </div>

            <div class="form-group">
                <input type="submit" class="form-control" value="修改">
            </div>


        </form>



    </div>



</head>
<body>

</body>
</html>
