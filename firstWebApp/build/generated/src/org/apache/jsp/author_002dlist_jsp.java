package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import fr.el_fartouni.webapp.entity.Author;
import java.util.List;

public final class author_002dlist_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/partials/_header.jspf");
  }

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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("\n");
      out.write("        <!-- Inclusion de la bibliothèque Bootstrap -->\n");
      out.write("        <script defer src=\"https://code.jquery.com/jquery-3.2.1.slim.min.js\" integrity=\"sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script defer src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js\" integrity=\"sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css\" integrity=\"sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb\" crossorigin=\"anonymous\">\n");
      out.write("        <script defer src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js\" integrity=\"sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ\" crossorigin=\"anonymous\"></script>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    <h1>Liste des auteurs</h1>\n");
      out.write("\n");
      out.write("    ");
      out.write("\n");
      out.write("    ");

        String flash = String.valueOf(request.getAttribute("flash"));
            if ( !flash.equals("null")) {
      out.write("\n");
      out.write("                <div class=\"alert alert-danger\">\n");
      out.write("                ");
      out.print( request.getAttribute("flash"));
      out.write("\n");
      out.write("                \n");
      out.write("    </div>\n");
      out.write("    ");
 } //fin de condition 
      out.write("\n");
      out.write("\n");
      out.write("    ");
      out.write("\n");
      out.write("    ");
 List<Author> authorList = (List<Author>) request.getAttribute("authorList");
      out.write("\n");
      out.write("\n");
      out.write("    <table class=\"table table-bordered table-striped\">\n");
      out.write("        <tr>\n");
      out.write("            <th>id</th>\n");
      out.write("            <th>prénom</th>\n");
      out.write("            <th>nom</th>\n");
      out.write("        </tr>\n");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
 for (Author author : authorList) {
      out.write("\n");
      out.write("        <tr>\n");
      out.write("            <td> ");
      out.print(author.getId());
      out.write(" </td>\n");
      out.write("            <td> ");
      out.print(author.getFirstName());
      out.write(" </td>\n");
      out.write("            <td> ");
      out.print(author.getName());
      out.write(" </td>\n");
      out.write("\n");
      out.write("            <td>\n");
      out.write("                <form method=\"post\">\n");
      out.write("                    <a href=\"\" class=\"btn btn-primary btn-sm\">Modifier</a>\n");
      out.write("\n");
      out.write("                    ");
      out.write("\n");
      out.write("                    <input type=\"hidden\" name=\"id\" value=\"");
      out.print(author.getId());
      out.write("\">\n");
      out.write("                    <button type=\"submit\" class=\"btn btn-danger btn-sm\">Supprimer</button>\n");
      out.write("                </form>\n");
      out.write("            </td>\n");
      out.write("        </tr>\n");
      out.write("\n");
      out.write("\n");
      out.write("        ");
 } //fin de la boucle 
      out.write("\n");
      out.write("    </table>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
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
