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
        <input type="button" value="Manage authors"
               onclick="window.location.replace('http://localhost:8080/JavaClub5_team2_war_exploded/author/list'); return false;"
               class="btn btn-primary"/>
        <input type="button" value="Manage forms"
               onclick="window.location.replace('http://localhost:8080/JavaClub5_team2_war_exploded/forms'); return false;"
               class="btn btn-primary"/>
        <input type="button" value="Manage carts"
               onclick="window.location.replace('http://localhost:8080/JavaClub5_team2_war_exploded/carts'); return false;"
               class="btn btn-primary"/> <br/>
        <br/>
        <input type="button" value="Book statistic"
               onclick="window.location.replace('http://localhost:8080/JavaClub5_team2_war_exploded/books/stat'); return false;"
               class="btn btn-primary"/>
        <input type="button" value="Reader statistic"
               onclick="window.location.replace('http://localhost:8080/JavaClub5_team2_war_exploded/readers'); return false;"
               class="btn btn-primary"/>
        <input type="button" value="Library statistics"
               onclick="window.location.replace('http://localhost:8080/JavaClub5_team2_war_exploded/readers/stat'); return false;"
               class="btn btn-primary"/>
        <br/><br/>
        <div class="panel panel-info">
            <div class="panel-heading">
                <div class="panel-title">Book List</div>
            </div>
            <div class="panel-body">
                <table class="table table-striped table-bordered">
                    <tr>
                        <th>BookName</th>
                        <th>Author First Name</th>
                        <th>Author Last Name</th>
                        <th>Genre</th>
                        <th>Numb.books</th>
                        <th>Numb.pages</th>
                        <th>Ratings</th>
                        <th>Action</th>
                    </tr>

                    <c:forEach var="tempBook" items="${books}">

                        <c:url var="updateLink" value="updateForm">
                            <c:param name="bookID"
                                     value="${tempBook.id}"/>
                        </c:url>

                        <c:url var="takeLink" value="/book/delete-copy/${tempBook.id}">
                            <%--                            <c:param name="bookID" value="${tempBook.id}"/>--%>
                        </c:url>

                        <c:url var="deleteLink" value="/book/delete/${tempBook.id}">
                            <%--                            <c:param name="bookID" value="${tempBook.id}"/>--%>
                        </c:url>
                        <tr>
                            <td>${tempBook.bookName}</td>
                            <td>${tempBook.mainAuthor.firstName}</td>
                            <td>${tempBook.mainAuthor.lastName}</td>
                            <td>${tempBook.genre}</td>
                            <td>${tempBook.count}</td>
                            <td>${tempBook.pageCount}</td>
                            <td>${tempBook.ratings}</td>
                            <td>

                                <a href="${updateLink}">Update</a> | <a href="${takeLink}">Delete copy</a> | <a
                                    href="${deleteLink}"
                                    onclick="if (!(confirm('Are you sure you want to delete this book?'))) return false">Delete</a>
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









