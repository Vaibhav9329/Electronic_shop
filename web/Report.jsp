<%-- 
    Document   : Report
    Created on : 9 May, 2023, 11:59:48 AM
    Author     : acer
--%>

<%@page import="net.sf.jasperreports.engine.JasperRunManager"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Connection conn = null;
            String event = request.getParameter("btn_view");


            try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/electronics_shop", "root", "root");
            } catch (Exception ex) {
                ex.printStackTrace();
            }

            if (event.equals("Category Report")) {

                File reportFile = new File(application.getRealPath("Reports\\view_categories.jasper"));//your report_name.jasper file
                Map parameters = new HashMap();

                byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, conn);

                response.setContentType("application/pdf");
                response.setContentLength(bytes.length);
                ServletOutputStream outStream = response.getOutputStream();
                outStream.write(bytes, 0, bytes.length);
                outStream.flush();
                outStream.close();
            } else if (event.equals("Products Report")) {
                File reportFile = new File(application.getRealPath("Reports\\products.jasper"));//your report_name.jasper file
                Map parameters = new HashMap();

                byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, conn);

                response.setContentType("application/pdf");
                response.setContentLength(bytes.length);
                ServletOutputStream outStream = response.getOutputStream();
                outStream.write(bytes, 0, bytes.length);
                outStream.flush();
                outStream.close();
            } else if (event.equals("Orders Report")) {
                File reportFile = new File(application.getRealPath("Reports\\view_orders.jasper"));//your report_name.jasper file
                Map parameters = new HashMap();

                byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, conn);

                response.setContentType("application/pdf");
                response.setContentLength(bytes.length);
                ServletOutputStream outStream = response.getOutputStream();
                outStream.write(bytes, 0, bytes.length);
                outStream.flush();
                outStream.close();
            } else if (event.equals("Launch Report")) {
                File reportFile = new File(application.getRealPath("Reports\\new_launch.jasper"));//your report_name.jasper file
                Map parameters = new HashMap();

                byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, conn);

                response.setContentType("application/pdf");
                response.setContentLength(bytes.length);
                ServletOutputStream outStream = response.getOutputStream();
                outStream.write(bytes, 0, bytes.length);
                outStream.flush();
                outStream.close();
            } else {
                File reportFile = new File(application.getRealPath("Reports\\OFFERS.jasper"));//your report_name.jasper file
                Map parameters = new HashMap();

                byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, conn);

                response.setContentType("application/pdf");
                response.setContentLength(bytes.length);
                ServletOutputStream outStream = response.getOutputStream();
                outStream.write(bytes, 0, bytes.length);
                outStream.flush();
                outStream.close();
            }





        %>

    </body>
</html>
