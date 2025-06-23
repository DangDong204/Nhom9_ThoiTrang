package homeController;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.ProductDAO;
import model.Product;


@WebServlet("/searchProduct")
public class searchProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public searchProduct() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
	    response.setContentType("text/html;charset=UTF-8");

	    String keyword = request.getParameter("keyword");  // lấy từ khóa người dùng nhập
	    ProductDAO dao = new ProductDAO();
	    ArrayList<Product> resultList;

	    if (keyword != null && !keyword.trim().isEmpty()) {
	        resultList = dao.searchByKeyword(keyword.trim());
	        request.setAttribute("keyword", keyword);
	    } else {
	        resultList = dao.selectAllByProductIdAscLimit(30); // fallback nếu không nhập gì
	    }

	    request.setAttribute("allProducts", resultList);
	    RequestDispatcher dispatcher = request.getRequestDispatcher("/homepage/timkiem.jsp");
	    dispatcher.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
