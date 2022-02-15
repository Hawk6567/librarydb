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
        <h3 class="text-center">Library BRM - Carts Relationship Manager</h3>
        <hr/>

        <%--        <input type="button" value="Add Cart"--%>
        <%--               href="/book/list"--%>
        <%--               class="btn btn-primary"/> <br/>--%>
        <%--        <br/>--%>
        <div class="panel panel-info">
            <div class="panel-heading">
                <div class="panel-title">Cart List</div>
            </div>
            <div class="panel-body">
                <table class="table table-striped table-bordered">
                    <tr>
                        <th>BookID</th>
                        <th>BookName</th>
                        <th>UserID</th>
                        <th>Action</th>
                    </tr>

                    <c:forEach var="tempCart" items="${carts}">

                        <c:url var="updateLink" value="/books/info">
                            <c:param name="bookID" value="${tempCart.cartBook.id}"/>
                        </c:url>


                        <c:url var="deleteLink" value="/cart/delete/${tempCart.id}">
<%--                            <c:param name="cartID" value="${tempCart.id}"/>--%>
                        </c:url>


                        <tr>
                            <td>${tempCart.cartBook.id}</td>
                            <td>${tempCart.cartBook.bookName}</td>
                            <td>${tempCart.cartUser.id}</td>
                            <td>${tempCart.action}</td>
                            <td>

                                <a href="${updateLink}">Details</a> | <a href="${deleteLink}"
                                                                        onclick="if (!(confirm('Are you sure you want to delete this CART?'))) return false">Delete</a>
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









