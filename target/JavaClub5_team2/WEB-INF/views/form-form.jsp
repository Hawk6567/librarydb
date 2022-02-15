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
        <h2 class="text-center">CRUD FORM</h2>
        <div class="panel panel-info">
            <div class="panel-heading">
                <div class="panel-title">Add Form</div>
            </div>
            <div class="panel-body">
                <form:form action="saveForm" cssClass="form-horizontal"
                           method="post" modelAttribute="form">


                    <form:hidden path="id"/>

                    <div class="form-group">
                        <label for="startDate" class="col-md-3 control-label">Start date</label>
                        <div class="col-md-9">
                            <form:input path="startDate" cssClass="ui-icon-calendar"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="returnDate" class="col-md-3 control-label">Return date</label>
                        <div class="col-md-9">
                            <form:input path="returnDate" cssClass="form-control"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="bookReturned" class="col-md-3 control-label">Book Returned</label>
                        <div class="col-md-9">
                            <form:input path="bookReturned" cssClass="form-control"/>
                        </div>
                    </div>
                    <div class="form-group" hidden="true">
                        <label for="formBook.id" class="col-md-3 control-label">Book Returned</label>
                        <div class="col-md-9">
                            <form:input path="formBook.id" cssClass="form-control"/>
                        </div>
                    </div>
                    <div class="form-group" hidden="hidden">
                        <label for="formUser.id" class="col-md-3 control-label">Book Returned</label>
                        <div class="col-md-9">
                            <form:input path="formUser.id" cssClass="form-control"/>
                        </div>
                    </div>
                    <div class="form-group" hidden="hidden">
                        <label for="formBook.bookName" class="col-md-3 control-label">Book Returned</label>
                        <div class="col-md-9">
                            <form:input path="formBook.bookName" cssClass="form-control"/>
                        </div>
                    </div>
                    <%--                    <form:hidden path="bookReturned"></form:hidden>--%>


                    <div class="form-group">
                        <div class="col-md-offset-3 col-md-9">
                            <form:button cssClass="btn btn-primary">Submit</form:button>
                        </div>
                    </div>

                </form:form>
            </div>
        </div>
    </div>
</div>
</body>
</html>