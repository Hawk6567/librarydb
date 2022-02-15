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
                <div class="panel-title">Update author</div>
            </div>
            <div class="panel-body">
                <form:form action="saveAuthor" cssClass="form-horizontal"
                           method="post" modelAttribute="author">


                    <form:hidden path="id"/>

                    <div class="form-group">
                        <label for="firstName" class="col-md-3 control-label">Author Name</label>
                        <div class="col-md-9">
                            <form:input path="firstName" cssClass="form-control"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="lastName" class="col-md-3 control-label">Author Last Name</label>
                        <div class="col-md-9">
                            <form:input path="lastName" cssClass="form-control"/>
                        </div>
                    </div>


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