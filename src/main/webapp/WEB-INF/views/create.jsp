<%--
  Created by IntelliJ IDEA.
  User: huan
  Date: 11/12/2023
  Time: 5:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Home</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

<%--  <link rel="stylesheet" href="../css/index.css">--%>
  <style>
    .bg-color{
      background-color: blue;
    }

    .bg-color a{
      color: white;
    }

    img{
      width: 100px;
      height: 100px;
    }
    .head-color{
      color: white;
    }
  </style>

</head>
<body>
<div class="container">
  <div class="row">
    <div class="col-12">
      <nav class="navbar navbar-expand-lg bg-color">
        <a class="navbar-brand" href="http://localhost:8080/student/home">Home</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
              <a class="nav-link" href="#"> FORM ADD STUDENT  <span class="sr-only">(current)</span></a>
            </li>
          </ul>

        </div>
      </nav>
    </div>
    <div class="col-12 mt-5"  >
      <form action="http://localhost:8080/student/create" method="post">
        <div class="form-row">
          <div class="form-group col-md-6">
            <label for="inputEmail4">Id</label>
            <input type="number" class="form-control" id="inputEmail3" name="id" placeholder="Id">
          </div>
          <div class="form-group col-md-6">
            <label for="inputEmail4">Name</label>
            <input type="text" class="form-control" id="inputEmail4" name="name" placeholder="Name">
          </div>
          <div class="form-group col-md-6">
            <label for="inputPassword4">Email</label>
            <input type="text" class="form-control" id="inputPassword4" name="email" placeholder="Email">
          </div>
        </div>
        <div>
          <div class="form-group">
            <div class="form-group">
              <label for="birthday">Birthday</label>
              <input type="text" class="form-control" id="birthday" name="birthday" placeholder="Birthday">
            </div>
            <label for="inputAddress">Address</label>
            <input type="text" class="form-control" id="inputAddress" name="address" placeholder="Address">
          </div>

          <div class="form-group">
            <label for="phoneNumber">Phone Number</label>
            <input type="text" class="form-control" id="phoneNumber" name="phoneNumber" placeholder="Phone Number">
          </div>



        </div>


        <div class="form-row">

          <div class="form-group col-md-4">
            <label for="idClassroom">Classroom</label>
            <select id="idClassroom" class="form-control" name="idClassroom" >
              <c:forEach var="item" items="${classroomList}">
                <option value="${item.id}">${item.name}</option>

              </c:forEach>

            </select>

          </div>

        </div>

        <button type="submit" class="btn btn-primary">ADD</button>
      </form>

    </div>
  </div>
</div>

</body>
</html>