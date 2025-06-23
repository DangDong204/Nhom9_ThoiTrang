<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Thông tin tài khoản</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="manifest" href="site.webmanifest">
<link rel="shortcut icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/assets/img/favicon.ico">

<!-- CSS here -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/hpcss/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/hpcss/owl.carousel.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/hpcss/flaticon.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/hpcss/slicknav.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/hpcss/animate.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/hpcss/magnific-popup.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/hpcss/fontawesome-all.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/hpcss/themify-icons.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/hpcss/slick.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/hpcss/nice-select.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/hpcss/style.css">

<style type="text/css">
.single-product .cart {
	position: absolute;
	bottom: 20px;
	left: 50%;
	transform: translateX(-50%);
	opacity: 0;
	transition: all 0.3s ease-in-out;
	background-color: #000;
	padding: 6px 14px;
	border-radius: 25px;
}

.single-product .cart a {
	color: #fff;
	font-size: 14px;
	text-decoration: none;
}

.product-img {
	position: relative;
	overflow: hidden;
}

.single-product:hover .cart {
	opacity: 1;
	bottom: 30px;
}
</style>

</head>

<body>

	<!-- Preloader Start -->
	<div id="preloader-active">
		<div
			class="preloader d-flex align-items-center justify-content-center">
			<div class="preloader-inner position-relative">
				<div class="preloader-circle"></div>
				<div class="preloader-img pere-text">
					<img
						src="${pageContext.request.contextPath}/assets/img/logo/logo.png"
						alt="">
				</div>
			</div>
		</div>
	</div>
	<!-- Preloader Start -->

	<jsp:include page="parts/header.jsp" />


	<main class="container my-5">
		<!-- Breadcrumb -->
		<nav aria-label="breadcrumb">
			<ol class="breadcrumb bg-transparent px-0">
				<li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/home" class="text-decoration-none text-dark">Trang chủ</a></li>
				<li class="breadcrumb-item active" aria-current="page">Tài
					khoản</li>
			</ol>
		</nav>

		<div class="row">
			<!-- Sidebar -->
			<div class="col-md-3 mb-4">
				<div class="border rounded p-3 bg-white shadow-sm">
					<h5 class="mb-3">${sessionScope.loggedUser.fullName}</h5>
					<ul class="list-unstyled">
						<li><a href="#" class="d-block py-2 text-dark">Đơn hàng</a></li>
						<li><a href="#" class="d-block py-2 text-dark">Mã giảm giá</a></li>
						<li><a href="${pageContext.request.contextPath}/changepassword" class="d-block py-2 text-dark">Đổi mật khẩu</a></li>
						<li><a href="${pageContext.request.contextPath}/logout"class="d-block py-2 text-danger">Đăng xuất</a></li>
					</ul>

				</div>
			</div>


			<!-- Main content -->
			<div class="col-md-9">
				<div class="border rounded p-4 bg-white shadow-sm">
					<h4 class="mb-4">Thông tin tài khoản</h4>
					<form action="${pageContext.request.contextPath}/update-profile"
						method="post">
						<div class="form-row">
							<div class="form-group col-md-6">
								<label>Họ và tên</label> <input type="text" class="form-control"
									name="fullName" value="${sessionScope.user.customerName}">
							</div>
							<div class="form-group col-md-6">
								<label>Giới tính</label><br>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="gender"
										id="genderNam" value="Nam"
										${sessionScope.user.customerGender == 'Nam' ? 'checked' : ''}>
									<label class="form-check-label" for="genderNam">Nam</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="gender"
										id="genderNu" value="Nữ"
										${sessionScope.user.customerGender == 'Nữ' ? 'checked' : ''}>
									<label class="form-check-label" for="genderNu">Nữ</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="gender"
										id="genderKhac" value="Khác"
										${sessionScope.user.customerGender == 'Khác' ? 'checked' : ''}>
									<label class="form-check-label" for="genderKhac">Khác</label>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label>Ngày sinh</label> <input type="date" class="form-control"
								name="dob" value="${sessionScope.user.customerDate}">
						</div>

						<div class="form-group">
							<label>Địa chỉ</label> <input type="text" class="form-control"
								name="address" value="${sessionScope.user.customerAddress}">
						</div>

						<div class="form-row">
							<div class="form-group col-md-6">
								<label>Số điện thoại</label> <input type="text"
									class="form-control" name="phone"
									value="${sessionScope.user.customerMobiphone}">
							</div>
							<div class="form-group col-md-6">
								<label>Email</label> <input type="email" class="form-control"
									name="email" value="${sessionScope.user.customerEmail}">
							</div>
						</div>
						<button type="submit" class="btn btn-primary">Lưu thay
							đổi</button>
					</form>
				</div>
			</div>
		</div>
	</main>

	<jsp:include page="parts/footer.jsp" />

	<!-- JS here -->
	


	<!-- All JS Custom Plugins Link Here here -->
	<script
		src="${pageContext.request.contextPath}/assets/hpjs/vendor/modernizr-3.5.0.min.js"></script>
	<!-- Jquery, Popper, Bootstrap -->
	<script
		src="${pageContext.request.contextPath}/assets/hpjs/vendor/jquery-1.12.4.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/hpjs/popper.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/hpjs/bootstrap.min.js"></script>
	<!-- Jquery Mobile Menu -->
	<script
		src="${pageContext.request.contextPath}/assets/hpjs/jquery.slicknav.min.js"></script>

	<!-- Jquery Slick , Owl-Carousel Plugins -->
	<script
		src="${pageContext.request.contextPath}/assets/hpjs/owl.carousel.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/hpjs/slick.min.js"></script>

	<!-- One Page, Animated-HeadLin -->
	<script src="${pageContext.request.contextPath}/assets/hpjs/wow.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/hpjs/animated.headline.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/hpjs/jquery.magnific-popup.js"></script>

	<!-- Scrollup, nice-select, sticky -->
	<script
		src="${pageContext.request.contextPath}/assets/hpjs/jquery.scrollUp.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/hpjs/jquery.nice-select.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/hpjs/jquery.sticky.js"></script>

	<!-- contact js -->
	<script src="${pageContext.request.contextPath}/assets/hpjs/contact.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/hpjs/jquery.form.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/hpjs/jquery.validate.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/hpjs/mail-script.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/hpjs/jquery.ajaxchimp.min.js"></script>

	<!-- Jquery Plugins, main Jquery -->
	<script src="${pageContext.request.contextPath}/assets/hpjs/plugins.js"></script>
	<script src="${pageContext.request.contextPath}/assets/hpjs/main.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>



	<c:if test="${not empty message}">
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            Swal.fire({
                icon: '${messageType}',
                title: '${messageType == "success" ? "Thành công" : "Thông báo"}',
                text: '${message}',
                confirmButtonText: 'Đóng'
            });
        });
    </script>
	</c:if>

</body>
</html>