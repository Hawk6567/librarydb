<%@ page import="java.util.List" %>
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

        <div class="panel panel-info">
            <div class="panel-heading">
                <div class="panel-title">Book that are reading now</div>
            </div>
            <div class="panel-body">
                <table class="table table-striped table-bordered">
                    <tr>
                        <th>BookName</th>
                        <th>Author</th>
                        <th>Genre</th>
                        <th>Action</th>
                    </tr>

                    <c:forEach var="tempBook" items="${reading}">

                        <c:url var="updateLink" value="/books/info">
                                                        <c:param name="bookID" value="${tempBook.id}"/>
                        </c:url>
                        <c:url var="takeLink" value="/cart/return/${tempBook.id}">
<%--                                                        <c:param name="bookID" value="${tempBook.id}"/>--%>
                        </c:url>

<%--                        <c:url var="deleteLink" value="/book/delete/${tempBook.id}">--%>
<%--                            &lt;%&ndash;                            <c:param name="bookID" value="${tempBook.id}"/>&ndash;%&gt;--%>
<%--                        </c:url>--%>

                        <tr>
                            <td>${tempBook.bookName}</td>
                            <td>${tempBook.mainAuthor.firstName} ${tempBook.mainAuthor.lastName}</td>
                            <td>${tempBook.genre}</td>
                            <td>

                                <a href="${updateLink}">Details</a> | <a href="${takeLink}">Return</a>

                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
        <div class="panel panel-info">
            <div class="panel-heading">
                <div class="panel-title">Read books</div>
            </div>
            <div class="panel-body">
                <table class="table table-striped table-bordered">
                    <tr>
                        <th>BookName</th>
                        <th>Author</th>
                        <th>Genre</th>
                        <th>Time of reading</th>
                        <th>Action</th>
                    </tr>

                    <c:forEach var="tempBook" items="${books}">

                        <c:url var="updateLink" value="/books/info">
                            <c:param name="bookID" value="${tempBook.key.id}"/>
                        </c:url>
                        <c:url var="takeLink" value="/cart/add/${tempBook.key.id}">
                            <%--                            <c:param name="bookID" value="${tempBook.id}"/>--%>
                        </c:url>


                        <tr>
                            <td>${tempBook.key.bookName}</td>
                            <td>${tempBook.key.mainAuthor.firstName} ${tempBook.key.mainAuthor.lastName}</td>
                            <td>${tempBook.key.genre}</td>
                            <td>${tempBook.value} days </td>
                            <td>

                                <a href="${updateLink}">Details</a> | <a href="${takeLink}">Take again</a>

                            </td>
                        </tr>
                    </c:forEach>

                </table>
                <input type="button" value="back" style="margin-left: 14.88vw"
                       onclick="window.location.replace('http://localhost:8080/JavaClub5_team2_war_exploded/books'); return false;"
                       class="btn btn-primary"/> <br/>
            </div>
        </div>
    </div>

</div>
</body>

</html>









