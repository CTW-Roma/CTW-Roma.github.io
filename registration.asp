<%
Dim conn
set conn=Server.CreateObject("ADODB.Connection")
conn.Open "driver={Microsoft Access Driver (*.mdb)};DBQ=" & server.MapPath("forum.mdb")

sql = "SELECT * FROM utenti"
Set rs = Server.CreateObject("ADODB.Recordset")
rs.Open sql, conn, 3, 3

if Request.Form("firstname" ) <> "" then
		rs.AddNew
		rs.Fields("firstname") = Request.Form("firstname")
		rs.Fields("lastname") = Request.Form("lastname")		
		rs.Fields("registration") = Request.Form("registration")rs.update
		rs.Fields("data") = date
		rs.Fields("ora") = time
        response.redirect("resp.html")		
end if
%>

<html xmlns="http://www.w3.org/1999/xhtml"><head>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />-->
<title>ctw 2011</title>
<link href="registration_files/style.css" rel="stylesheet" type="text/css">
</head><body>
<div id="wrapper">
  <div id="header">
    <div id="nav">
		<a href="http://ctw2011.dia.uniroma3.it/index.html">Home</a> &nbsp;|&nbsp; 
		<a href="mailto:ctw2011@dia.uniroma3.it" target="_blank">Contacts</a></div>
<div id="bg"></div>
</div>
<div id="main-content">
<div id="left-column">
<div id="logo">

<span class="logotxt2">10-th Cologne-Twente Workshop </span>
<br><span class="logotxt3"> on graphs and combinatorial optimization</span><br>
<span class="logotxt1">Villa Mondragone, Frascati, June 14-16, 2011</span></div>

<div class="box">
<h1>Registration fees</h1>

<ul>
<li>
<b>Standard:</b> EUR 170 if the payment is received within May 6, 2011. 
</li><li>
<b>PhD students:</b> EUR 120 if the payment is received within May 6, 2011. 
</li><li>
<b>Late registration:</b> EUR 220 after May 6, 2011.
</li></ul>
The registration fee will include entry to all technical sessions, coffee-breaks, <b>lunches</b>, 
and a copy of the workshop program and abstracts.</div>

<br>
<div class="box">
<h1>Registration form</h1>
<form method="post" >
First name: <input type="text" name="firstname" /> <br />
Last name: <input type="text" name="lastname" /><br/>
<br/>
<input type="radio" name="registration" value="Standard" /> Standard<br />
<input type="radio" name="registration" value="PhD student" /> PhD student<br />
<br/>
<input type="submit" value="Submit" />
</form>
</div>


<h2>Payment modes</h2>
<p>
<b>Detailed instructions on payment modes will be made available soon on this page.</b>
</p>
</div>

<!--COLONNA DESTRA NON MODIFICARE QUI DI SEGUITO -->

<div id="right-column">

<div id="main-image">
<img src="registration_files/vasanzio-past.jpg" alt="vasanzio" width="250">
</div>

<div class="sidebar">
<h2>CTW 2011 pages</h2>
  <ul>
  <li><p><b><a href="http://ctw2011.dia.uniroma3.it/index.html">Home</a></b></p>
  </li><li><p><b><a href="http://ctw2011.dia.uniroma3.it/submission.html">Submissions</a></b></p>
  </li><li><p><b><a href="http://ctw2011.dia.uniroma3.it/dates.html">Important Dates</a></b></p>
  </li><li><p><b><a href="http://ctw2011.dia.uniroma3.it/sci-comm.html">Committees</a></b></p>
	</li><li>
	<p><span style="background-position: 0% 0%;"><b><a href="http://ctw2011.dia.uniroma3.it/venue.html">Venue</a></b></span></p>
  </li><li><p><b><a href="mailto:ctw2011@dia.uniroma3.it" target="_blank">Contacts</a></b></p>
  </li></ul>

<h2><a href="http://ctw2011.dia.uniroma3.it/sponsors.html">Sponsors</a></h2>

<h2><a href="http://ctw2011.dia.uniroma3.it/past-ctw.html">Past Conferences</a></h2>

      </div>
    </div>
  </div>

<!-- FOOTER modifica la data -->
<div id="footer">
This page is kindly hosted by  <span class="crd"><a href="http://www.dia.uniroma3.it/" target="_blank">DIA Università di Roma Tre</a></span>   
&nbsp;|&nbsp; 
Thanks to: <span class="crd"><a href="http://www.web-designers-directory.org/">Web site Design</a></span>  
</div>

</div>

</body></html>