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

        <%--        <input type="button" value="Debtors"--%>
        <%--               onclick="window.location.href='showForm'; return false;"--%>
        <%--               class="btn btn-primary"/> <br/>--%>
        <%--        <br/>--%>
        <input type="button" value="All"
               onclick="window.location.replace('http://localhost:8080/JavaClub5_team2_war_exploded/readers'); return false;"
               class="btn btn-primary"/>
        <input type="button" value="All statistics"
               onclick="window.location.replace('http://localhost:8080/JavaClub5_team2_war_exploded/readers/stat'); return false;"
               class="btn btn-primary"/>
        <input type="button" value="Notify All"
               onclick="window.location.replace('http://localhost:8080/JavaClub5_team2_war_exploded/book/list'); return false;"
               class="btn btn-primary"/> <br/><br/>
        <%--        <input type="button" value="Manage carts"--%>
        <%--               onclick="window.location.replace('http://localhost:8080/JavaClub5_team2_war_exploded/carts'); return false;"--%>
        <%--               class="btn btn-primary"/> <br/>--%>
        <%--        <br/>--%>
        <%--        <input type="button" value="Book statistic"--%>
        <%--               onclick="window.location.replace('http://localhost:8080/JavaClub5_team2_war_exploded/books/stat'); return false;"--%>
        <%--               class="btn btn-primary"/> <br/><br/>--%>
        <%--        <input type="button" value="Reader statistic"--%>
        <%--               onclick="window.location.replace('http://localhost:8080/JavaClub5_team2_war_exploded/readers/stat'); return false;"--%>
        <%--               class="btn btn-primary"/> --%>
        <br/><br/>
        <div class="panel panel-info">
            <div class="panel-heading">
                <div class="panel-title">Debtors List</div>
            </div>
            <div class="panel-body">
                <table class="table table-striped table-bordered">
                    <tr>
                        <th>Name</th>
                        <th>Surname</th>
                        <th>Age</th>
                        <th>Email</th>
                        <th>Phone</th>
                        <th>Password</th>
                        <th>RegDate</th>
                    </tr>

                    <c:forEach var="tempBook" items="${readers}">

                        <c:url var="updateLink" value="/book/${tempBook.id}"></c:url>

                        <%--                        <c:url var="takeLink" value="/book/delete-copy/${tempBook.id}">--%>
                        <%--                            &lt;%&ndash;                            <c:param name="bookID" value="${tempBook.id}"/>&ndash;%&gt;--%>
                        <%--                        </c:url>--%>

                        <%--                        <c:url var="deleteLink" value="/book/delete/${tempBook.id}">--%>
                        <%--                            &lt;%&ndash;                            <c:param name="bookID" value="${tempBook.id}"/>&ndash;%&gt;--%>
                        <%--                        </c:url>--%>

                        <tr>
                            <td>${tempBook.firstName}</td>
                            <td>${tempBook.lastName}</td>
                            <td>${tempBook.age}</td>
                            <td>${tempBook.email}</td>
                            <td>${tempBook.phone}</td>
                            <td>${tempBook.password}</td>
                            <td>${tempBook.regDate}</td>

                            <td>

                                <a href="${updateLink}">Details</a>
                            </td>
                            <td>

                                <a href="">Notify</a>
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









