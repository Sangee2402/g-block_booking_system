<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
 <%@page import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>G-Block Booking</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/radius.js"></script>
<style type="text/css">
<!--
.style1 {font-size: large}
.style3 {font-size: large;
	font-weight: bold;
	color: #FFFFFF;
}
.style4 {	font-size: medium;
	font-weight: bold;
}
.style5 {	font-size: medium;
	color: #FFFFFF;
	font-weight: bold;
}
-->
</style>
</head>
<body>
<!-- START PAGE SOURCE -->
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="index.jsp">Home</a></li>
		  <li><a href="adminpage.jsp">Back</a></li>
		  <li><a href="adminlogin.jsp">Logout</a></li>
        </ul>
      </div>
      <div class="logo">
        <h1><a href="index.html">BlockBooking<span></span> <small>G-Block College</small></a></h1>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 align="center"><span>PSG College of Technology</span></h2>
          <h2 align="center"><span>G-Block Booking System </span></h2>
          <div class="clr"></div>
          <p class="infopost">&nbsp;</p>
		         <%
                                        try {
                                          
							String from1=session.getAttribute("from1").toString();
							String to1=session.getAttribute("to1").toString();
							String day1=session.getAttribute("day1").toString();
							String time1=session.getAttribute("time1").toString();
							String floorname=session.getAttribute("floorname").toString();
							String dept=session.getAttribute("dept").toString();
							HttpSession sn = request.getSession(true);
     						sn.setAttribute("from1",from1);
							sn.setAttribute("to1",to1);
							sn.setAttribute("day1",day1);
							sn.setAttribute("time1",time1);
							sn.setAttribute("floorname",floorname);
							sn.setAttribute("dept",dept);
							
        PreparedStatement ps;
        ResultSet rs;
		//Connection con = null;
		Statement st,st1,st2,st3,st4;
		String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9="",s10="",s11="",s12="",s13="",s14="",s15="",s16="",s17="",s18="",s19="",s20="",s21="",s22="",s23="",s24="",s25="";
		String bg1="",bg2="",bg3="",bg4="",bg5="",bg6="",bg7="",bg8="",bg9="",bg10="",bg11="",bg12="",bg13="",bg14="",bg15="",bg16="",bg17="",bg18="",bg19="",bg20="",bg21="",bg22="",bg23="",bg24="",bg25="";
		int count=1;
                                            
                                            Class.forName("com.mysql.jdbc.Driver");
                                      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hallbooking","root","password");
                                           
										  
										   
										    String query = "select * from bookinghall where from1='"+from1+"' && to1='"+to1+"' && day1='"+day1+"' && time1='"+time1+"' && floor1='"+floorname+"'"; 
                                            st = con.createStatement();
                                            rs = st.executeQuery(query);

                                            while (rs.next()) {
                                                
												s1 = rs.getString(6);
												if(s1.equals("free"))
												{
												bg1="#00FF00";
												}
												else if(s1.contains("z"))
												{
												bg1="#000080";
												s1 = s1.replace("z","");
												}
												else
												{
												bg1="#FF3300";
												}
                                              
												s2 = rs.getString(7);
												if(s2.equals("free"))
												{
												bg2="#00FF00";
												}
												else if(s2.contains("z"))
												{
												bg2="#000080";
												s2 = s2.replace("z","");
												}
												else
												{
												bg2="#FF3300";
												}
                                              
											 
												s3 = rs.getString(8);
												if(s3.equals("free"))
												{
												bg3="#00FF00";
												}
												else if(s3.contains("z"))
												{
												bg3="#000080";
												s3 = s3.replace("z","");
												}
												else
												{
												bg3="#FF3300";
												}
                                              
												s4 = rs.getString(9);
												if(s4.equals("free"))
												{
												bg4="#00FF00";
												}
												else if(s4.contains("z"))
												{
												bg4="#000080";
												s4 = s4.replace("z","");
												}
												else
												{
												bg4="#FF3300";
												}
                                              
												s5 = rs.getString(10);
												if(s5.equals("free"))
												{
												bg5="#00FF00";
												}
												else if(s5.contains("z"))
												{
												bg5="#000080";
												s5 = s5.replace("z","");
												}
												else
												{
												bg5="#FF3300";
												}
                                              
												s6 = rs.getString(11);
												if(s6.equals("free"))
												{
												bg6="#00FF00";
												}
												else if(s6.contains("z"))
												{
												bg6="#000080";
												s6 = s6.replace("z","");
												}
												else
												{
												bg6="#FF3300";
												}
                                               
												s7 = rs.getString(12);
												if(s7.equals("free"))
												{
												bg7="#00FF00";
												}
												else if(s7.contains("z"))
												{
												bg7="#000080";
												s7 = s7.replace("z","");
												}
												else
												{
												bg7="#FF3300";
												}
                                              
												s8 = rs.getString(13);
												if(s8.equals("free"))
												{
												bg8="#00FF00";
												}
												else if(s8.contains("z"))
												{
												bg8="#000080";
												s8 = s8.replace("z","");
												}
												else
												{
												bg8="#FF3300";
												}
                                               
												s9 = rs.getString(14);
												if(s9.equals("free"))
												{
												bg9="#00FF00";
												}
												else if(s9.contains("z"))
												{
												bg9="#000080";
												s9 = s9.replace("z","");
												}
												else
												{
												bg9="#FF3300";
												}
                                              
									
												}
                                    %>
          <table width="602" height="430" border="0">
            <tr>
              <td height="56"><div align="center"><%=floorname%>01</div></td>
              <td><div align="center"><%=floorname%>02</div></td>
              <td><div align="center"><%=floorname%>03</div></td>
            </tr>
            <tr>
              <td height="56" bgcolor="<%=bg1%>"><div align="center" class="style5"><%=s1%>
                <form id="form1" name="form1" method="post" action="Book01">
                  <label>
				  <%
				  if(s1.equals("free"))
				  {
				  %>
                  <input type="submit" name="Submit" value="Book" />
				  <%
				  }
				  else
				  {
				  %>
				  <input type="submit" name="Submit" style="visibility:hidden" value="Book" />
				  <%
				  }
				  %>
                  </label>
                                </form>
                </div></td>
              <td bgcolor="<%=bg2%>"><div align="center"><span class="style5"><%=s2%></span>
                <form id="form2" name="form2" method="post" action="Book02">
                  <label>
                  <%
				  if(s2.equals("free"))
				  {
				  %>
                  <input type="submit" name="Submit2" value="Book" />
				  <%
				  }
				  else
				  {
				  %>
				  <input type="submit" name="Submit2" style="visibility:hidden" value="Book" />
				  <%
				  }
				  %>
                  </label>
                                </form>
                </div></td>
              <td bgcolor="<%=bg3%>"><div align="center"><span class="style5"><%=s3%></span>
                <form id="form3" name="form3" method="post" action="Book03">
                  <label>
                  <%
				  if(s3.equals("free"))
				  {
				  %>
                  <input type="submit" name="Submit3" value="Book" />
				  <%
				  }
				  else
				  {
				  %>
				  <input type="submit" name="Submit3" style="visibility:hidden" value="Book" />
				  <%
				  }
				  %>
                  </label>
                                </form>
                </div></td>
            </tr>
            <tr>
              <td height="56"><div align="center"><%=floorname%>04</div></td>
              <td><div align="center"><%=floorname%>05</div></td>
              <td><div align="center"><%=floorname%>06</div></td>
            </tr>
            <tr>
              <td width="204" height="58" bgcolor="<%=bg4%>"><div align="center"><span class="style5"><%=s4%></span>
                <form id="form4" name="form4" method="post" action="Book04">
                  <label>
                  <%
				  if(s4.equals("free"))
				  {
				  %>
                  <input type="submit" name="Submit4" value="Book" />
				  <%
				  }
				  else
				  {
				  %>
				  <input type="submit" name="Submit4" style="visibility:hidden" value="Book" />
				  <%
				  }
				  %>
                  </label>
                                </form>
                </div></td>
              <td width="204" bgcolor="<%=bg5%>"><div align="center"><span class="style5"><%=s5%></span>
                <form id="form5" name="form5" method="post" action="Book05">
                  <label>
                  <%
				  if(s5.equals("free"))
				  {
				  %>
                  <input type="submit" name="Submit5" value="Book" />
				  <%
				  }
				  else
				  {
				  %>
				  <input type="submit" name="Submit5" style="visibility:hidden" value="Book" />
				  <%
				  }
				  %>
                  </label>
                                </form>
                </div></td>
              <td width="183" bgcolor="<%=bg6%>"><label></label>
                <div align="center"><span class="style5"><%=s6%></span>
                    <form id="form6" name="form6" method="post" action="Book06">
                      <label>
                      <%
				  if(s6.equals("free"))
				  {
				  %>
                  <input type="submit" name="Submit6" value="Book" />
				  <%
				  }
				  else
				  {
				  %>
				  <input type="submit" name="Submit6" style="visibility:hidden" value="Book" />
				  <%
				  }
				  %>
                      </label>
                                        </form>
                  </div></td>
            </tr>
            <tr>
              <td height="54"><div align="center"><%=floorname%>07</div></td>
              <td><div align="center"><%=floorname%>08</div></td>
              <td><div align="center"><%=floorname%>09</div></td>
            </tr>
            <tr>
              <td height="55" bgcolor="<%=bg7%>"><div align="center"><span class="style5"><%=s7%></span>
                <form id="form7" name="form7" method="post" action="Book07">
                  <label>
                  <%
				  if(s7.equals("free"))
				  {
				  %>
                  <input type="submit" name="Submit7" value="Book" />
				  <%
				  }
				  else
				  {
				  %>
				  <input type="submit" name="Submit7" style="visibility:hidden" value="Book" />
				  <%
				  }
				  %>
                  </label>
                                </form>
                </div></td>
              <td bgcolor="<%=bg8%>"><div align="center"><span class="style5"><%=s8%></span>
                <form id="form8" name="form8" method="post" action="Book08">
                  <label>
                  <%
				  if(s8.equals("free"))
				  {
				  %>
                  <input type="submit" name="Submit8" value="Book" />
				  <%
				  }
				  else
				  {
				  %>
				  <input type="submit" name="Submit8" style="visibility:hidden" value="Book" />
				  <%
				  }
				  %>
                  </label>
                                </form>
                </div></td>
              <td bgcolor="<%=bg9%>"><label></label>
                <div align="center"><span class="style5"><%=s9%></span>
                    <form id="form9" name="form9" method="post" action="Book09">
                      <label>
                      <%
				  if(s9.equals("free"))
				  {
				  %>
                  <input type="submit" name="Submit9" value="Book" />
				  <%
				  }
				  else
				  {
				  %>
				  <input type="submit" name="Submit9" style="visibility:hidden" value="Book" />
				  <%
				  }
				  %>
                      </label>
                                        </form>
                  </div></td>
            </tr>
          </table>
		   <%

                                            
                                            con.close();
                                        } catch (Exception e) {
                                            out.println(e);
                                        }

                                    %>
          <p align="center">&nbsp;</p>
        </div>
        <div class="article"></div>
      </div>
      <div class="sidebar">
        <div class="searchform"></div>
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="index.jsp">Home</a></li>
            <li><a href="adminpage.jsp">Back</a></li>
            <li><a href="adminlogin.jsp">Logout</a></li>
          </ul>
        </div>
        <div class="gadget"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <div class="clr"></div>
    </div>
  </div>
</div>
<!-- END PAGE SOURCE -->
<div align=center></div>
</body>
</html>
