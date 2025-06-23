package homeController;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.ProductDAO;
import model.Product;

@WebServlet("/thanhToan")
public class thanhtoanController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // Lấy productId từ request
            String productId = request.getParameter("productid");
            String quantityStr = request.getParameter("quantity");
            int quantity = 1; // Mặc định

            try {
                quantity = Integer.parseInt(quantityStr);
            } catch (Exception e) {
                // fallback giữ quantity = 1
            }

            request.setAttribute("quantity", quantity);

            System.out.println("➡️ thanhtoanController đang chạy với productid = " + productId);

            // Kiểm tra productId hợp lệ
            if (productId == null || productId.trim().isEmpty()) {
                response.sendRedirect("notfound.jsp");
                return;
            }

            // Lấy thông tin sản phẩm từ DAO
            ProductDAO productDAO = new ProductDAO();
            Product product = productDAO.selectById(new Product(productId, null, null, 0, 0, null, null, null));

            if (product == null) {
                response.sendRedirect("notfound.jsp");
                return;
            }

            // Gửi thông tin sản phẩm tới JSP
            request.setAttribute("product", product);

            // Forward tới trang thanh toán
            RequestDispatcher rd = request.getRequestDispatcher("/homepage/thanhToan.jsp");
            rd.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}