import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.catalina.core.ApplicationPart;

@WebServlet("/upload")
@MultipartConfig(location="e:/tmp")
public class UploadServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("text/html;charset=utf-8");
		
		PrintWriter out = resp.getWriter();
		String path = this.getServletContext().getRealPath("/");
		
		Part p = req.getPart("uploadFile");
		ApplicationPart ap = (ApplicationPart) p;
		String fname = ap.getFilename();
		int path_idx = fname.lastIndexOf('\\') + 1;
		String fname2 = fname.substring(path_idx, fname.length());
		p.write(path+"/upload/"+fname2);
		out.write("file upload success");
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("text/html;charset=utf-8");
		
		PrintWriter out = resp.getWriter();
		String path = this.getServletContext().getRealPath("/");
		
		Part p = req.getPart("uploadFile");
		ApplicationPart ap = (ApplicationPart) p;
		String fname = ap.getFilename();
		int path_idx = fname.lastIndexOf('\\') + 1;
		String fname2 = fname.substring(path_idx, fname.length());
		p.write(path+"/upload/"+fname2);
		out.write("file upload success");
	}
	

}
