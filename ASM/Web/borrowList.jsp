<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page session="false" %>
    
<jsp:useBean id="borrowed" type="java.sql.ResultSet" scope="request"/>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="./styles/bootstrap.min.css"/>
<link rel="icon" type="image/png" href="./images/information-systems-logo.png"/>
<title>Asset Management System</title>
<style type="text/css">
		img{width:5em;height:5em;margin:auto;}
		header{text-align:center;margin:2em 1em; background:#FD8F14;}
		.a { font-size:100%; }
		.container-fluid{background-color: #FF9933;}
		.table{height:100%;width:513px;margin:auto;}
		body{background-color:#FDDFBD;
		}
	</style>
</head>
<body>
<!-- Insert header here -->
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" >Available Items</a>
    </div>
    
  </div>
</nav>
	
	<div class="container">
	<div class="table">	
      <div class="row" style="align:center;">
	<table border="3" width="100%" style="margin:0em 0em;">
		<tr>
			<th align="center">Item ID</th>
			<th align="center">Item Name</th>
			<th align="center">Status</th>
			<th align="center">Action-Borrow </th>
		</tr>
		
		<% while(borrowed.next()) {	%>
				<tr>
					<td><%=borrowed.getString("itemId")%></td>
					<td><%=borrowed.getString("itemName")%></td>
					<td><%=borrowed.getString("status")%></td>
					<td align="center">
					  <a href="assetmaintenance.html?itemId=<%=borrowed.getString("itemId")%>&action=borrow">
					  	<img src="images/Editor.ico"/>
					  </a>
					</td>
				</tr>			
		<% } %>
	</table>
	
	<form role="form" action="inventoryprocess.html"class="col-sm-offset-5 col-sm-4">
		<input type="submit" value="Home"class="btn btn-default">	
	</form>
	</div>
	</div>
	</div>
</body>
</html>
