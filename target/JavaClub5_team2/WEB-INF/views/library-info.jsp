<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Library BRM</title>
    <link href="<c:url value="/resources/css/bootstrap.min.css" />"
          rel="stylesheet">
    <script src="<c:url value="/resources/js/jquery-1.11.1.min.js" />"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>

</head>
<body>
<div class="container">
    <div class="col-md-offset-2 col-md-7">
        <h2 class="text-center">Library statistic</h2>
        <div class="panel panel-info">
            <div class="panel-heading">
                <div class="panel-title">Statistic</div>
            </div>

            <br/>
            <div class="panel-body">

                <c:forEach var="tempBook" items="${readers}">--%>

<%--                <c:url var="updateLink" value="/books/info">--%>
<%--                    <c:param name="bookID" value="${tempBook.key.id}"/>--%>
<%--                </c:url>--%>
<%--                <c:url var="takeLink" value="/cart/add/${tempBook.key.id}">--%>
<%--                    &lt;%&ndash;                            <c:param name="bookID" value="${tempBook.id}"/>&ndash;%&gt;--%>
<%--                </c:url>--%>
                <label>${tempBook}</label>
                </c:forEach>
                <input type="button" value="back" style="margin-left: 14.88vw"
                           onclick="window.location.replace('http://localhost:8080/JavaClub5_team2_war_exploded/readers'); return false;"
                           class="btn btn-primary"/> <br/>
            </div>
        </div>
    </div>
</div>
</body>
</html>