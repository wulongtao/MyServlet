import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextAttributeEvent;
import javax.servlet.ServletContextAttributeListener;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class OnlineListener implements ServletContextAttributeListener,ServletContextListener {
	private ServletContext application = null;

	

	

	@Override
	public void contextDestroyed(ServletContextEvent event) {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		this.application = event.getServletContext();
		this.application.setAttribute("online", new ArrayList<String>());
	}

	@Override
	public void contextInitialized(ServletContextEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void attributeAdded(ServletContextAttributeEvent event) {
		// TODO Auto-generated method stub
		System.out.println("add attr...");
		this.application = event.getServletContext();
		List<String> lst = (List<String>) this.application.getAttribute("online");
		System.out.println(event.getName() + "...");
		if("nick".equals(event.getName())) {
			lst.remove(event.getValue());
			this.application.setAttribute("online", lst);
		}
	}

	@Override
	public void attributeRemoved(ServletContextAttributeEvent event) {
		// TODO Auto-generated method stub
		List<String> lst = (List<String>) this.application.getAttribute("online");
		if("nick".equals(event.getName())) {
			lst.add((String) event.getValue());
			this.application.setAttribute("online", lst);
		}
		
	}

	@Override
	public void attributeReplaced(ServletContextAttributeEvent event) {
		// TODO Auto-generated method stub
		System.out.println("replace-----");
		System.out.println(event.getName());
		System.out.println("replace");
	}

	
	
}
