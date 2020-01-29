<%@page import="java.sql.*;"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HOME PAGE</title>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
	   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Shrikhand&display=swap" rel="stylesheet">
<!-- animations -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">

<style>
	body 
	{
//		background-color:white;
//		background-image: linear-gradient(rgba(0,0,0,0.05),rgba(0,0,0,0.05));	
//	background-color:cyan;
//	background-image: linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5));
	
//    background-image: linear-gradient(#007bff,#b3d7ff);
 			font-family:Times New Roman;

	}

	nav
	{
		background-color:#808080;	
		background-image: linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5));	
		border-bottom: 1px solid grey;
	//	padding:5px;
		height:60px;
	}

	#navul li
	{
		color:white;
		font-weight:bold;
		
	}
	#navul li:hover
	{
		cursor:pointer;
		color:orange;
	}
	#navul a:hover
	{
		cursor:pointer;
	}
		.leftside, .rightside
	{
		height:500px;
		width:100%;
	}
	.leftside
	{
		border-right:1px solid silver;
	}
	.rightside
	{
	}
	#x
	{

		margin-top:100px;
		width:900px;
		border:1px solid silver;
		background-color:white;		
//		background-image: linear-gradient(rgba(0,0,0,0.05),rgba(0,0,0,0.05));
	}
	#y
	{
		margin-top:100px;	
	}
	.leftside ul:hover
	{
					text-decoration:none;
	
	}
	.leftside li
	{
	//	background-color:silver;
		text-align:center;
		padding:15px;
		color:black;
	//	font-size:18px;
	}
	.leftside li:hover
	{
		background-image: linear-gradient(rgba(0,0,0,0.07),rgba(0,0,0,0.07));	
	//	border-left:3px solid 	#808080;
	}
	.leftside a:hover
	{
				text-decoration:none;
	}
	
	
</style>
<script>
	function orp()
	{
		document.getElementById("orph").style.display="block";
		document.getElementById("x").style.display="none";
		document.getElementById("list").style.color="orange";
		document.getElementById("list2").style.color="white";
		document.getElementById("completed").style.display="none";

	}
	function comp()
	{
		document.getElementById("orph").style.display="none";
		document.getElementById("x").style.display="none";
		document.getElementById("list").style.color="orange";
		document.getElementById("list2").style.color="white";
		document.getElementById("completed").style.display="block";
	}

</script>


</head>
<body>
<%
String un=session.getAttribute("uname").toString();
String aname=session.getAttribute("aname").toString();
String mob=session.getAttribute("mob").toString();
String mail=session.getAttribute("mail").toString();
String gender=session.getAttribute("gender").toString();
String area=session.getAttribute("area").toString();
String add=session.getAttribute("add").toString();

%>


<nav class="navbar navbar-expand-md navbar-dark  fixed-top">
	<div class="container" >
			
		<div >
				<span style="font-family: 'Shrikhand', cursive; font-size:30px;" class="navbar-brand "><%out.println("helo ! "+aname);%></span>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#go">
			    <span class="navbar-toggler-icon"></span>
		 </button>
		</div>		
		
		<div class=" collapse navbar-collapse " id="go">
			<div class="ml-auto">
			<ul class="navbar-nav" id="navul">
				<a href="agent_home.jsp" class=" nav-link "  ><li  class="nav-item " >HOME</li></a>												
				<div class="dropdown " >
						<a class=" nav-link"><li class="nav-item dropdown-toggle" id="list" data-toggle="dropdown" data-target="#down2"><span class="caret">VIEW</span></li></a>
								<div class="dropdown-menu" id="down2">
																		
									<a class="dropdown-item " onclick="comp()"><b>Completed Requests</b></a>
									<div class="dropdown-divider"></div>
									<a class="dropdown-item " onclick="orp()"><b>View OrphanHomes</b></a>
								</div>						
				</div>
				<a href="profile.jsp" class=" nav-link "  ><li id="list2" class="nav-item " style="color:orange;">PROFILE</li></a>					
				<a href="help.jsp?source=profile" class=" nav-link"><li class="nav-item ">HELP</li></a>
				<a href="about.jsp" target="_blank" class=" nav-link"><li class="nav-item ">ABOUT</li></a>
				</ul>
			</div>			
		</div>	
	</div>
			
