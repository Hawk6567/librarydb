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

        <input type="button" value="Back"
               onclick="window.location.replace('http://localhost:8080/JavaClub5_team2_war_exploded/book/list'); return false;"
               class="btn btn-primary"/> <br/><br/>
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
                        <th>Start date</th>
                        <th>Return date</th>
                        <th>Book returned</th>
                    </tr>

                    <c:forEach var="tempForm" items="${forms}">

                        <c:url var="updateLink" value="/forms/updateForm">
                            <c:param name="formID" value="${tempForm.id}"/>
                        </c:url>


                        <c:url var="deleteLink" value="/forms/delete/${tempForm.id}">
<%--                            <c:param name="cartID" value="${tempCart.id}"/>--%>
                        </c:url>


                        <tr>
                            <td>${tempForm.formBook.id}</td>
                            <td>${tempForm.formBook.bookName}</td>
                            <td>${tempForm.formUser.id}</td>
                            <td>${tempForm.startDate}</td>
                            <td>${tempForm.returnDate}</td>
                            <td>${tempForm.bookReturned}</td>
                            <td>

                                <a href="${updateLink}">Update</a> | <a href="${deleteLink}"
                                                                        onclick="if (!(confirm('Are you sure you want to delete?'))) return false">Delete record</a>
                                |<a href="${updateLink}">Confirm return</a>
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









