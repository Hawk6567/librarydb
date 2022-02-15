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

        <input type="button" value="Back"
               onclick="window.location.replace('http://localhost:8080/JavaClub5_team2_war_exploded/book/list'); return false;"
               class="btn btn-primary"/> <br/><br/>
        <br/>
        <div class="panel panel-info">

            <div class="panel-heading">
                <div class="panel-title">Author List</div>
            </div>
            <div class="panel-body">
                <table class="table table-striped table-bordered">
                    <tr>
                        <th>Author First Name</th>
                        <th>Author Last Name</th>
                        <th>Action</th>
                    </tr>

                    <c:forEach var="author" items="${authors}">

                        <c:url var="updateLink" value="/author/updateForm">
                            <c:param name="authorID" value="${author.id}"/>
                        </c:url>


                        <c:url var="deleteLink" value="/author/delete/${author.id}">
<%--                            <c:param name="authorID" value="${author.id}"/>--%>
                        </c:url>

                        <tr>
                            <td>${author.firstName}</td>
                            <td>${author.lastName}</td>
                            <td>

                                <a href="${updateLink}">Update</a> | <a href="${deleteLink}"
                                                                        onclick="if (!(confirm('Are you sure you want to delete this author ?'))) return false">Delete</a>
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









