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
        <h2 class="text-center">filter</h2>
        <div class="panel panel-info">
            <div class="panel-heading">
                <div class="panel-title">Filter</div>
            </div>
            <div class="panel-body">
                <form:form action="showBooks" method="GET">
                  <div style="align-content: center">  <div class="form-group">
                        <label class="col-md-3 control-label">Book name:</label>
                        <div class="col-md-9">
                            <input type="text" name="bookName">
                            <br/><br/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label"> Author: </label>
                        <div class="col-md-9">
                            <input type="text" name="Author"/> <br/><br/>
                        </div>
                    </div>
                    <label class="col-md-3 control-label">Most popular books</label>  <input type="radio" value="popular"
                                                                                            class="radio"
                                                                                            name="popular"/>
                    <br/>
                    <br/>
                    <label class="col-md-3 control-label">Most unpopular books</label> <input type="radio"
                                                                                              value="unpopular"
                                                                                              class="radio"
                                                                                              name="popular"/>
                    <br/>
                    <br/>
                    <label class="col-md-3 control-label">All books</label> <input type="radio" value="nothing"
                                                                                    class="radio" checked="checked"
                                                                                    name="popular"/>                    <br/>
                    <br/>

                    <div class="form-group">
                        <label class="col-md-3 control-label">Start date</label>
                        <div class="col-md-9">
                            <input type="date" pattern="yyyy-mm-dd" value="2021-01-01" name="start"/><br/><br/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label"> End date </label>
                        <div class="col-md-9"><input type="date" pattern="yyyy-mm-dd"
                                                     value="2022-02-15" name="end"/><br/><br/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label"> Available </label>
                        <div class="col-md-9">
                            <input type="radio" value="true" checked="checked" name="available"/>true
                            <input type="radio" value="false" name="available"/>false<br/><br/>
                        </div>
                    </div>
                    <%--                    </div>--%>
                    <input type="submit" class="btn btn-primary" style="margin-left: 14.88vw" value="Search"/>
                    <input type="button" value="back" style="margin-left: 2vw"
                           onclick="window.location.replace('http://localhost:8080/JavaClub5_team2_war_exploded/books'); return false;"
                           class="btn btn-primary"/>
                  </div>
                </form:form>

            </div>
        </div>
    </div>
</div>
</body>
</html>