</nav>



<div class="container" id="x">
	<div class="row">

			<div class="leftside col-md-3" style="padding:0px;">
				
						<ul class="navbar-nav">				
							<a href="profile.jsp" class=""><li class="" style="border-left:3px solid black;font-weight:bold;		background-image: linear-gradient(rgba(0,0,0,0.07),rgba(0,0,0,0.07));">Profile</li></a>
							<a href="profile_edit.jsp" class=""><li class="">Edit Profile</li></a>
							<a href="profile_change_password.jsp" class=""><li class="">Change Password</li></a>
							<a href="agent_login.jsp" class=""><li class="">Logout</li></a>					
						</ul>
			</div>
		
		
		<div class="  rightside col-md-9" style="background-color:;">
				<table id="y" align=center>
				<tr>
								<td colspan="2">
								<%
								if(request.getParameter("id2")!=null)
								{
								%>		
									<h5 ><font color="green"><center><b><i> Details Updated Successfully <br> Please login again to make changes</i></b></center> </font></h5>
								<%	
								}
								%>
							</td>
					
				</tr>
					<tr>
					<td>Name &nbsp &nbsp &nbsp &nbsp</td> 
					<td><input type="text" size="30" class="form-control" name="name" value="<%=aname%>" readonly="readonly" required></td>
					</tr>
					<tr>
					<td>Username &nbsp &nbsp &nbsp &nbsp</td> 
					<td><input type="text" size="30" class="form-control" name="uname" value="<%=un%>" readonly="readonly" required></td>
					</tr>
					<tr>
					<td>Mobile number &nbsp &nbsp &nbsp &nbsp</td> 
					<td><input type="text" name="mob" size="30" class="form-control" value="<%=mob%>" readonly="readonly" required></td>
					</tr>
					<tr>
					<td>Email-Id &nbsp &nbsp &nbsp &nbsp</td> 
					<td><input type="text" name="mail" size="30" class="form-control" value="<%=mail%>" readonly="readonly" required></td>
					</tr>
					<tr>
					<td>Gender &nbsp &nbsp &nbsp &nbsp</td> 
					<td><input type="text" name="g" required class="form-control" value="<%=gender%>" readonly="readonly" size="30"></td>
					</tr>
					<tr>
					<td>Area &nbsp &nbsp &nbsp &nbsp</td> 
					<td><input type="text" name="area" required class="form-control" value="<%=area%>" readonly="readonly" size="30"></td>
					</tr><tr>
					<td>Address &nbsp &nbsp &nbsp &nbsp</td> 
					<td><input type="text" name="add" required class="form-control" value="<%=add%>" readonly="readonly" size="30"></td>
					</tr>
				</table>
		</div>
	</div>
</div>

<!-- 3nd table -->	<!-- 3nd table -->	<!-- 3nd table --> 	<!-- 3nd table -->

<div class="container" id="orph" style="display:none;">
<h3 style="padding-top:100px;" align="left"><b>Orphan homes list</b></h3>

