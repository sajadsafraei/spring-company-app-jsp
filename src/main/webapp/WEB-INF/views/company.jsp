<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>company</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
          integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <style>
        .row {
            width: 100%;
        }
    </style>

</head>

<body>

<div class="page-container" style="margin-right: 40px;margin-left: 40px">


    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">Navbar</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Link</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                       data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Dropdown
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Something else here</a>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
                </li>
            </ul>
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>
    </nav>

    <br>

    <div class="card" dir="rtl">
        <div class="card-body">
            <form action="/saveCompany" method="post">

                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="companyName">نام شرکت </label>
                            <input id="companyName" type="text" placeholder=" نام شرکت"
                                   name="companyName"
                                   value="${company.companyName}" class="form-control" required="">
                        </div>
                    </div>

                    <div class="col-md-2">
                        <label> نام مدیر </label>
                        <input type="text" id="adminName" name="adminName" class="form-control"
                               placeholder=" نام مدیر" value="${company.adminName}" required="">
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label> آدرس</label>
                            <input type="text" id="address" name="address" value="${company.address}"
                                   class="form-control" placeholder=" آدرس " required="">
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="form-group">
                            <label>شماره حساب </label>
                            <input type="text" id="accountNumber" name="accountNumber"
                                   class="form-control"
                                   value="${company.accountNumber}" placeholder="شماره حساب شرکت "
                                   required="">
                        </div>
                    </div>

                </div>

                <div class="row">


                    <div class="col-md-2">
                        <label>نام دارنده حساب </label>
                        <input type="text" id="nameSahebHesab" name="nameSahebHesab"
                               class="form-control"
                               required placeholder="نام دارنده حساب "
                               value="${company.nameSahebHesab}">
                    </div>
                    <div class="col-md-2">
                        <label>شماره تلفن </label>
                        <input type="number" id="tel" name="tel" class="form-control"
                               required placeholder="شماره تلفن شرکت " value="${company.tel}">
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <label>کد اقتصادی </label>
                            <input type="number" id="codeEghtesadi" name="codeEghtesadi"
                                   class="form-control" required
                                   placeholder="کد اقتصادی " value="${company.codeEghtesadi}">
                        </div>
                    </div>

                    <div class="col-md-2">
                        <div class="form-group">
                            <label> شناسه ملی</label>
                            <input type="number" id="shenaseMeli"
                                   name="shenaseMeli" class="form-control"
                                   required placeholder="شناسه ملی " value="${company.shenaseMeli}">
                        </div>
                    </div>

                    <div class="col-md-2">
                        <br>
                        <button type="submit" class="btn btn-success btn-rounded pull-left">ثبت شرکت /
                            ویرایش
                        </button>
                    </div>

                    <div class="col-md-1">
                        <br>
                        <button type="submit" class="btn btn-info btn-rounded pull-right " id="btnPrint"
                                style="font-size: 10px">چاپ جدول
                        </button>
                    </div>
                    <div class="col-md-1">
                        <br>
                        <button type="submit" class="btn btn-sa btn-rounded pull-right " id="btnExcel"
                                style="font-size: 10px">خروجی اکسل
                        </button>
                    </div>
                </div>

            </form>

        </div>
    </div>

    <br>
    <div class="row" style="margin-left: 5px;margin-right: 5px ; height:500px; overflow:auto;" dir="rtl">

        <table id="table" border="1" style=""
               class="table  table-bordered table-striped table-hover clearfix">
            <thead style="">
            <tr style="background-color: #426632;
                         color: white ;">
                <th style="width:4% ;text-align: center; font-size: 16px;color: white ;">نام شرکت</th>
                <th style="width:2% ;text-align:center; font-size: 16px;color: white ;">نام مدیرعامل
                </th>
                <th style="width:2% ;text-align:center; font-size: 14px;color: white ;">دارنده حساب</th>
                <th style="width:2% ;text-align:center; font-size: 16px;color: white ;">آدرس</th>
                <th style="width:6% ;text-align:center; font-size: 16px;color: white ;"> شماره حساب</th>
                <th style="width:2% ;text-align:center; font-size: 16px;color: white ;">شماره تلفن</th>
                <th style="width:3% ;text-align:center; font-size: 16px;color: white ;">کد اقتصادی</th>
                <th style="width:3% ;text-align:center; font-size: 16px;color: white ;">شناسه ملی</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${companyList}" var="company">
                <tr>
                    <td><a href="/editCompany?companyName=${company.companyName}">${company.companyName}</a>
                    </td>
                    <td> ${company.adminName}</td>
                    <td> ${company.nameSahebHesab}</td>
                    <td> ${company.address}</td>
                    <td> ${company.accountNumber}</td>
                    <td> ${company.tel}</td>
                    <td> ${company.codeEghtesadi}</td>
                    <td> ${company.shenaseMeli}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>


</div>


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
        integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
        integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
        crossorigin="anonymous"></script>


<script>
    $('#btnPrint').on('click', function (e) {
        e.preventDefault();
        print();
    });

    $('#btnExcel').on('click', function (e) {
        e.preventDefault();
        tableToExcel('table', 'sa');
    });
</script>

</body>
</html>
