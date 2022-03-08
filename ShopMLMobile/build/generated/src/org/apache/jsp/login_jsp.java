package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <meta name=\"author\" content=\"Kodinger\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width,initial-scale=1\">\n");
      out.write("        <title>My Login Page</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/my-login.css\">\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body class=\"my-login-page \" background=\"img/wave.jpeg\" >\n");
      out.write("        <section class=\"h-100\">\t\t\n");
      out.write("            <br>\n");
      out.write("            <div class=\"container h-100\">\n");
      out.write("                <div class=\"row justify-content-md-center h-100 \">\n");
      out.write("\n");
      out.write("                    <div class=\"card-wrapper mt-5\">\n");
      out.write("\n");
      out.write("                        <div class=\"card fat\">\n");
      out.write("                            <div class=\"card-body\">\n");
      out.write("                                <h4 class=\"card-title\">Login</h4>\n");
      out.write("                                <form action=\"login\" method=\"POST\" class=\"my-login-validation\" novalidate=\"\">\n");
      out.write("                                    <p style=\"color: red\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${mess}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</p>\n");
      out.write("                                    <div class=\"form-group\">\n");
      out.write("                                        <label for=\"user\">Username</label>\n");
      out.write("                                        <input id=\"user\" type=\"user\" class=\"form-control\" name=\"user\" value=\"\" required autofocus>\n");
      out.write("                                        <div class=\"invalid-feedback\">\n");
      out.write("                                            Email is invalid\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                    <div class=\"form-group\">\n");
      out.write("                                        <label for=\"password\">Password\n");
      out.write("                                            <a href=\"forgot.html\" class=\"float-right\">\n");
      out.write("                                                Forgot Password?\n");
      out.write("                                            </a>\n");
      out.write("                                        </label>\n");
      out.write("                                        <input id=\"password\" type=\"password\" class=\"form-control\" name=\"password\" required data-eye>\n");
      out.write("                                        <div class=\"invalid-feedback\">\n");
      out.write("                                            Password is required\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                    <div class=\"form-group\">\n");
      out.write("                                        <div class=\"custom-checkbox custom-control\">\n");
      out.write("                                            <input type=\"checkbox\" name=\"remember\" id=\"remember\" class=\"custom-control-input\">\n");
      out.write("                                            <label for=\"remember\" class=\"custom-control-label\">Remember Me</label>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                    <div class=\"form-group m-0\">\n");
      out.write("                                        <button type=\"submit\" class=\"btn btn-primary btn-block\">\n");
      out.write("                                            Login\n");
      out.write("                                        </button>\n");
      out.write("                                    </div>\n");
      out.write("                                    </form>\n");
      out.write("                                    <div class=\"mt-4 text-center\">\n");
      out.write("                                        Don't have an account? <a href=\"register.jsp\">Create Account</a>\n");
      out.write("                                    </div>\n");
      out.write("                                </form>\n");
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
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js\" integrity=\"sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js\" integrity=\"sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"js/my-login.js\"></script>\n");
      out.write("\n");
      out.write("        <script src=\"https://www.gstatic.com/firebasejs/7.17.1/firebase-app.js\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>");
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