<div class="row">
	
	<div class="col-lg-12">
	<table class="table table-secondary ">
	<%
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/foodmanagement","root","");
		
	Statement st2=con.createStatement();
	
	ResultSet rs2=st2.executeQuery("select * from  add_orphan ");
			
	/*		PreparedStatement ps=con.prepareStatement("select * from add_orphan");
			
			ResultSet rs2=ps.executeQuery();
	*/	
			
			%>
					<thead class="thead-dark ">
								<tr align="center">
									<th>Orphan_home_name	&nbsp &nbsp </th>
									<th>Owner_name			&nbsp &nbsp </th>
									<th>No_of_Orphans		&nbsp &nbsp	 </th>
									<th>Owner_mobile		&nbsp &nbsp</th>
									<th>Area 				&nbsp &nbsp</th>
									<th>Address 			&nbsp &nbsp</th>
									
									<th></th>
			
								</tr>
			
			<%				
			while(rs2.next()){
				String a=rs2.getString(1) ;
				String b=rs2.getString(2) ;
				String d=rs2.getString(4) ;
				String e=rs2.getString(5) ;
				String f=rs2.getString(6) ;
				String g=rs2.getString(7) ;
			
			
			%>
			
			<tr align="center">
				<td> <%=a %> </td>
				<td> <%=b %> </td>
				<td> <%=d %> </td>
				<td> <%=e %> </td>
				<td> <%=f %> </td>
				<td> <%=g %> </td>

			</tr>		
				
				<%
				}
				%>
					</table>
				
			</div>
	
</div>
</div>



<!-- 4rt table -->	<!-- 4rt table -->	<!-- 4rt table --> 	<!-- 4rt table -->






<div class="container" id="completed" style="display:none;">
<h3  style="padding-top:100px;" align="left"><b>COMPLETED REQUESTS</b></h3>

<div class="row">
	
	<div class="col-lg-12">
	
	<table class="table table-secondary table-responsive">
	<%			
	Statement st3=con.createStatement();
	
	ResultSet rs3=st3.executeQuery("select * from  food_details where area='"+area+"' and Status='COMPLETED' and agent_name='"+aname+"' ");
	

			
			%>
					<thead class="thead-dark ">
								<tr align="center">
										<th>donar_name  &nbsp &nbsp</th> 
										<th>user_name  &nbsp &nbsp</th> 
										<th> food_quality &nbsp &nbsp</th>
										<th>food_quantity &nbsp &nbsp</th>
										<th>food_decription &nbsp &nbsp</th>
										<th>Food_Requested address &nbsp &nbsp</th>
										<th>Food_Requested Area  &nbsp &nbsp</th>
										<th>donar_mobile &nbsp &nbsp</th>
										<th>Alternate_mobile &nbsp &nbsp</th>
										<th>Food_Requested Date (Y-M-D) &nbsp &nbsp</th>
										<th>Status_Of_Request &nbsp &nbsp</th>
										<th>Accepted_Agent name &nbsp &nbsp</th>
										<th>Accepted_Agent mobile &nbsp &nbsp </th>

										<th>orphan_home_name  &nbsp &nbsp </th>
										<th>orphan_Id  &nbsp &nbsp </th>
										<th>orphan_owner_mobile &nbsp &nbsp </th>

										<th></th>
			
								</tr>
			
			<%				
			while(rs3.next()){
				String a=rs3.getString(1) ;
				String b=rs3.getString(2) ;
				String c=rs3.getString(3) ;
				String d=rs3.getString(4) ;
				String e=rs3.getString(5) ;
				String f=rs3.getString(6) ;
				String g=rs3.getString(7) ;
				String h=rs3.getString(8) ;
				String i=rs3.getString(9) ;
				String j=rs3.getString(10);
				String k=rs3.getString(11);
				String l=rs3.getString(12);
				String m=rs3.getString(13);
	
				String n=rs3.getString(14);
				String o=rs3.getString(15);
				String p=rs3.getString(16);
			
			%>
			
			<tr align="center">
					<td><%=a %></td>
					<td><%=b %></td>
					<td><%=c %></td>
					<td><%=d %></td>
					<td><%=e %></td>	
					<td><%=f %></td>
					<td><%=g %></td>
					<td><%=h %></td>
					<td><%=i %></td>
					<td><%=j %></td>
					<td><font color="green"><b><%=k %></b></font></td>
					<td><%=l %></td>
					<td><%=m %></td>

					<td><%=n %></td>
					<td><%=o %></td>
					<td><a href="tel://<%=p %>"><%=p %></a></td>

			</tr>		
				
				<%
				}
				%>
					</table>
				
			</div>
	
</div>
</div>









</body>
</html>