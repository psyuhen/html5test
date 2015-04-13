package com.example.webcollector;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.http.HttpEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 * Servlet implementation class WebCollectorServlet
 */
@WebServlet("/WebCollectorServlet")
public class WebCollectorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WebCollectorServlet() {
        super();
    }
    
    private JdbcTemplate getJdbcTemplate(){
    	JdbcTemplate jdbcTemplate = JDBCHelper.createMysqlTemplate("mysql1",
                "jdbc:mysql://localhost/test?useUnicode=true&characterEncoding=utf8",
                "root", "root", 5, 30);
    	
    	return jdbcTemplate;
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("GET METHOD");
		CloseableHttpClient httpclient = HttpClients.createDefault();
		
		String url = request.getParameter("url");
		
		HttpGet httpGet = new HttpGet(url);
		CloseableHttpResponse response1 = httpclient.execute(httpGet);
		HttpEntity entity = response1.getEntity();


		response.setCharacterEncoding("utf-8");
		PrintWriter writer = response.getWriter();
		writer.println(EntityUtils.toString(entity));
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("POST METHOD");
	}

}
