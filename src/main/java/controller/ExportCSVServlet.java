package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.util.ArrayList;

import database.ProductDAO;
import model.Product;



@WebServlet("/ExportCSVServlet")
public class ExportCSVServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ExportCSVServlet() {
        super();
        
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/csv; charset=UTF-8");
        response.setHeader("Content-Disposition", "attachment;filename=products.csv");

        
        PrintWriter out = response.getWriter();
        out.write('\uFEFF');
        
        String brandId = request.getParameter("brandId");
        String categoryId = request.getParameter("categoryId");
        String priceRange = request.getParameter("priceRange");
        String quantityRange = request.getParameter("quantityRange");

        ProductDAO productDAO = new ProductDAO();
        ArrayList<Product> products;

        // Gọi filterProducts 
        if ((brandId != null && !brandId.isEmpty()) || 
            (categoryId != null && !categoryId.isEmpty()) ||
            (priceRange != null && !priceRange.isEmpty()) ||
            (quantityRange != null && !quantityRange.isEmpty())) {
            
            products = productDAO.filterProducts(categoryId, brandId, priceRange, quantityRange);
        } else {
            products = productDAO.selectAll();
        }

        
        out.println("ID, Tên sản phẩm, Số lượng, Giá bán, Danh mục, Nhà cung cấp, Mô tả");

        
        for (Product p : products) {
            out.printf("%s,%s,%d,%d,%s,%s,%s%n",
                    p.getProductId(),
                    clean(p.getProductName()),
                    p.getProductQuantity(),
                    p.getProductCost(),
                    clean(p.getCategory().getCategoryName()),
                    clean(p.getBrand().getBrandName()),
                    clean(p.getProductDescription())
            );
        }

        out.flush();
        out.close();
        
    }
    private String clean(String s) {
        if (s == null) return "";
        return s.replace(",", " ").replace("\n", " ").replace("\r", " ");
    }




	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}