import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class OnlineServlet extends HttpServlet {
	private int nickIndex = 0;

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String a = req.getParameter("a");
		String nick = req.getParameter("nick");
		
		ServletContext app = getServletContext();
		if(a.equals("online")) {
			app.setAttribute("nick"+nickIndex, nick);
			System.out.println("nick"+nickIndex+"="+nick);
		} else if(a.equals("unline")) {
			app.removeAttribute("nick"+nickIndex);
		}
		PrintWriter out = resp.getWriter();
		
		List<String> lst = (List<String>) app.getAttribute("online");
		
		if (lst != null) {
			System.out.println(lst.toString());
			for(String s : lst) {
				
				out.println(s);
			}
		}
		nickIndex++;
		
		out.println("end");
		
	}
	
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	
}
