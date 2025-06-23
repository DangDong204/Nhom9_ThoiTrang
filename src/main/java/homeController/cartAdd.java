package homeController;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import database.ProductDAO;
import model.Cart;
import model.Product;


@WebServlet("/add-to-cart")
public class cartAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    private ProductDAO productDao = new ProductDAO(); // DAO lấy sản phẩm từ DB

  
    public cartAdd() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String productId = request.getParameter("productId");

        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null) {
            cart = new Cart();
        }

        Product product = productDao.selectById2(productId);
        if (product != null) {
            cart.addItem(product, 1); // Mặc định số lượng là 1 khi thêm lần đầu
        }

        session.setAttribute("cart", cart);
        //response.sendRedirect("/homepage/home.jsp"); // Chuyển đến trang giỏ hàng
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("home");
		dispatcher.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

}
