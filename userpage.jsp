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
		  <li><a href="userlogin.jsp">Logout</a></li>
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
          <form id="form1" name="form1" method="post" action="BookingStudent">
            <div align="center">
              <table width="442" height="418" border="0">
                <tr>
                  <td><div align="center"><span class="style1">Date</span></div></td>
                  <td><div align="center">
                    <label>
                    <input name="date1" type="text" id="date1" />
                    </label>
                  </div></td>
                </tr>
                <tr>
                  <td width="212"><div align="center"><span class="style1">
                    <label></label>
                  </span><span class="style1">Day</span></div></td>
                  <td width="214"><div align="center">
                    <label>
                    <select name="day1" id="day1">
                      <option value="Monday">Monday</option>
                      <option value="Tuesday">Tuesday</option>
                      <option value="Wednesday">Wednesday</option>
                      <option value="Thursday">Thurdsday</option>
                      <option value="Friday">Friday</option>
                    </select>
                    </label>
                  </div></td>
                </tr>
                <tr>
                  <td><div align="center"><span class="style1">Time</span></div></td>
                  <td><div align="center">
                    <label>
                    <select name="time1" id="time1">
                      <option value="9.20 - 10.10">9.20 - 10.10</option>
                      <option value="10.30 - 11.20">10.30 - 11.20</option>
                      <option value="11.20 - 12.15">11.20 - 12.15</option>
                      <option value="1.40 - 2.30">1.40 - 2.30</option>
                      <option value="2.30 - 3.20">2.30 - 3.20</option>
                      <option value="3.30 - 4.20">3.30 - 4.20</option>
                    </select>
                    </label>
                  </div></td>
                </tr>
                <tr>
                  <td><div align="center"><span class="style1">Floor</span></div></td>
                  <td><div align="center">
                    <label>
                    <select name="floorname" id="floorname">
                      <option value="3">2nd Floor</option>
                      <option value="4">3rd Floor</option>
                      <option value="5">4th Floor</option>
                      <option value="6">5th Floor</option>
                    </select>
                    </label>
                  </div></td>
                </tr>
                <tr>
                  <td><div align="center"><span class="style1">Dept</span></div></td>
                  <td><div align="center">
                    <label>
                    <select name="dept" id="dept">
                      <option value="EEE">EEE</option>
                      <option value="EEE Sandwich">EEE Sandwich</option>
                      <option value="ECE">ECE</option>
                      <option value="CSE">CSE</option>
                      <option value="IT">IT</option>
                      <option value="MSc">MSc</option>
                      <option value="Prod">Prod</option>
                      <option value="Prod SW">Prod SW</option>
                      <option value="Mech">Mech</option>
                      <option value="Mech SW">Mech SW</option>
                      <option value="INC">INC</option>
                      <option value="Automobile">Automobile</option>
                      <option value="Biomedical">Biomedical</option>
                      <option value="Robotics">Robotics</option>
                    </select>
                    </label>
                  </div></td>
                </tr>
                
                <tr>
                  <td colspan="2"><div align="center">
                      <label>
                      <input name="Submit" type="submit" id="Submit" value="Next" />
                      </label>
                  </div></td>
                </tr>
              </table>
            </div>
            <p align="center">&nbsp;</p>
          </form>
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
            <li><a href="userlogin.jsp">Logout</a><a href="userlogin.jsp"></a></li>
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
