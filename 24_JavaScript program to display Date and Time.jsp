<%@ page import="java.util.Date" %>

<html>
<head>
<title>Live Date and Time</title>

<style>

body{
font-family: Arial;
background: linear-gradient(135deg,#141e30,#243b55);
color:white;
text-align:center;
padding-top:120px;
}

.container{
background:rgba(255,255,255,0.1);
padding:40px;
border-radius:15px;
width:450px;
margin:auto;
box-shadow:0 10px 30px rgba(0,0,0,0.5);
}

h1{
letter-spacing:2px;
}

#clock{
font-size:40px;
margin-top:20px;
font-weight:bold;
color:#00ffcc;
}

#date{
font-size:22px;
margin-top:10px;
color:#f1f1f1;
}

</style>

<script>

function updateClock(){

var now = new Date();

var time = now.toLocaleTimeString();
var date = now.toDateString();

document.getElementById("clock").innerHTML = time;
document.getElementById("date").innerHTML = date;

}

setInterval(updateClock,1000);

</script>

</head>

<body onload="updateClock()">

<div class="container">

<h1>Live Digital Clock</h1>

<div id="clock"></div>
<div id="date"></div>

<br>

<p>Server Time at Page Load:</p>

<b><%= new Date() %></b>

</div>

</body>
</html>