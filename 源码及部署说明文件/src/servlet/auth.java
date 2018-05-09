package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 类描述：用户的登陆请求
 * auth
 * 时间：2018年4月3日-晚上7:31
 * @author benjamin
 * @version 1.0
 */


@WebServlet("/login")
public class auth extends HttpServlet {
    private static final long serialVersionUID = 1L;
    public auth() {
        super();
    }
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        try { // 配置数据库
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        String username = request.getParameter("username");
        String sql = "select * from user where username='" + username + "'";
        Connection conn = null;
        try { 
            conn = DriverManager.getConnection("jdbc:mysql://localhost/db_test",
                    "root", "1234"); // 连接数据库
            Statement s = conn.createStatement();
            java.sql.ResultSet rs = s.executeQuery(sql);
            String name = null; //身份（学生或老师）
            String password = null; 

        
        PrintWriter prwr = response.getWriter();               
        if(!rs.isBeforeFirst()){ // 判断查询是否存在的条件，以防查询不返回任何行。否则代码将抛出空指针异常   
            prwr.write("<br><br<br><br><br<br><br><br<br>"
            		+ "<div style=\"text-align: center\" charset=UTF-8>"
            		+ "<h1>No exist user<h1>"
            		+ "</div>");
        } else {
            while (rs.next()) {
                name = rs.getString("name");
                password = rs.getString("password");
            }
            PrintWriter pww = response.getWriter();
            response.setContentType("text/html"); // 创建请求调度器 
            pww.write("<h1>Welcome, " + name + "</h1>");
            //request.getRequestDispatcher("password.jsp").forward(request, response);
            response.sendRedirect("password.jsp?name=" + name + "&password=" + password + "&username=" + username);
          }
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

}