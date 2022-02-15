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
        <h2 class="text-center">CRUD BOOK</h2>
        <div class="panel panel-info">
            <div class="panel-heading">
                <div class="panel-title">Book info</div>
            </div>

            <br/>
            <div class="panel-body">
                <form:form action="books" cssClass="form-horizontal"
                           method="post" modelAttribute="book">


                    <form:hidden path="id"/>

                    <div class="form-group" readonly="true" >
                        <label for="bookName" class="col-md-3 control-label">Book Name</label>
                        <div class="col-md-9">
                            <form:input path="bookName" readonly="true" cssClass="form-control"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="mainAuthor.firstName" class="col-md-3 control-label">Author First Name</label>
                        <div class="col-md-9">
                            <form:input path="mainAuthor.firstName" readonly="true"  cssClass="form-control"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="mainAuthor.lastName" class="col-md-3 control-label">Author Last Name</label>
                        <div class="col-md-9">
                            <form:input path="mainAuthor.lastName" readonly="true"  cssClass="form-control"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="genre" class="col-md-3 control-label">Genre</label>
                        <div class="col-md-9">
                            <form:input path="genre" readonly="true"  cssClass="form-control"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="count" class="col-md-3 control-label">Numb.books</label>
                        <div class="col-md-9">
                            <form:input path="count" readonly="true"  cssClass="form-control"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="pageCount" class="col-md-3 control-label">Numb.pages</label>
                        <div class="col-md-9">
                            <form:input path="pageCount" readonly="true"  cssClass="form-control"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="ratings" class="col-md-3 control-label">Ratings</label>
                        <div class="col-md-9">
                            <form:input path="ratings" readonly="true"  cssClass="form-control"/>
                        </div>
                    </div>
                    <br/>
                    <input type="button" value="back" style="margin-left: 14.88vw"
                           onclick="window.location.replace('http://localhost:8080/JavaClub5_team2_war_exploded/books'); return false;"
                           class="btn btn-primary"/> <br/>
                </form:form>
            </div>
        </div>
    </div>
</div>
</body>
</html>