<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Chỉnh sửa thông tin dự án</title>
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
                <h3 class="mb-4 text-center">Chỉnh sửa thông tin dự án</h3>
                <p class = "text-center text-danger">${message_update }</p>
                <form method="post" action="<%=request.getContextPath()%>/project/edit">
                    <div class="row">
                    <input type="hidden" name="id" value="${projectOld.id }"/>
                        <div class="col-md-6 m-auto">
                            <div class="form-group">
                                <label>Tên dự án</label>
                                <input type="text" name="projectname" value="${projectOld.name }" class="form-control" placeholder="name" />
                            </div>
                            <div class="form-group">
                                <label>Mô tả</label>
                                <input type="text" name="description" value="${projectOld.description }" class="form-control" placeholder="description" />
                            </div>
                              <div class="form-group">
                                <label>Ngày bắt đầu</label>
                                <input type="text" name="startdate" value="${projectOld.startDate }" class="form-control" placeholder="yyyy-mm-dd" />
                            </div>
                              <div class="form-group">
                                <label>Ngày kết thúc</label>
                                <input type="text" name="enddate" value="${projectOld.endDate }" class="form-control" placeholder="yyyy-mm-dd" />
                            </div>
                              <div class="form-group">
                                <label>Người tạo dự án</label> 
                                <select class="form-control" name="userid">
									<c:forEach items="${listUser }" var="item">
										<option value="${item.id }" <c:if test="${item.id == projectOld.userId}"> selected ="selected"</c:if>>${item.fullName }</option>
									</c:forEach>
								</select>
							</div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-success">Lưu lại</button>
                                <a class="btn btn-secondary" href="<%=request.getContextPath()%>/project">Quay lại</a>
                            </div>
                        </div>
                    </div>
                </form>
            </section>
        </div>
    </div>
    <script src="<%=request.getContextPath() %>/static/js/jquery.slim.min.js"></script>
    <script src="<%=request.getContextPath() %>/static/js/popper.min.js"></script>
    <script src="<%=request.getContextPath() %>/static/js/bootstrap.min.js"></script>
</body>

</html>