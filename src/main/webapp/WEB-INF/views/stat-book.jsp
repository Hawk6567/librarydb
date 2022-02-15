<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Library BRM</title>
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
    <%@ page isELIgnored="false" %>
    <script src="<c:url value="/resources/js/jquery-1.11.1.min.js" />"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
</head>

<body>
<div class="container">
    <div class="col-md-offset-1 col-md-10">
        <h3 class="text-center">Library BRM - Books Relationship Manager</h3>
        <hr/>

        <input type="button" value="Add Book"
               onclick="window.location.href='showForm'; return false;"
               class="btn btn-primary"/> <br/>
        <br/>
        <div class="panel panel-info">
            <div class="panel-heading">
                <div class="panel-title">Book List</div>
            </div>
            <div class="panel-body">
<%--                <table class="table table-striped table-bordered">--%>
<%--                    <td>--%>
                <table class="table table-striped table-bordered">
                    <tr>
                        <th>BookName</th>
                        <th>Authors</th>
                        <th>Genre</th>
                        <th>Page count</th>
                        <th>Ratings</th>
                        <th>Count</th>
                        <th>Reading now</th>
                        <th>Reading now</th>
                        <th>Avg reading
                               time</th>
                    </tr>

                    <c:forEach var="tempBook" items="${book}">
                        <tr>
                            <td>${tempBook.key.bookName}</td>
                            <td>${tempBook.value.get(0)}</td>
                            <td>${tempBook.key.genre}</td>
                            <td>${tempBook.key.pageCount}</td>
                            <td>${tempBook.key.ratings}</td>
                            <td>${tempBook.key.count}</td>
                            <td>${tempBook.value.get(1)}</td>
                            <td>${tempBook.value.get(3)}</td>
                            <td>${tempBook.value.get(2)}</td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    </div>

</div>
</body>

</html>









