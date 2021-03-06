<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Danh sách thành viên</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/static/css/bootstrap.min.css">
    <link rel="stylesheet" href='<%=request.getContextPath() %>/static/css/style.css'>
</head>

<body>

    <div class="d-flex justify-content-between">
        <!-- SIDE BAR -->
        <div id="side-bar">
            <div class="logo">${USER_LOGIN.staff } PAGE</div>
            <ul class="list-group rounded-0">
                <li class="dashboard">DASHBOARD</li>
                <li>
                    <a href="<%=request.getContextPath()%>/user">
                        <i class="fa fa-user mr-2"></i> Quản lý thành viên
                    </a>
                </li>
                <li>
                    <a href="<%=request.getContextPath()%>/role">
                        <i class="fa fa-book mr-2"></i> Quản lý quyền
                    </a>
                </li>
                <li>
                    <a href="<%=request.getContextPath()%>/project">
                        <i class="fa fa-cogs mr-2"></i> Quản lý dự án
                    </a>
                </li>
                <li>
                    <a href="<%=request.getContextPath()%>/task">
                        <i class="fa fa-slack mr-2"></i> Quản lý công việc
                    </a>
                </li>
            </ul>
        </div>


        <div id="admin-wrapper">
            <!-- HEADER -->
            <nav class="navbar navbar-expand-sm navbar-light bg-light w-100">
                <a class="navbar-brand" href="#"><i class="fa fa-align-justify"></i></a>
                <button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse"
                    data-target="#collapsibleNavId" aria-controls="collapsibleNavId" aria-expanded="false"
                    aria-label="Toggle navigation"></button>
                <div class="collapse navbar-collapse" id="collapsibleNavId">
                    <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
                        <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="dropdownId"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Cybersoft
                            </a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownId">
                                <a class="dropdown-item" href="<%=request.getContextPath()%>/profile">Thông tin cá nhân</a>
                                <a class="dropdown-item" href="#">Cài đặt</a>
                                <a class="dropdown-item" href="<%=request.getContextPath()%>/logout">Thoát</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>

            <!-- CONTENT -->
            <section id="admin-content" class="p-3">
                <h3 class="mb-3">Danh sách thành viên</h3>
                <div class="row">
                    <div class="col-md-8">
                        <a href="<%=request.getContextPath() %>/user/add" class="btn btn-primary">Thêm mới</a>
                    </div>
                    <div class="col-md-4">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Tìm kiếm...">
                            <div class="input-group-append">
                                <span class="input-group-text" id="basic-addon2"><i class="fa fa-search"></i></span>
                            </div>
                        </div>
                    </div>
                </div>
                <table class="table table-bordered table-hover">
                    <thead>                   
                        <tr>
                            <th>STT</th>
                            <th>Họ Tên</th>
                            <th>Email</th>
                            <th>Chức Vụ</th>
                            <th>#</th>
                        </tr>
                    </thead>
                    
                   <%--  <c:forEach items = "${users }" var = "item">
                    	<c:forEach items = "${roles }" var = "role">
                    			<c:if test="${item.roleId == role.id }">${role.name }</c:if>
                    	</c:forEach>
                    
                    
                    </c:forEach> --%>
                   
                    <tbody>
                    <c:forEach items ="${listUser }" var ="item">
                        <tr>
                            <td>${item.id }</td>
                            <td>${item.fullName }</td>
                            <td>${item.email }</td>
                            <td>${item.roleName}</td>
                            <td>
                                <a href="<%=request.getContextPath() %>/user/edit?id=${item.id}" class="btn btn-sm btn-info">
                                    <i class="fa fa-pencil-square-o"></i>
                                </a>
                                <a href="<%=request.getContextPath() %>/user/delete?id_delete=${item.id}" class="btn btn-sm btn-danger">
                                    <i class="fa fa-trash-o"></i>
                                </a>
                            </td>
                        </tr>
                       </c:forEach>
                    </tbody>
                </table>
                <p class ="text-center text-danger">${message_delete }</p>
            </section>
        </div>
    </div>
    <script src="<%=request.getContextPath() %>/static/js/jquery.slim.min.js"></script>
    <script src="<%=request.getContextPath() %>/static/js/popper.min.js"></script>
    <script src="<%=request.getContextPath() %>/static/js/bootstrap.min.js"></script>
</body>

</html>