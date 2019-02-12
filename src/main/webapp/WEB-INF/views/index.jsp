<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>ورود</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
          integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <link href="<c:url value="/resources/css/signin.css"/>"/>


</head>

<body>
<form class="form-signin" action="<c:url value="/index"/>" method="post"
      style="margin-left:40%;margin-right:40%;margin-top:10%">
    <img class="mb-4" src="<c:url value="/resources/img/bootstrap-solid.svg"/>" alt="" width="72" height="72"
         style="align-content: center">
    <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>

    <input type="text" id="username" class="form-control" placeholder="Email address" required name="username">
    <br>

    <input type="password" id="password" class="form-control" placeholder="Password" required name="password">
    <div class="checkbox mb-3">
        <label>
            <input type="checkbox" value="remember-me"> Remember me
        </label>
    </div>
    <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
    <p class="mt-5 mb-3 text-muted">© 2017-2018</p>
</form>


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
        integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
        integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
        crossorigin="anonymous"></script>

<%--<script href="<c:url value="/resources/js/jquery-1.11.3.min.js"/>"></script>--%>
<%--<script href="<c:url value="/resources/js/bootstrap.min.js"/>"></script>--%>
</body>
</html>
