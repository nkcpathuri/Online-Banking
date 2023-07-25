<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="com.klef.ep.services.TransferService"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="com.klef.ep.models.Transfer"%>
<%

InitialContext context = new InitialContext();
TransferService employeeService = (TransferService) context.lookup("java:global/EPPROJECT/TransferserviceImpl!com.klef.ep.services.TransferService");

String eid = request.getParameter("id");
int id =  (Integer) Integer.parseInt(eid);

String acc = request.getParameter("acc");
String name = request.getParameter("name");


Transfer emp = new Transfer();
emp.setId(id);
emp.setAcc(acc);
emp.setName(name);


employeeService.addTransfer(emp);

response.sendRedirect("transuccess.jsp");


%>