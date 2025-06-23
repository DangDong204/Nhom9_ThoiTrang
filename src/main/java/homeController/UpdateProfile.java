package homeController;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.Date;


import model.Customer;
import database.CustomerDAO;


@WebServlet("/update-profile")
public class UpdateProfile extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

     // Lấy user đang đăng nhập từ session
        HttpSession session = request.getSession();
        Customer user = (Customer) session.getAttribute("user");

        // Lấy thông tin mới từ form
        String fullName = request.getParameter("fullName");
        String gender = request.getParameter("gender");
        String dobStr = request.getParameter("dob");
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");

        // Chuyển đổi dob từ String -> java.sql.Date
        Date dob = null;
        try {
            dob = Date.valueOf(dobStr); // Format phải là yyyy-MM-dd
        } catch (IllegalArgumentException e) {
            e.printStackTrace(); // hoặc log lỗi nếu cần
        }

        // Gán vào đối tượng user
        user.setCustomerName(fullName);
        user.setCustomerGender(gender);
        user.setCustomerDate(dob);
        user.setCustomerAddress(address);
        user.setCustomerMobiphone(phone);
        user.setCustomerEmail(email);

        // Gọi DAO để cập nhật vào database
        CustomerDAO dao = new CustomerDAO();
        dao.update(user); 

        // Cập nhật lại session
        session.setAttribute("user", user);

        
        session.setAttribute("message", "Cập nhật thành công!");
        session.setAttribute("messageType", "success");
        response.sendRedirect(request.getContextPath() + "/profile");


    }
}

