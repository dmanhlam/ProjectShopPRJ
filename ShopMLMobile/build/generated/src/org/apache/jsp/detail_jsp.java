package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class detail_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/components/navbar.jsp");
    _jspx_dependants.add("/components/footer.jsp");
  }

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\" />\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\" />\n");
      out.write("        <meta name=\"description\" content=\"\" />\n");
      out.write("        <meta name=\"author\" content=\"\" />\n");
      out.write("        <title>ManhLam Mobile</title>\n");
      out.write("        <!-- Favicon-->\n");
      out.write("        <link rel=\"icon\" type=\"image/x-icon\" href=\"assets/favicon.ico\" />\n");
      out.write("        <!-- Bootstrap icons-->\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css\" rel=\"stylesheet\" />\n");
      out.write("        <!-- Core theme CSS (includes Bootstrap)-->\n");
      out.write("        <link href=\"css/styles.css\" rel=\"stylesheet\" />\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <!-- Navigation-->\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<nav class=\"navbar navbar-expand-lg navbar-light bg-light\">\n");
      out.write("    <div class=\"container px-4 px-lg-5\">\n");
      out.write("        <a class=\"navbar-brand\" href=\"#!\">MANHLAM MOBILE</a>\n");
      out.write("        <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\"><span class=\"navbar-toggler-icon\"></span></button>\n");
      out.write("        <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\n");
      out.write("            <ul class=\"navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4\">\n");
      out.write("                <li class=\"nav-item\"><a class=\"nav-link active\" aria-current=\"page\" href=\"shop\">Home</a></li>\n");
      out.write("                <li class=\"nav-item\"><a class=\"nav-link\" href=\"#!\">About</a></li>\n");
      out.write("                <li class=\"nav-item dropdown\">\n");
      out.write("                    <a class=\"nav-link dropdown-toggle\" id=\"navbarDropdown\" href=\"#\" role=\"button\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">Shop</a>\n");
      out.write("                    <ul class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">                            \n");
      out.write("                        <li><a class=\"dropdown-item\" href=\"shop\">All Products</a></li>\n");
      out.write("                        <li><hr class=\"dropdown-divider\" /></li>\n");
      out.write("                        ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("    \n");
      out.write("\n");
      out.write("                    </ul>\n");
      out.write("                </li>\n");
      out.write("            </ul>\n");
      out.write("            <!-- phan search -->\n");
      out.write("            <form action=\"search\" class=\"d-flex mx-auto\">\n");
      out.write("                <input class=\"form-control me-2\" \n");
      out.write("                       type=\"search\" \n");
      out.write("                       placeholder=\"Search\"\n");
      out.write("                       aria-label=\"Search\"\n");
      out.write("                       name=\"keyword\">\n");
      out.write("                <button class=\"btn btn-outline-success\" type=\"submit\">Search</button>\n");
      out.write("            </form>\n");
      out.write("            <!-- phan gio hang -->\n");
      out.write("            <form class=\"d-flex my-2\">\n");
      out.write("                <button class=\"btn btn-outline-dark\" type=\"submit\">\n");
      out.write("                    <i class=\"bi-cart-fill me-1\"></i>\n");
      out.write("                    Cart\n");
      out.write("                    <span class=\"badge bg-dark text-white ms-1 rounded-pill\">0</span>\n");
      out.write("                </button>\n");
      out.write("            </form>\n");
      out.write("\n");
      out.write("            <!-- phan login -->\n");
      out.write("            <form>\n");
      out.write("                <button class=\"btn btn-outline-dark ms-lg-2\">Login</button>\n");
      out.write("            </form>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</nav>\n");
      out.write("\n");
      out.write("        <!-- Header-->\n");
      out.write("        <header class=\"bg-dark py-5\">\n");
      out.write("            <div class=\"container px-4 px-lg-5 my-5\">\n");
      out.write("                <div class=\"text-center text-white\">\n");
      out.write("                    <h1 class=\"display-4 fw-bolder\">Shop in style</h1>\n");
      out.write("                    <p class=\"lead fw-normal text-white-50 mb-0\">With this shop hompeage template</p>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </header>\n");
      out.write("        <!-- Section-->\n");
      out.write("        <!-- Product section-->\n");
      out.write("        <section class=\"py-5\">\n");
      out.write("            <div class=\"container px-4 px-lg-5 my-5\">\n");
      out.write("                <div class=\"row gx-4 gx-lg-5 align-items-center\">\n");
      out.write("                    <div class=\"col-md-6\"><img class=\"card-img-top mb-5 mb-md-0\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${product.imageUrl}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" alt=\"...\"></div>\n");
      out.write("                    <div class=\"col-md-6\">              \n");
      out.write("                        <h1 class=\"display-5 fw-bolder\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${product.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</h1>\n");
      out.write("                        <div class=\"fs-5 mb-5\">\n");
      out.write("                            <span class=\"text-decoration-line-through\">$45.00</span>\n");
      out.write("                            <span>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${product.price}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</span>\n");
      out.write("                        </div>\n");
      out.write("                        <p class=\"lead\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${product.description}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</p>\n");
      out.write("                        <div class=\"d-flex\">\n");
      out.write("                            <input class=\"form-control text-center me-3\" id=\"inputQuantity\" type=\"num\" value=\"1\" style=\"max-width: 3rem\">\n");
      out.write("                            <a href=\"add-to-cart?productId=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${product.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" \n");
      out.write("                               class=\"btn btn-outline-dark flex-shrink-0\"\n");
      out.write("                               type=\"button\">\n");
      out.write("                                <i class=\"bi-cart-fill me-1\"></i>\n");
      out.write("                                Add to cart\n");
      out.write("                            </a>\n");
      out.write("                            <a  class=\"btn btn-outline-success flex-shrink-0 ms-2\" type=\"button\">\n");
      out.write("                                <i class=\"bi-cart-fill me-1\"></i>\n");
      out.write("                                Buy now\n");
      out.write("                            </a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("        <!-- Related items section-->\n");
      out.write("        <section class=\"py-5 bg-light\">\n");
      out.write("            <div class=\"container px-4 px-lg-5 mt-5\">\n");
      out.write("                <h2 class=\"fw-bolder mb-4\">Related products</h2>\n");
      out.write("                <div class=\"row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center\">\n");
      out.write("                    <div class=\"col mb-5\">\n");
      out.write("                        <div class=\"card h-100\">\n");
      out.write("                            <!-- Product image-->\n");
      out.write("                            <img class=\"card-img-top\" src=\"https://dummyimage.com/450x300/dee2e6/6c757d.jpg\" alt=\"...\">\n");
      out.write("                            <!-- Product details-->\n");
      out.write("                            <div class=\"card-body p-4\">\n");
      out.write("                                <div class=\"text-center\">\n");
      out.write("                                    <!-- Product name-->\n");
      out.write("                                    <h5 class=\"fw-bolder\">Fancy Product</h5>\n");
      out.write("                                    <!-- Product price-->\n");
      out.write("                                    $40.00 - $80.00\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <!-- Product actions-->\n");
      out.write("                            <div class=\"card-footer p-4 pt-0 border-top-0 bg-transparent\">\n");
      out.write("                                <div class=\"text-center\"><a class=\"btn btn-outline-dark mt-auto\" href=\"#\">View options</a></div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col mb-5\">\n");
      out.write("                        <div class=\"card h-100\">\n");
      out.write("                            <!-- Sale badge-->\n");
      out.write("                            <div class=\"badge bg-dark text-white position-absolute\" style=\"top: 0.5rem; right: 0.5rem\">Sale</div>\n");
      out.write("                            <!-- Product image-->\n");
      out.write("                            <img class=\"card-img-top\" src=\"https://dummyimage.com/450x300/dee2e6/6c757d.jpg\" alt=\"...\">\n");
      out.write("                            <!-- Product details-->\n");
      out.write("                            <div class=\"card-body p-4\">\n");
      out.write("                                <div class=\"text-center\">\n");
      out.write("                                    <!-- Product name-->\n");
      out.write("                                    <h5 class=\"fw-bolder\">Special Item</h5>\n");
      out.write("                                    <!-- Product reviews-->\n");
      out.write("                                    <div class=\"d-flex justify-content-center small text-warning mb-2\">\n");
      out.write("                                        <div class=\"bi-star-fill\"></div>\n");
      out.write("                                        <div class=\"bi-star-fill\"></div>\n");
      out.write("                                        <div class=\"bi-star-fill\"></div>\n");
      out.write("                                        <div class=\"bi-star-fill\"></div>\n");
      out.write("                                        <div class=\"bi-star-fill\"></div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <!-- Product price-->\n");
      out.write("                                    <span class=\"text-muted text-decoration-line-through\">$20.00</span>\n");
      out.write("                                    $18.00\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <!-- Product actions-->\n");
      out.write("                            <div class=\"card-footer p-4 pt-0 border-top-0 bg-transparent\">\n");
      out.write("                                <div class=\"text-center\"><a class=\"btn btn-outline-dark mt-auto\" href=\"#\">Add to cart</a></div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col mb-5\">\n");
      out.write("                        <div class=\"card h-100\">\n");
      out.write("                            <!-- Sale badge-->\n");
      out.write("                            <div class=\"badge bg-dark text-white position-absolute\" style=\"top: 0.5rem; right: 0.5rem\">Sale</div>\n");
      out.write("                            <!-- Product image-->\n");
      out.write("                            <img class=\"card-img-top\" src=\"https://dummyimage.com/450x300/dee2e6/6c757d.jpg\" alt=\"...\">\n");
      out.write("                            <!-- Product details-->\n");
      out.write("                            <div class=\"card-body p-4\">\n");
      out.write("                                <div class=\"text-center\">\n");
      out.write("                                    <!-- Product name-->\n");
      out.write("                                    <h5 class=\"fw-bolder\">Sale Item</h5>\n");
      out.write("                                    <!-- Product price-->\n");
      out.write("                                    <span class=\"text-muted text-decoration-line-through\">$50.00</span>\n");
      out.write("                                    $25.00\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <!-- Product actions-->\n");
      out.write("                            <div class=\"card-footer p-4 pt-0 border-top-0 bg-transparent\">\n");
      out.write("                                <div class=\"text-center\"><a class=\"btn btn-outline-dark mt-auto\" href=\"#\">Add to cart</a></div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col mb-5\">\n");
      out.write("                        <div class=\"card h-100\">\n");
      out.write("                            <!-- Product image-->\n");
      out.write("                            <img class=\"card-img-top\" src=\"https://dummyimage.com/450x300/dee2e6/6c757d.jpg\" alt=\"...\">\n");
      out.write("                            <!-- Product details-->\n");
      out.write("                            <div class=\"card-body p-4\">\n");
      out.write("                                <div class=\"text-center\">\n");
      out.write("                                    <!-- Product name-->\n");
      out.write("                                    <h5 class=\"fw-bolder\">Popular Item</h5>\n");
      out.write("                                    <!-- Product reviews-->\n");
      out.write("                                    <div class=\"d-flex justify-content-center small text-warning mb-2\">\n");
      out.write("                                        <div class=\"bi-star-fill\"></div>\n");
      out.write("                                        <div class=\"bi-star-fill\"></div>\n");
      out.write("                                        <div class=\"bi-star-fill\"></div>\n");
      out.write("                                        <div class=\"bi-star-fill\"></div>\n");
      out.write("                                        <div class=\"bi-star-fill\"></div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <!-- Product price-->\n");
      out.write("                                    $40.00\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <!-- Product actions-->\n");
      out.write("                            <div class=\"card-footer p-4 pt-0 border-top-0 bg-transparent\">\n");
      out.write("                                <div class=\"text-center\"><a class=\"btn btn-outline-dark mt-auto\" href=\"#\">Add to cart</a></div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("        <!-- Footer-->\n");
      out.write("          ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<footer class=\"py-5 bg-dark\">\n");
      out.write("            <div class=\"container\"><p class=\"m-0 text-center text-white\">Copyright &copy; 2022 by ManhLam Mobile</p></div>\n");
      out.write("        </footer>\n");
      out.write("\n");
      out.write("        <!-- Bootstrap core JS-->\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("        <!-- Core theme JS-->\n");
      out.write("        <script src=\"js/scripts.js\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
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

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.listCategories}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_0.setVar("C");
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                            <li><a class=\"dropdown-item\"  href=\"filter-category?categoryId=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${C.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write('"');
          out.write('>');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${C.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</a></li>\n");
          out.write("                        ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }
}
