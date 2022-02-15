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

        <input type="button" value="My books"
               onclick="window.location.replace('http://localhost:8080/JavaClub5_team2_war_exploded/books/my'); return false;"
               class="btn btn-primary"/>
        <input type="button" value="My carts"
               onclick="window.location.replace('http://localhost:8080/JavaClub5_team2_war_exploded/carts/my'); return false;"
               class="btn btn-primary"/>
        <input type="button" value="My forms"
               onclick="window.location.replace('http://localhost:8080/JavaClub5_team2_war_exploded/forms/my'); return false;"
               class="btn btn-primary"/> <br/><br/>
        <input type="button" value="Filter"
               onclick="window.location.replace('http://localhost:8080/JavaClub5_team2_war_exploded/books/filter'); return false;"
               class="btn btn-primary"/> <br/>
        <br/>
        <div class="panel panel-info">
            <div class="panel-heading">
                <div class="panel-title">Book List</div>
            </div>
            <div class="panel-body">
                <table class="table table-striped table-bordered">
                    <tr>
                        <th>BookName</th>
                        <th>Author</th>
                        <th>Genre</th>
                        <th>Action</th>
                    </tr>

                    <c:forEach var="tempBook" items="${books}">

                        <c:url var="updateLink" value="/books/info">
                            <c:param name="bookID" value="${tempBook.id}"/>
                        </c:url>

                        <c:if test="${tempBook.count>0}">
                            <c:url var="takeLink" value="/cart/add/${tempBook.id}">
                            </c:url>
                            <%  %>
                        </c:if>
                        <c:if test="${tempBook.count<1}">
                            <c:url var="takeLink" value=""></c:url>
<%--                            <% "Sorry book is currently unavailable. Choose another or wait!"; %>--%>
                        </c:if>
                        <tr>
                            <td>${tempBook.bookName}</td>
                            <td>${tempBook.mainAuthor.firstName}  ${tempBook.mainAuthor.lastName}</td>
                            <td>${tempBook.genre}</td>
                            <td>
                                <a href="${updateLink}">Details</a> | <a href="${takeLink}">Take</a>

                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    </div>

</div>
</body>

</html>









