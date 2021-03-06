<%@ page session="false"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">

<jsp:include page="../fragments/header.jsp" />

<body>

<div class="container">

    <c:if test="${not empty msg}">
    <div class="alert alert-${css} alert-dismissible" role="alert">
        <button type="button" class="close" data-dismiss="alert"
                aria-label="Close">
            <span aria-hidden="true">L-X</span>
        </button>
        <strong>${msg}</strong>
    </div>
    </c:if>

    <h1>All Stations</h1>

        <table class="table table-striped">
            <thead>
            <tr>
                <th>#ID</th>
                <th>Name</th>
            </tr>
            </thead>

            <c:forEach var="station" items="${stations}">
            <tr>
                <td>
                        ${station.id}
                </td>
                <td>${station.name}</td>
                <td>
                    <spring:url value="/stations/${station.id}" var="stationUrl" />
                    <spring:url value="/stations/${station.id}/delete" var="deleteUrl" />
                    <spring:url value="/stations/${station.id}/update" var="updateUrl" />

                    <button class="btn btn-info"
                            onclick="location.href='${stationUrl}'">Details</button>
                    <button class="btn btn-primary"
                            onclick="location.href='${updateUrl}'">Update</button>
                    <button class="btn btn-danger"
                            onclick="this.disabled=true;post('${deleteUrl}')">Delete</button>
                </td>
            </tr>
            </c:forEach>
        </table>

</div>


<jsp:include page="../fragments/footer.jsp" />

</body>
</html>