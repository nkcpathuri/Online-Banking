<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="com.klef.ep.services.WithdrawService"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="com.klef.ep.models.Withdraw"%>
<%

InitialContext context = new InitialContext();
WithdrawService employeeService = (WithdrawService) context.lookup("java:global/EPPROJECT/WithdrawServiceImpl!com.klef.ep.services.WithdrawService");

String eid = request.getParameter("id");
int id =  (Integer) Integer.parseInt(eid);


String name = request.getParameter("name");


Withdraw emp = new Withdraw();
emp.setId(id);
emp.setName(name);


employeeService.addWithdraw(emp);

response.sendRedirect("depsucess.jsp");


%>