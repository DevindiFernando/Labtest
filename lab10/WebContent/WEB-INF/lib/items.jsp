<%@ page import ="com.bawmvc.models.Item" %>
<%@ page import = "javax.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	Item item = new Item();
	String itemsGrid = "";
	String rudFeedback = "";
	
	if (request.getParameter("hidMode") !=null && request.getParameter("hidMode").equalsIgnoreCase("save"))
	{
		rudFeedback = item.saveAnItem(request.getParameter("txtItemName"), request.getParameter("txtItemDesc"));
	}
	if (request.getParameter("hidMode") != null && request.getParameter("hideMode").equalsIgnoreCase("update"))
	{
		rudFeedback = item.updateAnItem(request.getParameter("txtItemName"),
					request.getParameter("textItemDesc"));
	}
	if(request.getParameter("hideMode") !=null && request.getParameter("hideMode").equalsIgnoreCase("remove"))
	{
		rudFeedback = item.deleteAnItem(request.getParameter("hidID"));
	}
	itemsGrid = item.getItems();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Items</title>
<script type="text/javascript" src=Controllers/jQuery.js></script>
<script type="text/javascript" src=controllers/controllerMain.js></script>

</head>
<body>

<form id="formItems" action="items.jsp" method="post">
<input id="hideMode" name="hideMode" type="hidden" value="save">
<input id="hidID" name="hidID" type="hidden" value="0">
Item Name<input id="txtUserName" name="txtUserName" type="text"><br>
Item Description: input id="txtItemDesc" type="text" name="txtItemDesc" ><br>
<input id="btnSave" type="button" name="btnSave"  value="Save"><br><br>
<div id="divStsMsgItem"><%out.println(rudFeedback); %></div>
<% out.println(itemsGrid); %>
</form><br>
</body>
</html>