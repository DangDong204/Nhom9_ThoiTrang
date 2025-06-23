package homeController;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Cart;


@WebServlet("/update-cart")
public class cartUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public cartUpdate() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String productId = request.getParameter("productId");
	    String quantityStr = request.getParameter("quantity");

	    HttpSession session = request.getSession();
	    Cart cart = (Cart) session.getAttribute("cart");

	    if (cart != null && productId != null && quantityStr != null) {
	        try {
	            int quantity = Integer.parseInt(quantityStr);
	            if (quantity > 0) {
	                cart.updateItem(productId, quantity);
	            } else {
	                cart.removeItem(productId);
	            }
	        } catch (NumberFormatException e) {
	            e.printStackTrace();
	        }
	    }

	    // Gửi tổng tiền mới về cho JavaScript
	    response.setContentType("text/plain");
	    response.setCharacterEncoding("UTF-8");
	    response.getWriter().write(String.valueOf(cart.getTotal()).trim());

	}

}
