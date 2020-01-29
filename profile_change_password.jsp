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
//	background-color:cyan;
//	background-image: linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5));
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
<script language="JavaScript">
function fu()
{


	var d = document.LoginForm.pwd1.value;
	var e = document.LoginForm.pwd2.value;

		if(d.length>10) 
		{
		alert("Password should have minimum 5 and Maximum 10 Characters/numbers");
		            document.LoginForm.pwd1.focus();
		            document.LoginForm.pwd1.value="";
		return false;
		}
		if(d.length<5) 
		{
		alert("Password should have minimum 5 and Maximum 10 Characters/numbers");
		            document.LoginForm.pwd1.focus();
		            document.LoginForm.pwd1.value="";
		return false;
		}
		
		if(d!=e) 
		{
		alert("Password MissMatch");
		            document.LoginForm.pwd2.focus();
		            document.LoginForm.pwd2.value="";
		return false;
		}


}
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

/*
$(document).ready(function()
		{SNbutton.init("mybtn",
				{fields:["p","p1","p2"],enabletext:"submit"})
		})
		*/
</script>

</head>
<body>
<%
String un=session.getAttribute("uname").toString();
String aname=session.getAttribute("aname").toString();
String mob=session.getAttribute("mob").toString();
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
				<a href="agent_home.jsp" class=" nav-link "  ><li class="nav-item " >HOME</li></a>												
				<div class="dropdown " >
						<a class=" nav-link"><li class="nav-item dropdown-toggle" id="list" data-toggle="dropdown" data-target="#down2"><span class="caret">VIEW</span></li></a>
								<div class="dropdown-menu" id="down2">
																		
									<a class="dropdown-item " onclick="comp()"><b>Completed Requests</b></a>
									<div class="dropdown-divider"></div>
									<a class="dropdown-item " onclick="orp()"><b>View OrphanHomes</b></a>
								</div>						
				</div>
				<a href="profile.jsp" class=" nav-link "  ><li id="list2" class="nav-item " style="color:orange;">PROFILE</li></a>					
				<a href="help.jsp?source=profile_change_pwd" class=" nav-link" ><li class="nav-item ">HELP</li></a>
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
							<a href="profile.jsp" class=""><li class="" >Profile</li></a>
							<a href="profile_edit.jsp" class="" ><li class="">Edit Profile</li></a>
							<a href="profile_change_password.jsp" class=""><li class="" style="border-left:3px solid black;font-weight:bold;background-image: linear-gradient(rgba(0,0,0,0.1),rgba(0,0,0,0.1));">Change Password</li></a>
							<a href="agent_login.jsp" class=""><li class="">Logout</li></a>					
						</ul>
			</div>
		
		
		<div class="  rightside col-md-9" style="background-color:;">
				<form  name="LoginForm" onSubmit="return fu();" action="profile_change_pwd_action.jsp" method="post">
					<table align=center id="y">
						<tr>
							<td colspan="2">
								<%
								if(request.getParameter("id1")!=null)
								{
								%>		
								<h5 ><font color="green"><center><b>Password Changed Successfully...!!</font><br><a href="agent_login.jsp"> Do you want to logout from every device ?</a></b></center></h5>
								<%	
								}
								else if(request.getParameter("id2")!=null)
								{
								%>		
								<h5 ><font color="red"><center><b>current password is incorrent...!!</b></center></font></h5>
								<%	
								}
								%>
							</td>
						</tr>
						<tr>
								<td>Current Password  &nbsp &nbsp &nbsp &nbsp</td>
								<td><br><br><input id="p" class="form-control" type="password" name="pwd"  required><br><br></td>
						</tr>		
						<tr>
								<td>New Password  &nbsp &nbsp &nbsp &nbsp</td>
								<td><input id="p1" class="form-control" type="password" name="pwd1"  required></td>
						</tr>		
						<tr>
								<td>Confirm Password  &nbsp &nbsp &nbsp &nbsp</td>
								<td><input id="p2" class="form-control" type="password" name="pwd2"  required></td>
						</tr>		
						
							<tr>
								<td colspan="2"><br><input id="mybtn" type="submit" class="btn btn-block btn-success btn-sm" value="Change password"></td>
							</tr>
							
					</table>
				</form>
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