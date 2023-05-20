<%-- 
    Document   : listadoMatriculasPorND
    Created on : 19 may. 2023, 19:16:13
    Author     : dante
--%>
<%@page import="net.sf.jasperreports.engine.JasperRunManager"%>
<%@page import="modelos.Conexion"%>

<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>


<%
 Conexion con = new Conexion();
 String accion = request.getParameter("accion");

if (accion.compareTo ("MOSTRAR") == 0) {
    File reportFile = new File(application.getRealPath(
                                 "/reportes/listarMatriculasPorND.jasper"));
    Map parameters = new HashMap();
    //-------------------------------------------
    String nro_doc=request.getParameter("nro_doc");
    parameters.put("p_nd", nro_doc);

    byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath (),
                      parameters, con.Conectar());
    response.setContentType("application/pdf");
    response.setContentLength(bytes.length);
    ServletOutputStream ouputStream = response.getOutputStream();
    ouputStream.write(bytes, 0, bytes.length);
    ouputStream.flush();
    ouputStream.close();
 }
%>
