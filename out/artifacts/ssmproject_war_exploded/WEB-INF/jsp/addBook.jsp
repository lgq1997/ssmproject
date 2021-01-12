<%--
  Created by IntelliJ IDEA.
  User: XUE
  Date: 2021/1/7
  Time: 16:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <%--    BootStrap美化界面--%>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12">
                <div class="page-header">
                    <h1>
                        <small>新增书籍</small>
                    </h1>
                </div>
            </div>
        </div>

        <form action="${pageContext.request.contextPath}/book/addBook" method="post">
            <div class="form-group">
                <label>书籍名称</label>
                <input type="text" name="bookName" class="form-control" required="required">
            </div>
            <div class="form-group">
                <label>书籍作者</label>
                <input type="text" name="author" class="form-control" required="required">
            </div>
            <div class="form-group">
                <label>书籍价格</label>
                <input type="text" name="price" class="form-control" required="required">
            </div>
            <div class="form-group">
                <label>书籍数量</label>
                <input type="text" name="bookCounts" class="form-control" required="required">
            </div>
            <div class="form-group">
                <label>书籍描述</label>
                <input type="text" name="detail" class="form-control" required="required">
            </div>

            <div class="form-group">
                <input type="submit" class="form-control" value="添加">
            </div>


        </form>



    </div>



</head>
<body>

</body>
</html>
