package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class editproduct_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width,initial-scale=1\">\n");
      out.write("        <title>My Login Page &mdash; Bootstrap 4 Login Page Snippet</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/my-login.css\">\n");
      out.write("    </head>\n");
      out.write("    <body class=\"my-login-page\">\n");
      out.write("        <section class=\"h-100\">\n");
      out.write("            <div class=\"container h-100\">\n");
      out.write("                <div class=\"row justify-content-md-center h-100\">\n");
      out.write("                    <div class=\"card-wrapper\">\n");
      out.write("\n");
      out.write("                        <div class=\"card fat mt-5\">\n");
      out.write("                            <div class=\"card-body \">\n");
      out.write("                                <h4 class=\"card-title\">Register</h4>\n");
      out.write("                                <form action=\"editproduct\" method=\"POST\" class=\"my-login-validation mx-4\" novalidate=\"\" >                                               \n");
      out.write("                        <div class=\"form-group mb-3\">\n");
      out.write("                            <label for=\"name\">Name</label>\n");
      out.write("                            <input id=\"name\" type=\"text\" class=\"form-control\" name=\"name\" required autofocus>\n");
      out.write("                            <div class=\"invalid-feedback\">\n");
      out.write("                                What's phone name?\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"form-group mb-3\">\n");
      out.write("                            <label for=\"image\">Image</label>\n");
      out.write("                            <input id=\"image\" type=\"text\" class=\"form-control\" name=\"image\" required autofocus>\n");
      out.write("                            <div class=\"invalid-feedback\">\n");
      out.write("                                What's phone image?\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group mb-3\">\n");
      out.write("                            <label for=\"originalprice\">Quantity</label>\n");
      out.write("                            <input id=\"quantity\" type=\"number\" class=\"form-control\" name=\"quantity\" required autofocus>\n");
      out.write("                            <div class=\"invalid-feedback\">\n");
      out.write("                                What's phone quantity?\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group mb-3\">\n");
      out.write("                            <label for=\"originalprice\">Original Price</label>\n");
      out.write("                            <input id=\"originalprice\" type=\"number\" class=\"form-control\" name=\"originalprice\" required autofocus>\n");
      out.write("                            <div class=\"invalid-feedback\">\n");
      out.write("                                What's phone original price?\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group mb-3\">\n");
      out.write("                            <label for=\"currentprice\">Current Price</label>\n");
      out.write("                            <input id=\"currentprice\" type=\"number\" class=\"form-control\" name=\"currentprice\" required autofocus>\n");
      out.write("                            <div class=\"invalid-feedback\">\n");
      out.write("                                What's phone current price?\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group mb-3\">\n");
      out.write("                            <label for=\"description\">Description</label>\n");
      out.write("                            <input id=\"description\" type=\"text\" class=\"form-control\" name=\"description\" required autofocus>\n");
      out.write("                            <div class=\"invalid-feedback\">\n");
      out.write("                                What's phone description?\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group mb-3\">\n");
      out.write("                            <label for=\"date\">Created Date</label>\n");
      out.write("                            <input id=\"date\" type=\"datetime\" placeholder=\"yyyy/mm/dd\" class=\"form-control\" name=\"date\" required>\n");
      out.write("                            <div class=\"invalid-feedback\">\n");
      out.write("                                What's created date?\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group mb-4\">\n");
      out.write("                            <label for=\"category\">Category</label>\n");
      out.write("                            <select name=\"category\" class=\"form-select\" style=\"width: 40%\">\n");
      out.write("                                <c:forEach items=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listCategories}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" var=\"c\">\n");
      out.write("                                    <option value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${c.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write('"');
      out.write('>');
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${c.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</option>\n");
      out.write("                                </c:forEach>\n");
      out.write("                            </select>    \n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"modal-footer form-group m-0\">\n");
      out.write("                            <button type=\"button\" class=\"btn btn-secondary\" data-bs-dismiss=\"modal\">Close</button>\n");
      out.write("                            <button type=\"submit\" class=\"btn btn-primary btn-block\" onclick=\"RegisterUser()\">\n");
      out.write("                                Save\n");
      out.write("                            </button>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                    </form>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"footer\">\n");
      out.write("                            &copy; ManhLam &mdash; Mobile\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js\" integrity=\"sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"js/my-login.js\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <script src=\"https://www.gstatic.com/firebasejs/7.17.1/firebase-app.js\"></script>\n");
      out.write("    </body>\n");
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
