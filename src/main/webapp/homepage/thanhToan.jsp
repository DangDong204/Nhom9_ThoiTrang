<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>Thanh toán</title>
<meta name="description" content="">
<meta name="keywords" content="">
<!-- Favicons -->
<link
	href="${pageContext.request.contextPath}/assets/adimgs/favicon.png"
	rel="icon">
<link
	href="${pageContext.request.contextPath}/assets/adimgs/apple-touch-icon.png"
	rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link
	href="${pageContext.request.contextPath}/assets/adcss/bootstrap.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/assets/adcss/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/assets/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/assets/vendor/quill/quill.snow.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/assets/vendor/quill/quill.bubble.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/assets/vendor/remixicon/remixicon.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/assets/vendor/simple-datatables/style.css"
	rel="stylesheet">

<!-- Main CSS File -->
<link href="${pageContext.request.contextPath}/assets/adcss/user.css"
	rel="stylesheet">
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

</head>

<body class="checkout-page">
	<jsp:include page="parts/header.jsp" />

	<main class="main">

		<!-- Page Title -->
		<div class="page-title light-background">
			<div class="container">
				<nav class="breadcrumbs">
					<ol>
						<li><a
							href="${pageContext.request.contextPath}/homepage/home.jsp"
							style="color: #4aa5ff; font-weight: bold;">Trang chủ</a></li>
						<li>Chi tiết sản phẩm</a></li>
						<li class="current">Thanh toán</li>
					</ol>
				</nav>
				<h1>Thanh toán</h1>
			</div>
		</div>
		<!-- End Page Title -->

		<!-- Checkout Section -->
		<section id="checkout" class="checkout section">

			<div class="container" data-aos="fade-up" data-aos-delay="100">

				<div class="row">
					<div class="col-lg-8">
						<!-- Checkout Steps -->
						<div class="checkout-steps mb-4" data-aos="fade-up">
							<div class="step active" data-step="1">
								<div class="step-number">1</div>
								<div class="step-title">Thông tin</div>
							</div>
							<div class="step-connector"></div>
							<div class="step" data-step="2">
								<div class="step-number">2</div>
								<div class="step-title">Giao hàng</div>
							</div>
							<div class="step-connector"></div>
							<div class="step" data-step="3">
								<div class="step-number">3</div>
								<div class="step-title">Thanh toán</div>
							</div>
							<div class="step-connector"></div>
							<div class="step" data-step="4">
								<div class="step-number">4</div>
								<div class="step-title">Xác nhận</div>
							</div>
						</div>


						<!-- Checkout Forms Container -->
						<div class="checkout-forms" data-aos="fade-up"
							data-aos-delay="150">
							<form class="checkout-form-element" id="checkout-form">
								<!-- Step 1: Customer Information -->
								<div class="checkout-form active" data-form="1">
									<div class="form-header">
										<h3>Thông tin khách hàng</h3>
										<p>Vui lòng nhập thông tin liên lạc của bạn</p>
									</div>
									<form class="checkout-form-element">
										<div class="row">
											<div class="form-group">
												<label for="first-name">Tên</label> <input type="text"
													name="first-name" class="form-control" id="first-name"
													placeholder="Nhập tên" required="">
											</div>

										</div>
										<div class="form-group mt-3">
											<label for="email">Địa chỉ Email</label> <input type="email"
												class="form-control" name="email" id="email"
												placeholder="Nhập Email" required="">
										</div>
										<div class="form-group mt-3">
											<label for="phone">Số điện thoại</label> <input type="tel"
												class="form-control" name="phone" id="phone"
												placeholder="Nhập số điện thoại" required="">
										</div>
										<div class="text-end mt-4">
											<button type="button" class="btn btn-primary next-step"
												data-next="2">Tiếp tục đến giao hàng</button>
										</div>
									</form>
								</div>

								<!-- Step 2: Shipping Address -->
								<div class="checkout-form d-none" data-form="2">
									<div class="form-header">
										<h3>Địa chỉ giao hàng</h3>
										<p>Chúng tôi sẽ giao đơn hàng của bạn đến đâu?</p>
									</div>
									<form class="checkout-form-element">
										<div class="form-group">
											<label for="address">Địa chỉ đường</label> <input type="text"
												class="form-control" name="address" id="address"
												placeholder="Địa chỉ đường" required="">
										</div>
										<div class="form-group mt-3">
											<label for="apartment">Căn hộ, tòa nhà, v.v. (không
												bắt buộc)</label> <input type="text" class="form-control"
												name="apartment" id="apartment"
												placeholder="Căn hộ, tòa nhà, đơn vị, v.v.">
										</div>
										<div class="row mt-3">
											<div class="col-md-4 form-group">
												<label for="city">Thành phố</label> <input type="text"
													name="city" class="form-control" id="city"
													placeholder="Thành phố" required="">
											</div>
											<div class="col-md-4 form-group mt-3 mt-md-0">
												<label for="state">Tỉnh/Quận</label> <input type="text"
													name="state" class="form-control" id="state"
													placeholder="Tỉnh/Quận" required="">
											</div>
											<div class="col-md-4 form-group mt-3 mt-md-0">
												<label for="zip">Mã bưu điện</label> <input type="text"
													name="zip" class="form-control" id="zip"
													placeholder="Mã bưu điện" required="">
											</div>
										</div>
										<div class="form-group mt-3">
											<label for="country">Quốc gia</label> <select
												class="form-select" id="country" name="country" required="">
												<option value="">Chọn quốc gia</option>
												<option value="US">Hoa Kỳ</option>
												<option value="CA">Canada</option>
												<option value="UK">Vương quốc Anh</option>
												<option value="AU">Úc</option>
												<option value="DE">Đức</option>
												<option value="FR">Pháp</option>
											</select>
										</div>
										<div class="form-check mt-3">
											<input class="form-check-input" type="checkbox"
												id="save-address" name="save-address"> <label
												class="form-check-label" for="save-address">Lưu địa
												chỉ này cho đơn hàng sau</label>
										</div>
										<div class="d-flex justify-content-between mt-4">
											<button type="button"
												class="btn btn-outline-secondary prev-step" data-prev="1">
												Quay lại Thông tin</button>
											<button type="button" class="btn btn-primary next-step"
												data-next="3">Tiếp tục đến Thanh toán</button>
										</div>
									</form>
								</div>


								<!-- Step 3: Payment Method -->
								<div class="checkout-form d-none" data-form="3">
									<div class="form-header">
										<h3>Phương thức thanh toán</h3>
										<p>Chọn cách bạn muốn thanh toán</p>
									</div>
									<form class="checkout-form-element">
										<div class="payment-methods">
											<div class="payment-method active">
												<div class="payment-method-header">
													<div class="form-check">
														<input class="form-check-input" type="radio"
															name="payment-method" id="credit-card" checked="">
														<label class="form-check-label" for="credit-card">
															Thẻ tín dụng / ghi nợ </label>
													</div>
													<div class="payment-icons">
														<i class="bi bi-credit-card-2-front"></i> <i
															class="bi bi-credit-card"></i>
													</div>
												</div>
												<div class="payment-method-body">
													<div class="row">
														<div class="col-12 form-group">
															<label for="card-number">Số thẻ</label> <input
																type="text" class="form-control" name="card-number"
																id="card-number" placeholder="1234 5678 9012 3456"
																required="">
														</div>
													</div>
													<div class="row mt-3">
														<div class="col-md-6 form-group">
															<label for="expiry">Ngày hết hạn</label> <input
																type="text" class="form-control" name="expiry"
																id="expiry" placeholder="MM/YY" required="">
														</div>
														<div class="col-md-6 form-group mt-3 mt-md-0">
															<label for="cvv">Mã bảo mật (CVV)</label> <input
																type="text" class="form-control" name="cvv" id="cvv"
																placeholder="123" required="">
														</div>
													</div>
													<div class="form-group mt-3">
														<label for="card-name">Tên trên thẻ</label> <input
															type="text" class="form-control" name="card-name"
															id="card-name" placeholder="Nguyễn Văn A" required="">
													</div>
												</div>
											</div>

											<div class="payment-method mt-3">
												<div class="payment-method-header">
													<div class="form-check">
														<input class="form-check-input" type="radio"
															name="payment-method" id="paypal"> <label
															class="form-check-label" for="paypal">PayPal</label>
													</div>
													<div class="payment-icons">
														<i class="bi bi-paypal"></i>
													</div>
												</div>
												<div class="payment-method-body d-none">
													<p>Bạn sẽ được chuyển đến PayPal để hoàn tất giao dịch
														một cách an toàn.</p>
												</div>
											</div>

											<div class="payment-method mt-3">
												<div class="payment-method-header">
													<div class="form-check">
														<input class="form-check-input" type="radio"
															name="payment-method" id="apple-pay"> <label
															class="form-check-label" for="apple-pay">Apple
															Pay</label>
													</div>
													<div class="payment-icons">
														<i class="bi bi-apple"></i>
													</div>
												</div>
												<div class="payment-method-body d-none">
													<p>Bạn sẽ được yêu cầu xác nhận thanh toán bằng Apple
														Pay.</p>
												</div>
											</div>
										</div>
										<div class="d-flex justify-content-between mt-4">
											<button type="button"
												class="btn btn-outline-secondary prev-step" data-prev="2">
												Quay lại Giao hàng</button>
											<button type="button" class="btn btn-primary next-step"
												data-next="4">Xem lại đơn hàng</button>
										</div>
									</form>
								</div>

								<!-- Step 4: Order Review -->
								<div class="checkout-form d-none" data-form="4">
									<div class="form-header">
										<h3>Kiểm tra lại đơn hàng</h3>
										<p>Vui lòng kiểm tra kỹ thông tin trước khi đặt hàng</p>
									</div>
									<form class="checkout-form-element">
										<div class="review-sections">
											<div class="review-section">
												<div class="review-section-header">
													<h4>Thông tin liên hệ</h4>
													<button type="button" class="btn-edit" data-edit="1">Chỉnh
														sửa</button>
												</div>
												<div class="review-section-content">
													<p class="review-name">John Doe</p>
													<p class="review-email">johndoe@example.com</p>
													<p class="review-phone">+1 (555) 123-4567</p>
												</div>
											</div>

											<div class="review-section mt-3">
												<div class="review-section-header">
													<h4>Địa chỉ giao hàng</h4>
													<button type="button" class="btn-edit" data-edit="2">Chỉnh
														sửa</button>
												</div>
												<div class="review-section-content">
													<p>123 Main Street, Apt 4B</p>
													<p>New York, NY 10001</p>
													<p>Hoa Kỳ</p>
												</div>
											</div>

											<div class="review-section mt-3">
												<div class="review-section-header">
													<h4>Phương thức thanh toán</h4>
													<button type="button" class="btn-edit" data-edit="3">Chỉnh
														sửa</button>
												</div>
												<div class="review-section-content">
													<p>
														<i class="bi bi-credit-card-2-front me-2"></i> Thẻ tín
														dụng kết thúc bằng 3456
													</p>
												</div>
											</div>
										</div>

										<div class="form-check mt-4">
											<input class="form-check-input" type="checkbox" id="terms"
												name="terms" required=""> <label
												class="form-check-label" for="terms"> Tôi đồng ý với Điều khoản và Chính sách bảo mật</a>
											</label>
										</div>

										<div class="success-message d-none">Đơn hàng của bạn đã
											được đặt thành công! Cảm ơn bạn đã mua hàng.</div>

										<div class="d-flex justify-content-between mt-4">
											<button type="button"
												class="btn btn-outline-secondary prev-step" data-prev="3">Quay
												lại thanh toán</button>
											<button type="submit" class="btn btn-success place-order-btn">Đặt
												hàng</button>
										</div>
									</form>
								</div>
							</form>
						</div>
					</div>

					<div class="col-lg-4">

						<!-- Tóm tắt đơn hàng -->
						<div class="order-summary" data-aos="fade-left"
							data-aos-delay="200">
							<div class="order-summary-header">
								<h3>Đơn hàng</h3>
								<button type="button" class="btn-toggle-summary d-lg-none">
									<i class="bi bi-chevron-down"></i>
								</button>
							</div>

							<div class="order-summary-content">
								<!-- Order Item -->
								<div class="order-item d-flex">
									<img src="${product.productImage}" alt="Product"
										class="product-image"  style="width: 80px; height: auto; display: block; margin: 10px; object-fit: contain;" />
									<div class="order-item-details">

									<div class="order-item-details">
										<h6 class="product-title">${product.productName}</h6>
										<p class="product-meta">Danh mục:
											${product.category.categoryName} | Thương hiệu:
											${product.brand.brandName}</p>

										<!-- Hiển thị số lượng × đơn giá -->
										<div class="order-item-price">
											<span class="quantity">${quantity} ×</span> <span
												class="price">$${product.productCost}</span>
										</div>
									</div>
								</div>

								<!-- Tính toán giá -->
								<c:set var="subtotal" value="${product.productCost * quantity}" />
								<c:set var="shipping" value="5" />
								<c:set var="total" value="${subtotal + shipping}" />

								<!-- Hiển thị giá -->
								<div class="order-totals">
									<div class="order-subtotal d-flex justify-content-between">
										<span>Tạm tính</span> <span>$<c:out value="${subtotal}" /></span>
									</div>
									<div class="order-shipping d-flex justify-content-between">
										<span>Phí vận chuyển</span> <span>$<c:out
												value="${shipping}" /></span>
									</div>
									<div class="order-tax d-flex justify-content-between">
										<span>Thuế</span> <span>$0.00</span>
									</div>
									<div class="order-total d-flex justify-content-between">
										<span>Tổng cộng</span> <span>$<c:out value="${total}" /></span>
									</div>
								</div>

								<!-- Mã giảm giá -->
								<div class="promo-code mt-3">
									<div class="input-group">
										<input type="text" class="form-control"
											placeholder="Mã giảm giá" aria-label="Promo Code">
										<button class="btn btn-outline-primary" type="button">Áp
											dụng</button>
									</div>
								</div>

								<div class="secure-checkout mt-4">
									<div class="secure-checkout-header">
										<i class="bi bi-shield-lock"></i> <span>Thanh toán an
											toàn</span>
									</div>
									<div class="payment-icons mt-2">
										<i class="bi bi-credit-card-2-front"></i> <i
											class="bi bi-credit-card"></i> <i class="bi bi-paypal"></i> <i
											class="bi bi-apple"></i>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>						
			</div>

		</section>
		<!-- /Checkout Section -->

	</main>

	<jsp:include page="parts/footer.jsp" />

	<!-- Scroll Top -->
	<a href="#" id="scroll-top"
		class="scroll-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<!-- JS here -->
	<%-- 	<script
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

	<!-- Vendor JS Files -->
	<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="assets/vendor/php-email-form/validate.js"></script>
	<script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
	<script src="assets/vendor/aos/aos.js"></script>
	<script src="assets/vendor/imagesloaded/imagesloaded.pkgd.min.js"></script>
	<script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
	<script src="assets/vendor/drift-zoom/Drift.min.js"></script>
	<script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
 --%>

	<script>
    document.addEventListener("DOMContentLoaded", function () {
        console.log("Checkout JS đã được load ✅");

        const steps = document.querySelectorAll(".checkout-form"); // form từng bước
        const nextButtons = document.querySelectorAll(".next-step");
        const prevButtons = document.querySelectorAll(".prev-step");
        const stepIndicators = document.querySelectorAll(".checkout-steps .step"); // thanh tiến trình

        let currentStep = 0;

        function showStep(index) {
            steps.forEach((step, i) => {
                step.classList.toggle("d-none", i !== index);
                step.classList.toggle("active", i === index);
            });

            //Cập nhật màu bước trên thanh tiến trình
            stepIndicators.forEach((step, i) => {
                step.classList.toggle("active", i === index);
            });
        }

        nextButtons.forEach((btn) => {
            btn.addEventListener("click", function () {
                if (currentStep < steps.length - 1) {
                    currentStep++;
                    showStep(currentStep);
                }
            });
        });

        prevButtons.forEach((btn) => {
            btn.addEventListener("click", function () {
                if (currentStep > 0) {
                    currentStep--;
                    showStep(currentStep);
                }
            });
        });

        showStep(currentStep); // show first step on load
    });
</script>

</body>
</html>