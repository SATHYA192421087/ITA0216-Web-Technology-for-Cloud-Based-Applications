<form method="post">
Name: <input type="text" name="name"><br>
Salary: <input type="text" name="salary"><br>
<input type="submit">
</form>

<%
String name = request.getParameter("name");
String salary = request.getParameter("salary");

if(name != null){
%>
<h2>Employee Details</h2>
Name: <%= name %><br>
Salary: <%= salary %>
<%
}
%>