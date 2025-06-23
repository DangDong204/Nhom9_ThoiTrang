<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Giỏ hàng - Mộc Store</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="manifest" href="site.webmanifest">
		<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/assets/img/favicon.ico">

		<!-- CSS here -->
            <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/hpcss/bootstrap.min.css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/hpcss/owl.carousel.min.css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/hpcss/flaticon.css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/hpcss/slicknav.css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/hpcss/animate.min.css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/hpcss/magnific-popup.css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/hpcss/fontawesome-all.min.css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/hpcss/themify-icons.css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/hpcss/slick.css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/hpcss/nice-select.css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/hpcss/style.css">
            
            <!-- Font hỗ trợ tiếng Việt -->
			
			            
            
            
   </head>

   <body>
       
    <!-- Preloader Start -->
    <div id="preloader-active">
        <div class="preloader d-flex align-items-center justify-content-center">
            <div class="preloader-inner position-relative">
                <div class="preloader-circle"></div>
                <div class="preloader-img pere-text">
                    <img src="${pageContext.request.contextPath}/assets/img/logo/logo.png" alt="">
                </div>
            </div>
        </div>
    </div>
    <!-- Preloader Start -->
    
	<jsp:include page="parts/header.jsp" />
    

    <main>

        <jsp:include page="parts/slider.jsp" />
        
        
        <!--================Cart Area =================-->
		<%@ page import="model.Cart, model.CartItem, model.Product" %>
		<%
		    Cart cart = (Cart) session.getAttribute("cart");
		%>
		
		<div class="container mb-5">
		    <h2 class="mb-4">Giỏ hàng của bạn</h2>
		    <div class="table-responsive">
		        <table class="table align-middle text-center">
		            <thead class="thead-light">
		                <tr>
		                    <th>Sản phẩm</th>
		                    <th>Đơn giá</th>
		                    <th>Số lượng</th>
		                    <th>Thành tiền</th>
		                    <th></th>
		                </tr>
		            </thead>
		            <tbody>
		                <%
		                    if (cart != null && cart.getItems() != null && !cart.getItems().isEmpty()) {
		                        for (CartItem item : cart.getItems()) {
		                            Product p = item.getProduct();
		                %>
		                <tr>
		                    <td class="text-start d-flex align-items-center">
		                        <img src="<%= p.getProductImage() %>" alt="" width="80" class="me-3 rounded border">
		                        <span><%= p.getProductName() %></span>
		                    </td>
		                    <td><strong><%= String.format("%,d", p.getProductCost()) %>đ</strong></td>
		                    <td>
		                    	<input type="number"
								       class="form-control text-center quantity-input"
								       style="width: 60px; margin: auto;"
								       min="1"
								       value="<%= item.getQuantity() %>"
								       data-product-id="<%= p.getProductId() %>"
								       data-price="<%= p.getProductCost() %>">
							</td>
		                    <td>
							    <strong class="item-total">
							        <%= String.format("%,d", item.getQuantity() * p.getProductCost()) %>đ
							    </strong>
							</td>
									                    
		                    <td>
		                        <a href="remove-from-cart?productId=<%= item.getProduct().getProductId() %>" class="btn btn-primary">Xóa</a>
		                    </td>
		                </tr>
		                <%
		                        }
		                    } else {
		                %>
		                <tr>
		                    <td colspan="5" class="text-center text-muted">Giỏ hàng của bạn đang trống.</td>
		                </tr>
		                <%
		                    }
		                %>
		            </tbody>
		        </table>
		    </div>
		
		    <% if (cart != null && cart.getItems().size() > 0) { %>
		    <div class="d-flex justify-content-end mt-4">
		        <h4>Tổng cộng: 
		        	<span id="cart-total"><%= String.format("%,d", cart.getTotal()) %>đ</span>
		        </h4>
		    </div>
		    <div class="d-flex justify-content-end mt-3">
		    	<a href="home" class="btn btn-secondary">Tiếp tục mua sắm</a>
		        <a href="#" class="btn btn-success me-2">Thanh toán</a>
		    </div>
		    <% } %>
		</div>

				
        
        
		        
		        
        
        
        

    </main>
   
   <jsp:include page="parts/footer.jsp" />
   
	<!-- JS here -->
	
		<!-- All JS Custom Plugins Link Here here -->
        <script src="${pageContext.request.contextPath}/assets/hpjs/vendor/modernizr-3.5.0.min.js"></script>
		<!-- Jquery, Popper, Bootstrap -->
		<script src="${pageContext.request.contextPath}/assets/hpjs/vendor/jquery-1.12.4.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/hpjs/popper.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/hpjs/bootstrap.min.js"></script>
	    <!-- Jquery Mobile Menu -->
        <script src="${pageContext.request.contextPath}/assets/hpjs/jquery.slicknav.min.js"></script>

		<!-- Jquery Slick , Owl-Carousel Plugins -->
        <script src="${pageContext.request.contextPath}/assets/hpjs/owl.carousel.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/hpjs/slick.min.js"></script>

		<!-- One Page, Animated-HeadLin -->
        <script src="${pageContext.request.contextPath}/assets/hpjs/wow.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/hpjs/animated.headline.js"></script>
        <script src="${pageContext.request.contextPath}/assets/hpjs/jquery.magnific-popup.js"></script>

		<!-- Scrollup, nice-select, sticky -->
        <script src="${pageContext.request.contextPath}/assets/hpjs/jquery.scrollUp.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/hpjs/jquery.nice-select.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/hpjs/jquery.sticky.js"></script>
        
        <!-- contact js -->
        <script src="${pageContext.request.contextPath}/assets/hpjs/contact.js"></script>
        <script src="${pageContext.request.contextPath}/assets/hpjs/jquery.form.js"></script>
        <script src="${pageContext.request.contextPath}/assets/hpjs/jquery.validate.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/hpjs/mail-script.js"></script>
        <script src="${pageContext.request.contextPath}/assets/hpjs/jquery.ajaxchimp.min.js"></script>
        
		<!-- Jquery Plugins, main Jquery -->	
        <script src="${pageContext.request.contextPath}/assets/hpjs/plugins.js"></script>
        <script src="${pageContext.request.contextPath}/assets/hpjs/main.js"></script>
        
        
        
        <!-- JS Tự động cập nhật cột THÀNH TIỀN và TỔNG CỘNG  -->
        <script>
			document.querySelectorAll('.quantity-input').forEach(input => {
			    input.addEventListener('change', function () {
			        const quantity = parseInt(this.value);
			        const productId = this.dataset.productId;
			        const price = parseInt(this.dataset.price);
			        const itemRow = this.closest('tr');
			        const itemTotalElem = itemRow.querySelector('.item-total');
			
			        // Cập nhật thành tiền tại hàng hiện tại
			        const newItemTotal = quantity * price;
			        itemTotalElem.textContent = newItemTotal.toLocaleString('vi-VN') + 'đ';
			
			        // Gửi yêu cầu cập nhật server
			        fetch('update-cart', {
			            method: 'POST',
			            headers: {
			                'Content-Type': 'application/x-www-form-urlencoded'
			            },
			            body: `productId=${productId}&quantity=${quantity}`
			        })
			        .then(response => response.text())
			        .then(newTotal => {
			            // Cập nhật tổng cộng sau khi nhận từ server
			        	 console.log("Tổng cộng server trả về:", newTotal); // 👉 debug
			        	 document.getElementById('cart-total').textContent = parseInt(newTotal).toLocaleString('vi-VN') + 'đ';
			        })
			        .catch(error => console.error('Lỗi khi cập nhật giỏ hàng:', error));
			    });
			});
			</script>
			        
    </body>
</html>