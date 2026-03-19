<%
Integer count = (Integer)application.getAttribute("count");

if(count == null){
    count = 1;
}else{
    count++;
}

application.setAttribute("count", count);
%>

<h2>Total Visitors: <%= count %></h2>