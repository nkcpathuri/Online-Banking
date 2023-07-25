<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="com.klef.ep.services.DepositService"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="com.klef.ep.models.Deposit"%>
<%

InitialContext context = new InitialContext();
DepositService employeeService = (DepositService) context.lookup("java:global/EPPROJECT/DepositserviceImpl!com.klef.ep.services.DepositService");

String eid = request.getParameter("id");
int id =  (Integer) Integer.parseInt(eid);


String name = request.getParameter("name");


Deposit emp = new Deposit();
emp.setId(id);
emp.setName(name);


employeeService.addDeposit(emp);

response.sendRedirect("depsucess.jsp");


%>