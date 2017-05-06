package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("<title>Home</title>\n");
      out.write("<meta charset=\"utf-8\">\n");
      out.write("<meta name=\"format-detection\" content=\"telephone=no\" />\n");
      out.write("<link rel=\"icon\" href=\"images/favicon.ico\">\n");
      out.write("<link rel=\"shortcut icon\" href=\"images/favicon.ico\" />\n");
      out.write("<link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("<script src=\"js/jquery.js\"></script>\n");
      out.write("<script src=\"js/jquery-migrate-1.1.1.js\"></script>\n");
      out.write("<script src=\"js/jquery.easing.1.3.js\"></script>\n");
      out.write("<script src=\"js/script.js\"></script> \n");
      out.write("<script src=\"js/superfish.js\"></script>\n");
      out.write("<script src=\"js/jquery.equalheights.js\"></script>\n");
      out.write("<script src=\"js/jquery.mobilemenu.js\"></script>\n");
      out.write("<script src=\"js/tmStickUp.js\"></script>\n");
      out.write("<script src=\"js/jquery.ui.totop.js\"></script>\n");
      out.write("<script>\n");
      out.write(" $(window).load(function(){\n");
      out.write("  $().UItoTop({ easingType: 'easeOutQuart' });\n");
      out.write("  $('#stuck_container').tmStickUp({});  \n");
      out.write(" }); \n");
      out.write("</script>\n");
      out.write("<!--[if lt IE 8]>\n");
      out.write(" <div style=' clear: both; text-align:center; position: relative;'>\n");
      out.write("   <a href=\"http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode\">\n");
      out.write("     <img src=\"http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg\" border=\"0\" height=\"42\" width=\"820\" alt=\"You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today.\" />\n");
      out.write("   </a>\n");
      out.write("</div>\n");
      out.write("<![endif]-->\n");
      out.write("<!--[if lt IE 9]>\n");
      out.write("<script src=\"js/html5shiv.js\"></script>\n");
      out.write("<link rel=\"stylesheet\" media=\"screen\" href=\"css/ie.css\">\n");
      out.write("<![endif]-->\n");
      out.write("</head>\n");
      out.write("<body class=\"page1\" id=\"top\">\n");
      out.write("<!--==============================\n");
      out.write("              header\n");
      out.write("=================================-->\n");
      out.write("<header>\n");
      out.write("  <div class=\"container\">\n");
      out.write("    <div class=\"row\">\n");
      out.write("      <div class=\"grid_12 rel\">\n");
      out.write("          <div class=\"fa fa-cloud fa-5x\" >&nbsp;<font size=\"6\" color=\"#ffffff\">A Hybrid Cloud Approach for Secure\n");
      out.write("Authorized Deduplication</font></div>\n");
      out.write("        <h1>\n");
      out.write("          <a href=\"index.html\">\n");
      out.write("            \n");
      out.write("          </a>\n");
      out.write("        </h1>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  <section id=\"stuck_container\">\n");
      out.write("  <!--==============================\n");
      out.write("              Stuck menu\n");
      out.write("  =================================-->\n");
      out.write("    <div class=\"container\">\n");
      out.write("      <div class=\"row\">\n");
      out.write("        <div class=\"grid_12 \">\n");
      out.write("          <div class=\"navigation \">\n");
      out.write("            \n");
      out.write("            <div class=\"clear\"></div>\n");
      out.write("          </div>       \n");
      out.write("         <div class=\"clear\"></div>  \n");
      out.write("        </div>\n");
      out.write("     </div> \n");
      out.write("    </div> \n");
      out.write("  </section>\n");
      out.write("  <section class=\"page1_header\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("      <div class=\"row\">\n");
      out.write("        <div class=\"grid_4\">\n");
      out.write("          <a href=\"index.jsp\" class=\"banner \"><div class=\"maxheight\">\n");
      out.write("            <div class=\"fa fa-home\"></div>Home</div>\n");
      out.write("          </a>\n");
      out.write("          <a href=\"Login.jsp\" class=\"banner \"><div class=\"maxheight\">\n");
      out.write("            <div class=\"fa fa-key\"></div>Login</div>\n");
      out.write("          </a>\n");
      out.write("          <a href=\"Newuser.jsp\" class=\"banner \"><div class=\"maxheight1\">\n");
      out.write("            <div class=\"fa fa-keyboard-o\"></div>User Registration</div>\n");
      out.write("          </a>\n");
      out.write("          <a href=\"About.jsp\" class=\"banner \"><div class=\"maxheight1\">\n");
      out.write("            <div class=\"fa fa-book\"></div>About Project</div>\n");
      out.write("          </a>\n");
      out.write("        </div>\n");
      out.write("          <form action=\"Login2\" method=\"post\">\n");
      out.write("        <div class=\"grid_5\">\n");
      out.write("            <div class=\"login-card\">\n");
      out.write("           \n");
      out.write(" \n");
      out.write("\n");
      out.write("                <h1>Log-in</h1><br><br>\n");
      out.write("  <form>\n");
      out.write("      <input type=\"text\" name=\"name\" value=\"\" placeholder=\"Username\">\n");
      out.write("          <input type=\"password\" name=\"pwd\" value=\"\" placeholder=\"Password\">\n");
      out.write("        <select  input type=\"text\" name=\"type\" placeholder=\"User Type\">\n");
      out.write("              <!--<select name=\"type\">-->\n");
      out.write("<option value=\"Server\">Server</option>\n");
      out.write("<option value=\"user\">User Login</option>     \n");
      out.write("<!--<option value=\"admin\">Service Provider</option>-->\n");
      out.write("<option value=\"tpa\">Third Party Auditor</option><br>\n");
      out.write("        </select><br>\n");
      out.write("  <br>  <input type=\"submit\" name=\"login\" class=\"login login-submit\" value=\"login\">\n");
      out.write("          <!--<a href=\"forgott.jsp\">FORGOT PASSWORD</a>-->\n");
      out.write("  </form>\n");
      out.write("   \n");
      out.write("</div>\n");
      out.write("        </div>\n");
      out.write("              </form>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </section>\n");
      out.write("</header>\n");
      out.write("<div class=\"block-1\">\n");
      out.write("  <div class=\"container\">\n");
      out.write("    <div class=\"row\">\n");
      out.write("      <div class=\"grid_3\">\n");
      out.write("        <div class=\"block-1_count\">1.</div>\n");
      out.write("        Public <br> Cloud\n");
      out.write("        <div class=\"clear\"></div>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"grid_3\">\n");
      out.write("        <div class=\"block-1_count\">2.</div>\n");
      out.write("        Hybrid <br> Cloud\n");
      out.write("        <div class=\"clear\"></div>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"grid_3\">\n");
      out.write("        <div class=\"block-1_count\">3.</div>\n");
      out.write("        Private <br> Cloud\n");
      out.write("        <div class=\"clear\"></div>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"grid_3\">\n");
      out.write("        <a href=\"#\" class=\"support\"><img src=\"images/support.png\" alt=\"\"></a>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("<!--=====================\n");
      out.write("          Content\n");
      out.write("======================-->\n");
      out.write("\n");
      out.write("<!--==============================\n");
      out.write("              footer\n");
      out.write("=================================-->\n");
      out.write("\n");
      out.write("<a href=\"#\" id=\"toTop\" class=\"fa fa-chevron-up\"></a>\n");
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
