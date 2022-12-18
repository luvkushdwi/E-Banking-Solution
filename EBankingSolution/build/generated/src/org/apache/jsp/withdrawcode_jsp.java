package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import connect.DbManager;

public final class withdrawcode_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      out.write('\n');

    int accountno=Integer.parseInt(session.getAttribute("accountno").toString());
    int amt=Integer.parseInt(request.getParameter("amt"));
    String query="select balance from account where accountno='"+accountno+"'";
    DbManager db=new DbManager();
    ResultSet rs=db.select(query);
    rs.next();
    int balance=rs.getInt("balance");
    if(balance<amt)
    {
    session.invalidate();
    out.print("<script>alert('Insufficient balance');window.location.href='index.jsp';</script>");
    }
    else
    {
        balance=balance-amt;
        query="update account set balance='"+balance+"' where accountno='"+accountno+"'";
        boolean res=db.insertDeleteUpdate(query);
        session.invalidate();
        if(res==true)
        {
        out.print("<script>alert('Amount is debited');window.location.href='index.jsp';</script>");
        }
        else
        {
        out.print("<script>alert('Amount is not debited');window.location.href='index.jsp';</script>");
        }
    }

    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
